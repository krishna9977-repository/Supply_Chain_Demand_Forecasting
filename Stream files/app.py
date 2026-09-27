import streamlit as st
import pandas as pd
import json
import matplotlib.pyplot as plt

st.set_page_config(page_title="Supply Chain Demand Forecasting", layout="wide")

# ---- Load data ----
@st.cache_data
def load_data():
    history = pd.read_csv('dashboard_data/history.csv', index_col=0, parse_dates=True)
    forecast = pd.read_csv('dashboard_data/forecast.csv', index_col=0, parse_dates=True)
    dept_summary = pd.read_csv('dashboard_data/department_summary.csv', index_col=0)
    tradeoff = pd.read_csv('dashboard_data/tradeoff.csv')
    shipping_risk = pd.read_csv('dashboard_data/shipping_risk.csv', index_col=0)
    with open('dashboard_data/full_context_data.json') as f:
        full_context_data = json.load(f)
    return history, forecast, dept_summary, tradeoff, shipping_risk, full_context_data

history, forecast, dept_summary, tradeoff, shipping_risk, full_context_data = load_data()

st.title("📦 Supply Chain Demand Forecasting Dashboard")
st.caption("DataCo Smart Supply Chain — Department-Level Demand Forecasting & Inventory Planning")

# ---- Sidebar navigation ----
page = st.sidebar.radio("Navigate", ["Forecast", "Inventory & Safety Stock", "Logistics Risk", "Business Impact", "Ask a Question"])

departments = list(dept_summary.index)

# ================= PAGE 1: FORECAST =================
if page == "Forecast":
    st.header("Demand Forecast")
    selected_dept = st.selectbox("Select Department", departments)

    champion_model = dept_summary.loc[selected_dept, 'champion_model']
    st.markdown(f"**Champion Model:** {champion_model}")

    fig, ax = plt.subplots(figsize=(12, 5))
    ax.plot(history.index, history[selected_dept], label='Historical', color='steelblue')

    forecast_col = f"{selected_dept}_forecast"
    lower_col = f"{selected_dept}_lower_95"
    upper_col = f"{selected_dept}_upper_95"

    ax.plot(forecast.index, forecast[forecast_col], label='Forecast', color='orange', marker='o')
    ax.fill_between(forecast.index, forecast[lower_col], forecast[upper_col], alpha=0.2, color='orange', label='95% Interval')
    ax.legend()
    ax.set_title(f"{selected_dept} — Weekly Demand Forecast")
    st.pyplot(fig)

    st.subheader("Forecast Table")
    st.dataframe(forecast[[forecast_col, lower_col, upper_col]].round(1))

# ================= PAGE 2: INVENTORY =================
elif page == "Inventory & Safety Stock":
    st.header("Inventory & Safety Stock")
    selected_dept = st.selectbox("Select Department", departments, key="inv_dept")

    col1, col2, col3 = st.columns(3)
    col1.metric("Safety Stock (units)", f"{dept_summary.loc[selected_dept, 'safety_stock_units']:.1f}")
    col2.metric("Reorder Point (units)", f"{dept_summary.loc[selected_dept, 'reorder_point_units']:.1f}")
    col3.metric("Safety Stock % of Demand", f"{dept_summary.loc[selected_dept, 'safety_stock_pct_of_demand']:.1f}%")

    st.subheader("Service Level vs. Safety Stock Trade-off")
    dept_tradeoff = tradeoff[tradeoff['Department'] == selected_dept]
    fig, ax = plt.subplots(figsize=(10, 5))
    ax.plot(dept_tradeoff['Service Level'], dept_tradeoff['Safety Stock'], marker='o')
    ax.set_xlabel("Service Level")
    ax.set_ylabel("Safety Stock (units)")
    st.pyplot(fig)

    st.subheader("All Departments Comparison")
    st.dataframe(dept_summary[['safety_stock_units', 'safety_stock_pct_of_demand', 'reorder_point_units']])

# ================= PAGE 3: LOGISTICS RISK =================
elif page == "Logistics Risk":
    st.header("Shipping Mode Risk Scorecard")
    st.dataframe(shipping_risk)

    fig, ax = plt.subplots(figsize=(10, 5))
    ax.bar(shipping_risk.index, shipping_risk['late_delivery_rate'])
    ax.set_ylabel("Late Delivery Rate (%)")
    ax.set_title("Late Delivery Rate by Shipping Mode")
    st.pyplot(fig)

    st.info("Late delivery risk is driven almost entirely by shipping mode, not department — see README for the full finding.")

# ================= PAGE 4: BUSINESS IMPACT =================
elif page == "Business Impact":
    st.header("Business Impact Summary")
    st.dataframe(dept_summary[['champion_model', 'champion_wmape', 'error_reduction_pct', 'est_annual_dollar_savings']])

    total_savings = dept_summary['est_annual_dollar_savings'].astype(float).sum()
    st.metric("Total Estimated Annual Savings", f"${total_savings:.2f}")

# ================= PAGE 5: AI Q&A =================
elif page == "Ask a Question":
    st.header("Ask the Supply Chain Assistant")
    st.caption("Grounded Q&A — answers are based only on the data in this dashboard.")

    user_question = st.text_input("Ask a question about the forecast, inventory, or logistics data:")

    if st.button("Ask") and user_question:
        with st.spinner("Thinking..."):
            import google.generativeai as genai
            genai.configure(api_key=st.secrets["GOOGLE_API_KEY"])
            gemini_model = genai.GenerativeModel('gemini-3.5-flash-lite')

            context = json.dumps(full_context_data, indent=2)
            prompt = f"""You are a supply chain analytics assistant. Answer the question using ONLY the data provided.
If the answer cannot be determined from this data, say so clearly.

DATA:
{context}

QUESTION: {user_question}

ANSWER:"""
            response = gemini_model.generate_content(prompt)
            st.write(response.text)