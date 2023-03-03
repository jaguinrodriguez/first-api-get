# Importo flask --> servidor web basado en python
from flask import Flask
# Creo una aplicación --> un servidor web
app = Flask(__name__)
# Creo una ruta en mi dirección principal --> /{project-id}/asr/short_audio
@app.route('/')
# Cuando alguien llame a este servidor web a la ruta principal, lo que va a hacer es ejecutar la siguiente función de python
# Esta función me va a devolver un texto
def hello_world():
    return "Hello World"
# Si has ejecutado este fichero a través de la consola principal de python, quiero que me ejecutes el servidor web
# Lo hace dentro de la dirección IP del ordenador host
# Expón este contenedor a través de la IP principal que tenga el servidor que la aloje
if __name__ == '__main__':
    app.run(host='0.0.0.0')

# las lineas 2,4,14 y 15 son comunes para cualquier proyecto
# nosotros sólo vamos a tener que cambiar la 6,9 y 10