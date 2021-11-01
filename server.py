
from flask import Flask, render_template, request, flash, session, redirect
from jinja2 import StrictUndefined

app = Flask(__name__)
app.secret_key = 'picklesaretastey'
app.jinja_env.undefined = StrictUndefined

@app.route('/')
def login():
    """View Homepage"""

    return render_template('login.html')


if __name__ == "__main__":
    app.run(host="0.0.0.0", debug=True)