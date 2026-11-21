<div align="center">

# 🚗 Victorian Road Crash Intelligence & Severity Prediction

### From Historical Crash Data to Road Safety Insights & Machine Learning

**An End-to-End Data Analytics, Business Intelligence & Machine Learning Portfolio Project**

![Python](https://img.shields.io/badge/Python-3776AB?style=for-the-badge&logo=python&logoColor=white)
![PostgreSQL](https://img.shields.io/badge/PostgreSQL-4169E1?style=for-the-badge&logo=postgresql&logoColor=white)
![Power BI](https://img.shields.io/badge/Power_BI-F2C811?style=for-the-badge&logo=powerbi&logoColor=black)
![Scikit-learn](https://img.shields.io/badge/Scikit--learn-F7931E?style=for-the-badge&logo=scikitlearn&logoColor=white)

**Crash Trends • Geographic Analysis • Road Safety Insights • Severity Classification**

</div>

---

## 🌏 The Story Behind This Project

Every year, thousands of road crashes occur across Victoria, Australia.

But behind every crash is more than just a number.

There is information about **where it happened, when it occurred, the road conditions, and how severely people were injured**.

An area with thousands of crashes might attract the most attention. However, another area with fewer crashes could have a much higher proportion of fatal or serious injuries.

**This raises an important question:**

*Are we focusing only on where crashes happen, or are we also understanding where severe outcomes occur?*

### What if we could use historical data to understand:

- 📈 How have road crashes changed across Victoria over time?
- 📍 Which Local Government Areas (LGAs) record the most crashes?
- 🛣️ Why do rural and metropolitan areas show different severity patterns?
- 🚦 How are speed zones and road characteristics associated with crash severity?
- 🌙 How do lighting, weather, and time of day relate to crash outcomes?
- 🤖 Can machine learning classify reported crashes by injury severity?

**That's exactly what this project explores.**

Using historical Victorian road crash data from **2012–2025**, I developed an end-to-end analytics solution that integrates multiple datasets, investigates road-safety patterns, presents findings through an interactive Power BI dashboard, and evaluates machine learning models for crash-severity classification.

---

## 📊 Interactive Power BI Dashboard

A central component of this project is an interactive Power BI dashboard that brings together historical crash trends, geographic patterns and injury-severity analysis.

![Victorian Road Crash Intelligence Dashboard](Victorian%20Road%20Crash%20Intelligence%20Dashboard.png)

*Victorian Road Crash Intelligence Dashboard — Historical Crash Trends, Geographic Patterns & Severity Analysis (2012–2025).*

### Dashboard Features

- **Five KPIs:** Total crashes, fatal crashes, serious-injury crashes, other-injury crashes and severe-crash rate.
- **Annual Trends:** Historical crash counts from 2012 to 2025.
- **Geographic Analysis:** Top five LGAs by recorded crashes.
- **Monthly Patterns:** Average road crashes by month.
- **Speed-Zone Analysis:** Severe-crash proportions across speed zones.
- **Area-Type Analysis:** Rural, metropolitan and regional severity comparisons.
- **Weekly Patterns:** Average daily crashes by weekday.
- **Severity Distribution:** Fatal, serious-injury and other-injury crashes.
- **Interactive Filters:** Year, LGA, severity, road type and weather.

### Explore the Dashboard

📊 **[Download the Interactive Power BI Dashboard](Victorian_Road_Crash_Intelligence_Dashboard.pbix)**

🖼️ **[View the Dashboard Image](Victorian%20Road%20Crash%20Intelligence%20Dashboard.png)**

*The `.pbix` file can be opened using Microsoft Power BI Desktop. Data-source paths may need to be updated on another computer.*

---

## ⭐ Project Highlights

| Area | Key Finding |
|---|---|
| 🚗 Total Recorded Crashes | 202,069 during 2012–2025 |
| 📈 Highest Annual Crash Count | 15,779 crashes in 2016 |
| 📍 Highest Crash Volume | Melbourne LGA — 10,434 crashes |
| 🛣️ Rural Victoria | 47.90% severe-crash proportion |
| 🚦 100 km/h Speed Zones | 50.18% severe-crash proportion |
| 🌙 Darkness Without Street Lights | 51.36% severe-crash proportion |
| 🤖 Selected ML Model | Balanced Logistic Regression |
| 🎯 Final Severe-Crash Recall | 60.3% |

*Severe crashes are defined as fatal or serious-injury crashes. Severe-crash proportions are calculated among the relevant recorded injury crashes.*

---

## 🎯 Business Problem & Objectives

### The Business Problem

Victorian road crash data is distributed across multiple datasets containing accident details, vehicle information, geographic locations, road conditions and people involved.

Analysing these datasets separately makes it difficult to develop a comprehensive understanding of crash frequency, injury severity and associated conditions.

Road-safety stakeholders need accessible, reliable information to investigate where crashes concentrate, how injury outcomes differ across locations, and which conditions warrant closer attention.

### What I Wanted to Achieve

1. Integrate multiple road crash datasets into one reliable analytical dataset.
2. Identify historical crash trends across years, months, weekdays and hours.
3. Examine geographic differences in crash frequency and injury severity.
4. Investigate speed zones, lighting, weather, road geometry and collision types.
5. Develop an interactive Power BI dashboard for visual exploration.
6. Build and compare machine learning models for severity classification.
7. Translate analytical findings into practical road-safety investigation priorities.

---

## 🛠️ Tools & Technologies

| Tool | How I Used It |
|---|---|
| 🐍 **Python & Pandas** | Data cleaning, integration, transformation and exploratory analysis |
| 🗄️ **PostgreSQL** | Historical trends, geographic comparisons and severity analysis using SQL |
| 📊 **Power BI** | Interactive dashboard, KPI development and data visualisation |
| 🤖 **Scikit-learn** | Classification modelling, preprocessing and performance evaluation |
| ☁️ **Google Colab** | Development and execution of Python notebooks |
| 📁 **CSV & Excel** | Working with raw and prepared datasets |
| 📈 **Matplotlib** | Data exploration and confusion matrix visualisation |

---

## 🔄 My End-to-End Project Workflow

### 01 — Data Collection & Understanding

Collected and examined eight Victorian road crash datasets covering accidents, crash events, locations, atmospheric conditions, geographic nodes, people, road surfaces and vehicles.

Reviewed dataset structures, missing values, identifiers and relationships between tables.

⬇️

### 02 — Data Cleaning & Integration with Python

Selected relevant columns, corrected data types, standardised dates and times, and investigated missing or inconsistent information.

Aggregated related records before merging them to avoid duplicating accidents.

**Output:** An integrated dataset containing **202,297 crash records and 34 columns**, including a limited number of records from 2026.

⬇️

### 03 — SQL Analysis with PostgreSQL

Imported the prepared dataset into PostgreSQL.

Developed queries to investigate crash trends, LGA rankings, severity distributions, road characteristics, lighting, speed zones and collision types.

⬇️

### 04 — Power BI Dashboard Development

Created an interactive dashboard bringing together key road crash indicators, historical patterns and geographic severity analysis.

⬇️

### 05 — Machine Learning

Developed a binary crash-severity classification problem.

Applied chronological splitting, leakage-aware feature selection, categorical encoding and classification algorithms.

Compared baseline Logistic Regression, Balanced Logistic Regression and Random Forest.

⬇️

### 06 — Business Insights & Recommendations

Translated historical findings into evidence-based road-safety investigation priorities.

Evaluated the selected model on unseen test data and documented its limitations.

---

## 🔍 Key Findings & Business Insights

### 1. 📈 Road Crash Frequency Has Fluctuated Over Time

Historical crash counts changed considerably between 2012 and 2025.

| Year | Total Crashes |
|---|---:|
| 2016 | 15,779 |
| 2020 | 12,170 |
| 2025 | 15,468 |

The highest annual count occurred in 2016, while crash frequency declined substantially in 2020 before increasing during subsequent years.

The severe-crash proportion also changed over time, showing that total crash counts and injury severity do not necessarily follow identical trends.

**💡 Business Insight:** Total recorded crashes alone cannot provide a complete picture of road-safety performance.

**✅ Recommendation:** Monitor both total crash counts and fatal or serious-injury outcomes when analysing historical trends.

### 2. 📍 Melbourne, Casey and Geelong Record High Crash Volumes

| Rank | LGA | Total Crashes |
|---|---|---:|
| 🥇 1 | Melbourne | 10,434 |
| 🥈 2 | Casey | 9,148 |
| 🥉 3 | Geelong | 7,896 |
| 4 | Hume | 7,327 |
| 5 | Dandenong | 6,912 |

Major metropolitan and urban LGAs account for substantial recorded crash volumes.

However, higher crash counts do not automatically indicate greater crash risk because locations differ in traffic exposure, population and road-network characteristics.

**💡 Business Insight:** Geographic crash concentration is useful for identifying where large numbers of incidents occur, but it should not be treated as a direct measure of road danger.

**✅ Recommendation:** Investigate high-volume LGAs alongside traffic volumes, road characteristics and injury-severity outcomes.

### 3. 🛣️ Rural Victoria Has a Higher Severe-Crash Proportion

| Area Type | Severe-Crash Proportion |
|---|---:|
| Rural Victoria | 47.90% |
| Metropolitan Melbourne | 34.81% |
| Regional Cities & Towns | 34.32% |

Although metropolitan Melbourne records more crashes overall, rural Victoria has a considerably higher proportion of fatal and serious-injury outcomes.

The rural severe-crash proportion is approximately **13 percentage points higher** than metropolitan Melbourne.

**💡 Business Insight:** Areas with the highest crash volumes are not necessarily those with the highest proportions of severe injuries.

**✅ Recommendation:** Investigate rural road design, speed environments, roadside hazards and other circumstances associated with serious injury outcomes.

### 4. 🚦 Higher Speed Zones Show Elevated Crash Severity

| Speed Zone | Severe-Crash Proportion |
|---|---:|
| 40 km/h | 31.82% |
| 100 km/h | 50.18% |

The 60 km/h speed zone recorded the highest crash volume, with 65,793 crashes.

However, the 100 km/h category showed a substantially higher severe-crash proportion.

**💡 Business Insight:** Higher-speed road environments warrant closer attention when investigating serious injury outcomes.

**✅ Recommendation:** Examine operating speeds, roadside infrastructure, road geometry and traffic exposure before considering specific interventions.

*The recorded speed zone is not the same as the vehicle's actual speed at impact.*

### 5. 🌙 Darkness Without Street Lighting Is Associated With Higher Severity

| Lighting Condition | Severe-Crash Proportion |
|---|---:|
| Darkness without street lights | 51.36% |
| Daylight | 36.78% |

Crashes occurring in darkness without street lighting had a severe-crash proportion approximately 14.6 percentage points higher than those occurring during daylight.

**💡 Business Insight:** Nighttime road environments may require additional investigation into visibility and road infrastructure.

**✅ Recommendation:** Assess lighting, road markings, roadside hazards and nighttime traffic conditions at relevant locations.

### 6. 📅 Road Crash Frequency Varies by Time

| Category | Finding |
|---|---|
| Highest average monthly crashes | March — 1,363 |
| Lowest average monthly crashes | September — 1,065 |
| Highest average daily crashes | Friday — 43.58 |
| Lowest average daily crashes | Sunday — 33.51 |
| Highest hourly concentration | Around 3 PM |

The afternoon period, particularly 3 PM–6 PM, recorded relatively high crash frequency.

**💡 Business Insight:** Recorded crashes show recurring time-based patterns.

**✅ Recommendation:** Use historical temporal trends to guide further traffic investigations, considering differences in vehicle movements and exposure.

### 7. 🚗 Fixed-Object and Pedestrian Collisions Show High Severity

| Collision Type | Severe-Crash Proportion |
|---|---:|
| Fixed-object collisions | 51.95% |
| Pedestrian collisions | 47.39% |

Vehicle-to-vehicle collisions represented the largest overall crash volume.

**💡 Business Insight:** Collision types differ in both frequency and injury severity, so total crash counts should not be the only consideration.

**✅ Recommendation:** Investigate roadside hazards, pedestrian environments and recurring collision configurations.

> **Important:** These findings describe historical associations. They do not establish that particular road conditions caused the observed injuries.

---

## 🤖 Machine Learning — Can We Classify Crash Severity?

Historical analysis helps us understand what happened.

The next step was to investigate whether machine learning could distinguish severe from non-severe injury outcomes using road, time, location and environmental information.

### Prediction Objective

The original severity classification was converted into a binary target.

| Class | Meaning |
|---|---|
| 0 — Non-Severe | Other injury crash |
| 1 — Severe | Fatal or serious injury crash |

### Features Used

Eleven contextual features were selected.

| Category | Selected Features |
|---|---|
| Temporal | Month, day of week, hour |
| Road | Speed zone, road type, road geometry |
| Environment | Lighting, weather, surface conditions |
| Geographic | LGA, urban/rural classification |

Post-crash injury counts and other outcome-revealing variables were excluded to reduce target leakage.

### Chronological Data Splitting

| Dataset | Period | Purpose |
|---|---|---|
| Development Training | 2012–2020 | Train candidate models |
| Validation | 2021–2022 | Compare and select models |
| Final Training | 2012–2022 | Retrain selected model |
| Final Testing | 2023–2025 | Evaluate on held-out data |

Chronological splitting was used to assess how models trained on earlier crash records generalised to later periods.

### 🧪 Model Performance Comparison

**Validation Period: 2021–2022**

| Model | Precision | Recall | F1-Score | ROC-AUC |
|---|---:|---:|---:|---:|
| Baseline Logistic Regression | 0.521 | 0.230 | 0.320 | 0.629 |
| **Balanced Logistic Regression** | **0.434** | **0.607** | **0.506** | **0.629** |
| Random Forest | 0.451 | 0.294 | 0.356 | 0.594 |

### 🏆 Selected Model: Balanced Logistic Regression

Balanced Logistic Regression achieved the highest recall and F1-score during validation.

It was selected because identifying a greater proportion of actual severe crashes was the primary classification objective.

### Final Model Performance

**Testing Period: 2023–2025**

| Metric | Result |
|---|---:|
| Accuracy | 57.9% |
| Precision | 42.4% |
| Recall | 60.3% |
| F1-Score | 0.498 |
| ROC-AUC | 0.619 |

### What Do These Results Mean?

The original Logistic Regression baseline identified only **21.8% of actual severe crashes** in the final testing period.

Balanced Logistic Regression improved recall to **60.3%**.

This represents a substantial improvement in severe-crash identification.

However, the balanced model also generated more false-positive predictions, and its ROC-AUC remained relatively low.

Approximately 40% of actual severe crashes were still missed.

**The machine learning component demonstrates a proof of concept rather than a production-ready road-safety prediction system.**

The model estimates injury severity **conditional on a reported crash occurring**. It does not predict the probability that a crash will occur at a particular location.

### Explore the Machine Learning Analysis

🤖 **[Open Crash Severity Prediction Notebook](Crash_Severity_Prediction.ipynb)**

---

## 💼 Business Recommendations

Based on the historical findings, five road-safety investigation priorities were identified.

| Priority | Recommendation | Potential Business Value |
|---|---|---|
| 1 | Investigate rural severe-crash patterns | Better understanding of serious-injury concentrations |
| 2 | Examine high-speed road environments | Evidence for targeted infrastructure assessments |
| 3 | Assess nighttime and unlit road locations | Identification of visibility-related investigation priorities |
| 4 | Investigate fixed-object and pedestrian collisions | More focused collision-specific road-safety analysis |
| 5 | Combine crash frequency with injury severity | Better-informed geographic investigation priorities |

These recommendations are based on descriptive findings and require additional engineering, traffic exposure and feasibility assessments before implementation.

---

## 📂 Explore the Project Files

The complete project workflow, analysis notebooks, SQL queries, dashboard and supporting documents are available below.

| Component | Clickable Project File | Description |
|---|---|---|
| 🐍 Python | [Data Understanding & Preparation](Data_Understanding.ipynb) | Data understanding, cleaning, integration and exploratory analysis |
| 🤖 Machine Learning | [Crash Severity Prediction](Crash_Severity_Prediction.ipynb) | Model training, comparison, evaluation and conclusions |
| 🗄️ PostgreSQL | [SQL Analysis](road_crash_sql_analysis.sql) | Historical trends, geographic comparisons and severity analysis |
| 📊 Power BI | [Download Power BI Dashboard](Victorian_Road_Crash_Intelligence_Dashboard.pbix) | Editable interactive dashboard |
| 🖼️ Dashboard Image | [View Dashboard Preview](Victorian%20Road%20Crash%20Intelligence%20Dashboard.png) | Visual overview of the dashboard |
| 📁 Prepared Data | [Download Master Dataset ZIP](master_crash_data.zip) | Compressed integrated crash dataset |
| 📄 Documentation | [Problem Statement](Problem%20Statement.docx) | Project objectives, methodology, roadmap and data dictionary |
| 💼 Business Report | [Business Outcome Report](Business%20Outcome%20Report.docx) | Key findings, business interpretations and recommendations |
| 🌐 Original Raw Data | [Official Victorian Government Data Portal](https://discover.data.vic.gov.au/dataset/victoria-road-crash-data) | Original publicly available CSV datasets |

### Repository Structure

```text
Victorian-Road-Crash-Intelligence/
│
├── Data_Understanding.ipynb
├── Crash_Severity_Prediction.ipynb
│
├── road_crash_sql_analysis.sql
│
├── Victorian_Road_Crash_Intelligence_Dashboard.pbix
├── Victorian Road Crash Intelligence Dashboard.png
│
├── master_crash_data.zip
│
├── Problem Statement.docx
├── Business Outcome Report.docx
│
└── README.md
```

### How to Run the Project

1. Download the original datasets from the official Victorian Government portal.
2. Extract `master_crash_data.zip` to access the prepared CSV.
3. Open the Python notebooks in Google Colab or Jupyter Notebook.
4. Update the file paths in the notebooks to point to your local or Google Drive data.
5. Import the prepared dataset into PostgreSQL before running the SQL analysis.
6. Open the `.pbix` file using Microsoft Power BI Desktop.

*The Power BI data-source connection may require updating when opening the dashboard on a different computer.*

---

## 📚 About the Data

### Official Victorian Government Data Source

This project uses publicly available road crash data published by the Victorian Government's Department of Transport and Planning.

### 🔗 [Download the Original Victorian Road Crash Data](https://discover.data.vic.gov.au/dataset/victoria-road-crash-data)

**Dataset:** Victoria Road Crash Data  
**Publisher:** Victorian Government — Department of Transport and Planning  
**Format:** CSV  
**Project Study Period:** 2012–2025  
**Licence:** Creative Commons Attribution 4.0 International (CC BY 4.0)

### Original Datasets

Eight original datasets were examined during the project.

| Dataset | Description |
|---|---|
| `accident.csv` | Main accident information and severity |
| `accident_event.csv` | Events associated with recorded crashes |
| `accident_location.csv` | Road names and location characteristics |
| `atmospheric_cond.csv` | Weather and atmospheric conditions |
| `node.csv` | Geographic information and coordinates |
| `person.csv` | Person-level crash information |
| `road_surface_cond.csv` | Recorded road surface conditions |
| `vehicle.csv` | Vehicle-level crash information |

### How to Download the Raw Data

1. Visit the [Victorian Government Road Crash Data Portal](https://discover.data.vic.gov.au/dataset/victoria-road-crash-data).
2. Navigate to the available data resources.
3. Download the eight source CSV files.
4. Create a folder named `Raw_Data` on your computer.
5. Place the downloaded files in the folder.

**Why aren't the original raw datasets included?**

The raw datasets are relatively large and are publicly available through the official Victorian Government portal.

Providing the source link allows users to access the original data without duplicating the files unnecessarily.

### Prepared Dataset

The repository includes [master_crash_data.zip](master_crash_data.zip), containing the prepared accident-level dataset used for SQL, Power BI and machine learning analysis.

The complete master dataset contains:

- **202,297 records**
- **34 columns**
- **One record per crash**

A small number of 2026 records are present in the master dataset but were excluded from the primary historical analysis.

### Data Currency & Attribution

The source datasets are updated periodically. New downloads may contain additional or revised records, so independently reproduced results may differ from this project's data snapshot.

**Attribution:** Victorian Government, Department of Transport and Planning, *Victoria Road Crash Data*, licensed under CC BY 4.0.

This is an independent educational and professional portfolio project. It is not an official Victorian Government publication or endorsement.

---

## ⚠️ Project Limitations

- The dataset primarily covers reported fatal and injury crashes rather than every road incident.
- Higher crash counts do not automatically indicate greater road danger without traffic exposure information.
- Observed relationships between road conditions and severity do not establish causation.
- The machine learning model classifies injury severity rather than predicting crash occurrence.
- The final ROC-AUC of 0.619 indicates limited overall predictive discrimination.
- Important variables such as actual impact speed and driver behaviour were not included in the selected ML inputs.
- Historical data may be revised by the original publisher.
- The recommended road-safety actions have not been implemented or evaluated for real-world effectiveness.

---

## 🎯 Skills Demonstrated

**Data Preparation:** Python, Pandas, Data Cleaning, Data Transformation, Data Integration, Data Validation

**Data Analysis:** PostgreSQL, SQL, Exploratory Data Analysis, Historical Trends, Geographic Analysis

**Business Intelligence:** Power BI, Interactive Dashboard Development, KPI Reporting, Data Visualisation

**Machine Learning:** Logistic Regression, Random Forest, One-Hot Encoding, Binary Classification, Model Evaluation

**Business Analytics:** Problem Solving, Analytical Thinking, Business Insights, Data Storytelling, Evidence-Based Recommendations

---

## 🏁 Final Takeaway

This project demonstrates how historical Victorian road crash data can be transformed into meaningful insights about road-safety patterns and injury severity.

By combining **Python, PostgreSQL, Power BI and machine learning**, I integrated multiple datasets, investigated historical trends, developed an interactive dashboard and evaluated approaches to crash-severity classification.

One of the project's most important findings is that **areas with the highest recorded crash volumes are not necessarily those with the highest proportions of severe injuries**.

The machine learning component also reinforced an important lesson: improving severe-crash identification must be balanced against false positives and overall model reliability.

**The real value of analytics lies not simply in building dashboards or predictive models, but in transforming data into clear evidence that supports better-informed decisions.**

---

<div align="center">

### 🚗 From Crash Data to Road Safety Intelligence

**Python → PostgreSQL → Power BI → Machine Learning → Business Insights**

*An End-to-End Data Analytics, Business Intelligence & Machine Learning Portfolio Project.*

</div>
