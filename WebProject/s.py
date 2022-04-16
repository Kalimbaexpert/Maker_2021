from flask import Flask, render_template, session, request, redirect, url_for
import socket

app = Flask(__name__)


server_port = 59475
max_users = 5 #maximum number of queued connections

server_socket = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
server_socket.bind(("", server_port))
server_socket.listen(max_users)


print ("Waiting for client on port ",server_port)
count = 0
while True:
    client_socket, client_address = server_socket.accept()
    print ("connection from ", client_address)
    while True:
        data = client_socket.recv(128)
        if not data:
            break
        print(count, 'received :',data)
        sent = client_socket.send(data)
        if sent == 0:
            print("socket connection broken")
        print(sent)
    print("Disconnected")
    client_socket.close()
    count = count+1

server_socket.close()

ID = "admin"
PW = "0000"
@app.route('/')
def hello():
    return render_template("index.html")
@app.route('/login')
def login():
    return render_template("login.html")

@app.route('/logintry', methods = ["get"])
def logintry():    
    global ID, PW
    _id_ = request.args.get("id")
    _password_ = request.args.get("password")
    print(_id_)
    print(_password_)
    
    if ID == _id_ and PW == _password_:
        session["id"] = _id_
        return render_template("admin.html")
    else:
        return redirect(url_for("login"))

@app.route('/logout')
def logout():
    session.pop("id")
    return redirect(url_for("login"))

@app.route('/admin')
def admin():
    return render_template("admin.html")

@app.route('/list1')
def list1():
    return render_template("list1.html")

@app.route('/list2')
def list2():
    return render_template("list2.html")

@app.route('/list3')
def list3():
    return render_template("list3.html")

if __name__ == "__main__":
    app.debug = True
    app.run(host="0.0.0.0", port=5000)