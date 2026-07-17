from fastapi import FastAPI

app = FastAPI()

@app.get("/")
def leer_raiz():
    return {
        "estado": "Activo",
        "mensaje": "¡Hola, mundo! Esta API corre en un contenedor Docker 🐳",
        "proyecto": "Cloud Native Back End - Portafolio"
    }

@app.get("/saludo/{nombre}")
def saludar(nombre: str):
    return {"mensaje": f"¡Hola {nombre}, bienvenido a la nube!"}