from flask import Flask, request, jsonify
from datetime import datetime

app = Flask(__name__)

@app.route('/', methods=['GET'])
def get_info():
  
    ip_address = request.remote_addr
    timestamp = datetime.utcnow().isoformat() + "Z"

    # Return the JSON object
    return jsonify({
        "ip_address": ip_address,
        "timestamp": timestamp
    })

if __name__ == '__main__':
    
    app.run(host='0.0.0.0', port=5000)
