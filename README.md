# Supply Chain Demand Forecasting & Inventory Optimization

A department-level demand forecasting system built on the DataCo Smart Supply Chain dataset, combining multi-model forecasting, empirical inventory optimization, logistics risk analysis, and a grounded AI assistant — all delivered through an interactive dashboard.

## 🔗 Live Dashboard
https://supplychaindemandforecasting-6j3zaaxalujfzj3mcsr9gi.streamlit.app/

## 📊 Project Overview

This project forecasts weekly product demand across 6 departments, calculates data-driven safety stock and reorder points, identifies the true drivers of shipping delays, and quantifies the business impact of improved forecasting — using rigorous, walk-forward validated methodology throughout.

## 🔍 Key Findings

- **Discovered and resolved 3 major data integrity issues** in the source dataset: a data completeness cutoff (Oct 2017+), a geographic field populated in rotating time-based blocks rather than genuine customer location, and category mislabeling — all identified through systematic diagnostic testing rather than surface-level EDA.
- **Built a 5-model champion-challenger framework** (Naive, Seasonal Naive, Prophet, XGBoost, and the Chronos foundation model) validated via 14-fold walk-forward testing — achieving 15.7%–30% WMAPE reduction over baseline across all departments.
- **Found that lead time variability, not forecast error, dominates safety stock requirements** — a finding that redirects business focus toward supplier consistency rather than forecasting alone.
- **Identified that late delivery risk is driven entirely by shipping mode, not product department** — and that "lateness" largely reflects unrealistically short promised delivery windows rather than genuine fulfillment failure.
- **Validated an AI-powered Q&A layer for grounding reliability**, discovering that a small local LLM hallucinated on out-of-scope questions while a larger hosted model correctly declined — a real, tested finding about deploying LLMs in business-critical contexts.

## 🛠️ Tech Stack
- **Data cleaning & validation:** MySQL
- **Analysis & modeling:** Python (pandas, statsmodels, Prophet, XGBoost, Chronos, SHAP)
- **AI layer:** Google Gemini API (grounded narrative generation & Q&A)
- **Dashboard:** Streamlit
- **Deployment:** Streamlit Community Cloud

## 📁 Repository Structure
- `notebooks/` — full analysis notebook (EDA, modeling, evaluation)
- `sql/` — data cleaning and validation scripts
- `app.py` — Streamlit dashboard source
- `dashboard_data/` — exported model outputs consumed by the dashboard

## 📈 Dashboard Features
1. **Demand Forecast** — historical trends + forward forecast with 95% empirical prediction intervals
2. **Inventory & Safety Stock** — per-department reorder points and service-level trade-off curves
3. **Logistics Risk** — shipping mode performance scorecard
4. **Business Impact** — quantified forecast accuracy gains and estimated cost savings
5. **Ask a Question** — grounded AI assistant answering questions using only the project's real data

## 🖼️ Screenshots
<img width="1900" height="293" alt="Screenshot 2026-09-30 134834" src="https://github.com/user-attachments/assets/86e2e62b-59af-4739-a0f7-3b7d9d14e7c9" />
<img width="1452" height="760" alt="Screenshot 2026-09-30 134859" src="https://github.com/user-attachments/assets/bc082757-63cd-4169-addd-e6d28fb15ffc" />
<img width="1462" height="538" alt="Screenshot 2026-09-30 134911" src="https://github.com/user-attachments/assets/c2827de6-8927-4136-a497-3344e408fb50" />
<img width="1902" height="522" alt="Screenshot 2026-09-30 135258" src="https://github.com/user-attachments/assets/043f390e-8ecb-4f0e-bcd1-378623cbe11d" />
<img width="1493" height="832" alt="Screenshot 2026-09-30 135323" src="https://github.com/user-attachments/assets/32847b61-7c7b-4385-b309-995f29e9addc" />
<img width="1445" height="477" alt="Screenshot 2026-09-30 135334" src="https://github.com/user-attachments/assets/5629b43f-73af-4b84-a4d6-fd6afe40cb80" />
<img width="1487" height="851" alt="Screenshot 2026-09-30 135419" src="https://github.com/user-attachments/assets/85820f10-6673-4b38-bad1-68f49cec8873" />
<img width="1897" height="800" alt="Screenshot 2026-09-30 135448" src="https://github.com/user-attachments/assets/fedaf811-3fee-40be-8bf7-ed28c35c1a09" />
<img width="1893" height="822" alt="Screenshot 2026-09-30 135629" src="https://github.com/user-attachments/assets/aebe56a0-f1d9-4c14-9ed4-96df38cddfb1" />



## ⚠️ Known Limitations
- Analysis period restricted to Jan 2015–Mar 2017 due to a data completeness issue discovered during EDA (documented in the notebook).
- Estimated dollar savings figures are illustrative and scoped to department-level aggregation; SKU-level analysis would scale these findings substantially.
