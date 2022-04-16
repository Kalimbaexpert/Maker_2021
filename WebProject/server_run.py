from flask import Flask, render_template, session, request, redirect, url_for
import makecsv
import time
import crowling
import makemodel
app = Flask(__name__)

ID = "admin"
PW = "0000"

global pressure_value
pressure_value = 0

@app.route('/post', methods = ['POST'])
def post():
    if request.method == 'POST': 
        value = request.data
        temp = (int(value.decode()))
        pressure_value = temp
        print(temp)
        current = time.time()
        daytime=current
        makecsv.Add_Line(pressure_value,daytime)
        return {'StatusCode': '200', 'Message': 'Successfully Generated.'}

@app.route('/post1', methods = ['POST'])
def post1():
    if request.method == 'POST': 
        value = request.data
        temp = (int(value.decode()))
        pressure_value = temp
        print(temp)
        current = time.time()
        daytime=current
        makecsv.Add_Line1(pressure_value,daytime)
        return {'StatusCode': '200', 'Message': 'Successfully Generated.'}

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
    pressure_value = makecsv.Abstract_Latest_pressure()
    date_value = time.strftime('%x %X')
    pressure_value1 = makecsv.Abstract_Latest_pressure1()
    predict_time =(time.time()-1630023483)-4194.0
    
    return render_template("list1.html", pressure=pressure_value, pressure1=pressure_value1,daytime = date_value)

@app.route('/list2')
def list2():
    return render_template("list2.html")

@app.route('/list3')
def list3():
    return render_template("list3.html")


@app.route('/summation')
def summation():
    makecsv.Merge_Csv(location_now='수원')
    return ''

@app.route('/crowling')
def _crowling_():
    crowling.crowling_weather()
    return ' '



if __name__ == "__main__":
    app.debug = True
    app.run(host="0.0.0.0", port=59475)