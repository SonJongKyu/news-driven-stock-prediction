# News-Driven Stock Movement Prediction using SVM

## 📘 Overview

This repository contains the code and experiments for the Master's thesis project titled **"News-Driven Stock Movement Prediction using SVM."**

We build a binary classification model using Support Vector Machines (SVM), leveraging both:

- Financial news sentiment (from titles/headlines),
- Technical indicators from stock price data.

The target variable is the **future stock price movement** (up/down).  
We apply this model to KOSPI-listed shipbuilding and electrical equipment companies.

---

## ⚙️ Install

To reproduce the results, you can install the required dependencies using either **pip** or **conda**.

```bash
# ▶ Option 1: Using pip
pip install -r requirements.txt

# ▶ Option 2: Using conda (recommended)
conda create -n stock-news python=3.9
conda activate stock-news
pip install -r requirements.txt

@misc{Son2025,
  author       = {Son, JongKyu},
  title        = {Stock Movement Prediction Leveraging News Data and Support Vector Machines},
  year         = {2025},
  url          = {https://github.com/SonJongKyu/news-driven-stock-prediction.git},
  note         = {Master's Thesis, Sungkyunkwan University}
}
