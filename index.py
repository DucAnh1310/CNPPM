from flask import Flask, render_template

app = Flask(__name__)


@app.route("/")
def index():
    return render_template('index.html')


@app.route("/login")
def login():
    return render_template('login.html')


@app.route("/dangky")
def dangky():
    return render_template('dangky.html')


@app.route("/admin")
def admin():
    return render_template('admin.html')


@app.route("/bacsi")
def bacsi():
    return render_template('bacsi.html')


@app.route("/yta")
def yta():
    return render_template('yta.html')


@app.route("/thungan")
def thungan():
    return render_template('thungan.html')


@app.route("/lienhe")
def lienhe():
    return render_template('lienhe.html')


if __name__ == "__main__":
    app.run(debug=True)
