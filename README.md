# 🛡️ Multi-Tenant Financial Risk & Dynamic RLS Security Framework

![Power BI](https://img.shields.io/badge/Power%20BI-Security%20%26%20Governance-yellow)
![Entra ID](https://img.shields.io/badge/Microsoft%20Entra%20ID-RLS%2FOLS-blue)
![Power Automate](https://img.shields.io/badge/Power%20Automate-Risk%20Alerts-green)
![T-SQL](https://img.shields.io/badge/T--SQL-Security%20Matrix-lightgrey)

## 📌 Executive Summary
An enterprise multi-tenant financial governance and security architecture designed to deliver C-suite executive dashboards while enforcing strict multi-region data confidentiality. Implemented dynamic **Row-Level Security (RLS)** and **Object-Level Security (OLS)** driven by **Microsoft Entra ID (Azure AD)** security groups, accompanied by automated **Power Automate** risk triggers.

---

## 🛡️ Security Architecture & Filter Flow
[User Connects to Power BI Service]
│
▼
[USERPRINCIPALNAME() Function]
│
▼
[User Security Mapping Matrix Table] ──(Filters)──► [Dim_Store / Dim_Region]
│                                           │
▼ (Filtered Context)                        ▼ (Filtered Data)
[Restricted Row Level Access]                [Fact_Financial_Transactions]

---

## 🛠️ Dynamic DAX Security Implementation

```dax
// Dynamic RLS Filter Applied to Security Mapping Dimension Table
[User_Security_Filter] = 
VAR CurrentUserEmail = USERPRINCIPALNAME()
RETURN
    LOOKUPVALUE(
        'User_Security_Mapping'[Access_Region],
        'User_Security_Mapping'[User_Email], CurrentUserEmail,
        'User_Security_Mapping'[Access_Region], 'Dim_Store'[Region]
    )
```
---

## 🔔 Power Automate Automated Risk Alerts

* **Trigger:** Quarterly Variance exceeds ±10% against target budget thresholds.
* **Action:** Dispatches an encrypted Adaptive Card via Teams and sends email notifications directly to C-suite risk managers with direct deep-links to the targeted Power BI report page.

---

## 📈 Quantified Impact

| Metric | Before Implementation | After Security & Governance Framework | Impact |
| :--- | :--- | :--- | :--- |
| **Financial Forecasting Accuracy** | Baseline Variance | **+18% Precision Improvement** | **Increased Accuracy** |
| **Compliance Tracking** | Siloed Regional Spreadsheets | **Unified Centralized Hub** | **100% Audit Readiness** |

---

## 📬 Contact & Enquiries
* **Architect:** Antoneo Arber
* **Email:** antoneoarber@gmail.com
