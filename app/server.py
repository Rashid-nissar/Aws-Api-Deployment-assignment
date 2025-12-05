cat > server.py <<'PY'
from flask import Flask
app = Flask("app")

@app.route("/")
def home():
    return "Application Running successfully!"

@app.route("/health")
def health():
    return "OK", 200

if _name_ == "_main_":
    app.run(host="0.0.0.0", port=8080)
PY