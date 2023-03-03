# Instrucciones que van a generar una imagen que permita ejecutar en cualquier ordenador la aplicación que hemos descrito dentro del script app.py
# Parto de una imagen de ubuntu (no es necesario instalar Linux, puedo hacerlo con python3, no necesito ubuntu, pero así ya me queda)
FROM ubuntu:latest
# Best Praxis --> etiquetar
LABEL project = "nuclio-flask-api"
LABEL version="1.0"
# apt es un comando linux --> le estoy diciendo que le voy a pasar unas librerías que va a instalar
# La consola de comandos te suele pedir confirmación --> "-y": le digo sí a todo
RUN apt update -y
# instalo python 3-pip
RUN apt install -y python3-pip
# Hasta aquí tengo ubuntu con python3 instalado
# Copio todos los ficheros que tengo en la ruta principal (3), dentro de la carpeta app del contenedor
# El contenedor sólo va a tener las carpetas de Linux
COPY . /app
# Le decimos a la terminal que nuestro directorio de trabajo está dentro de app
# Si yo hiciera un ls me aparecerían sólo los tres ficheros que ha copiado
WORKDIR /app
# Le decimos que utilice python para instalar todas las librerías que hay en requirements
RUN pip3 install -r requirements.txt
# Defino python3 como punto de entrada (me abre la consola con python3)
ENTRYPOINT ["python3"]
# Me ejecuta el app.py, y así me levanta el servidor web que tengo definido dentro
CMD ["app.py"]