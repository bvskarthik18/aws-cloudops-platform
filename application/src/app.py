from flask import Flask, jsonify
import os
import socket
from datetime import datetime, timezone

app = Flask(__name__)


@app.route("/")
def home():
    return jsonify({
        "application": "aws-cloudops-platform",
        "status": "running",
        "hostname": socket.gethostname(),
        "timestamp": datetime.now(timezone.utc).isoformat()
    })


@app.route("/health")
def health():
    return jsonify({
        "status": "healthy"
    }), 200


@app.route("/metrics")
def metrics():
    return jsonify({
        "application": "aws-cloudops-platform",
        "environment": os.getenv("ENVIRONMENT", "dev"),
        "hostname": socket.gethostname()
    })


if __name__ == "__main__":
    app.run(
        host="0.0.0.0",
        port=8080
    )