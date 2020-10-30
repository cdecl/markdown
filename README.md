
# Markdown Render 
Markdown Render Simple Site 

## Getting Started

### Prerequisites

- Python 3.x 
```sh
flask==1.1.2
requests==2.24.0
mistune==0.8.4
gunicorn
```

### Installing

```sh
# Virtual Environment 
$ python3 -m venv venv 
$ source venv/bin/activate 

$ pip install -r requirements.txt
```


##  Running the tests

```sh
$ python app.py
 * Serving Flask app "app" (lazy loading)
 * Environment: production
   WARNING: This is a development server. Do not use it in a production deployment.
   Use a production WSGI server instead.
 * Debug mode: off
 * Running on http://127.0.0.1:5000/ (Press CTRL+C to quit)

# markdown url : https://raw.githubusercontent.com/cdecl/go-perf/master/README.md
$ http://localhost:5000/?url=https://raw.githubusercontent.com/cdecl/go-perf/master/README.md
 ```

### Docker test

```sh
$ docker run -d --rm -p 80:80 cdecl/markdown

# markdown url : https://raw.githubusercontent.com/cdecl/go-perf/master/README.md
$ http://localhost/?url=https://raw.githubusercontent.com/cdecl/go-perf/master/README.md
```
