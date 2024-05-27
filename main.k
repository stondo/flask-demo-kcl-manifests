import app

_config = app.App {
    name = "flask-demo"
    containers: {
        flaskdemo = {
            image = "stondo/flask_demo:314bc2c416b35cbbb6c4c6fd53adab0d48ce88d9"
            ports = [{containerPort = 5000}]
        }
    }
    service: {ports = [{port = 5000, targetPort = 5000}]}
    service: {type = "NodePort"}
}
