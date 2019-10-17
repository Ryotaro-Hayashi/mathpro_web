from flask import Flask, request, render_template
from werkzeug.utils import secure_filename

app_binary = Flask(__name__)


@app_binary.route("/login", methods=["GET"])
def render_form():
    return render_template("login.html")

@app_binary.route("/login", methods=["POST"])
def login():
    if request.form["username"] and request.form["email"]:
        return render_template("check.html", \
        email=request.form["email"], username=request.form["username"])
    else:
        return render_template("error.html")


@app_binary.route("/upload", methods=["GET"])
def render_upload_form():
    return render_template("upload.html")

@app_binary.route("/upload", methods=["POST"])
def upload_file():
    if request.form["name"] and request.files["image"]:
        f = request.files["image"]
        filepath = "static/" + secure_filename(f.filename)

        f.save(filepath)
        return render_template("result.html", \
        name=request.form["name"], \
        image_url=filepath)

"""
サーバー側で、ユーザーから送信されたデータを保存するときは、
ファイル名を適当に変更する必要がある。これは、ユーザーが不正なファイル名を
入力することで、セキリティ上の問題が発生することがあるからである。

そのために、werkzeugライブラリからsecure_filenameを使用すると、
アップロードされたファイル名から自動的に安全なファイル名を作成して
保存するように設定することができる。
"""
