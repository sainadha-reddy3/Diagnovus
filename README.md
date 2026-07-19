# 🏥 Multi-Disease Prediction System using Streamlit and Machine Learning

This project is a unified **Streamlit web application** that predicts the likelihood of multiple diseases using trained **ML models** built with **scikit-learn**. Built as a practice/portfolio project using public health datasets — **not intended for real medical or diagnostic use.**

## 📌 Features

- Multiple disease prediction modules in a single Streamlit app
- Clean, form-based interface for entering patient data
- Real-time prediction using pre-trained `.sav` model files
- Deployed on AWS (EC2), demonstrating a full cloud deployment pipeline

## 🧠 Diseases covered

| Disease | Status | Algorithm |
|---|---|---|
| Heart Disease | ✅ Available | Logistic Regression |
| Lung Cancer | ✅ Available | Logistic Regression |
| Parkinson's Disease | ✅ Available | Support Vector Machine (SVM) |
| Hypo-Thyroid | ✅ Available | Logistic Regression |
| Diabetes | 🚧 Planned | — (training notebook not yet added) |

## 🚀 Tech stack

- **Frontend:** Streamlit, streamlit-option-menu
- **ML/Data:** scikit-learn, pandas, numpy, statsmodels
- **Cloud infrastructure:** AWS (EC2, S3, IAM) provisioned with Terraform
- **Deployment:** Docker container running on an Ubuntu EC2 instance

## 📦 How to run locally

```bash
git clone https://github.com/sainadha-reddy3/Diagnovus.git
cd Diagnovus
pip install -r requirements.txt
streamlit run app.py
```

## ☁️ Cloud deployment (AWS)

Deployed using infrastructure provisioned with Terraform: VPC + public subnet, EC2 (t3.micro) running Ubuntu 22.04, Security Group (SSH + Streamlit access), S3 bucket for model storage, and an IAM role granting least-privilege access.

## 🔮 Future improvements

- Add a Diabetes prediction module
- CI/CD pipeline (GitHub Actions → ECR → EC2)
- Move model files to S3 and load at runtime
- CloudWatch monitoring