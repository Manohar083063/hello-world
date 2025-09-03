from flask import Flask, jsonify
import os


app = Flask(__name__)


@app.route("/")
def hello():
return jsonify({
"message": "Hello, World from ECS Fargate!",
"container": os.environ.get("HOSTNAME", "unknown"),
})


@app.route("/health")
def health():
return "OK", 200


if __name__ == "__main__":
# Bind to 0.0.0.0 for Docker, default port 8080
port = int(os.environ.get("PORT", 8080))
app.run(host="0.0.0.0", port=port)
