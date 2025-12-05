#!/bin/bash
yum update -y
yum install -y python3-pip
pip3 install flask

mkdir -p /opt/app
cd /opt/app

cat > server.py <<'EOF'
from flask import Flask
app = Flask(_name_)

@app.route("/")
def root():
    return "hello"

@app.route("/health")
def health():
    return "ok"

if _name_ == "_main_":
    app.run(host="0.0.0.0", port=8080)
EOF

nohup python3 /opt/app/server.py > /opt/app/app.log 2>&1 &