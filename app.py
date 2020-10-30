from flask import Flask, request, render_template
import requests
import mistune

app = Flask(__name__)

@app.route('/')
def index():
    return render_template('index.html')

@app.route('/markdown/')
def index_str():
    html = "Error"
    try:
        url = request.args.get('url')
        r = requests.get(url)
        html = mistune.markdown(r.text)
    except:
        pass
    return html

if __name__ == '__main__':
    app.run()

