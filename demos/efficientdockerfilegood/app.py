# Demostración basada en material del curso de autoestudio Container Training 
# publicado en https://github.com/jpetazzo/container.training 
# creado por Jérôme Petazzoni y otros contribuidores.
#
# Código de ejemplo aplicación Flask
# https://github.com/docker/awesome-compose/blob/master/flask/app/app.py

from flask import Flask
app = Flask(__name__)

@app.route('/')
def hello():
    return "Efficient Dockerfile? Yes!"

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=5000)