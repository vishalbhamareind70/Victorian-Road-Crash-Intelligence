# 🚗 Victorian Road Crash Intelligence & Severity Prediction

### From Historical Crash Data to Road Safety Insights & Machine Learning

**An End-to-End Data Analytics, Business Intelligence & Machine Learning Portfolio Project**

![Python](https://img.shields.io/badge/Python-3776AB?style=for-the-badge&logo=python&logoColor=white)
![PostgreSQL](https://img.shields.io/badge/PostgreSQL-4169E1?style=for-the-badge&logo=postgresql&logoColor=white)
![Power BI](https://img.shields.io/badge/Power_BI-F2C811?style=for-the-badge&logo=powerbi&logoColor=black)
![Scikit-learn](https://img.shields.io/badge/Scikit--learn-F7931E?style=for-the-badge&logo=scikitlearn&logoColor=white)

**Crash Trends • Geographic Patterns • Road Safety Intelligence • Severity Classification**

---

## 🌏 The Story Behind This Project

Every year, thousands of road crashes occur across Victoria, Australia.

But behind every crash is more than just a number.

There is information about **where it occurred, when it happened, the surrounding road conditions, and how severely people were injured**.

An area with thousands of reported crashes might attract the most attention. However, another area with fewer crashes could have a much higher proportion of fatal or serious injuries.

This raises an important question:

**Are we looking only at where crashes happen, or are we also understanding where severe outcomes occur?**

### What if we could use historical data to understand:

- 📈 How have road crash patterns changed across Victoria?
- 📍 Which Local Government Areas (LGAs) record the most crashes?
- 🛣️ Are rural crashes associated with more severe injuries?
- 🚦 How do speed zones and road characteristics relate to crash severity?
- 🌙 What role do lighting and environmental conditions play?
- 🤖 Can machine learning classify crashes by injury severity?

**That's exactly what this project explores.**

Using historical Victorian road crash data from **2012 to 2025**, I developed an end-to-end analytics solution that integrates multiple datasets, identifies meaningful patterns, presents insights through Power BI, and evaluates machine learning models for crash-severity classification.

---

## 📊 Interactive Power BI Dashboard

A central part of this project is an interactive Power BI dashboard that brings together the historical road crash analysis in one place.

![Victorian Road Crash Intelligence Dashboard](dashboard-overview.png)

*Victorian Road Crash Intelligence Dashboard — Historical Crash Trends, Geographic Patterns & Severity Analysis (2012–2025).*

The dashboard includes:

- **Five KPIs:** Total crashes, fatal crashes, serious-injury crashes, other-injury crashes and severe-crash rate.
- **Historical trends:** Annual and monthly crash patterns.
- **Geographic analysis:** Top LGAs by recorded crashes.
- **Road-safety analysis:** Severe-crash rates by speed zone and area type.
- **Temporal analysis:** Average daily crashes by weekday.
- **Severity distribution:** Fatal, serious-injury and other-injury proportions.
- **Interactive filters:** Year, LGA, severity, road type and weather.

📁 **Want to explore the interactive report?**

Download the [Power BI Dashboard](Victorian_Road_Crash_Intelligence_Dashboard.pbix) and open it using Microsoft Power BI Desktop.

*Note: This is an independent portfolio project, not an official Victorian Government publication or endorsement.*

---

## ⭐ Project Highlights

| Area | Key Finding |
|---|---|
| 🚗 Total Recorded Crashes | 202,069 during 2012–2025 |
| 📈 Highest Annual Crash Count | 15,779 crashes in 2016 |
| 📍 Leading LGA by Crash Count | Melbourne — 10,434 crashes |
| 🛣️ Rural Victoria | 47.90% severe-crash proportion |
| 🚦 100 km/h Speed Zones | 50.18% severe-crash proportion |
| 🌙 Darkness Without Street Lights | 51.36% severe-crash proportion |
| 🤖 Selected ML Model | Balanced Logistic Regression |
| 🎯 Final Severe-Crash Recall | 60.3% |

*Severe crashes are defined as fatal or serious-injury crashes. Severity proportions are calculated among relevant recorded injury crashes.*

---

## 🎯 Business Problem & Objectives

### The Business Problem

Historical road crash information is spread across multiple datasets containing accident details, road characteristics, locations, weather conditions, vehicles and people involved.

Analysing these datasets separately makes it difficult to build a comprehensive understanding of crash frequency and injury severity.

Road-safety stakeholders need reliable information to investigate:

- Where recorded crashes are concentrated.
- How injury severity differs between geographic areas.
- Which road and environmental conditions are associated with severe crashes.
- How historical evidence could support future road-safety investigations.

### What I Wanted to Achieve

1. Integrate multiple Victorian road crash datasets into one reliable analytical dataset.
2. Identify historical crash trends across years, months, weekdays and hours.
3. Examine geographic differences in crash frequency and severity.
4. Investigate road, speed-zone, lighting and weather conditions.
5. Build an interactive Power BI dashboard.
6. Develop and compare machine learning classification models.
7. Translate analytical findings into practical business recommendations.

---

## 🛠️ Tools & Technologies

| Tool | How I Used It |
|---|---|
| 🐍 **Python & Pandas** | Data cleaning, transformation, aggregation and integration |
| 🗄️ **PostgreSQL** | Historical crash analysis using SQL |
| 📊 **Power BI** | Interactive dashboards, KPIs and data visualisations |
| 🤖 **Scikit-learn** | Classification modelling, preprocessing and evaluation |
| ☁️ **Google Colab** | Python notebook development and execution |
| 📁 **CSV & Excel** | Source datasets and prepared analytical data |
| 📈 **Matplotlib** | Visualisation of classification results |

---

## 🔄 My End-to-End Project Workflow

### 01 — Data Collection & Understanding

Examined eight Victorian road crash datasets covering accidents, events, locations, atmospheric conditions, geographic nodes, people, road surfaces and vehicles.

⬇️

### 02 — Data Cleaning & Integration with Python

Investigated missing values, data types, duplicate records and relationships between datasets.

Selected relevant columns, created derived features, aggregated related records and developed an accident-level master dataset.

**Output:** 202,297 records and 34 columns, including a small number of 2026 records.

⬇️

### 03 — SQL Analysis with PostgreSQL

Imported the master dataset into PostgreSQL.

Used SQL to investigate historical crash trends, geographic distributions, injury severity, collision types and road conditions.

⬇️

### 04 — Power BI Dashboard Development

Developed an interactive dashboard presenting crash statistics, historical patterns, geographic comparisons and severity analysis.

⬇️

### 05 — Machine Learning

Created a binary crash-severity classification target.

Applied chronological data splitting, feature selection, One-Hot Encoding and classification algorithms to evaluate severe-crash identification.

⬇️

### 06 — Business Insights & Recommendations

Translated the findings into evidence-based road-safety investigation priorities and documented the limitations of the predictive model.

---

## 🔍 Key Findings & Business Insights

### 1. 📈 Road Crash Frequency Has Fluctuated Over Time

Historical crash counts varied significantly during 2012–2025.

| Year | Recorded Crashes |
|---|---:|
| 2016 | 15,779 |
| 2020 | 12,170 |
| 2025 | 15,468 |

Crash frequency declined substantially in 2020 before increasing during subsequent years.

However, crash frequency and severe-injury proportions did not always follow the same pattern.

**💡 Business Insight:** Total recorded crashes alone cannot provide a complete picture of road-safety outcomes.

**✅ Recommendation:** Monitor both crash frequency and fatal or serious-injury outcomes when evaluating historical trends.

### 2. 📍 Melbourne, Casey and Geelong Record High Crash Volumes

The five leading LGAs by recorded crash count were:

| Rank | LGA | Total Crashes |
|---|---|---:|
| 1 | Melbourne | 10,434 |
| 2 | Casey | 9,148 |
| 3 | Geelong | 7,896 |
| 4 | Hume | 7,327 |
| 5 | Dandenong | 6,912 |

**💡 Business Insight:** Large metropolitan and urban areas account for substantial recorded crash volumes.

However, higher counts do not necessarily mean higher crash risk because traffic exposure differs across locations.

**✅ Recommendation:** Investigate recurring crash concentrations in high-volume LGAs while considering traffic volume and road-network characteristics.

### 3. 🛣️ Rural Victoria Shows Higher Severe-Crash Proportions

| Area Type | Severe-Crash Proportion |
|---|---:|
| Rural Victoria | 47.90% |
| Metropolitan Melbourne | 34.81% |
| Regional Cities & Towns | 34.32% |

Although metropolitan Melbourne recorded more crashes, rural Victoria had a substantially higher proportion of fatal or serious-injury outcomes.

**💡 Business Insight:** Geographic investigation priorities should consider injury severity alongside crash counts.

**✅ Recommendation:** Examine rural road design, speed environments, roadside hazards and other conditions associated with severe crashes.

### 4. 🚦 Higher Speed Zones Show Elevated Injury Severity

The analysis identified differences in severe-crash proportions across speed zones.

| Speed Zone | Severe-Crash Proportion |
|---|---:|
| 40 km/h | 31.82% |
| 100 km/h | 50.18% |

The 60 km/h category recorded the largest number of crashes, while 100 km/h zones showed higher severe-injury proportions.

**💡 Business Insight:** Higher-speed road environments warrant closer investigation when studying injury severity.

**✅ Recommendation:** Investigate high-speed roads alongside road geometry, infrastructure and traffic exposure before considering interventions.

### 5. 🌙 Darkness Without Street Lighting Is Associated With Higher Severity

| Lighting Condition | Severe-Crash Proportion |
|---|---:|
| Darkness without street lights | 51.36% |
| Daylight | 36.78% |

Crashes recorded in darkness without street lighting had a higher proportion of severe injuries than crashes recorded during daylight.

**💡 Business Insight:** Lighting and visibility conditions are important dimensions for road-safety investigation.

**✅ Recommendation:** Assess visibility, road markings, roadside hazards and nighttime traffic conditions at relevant locations.

### 6. 📅 Crash Frequency Varies Across Time

| Category | Finding |
|---|---|
| Highest average monthly crashes | March — 1,363 |
| Lowest average monthly crashes | September — 1,065 |
| Highest average daily crashes | Friday — 43.58 |
| Lowest average daily crashes | Sunday — 33.51 |
| Highest hourly concentration | Around 3 PM |

**💡 Business Insight:** Crash frequency follows recurring temporal patterns, with relatively high recorded volumes during particular weekdays and afternoon hours.

**✅ Recommendation:** Use historical time patterns to support further traffic investigations and road-safety planning.

### 7. 🚗 Fixed-Object and Pedestrian Collisions Show High Severity

| Collision Type | Severe-Crash Proportion |
|---|---:|
| Fixed-object collisions | 51.95% |
| Pedestrian collisions | 47.39% |

Vehicle-to-vehicle collisions accounted for the largest total number of crashes.

**💡 Business Insight:** Collision types differ in both frequency and injury severity.

**✅ Recommendation:** Investigate roadside hazards, pedestrian environments and recurring collision patterns when identifying potential safety priorities.

*These findings describe historical associations rather than causal relationships.*

---

## 🤖 Machine Learning — Can We Classify Crash Severity?

Understanding historical patterns is valuable, but machine learning provides an opportunity to investigate whether contextual information can distinguish severe from non-severe injury outcomes.

### Prediction Objective

The model classifies recorded crashes into two categories:

| Class | Meaning |
|---|---|
| 0 — Non-Severe | Other injury |
| 1 — Severe | Fatal or serious injury |

### Features Used

Eleven contextual features were selected:

- **Time:** Month, day of week and hour.
- **Road:** Speed zone, road type and geometry.
- **Environment:** Lighting, weather and surface conditions.
- **Location:** LGA and urban/rural classification.

Post-crash injury counts and other outcome-revealing variables were excluded to reduce target leakage.

### Training and Testing Strategy

| Dataset | Period |
|---|---|
| Development Training | 2012–2020 |
| Validation | 2021–2022 |
| Final Training | 2012–2022 |
| Final Testing | 2023–2025 |

Chronological splitting was used to evaluate how models generalised from earlier crash records to later ones.

### 🧪 Model Performance Comparison

**Validation Period: 2021–2022**

| Model | Precision | Recall | F1-Score | ROC-AUC |
|---|---:|---:|---:|---:|
| Baseline Logistic Regression | 0.521 | 0.230 | 0.320 | 0.629 |
| **Balanced Logistic Regression** | **0.434** | **0.607** | **0.506** | **0.629** |
| Random Forest | 0.451 | 0.294 | 0.356 | 0.594 |

### 🏆 Selected Model: Balanced Logistic Regression

Balanced Logistic Regression achieved the highest recall and F1-score during validation.

It was selected because identifying severe crashes was the primary classification objective.

### Final Model Performance

**Testing Period: 2023–2025**

| Metric | Final Result |
|---|---:|
| Accuracy | 57.9% |
| Precision | 42.4% |
| Recall | 60.3% |
| F1-Score | 0.498 |
| ROC-AUC | 0.619 |

### What Do These Results Mean?

The original Logistic Regression baseline identified only **21.8% of actual severe crashes** in the final testing period.

Balanced Logistic Regression increased recall to **60.3%**.

However, precision decreased and overall class discrimination remained limited.

The selected model still missed approximately 40% of actual severe crashes.

**The machine learning component is therefore a proof of concept, not a production-ready road-safety decision system.**

The model estimates injury severity conditional on a reported crash occurring. It does not predict whether a crash will happen.

---

## 💼 Business Recommendations

Based on the historical analysis, five investigation priorities were identified.

| Priority | Recommendation | Potential Business Value |
|---|---|---|
| 1 | Investigate rural road severity | Improve understanding of severe-injury concentrations |
| 2 | Examine high-speed road environments | Support targeted road infrastructure assessments |
| 3 | Assess nighttime and unlit roads | Identify visibility-related investigation priorities |
| 4 | Investigate fixed-object and pedestrian collisions | Support collision-specific safety analysis |
| 5 | Combine crash counts with severity indicators | Strengthen geographic decision-making |

These recommendations require further engineering, traffic exposure and feasibility assessments before implementation.

---

## 📂 Project Files & Structure

The repository contains:

```text
Victorian-Road-Crash-Intelligence/
│
├── Data_Understanding.ipynb
├── Crash_Severity_Prediction.ipynb
│
├── road_crash_sql_analysis.sql
│
├── Victorian_Road_Crash_Intelligence_Dashboard.pbix
├── dashboard-overview.png
│
├── master_crash_data.zip
│
├── Problem Statement.docx
├── Business Outcome Report.docx
│
└── README.md
```

### How to Explore the Project

| File | Description |
|---|---|
| `Data_Understanding.ipynb` | Data understanding, cleaning, integration and exploratory analysis |
| `Crash_Severity_Prediction.ipynb` | Machine learning classification and evaluation |
| `road_crash_sql_analysis.sql` | PostgreSQL analysis and validation queries |
| `Victorian_Road_Crash_Intelligence_Dashboard.pbix` | Editable Power BI dashboard |
| `dashboard-overview.png` | Visual preview of the dashboard |
| `master_crash_data.zip` | Compressed integrated dataset |
| `Problem Statement.docx` | Project problem, objectives, roadmap and data dictionary |
| `Business Outcome Report.docx` | Findings, business outcomes and recommendations |

### Running the Project

1. Download the original datasets from the official source below.
2. Extract `master_crash_data.zip` to access the prepared master CSV.
3. Open the Python notebooks in Google Colab or Jupyter Notebook.
4. Update the local or Google Drive dataset paths as required.
5. Import the prepared dataset into PostgreSQL before running the SQL queries.
6. Open the Power BI `.pbix` file using Power BI Desktop.

*Power BI data-source paths may need to be updated when opening the report on another computer.*

---

## 📚 About the Data

### Official Victorian Government Data Source

This project uses publicly available Victorian road crash data published by the Victorian Government's Department of Transport and Planning.

### 🔗 [Download the Original Victorian Road Crash Data](https://discover.data.vic.gov.au/dataset/victoria-road-crash-data)

**Dataset:** Victoria Road Crash Data  
**Publisher:** Victorian Government — Department of Transport and Planning  
**Study Period:** 2012–2025  
**Format:** CSV  
**Licence:** Creative Commons Attribution 4.0 International (CC BY 4.0)

### Original Datasets

Eight source datasets were examined:

| Dataset | Description |
|---|---|
| `accident.csv` | Main accident records and severity |
| `accident_event.csv` | Event-level crash information |
| `accident_location.csv` | Road and accident-location information |
| `atmospheric_cond.csv` | Atmospheric and weather conditions |
| `node.csv` | Geographic classifications and coordinates |
| `person.csv` | Person-level crash information |
| `road_surface_cond.csv` | Road surface conditions |
| `vehicle.csv` | Vehicle-level crash information |

### How to Download the Raw Datasets

1. Visit the [official Victorian Road Crash Data page](https://discover.data.vic.gov.au/dataset/victoria-road-crash-data).
2. Open the available data resources.
3. Download the required CSV files.
4. Create a local folder named `Raw_Data`.
5. Place the downloaded files inside that folder.

**Why are the raw datasets not uploaded to GitHub?**

The original files are relatively large and are available through the official Victorian Government portal.

Providing the source link makes them accessible without unnecessarily duplicating the data.

### Prepared Dataset

The repository includes `master_crash_data.zip`, containing the integrated dataset used for the analytical workflow.

The full master dataset contains **202,297 records and 34 columns**, including a small number of 2026 records.

The project's primary analysis focuses on 2012–2025.

**Data Currency Note:** The source datasets are periodically updated. Later downloads may contain additional or revised records, so independently reproduced results may differ from this project's snapshot.

### Data Attribution

Source: Victorian Government, Department of Transport and Planning, *Victoria Road Crash Data*, licensed under CC BY 4.0.

This analysis is an independent educational portfolio project and is not an official Victorian Government report.

---

## ⚠️ Project Limitations

- The source data predominantly covers recorded injury crashes.
- Crash counts do not automatically represent relative road danger without traffic exposure information.
- Historical associations do not establish causation.
- The selected machine learning model has limited predictive discrimination.
- The model classifies injury severity rather than predicting crash occurrence.
- Important additional variables, such as driver behaviour and actual impact speed, were not included.
- Findings may be affected by changes in data reporting or subsequent source revisions.
- Recommendations have not been implemented or evaluated for real-world effectiveness.

---

## 🎯 Skills Demonstrated

**Data Preparation:** Python, Pandas, Data Cleaning, Data Integration, Data Validation

**Data Analysis:** PostgreSQL, SQL, Exploratory Data Analysis, Historical Trends, Geographic Analysis

**Business Intelligence:** Power BI, Dashboard Development, KPI Reporting, Data Visualisation

**Machine Learning:** Logistic Regression, Random Forest, One-Hot Encoding, Classification, Model Evaluation

**Business Analytics:** Problem Solving, Business Insights, Data Storytelling, Evidence-Based Recommendations

---

## 🏁 Final Takeaway

This project demonstrates how historical road crash data can be transformed into meaningful insights about Victoria's road-safety patterns.

By combining **Python, PostgreSQL, Power BI and machine learning**, I integrated multiple datasets, explored historical trends, developed an interactive dashboard and evaluated methods for classifying crash severity.

One of the project's most important findings is that **areas with the highest number of crashes are not necessarily the areas with the highest proportion of severe injuries**.

The machine learning component also reinforced an important lesson: improving severe-crash detection must be balanced against false positives and the model's overall reliability.

**Data analytics is most valuable when it moves beyond numbers and helps people understand the problem, interpret the evidence and make better-informed decisions.**

---

### 🚗 From Data to Road Safety Intelligence

**Python → PostgreSQL → Power BI → Machine Learning → Business Insights**

*An end-to-end Data Analytics, Business Intelligence & Machine Learning portfolio project.*
