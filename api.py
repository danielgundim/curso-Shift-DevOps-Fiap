from flask import Flask, jsonify

app = Flask(__name__)

@app.route('/aluno/<nome>', methods=['GET'])
def aluno(nome):
    return jsonify({"message": f"Parabéns! Você é um aluno da Fiap. E subiu seu primeiro container."})

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=5000)
