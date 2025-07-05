# 🏥 Multi-Disease Prediction System using Streamlit and Machine Learning

This project is a unified **Streamlit web application** that predicts the likelihood of multiple diseases — **Diabetes, Heart Disease, Parkinson's, Lung Cancer**, and **Hypo-Thyroid** — using trained **ML models** built with **scikit-learn**.

---

## 📌 Features

- ✅ Five disease prediction modules in a single app
- ✅ Clean Streamlit interface with user-friendly inputs
- ✅ Real-time prediction using `.sav` pre-trained ML models
- ✅ Background styling and optimized layout using Streamlit Option Menu

---

## 🚀 Technologies & Tools

- **Frontend**: Streamlit  
- **Backend/ML**: Python, scikit-learn, pandas, numpy  
- **ML Algorithms**:
  - Logistic Regression
  - Random Forest
  - AdaBoost
  - Support Vector Machine (SVM)
  - Voting Classifier (for hybrid models)
- **Saved Models**: Pickle (`.sav`)  
- **Deployment**: Local or Streamlit Cloud

---

## 🧠 Diseases Predicted

1. **Diabetes**  
   Inputs: Pregnancies, Glucose, Blood Pressure, Skin Thickness, BMI, Age, etc.

2. **Heart Disease**  
   Inputs: Age, Sex, Chest Pain, Cholesterol, Blood Pressure, Thal, etc.

3. **Parkinson’s Disease**  
   Inputs: Jitter, Shimmer, NHR, HNR, RPDE, PPE, DDP, etc.

4. **Lung Cancer**  
   Inputs: Smoking status, Gender, Fatigue, Wheezing, Coughing, etc.

5. **Hypo-Thyroid**  
   Inputs: Age, Sex, TSH, T3, TT4, Thyroxine status, etc.

---

## 📦 How to Run

1. **Clone the repository**
   ```bash
   git clone https://github.com/yourusername/streamlit-multidisease-prediction.git
   cd streamlit-multidisease-prediction
Install dependencies

bash
Copy
Edit
pip install -r requirements.txt
Run the app

bash
Copy
Edit
streamlit run app.py
Use the dropdown to choose a disease and fill out the form to get your prediction

📁 Project Structure
bash
Copy
Edit
📦 project-root/
 ┣ 📄 app.py                     # Main Streamlit application
 ┣ 📁 Models/                   # Contains .sav model files
 ┃ ┣ heart_disease_model.sav
 ┃ ┣ diabetes_model.sav
 ┃ ┣ parkinsons_model.sav
 ┃ ┣ thyroid_model.sav
 ┃ ┗ lungs_disease_model.sav
 ┣ 📄 requirements.txt
 ┗ 📄 README.md
