APT DevOps Assessment – Backend API Deployment on AWS

This project implements a complete AWS backend deployment using *Terraform*, including VPC, subnets, NAT Gateway, EC2, Application Load Balancer (ALB), Target Group, and user-data automation.

The backend API is successfully deployed and accessible through the ALB:

### *ALB URL*
http://apt-alb-540218950.ap-south-1.elb.amazonaws.com/

---

## ✔ Completed Project Requirements

### *1. VPC Setup*
- 1 VPC created  
- 2 Public Subnets  
- 2 Private Subnets  
- Internet Gateway attached  
- NAT Gateway for private subnet outbound internet access  

### *2. EC2 Instance*
- Runs inside *private subnet*  
- No public IP (as per requirement)  
- Application installed via *user-data*  
- Runs Flask API on *port 8080*  
- Includes /health endpoint for load balancer checks  

### *3. Application Load Balancer*
- ALB placed in *public subnets*  
- Listener on port *80*  
- Forwarding rule → Target Group (HTTP 8080)  
- Health check path: */health*  
- Target shows *Healthy*

### *4. Terraform Automation*
- Terraform used for *one-click deploy* and *one-click destroy*  
- EC2, ALB, networking, and routing all created automatically  
- No manual resource creation required  

---

## 📁 Project Structure

apt-project/ │ ├── app/ │   └── server.py             # Flask API running on port 8080 │ ├── terraform/ │   └── main.tf               # Complete infrastructure code │ ├── scripts/ │   ├── deploy.sh             # One-click deploy │   ├── destroy.sh            # One-click destroy │   └── userdata.sh           # EC2 boot script │ └── screenshots/ ├── alb.png               # ALB screenshot ├── target-group.png      # Target group healthy screenshot └── health.png            # API working through ALB

---

## 🧪 API Endpoints

### *Root Endpoint*

GET / Response: "Application running successfully"

### *Health Check Endpoint*

GET /health Response: "ok"

These endpoints are accessible only through the ALB.

---

## 🖼 Screenshots Included (as per assessment)

### *1. ALB Screenshot*  
Shows ALB active + DNS name.

### *2. Target Group Screenshot*  
Shows *Healthy*, port 8080, path /health.

### *3. API Output Screenshot*  
Shows / and /health response via ALB URL.

All screenshots are placed inside the *screenshots/* folder.

---

## ▶ Terraform Deployment Steps

### *1. Initialize Terraform*

cd terraform terraform init

### *2. Deploy Entire Infrastructure*

bash ../scripts/deploy.sh

### *3. Destroy Infrastructure*

bash ../scripts/destroy.sh

---


submitted by :
RASHID NISSAR WANI
DEVOPS ENGINEER - ASSESSEMENT SUBMISSION TO ALGO TREADING PLATFORM