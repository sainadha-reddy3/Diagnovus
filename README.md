# 🏥 Multi-Disease Prediction System using Streamlit and Machine Learning

This project is a unified **Streamlit web application** that predicts the likelihood of multiple diseases — **Diabetes, Heart Disease, Parkinson's, Lung Cancer**, and **Hypo-Thyroid** — using trained **ML models** built with **scikit-learn**.

📌 Features


Multiple disease prediction modules in a single Streamlit app
Clean, form-based interface for entering patient data
Real-time prediction using pre-trained .sav model files
Deployed on AWS (EC2), demonstrating a full cloud deployment pipeline



🧠 Diseases covered

DiseaseStatusAlgorithmHeart Disease✅ AvailableLogistic RegressionLung Cancer✅ AvailableLogistic RegressionParkinson's Disease✅ AvailableSupport Vector Machine (SVM)Hypo-Thyroid✅ AvailableLogistic RegressionDiabetes🚧 Planned— (training notebook not yet added)

Each disease module takes relevant patient inputs (e.g., cholesterol and chest pain type for heart disease; jitter/shimmer voice metrics for Parkinson's) and returns a prediction using the corresponding trained model.


🚀 Tech stack


Frontend: Streamlit, streamlit-option-menu
ML/Data: scikit-learn, pandas, numpy, statsmodels
Visualization (training/EDA): matplotlib, seaborn
Model persistence: pickle (.sav files)
Cloud infrastructure: AWS (EC2, S3, IAM) provisioned with Terraform
Deployment: Ubuntu EC2 instance running Streamlit directly



📁 Project structure

Diagnovus/
├── app.py                              # Main Streamlit application
├── Models/                             # Trained model files (.sav)
│   ├── heart_disease_model.sav
│   ├── lungs_disease_model.sav
│   ├── parkinsons_model.sav
│   └── Thyroid_model.sav
├── Heart_Disease_Prediction.ipynb       # Training notebook - Heart Disease
├── Lung_Cancer.ipynb                    # Training notebook - Lung Cancer
├── Parkinson's_Disease_Detection.ipynb  # Training notebook - Parkinson's
├── Thyroid.ipynb                        # Training notebook - Thyroid
├── *.csv                                # Datasets used for training
├── requirements.txt
└── README.md


📦 How to run locally


Clone the repository


bash   git clone https://github.com/sainadha-reddy3/Diagnovus.git
   cd Diagnovus


Install dependencies


bash   pip install -r requirements.txt


Run the app


bash   streamlit run app.py


Open the local URL Streamlit prints (usually http://localhost:8501), choose a disease from the dropdown, and fill out the form to get a prediction.



☁️ Cloud deployment (AWS)

This project is deployed on AWS using infrastructure provisioned with Terraform:


VPC + public subnet for networking
EC2 (t3.micro) running Ubuntu 22.04, hosting the Streamlit app
Security Group allowing SSH (22) and Streamlit (8501) access
S3 bucket for model artifact storage
IAM role granting the EC2 instance least-privilege, read-only access to the S3 bucket


The Terraform configuration for this deployment lives in the terraform/ directory of this repo (or a separate infra repo — update this line to match wherever you keep it).

To deploy your own copy:


Provision the infrastructure: terraform init && terraform apply (inside the terraform/ folder)
SSH into the created EC2 instance
Clone this repo and install dependencies as described above
Run the app with streamlit run app.py --server.port=8501 --server.address=0.0.0.0
Access it at http://<your-ec2-public-ip>:8501



🔮 Future improvements


Add a Diabetes prediction module (dataset already included, training notebook pending)
Containerize with Docker for consistent deployment
Add a CI/CD pipeline (GitHub Actions → ECR → EC2) for automated deployments
Move model files to S3 and load them at runtime instead of bundling in the repo
Add basic monitoring via CloudWatch