# app.py

from flask import Flask, jsonify

app = Flask(__name__)

@app.route('/health', methods=['GET'])
def health_check():
    return jsonify({"status": "UP"}), 200

@app.route('/', methods=['GET'])
def home():
    return jsonify({"message": "K8S security hardening."}), 200

@app.route('/secure', methods=['GET'])
def secure():
    return jsonify({
        "message": "This is a secure endpoint.",
        "description": "You've accessed a restricted endpoint with security in mind."
    }), 200

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=80)
