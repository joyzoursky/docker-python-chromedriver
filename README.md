# docker-python-chromedriver

Python with Chromedriver, for running automated tests

## Includes:

 - Python
 - Google Chrome
 - Chromedriver
 - Selenium (in some versions)
 - Xvfb (in some versions)

## Versions:

### Python 3:

 - `3.6-alpine3.7`, `latest` (based on python:3.6-alpine3.7, [Dockerfile](https://github.com/joyzoursky/docker-python-chromedriver/blob/master/py3/py3.6-alpine3.7/Dockerfile))
 - `3.6-alpine3.7-selenium` (based on python:3.6-alpine3.7 with selenium installed, [Dockerfile](https://github.com/joyzoursky/docker-python-chromedriver/blob/master/py3/py3.6-alpine3.7-selenium/Dockerfile))
 - `3.6` (based on python:3.6, [Dockerfile](https://github.com/joyzoursky/docker-python-chromedriver/blob/master/py3/py3.6/Dockerfile))
 - `3.6-selenium` (based on python:3.6 with selenium installed, [Dockerfile](https://github.com/joyzoursky/docker-python-chromedriver/blob/master/py3/py3.6-selenium/Dockerfile))
 - `3.6-xvfb` (based on python:3.6 with xvfb installed, [Dockerfile](https://github.com/joyzoursky/docker-python-chromedriver/blob/master/py3/py3.6-xvfb/Dockerfile))
 - `3.6-xvfb-selenium` (based on python:3.6 with xvfb and selenium installed, [Dockerfile](https://github.com/joyzoursky/docker-python-chromedriver/blob/master/py3/py3.6-xvfb-selenium/Dockerfile))

### Python 2:

 - `2.7-alpine3.7` (based on python:2.7-alpine3.7, [Dockerfile](https://github.com/joyzoursky/docker-python-chromedriver/blob/master/py2/py2.7-alpine3.7/Dockerfile))
 - `2.7-alpine3.7-selenium` (based on python:2.7-alpine3.7 with selenium installed, [Dockerfile](https://github.com/joyzoursky/docker-python-chromedriver/blob/master/py2/py2.7-alpine3.7-selenium/Dockerfile))
 - `2.7` (based on python:2.7, [Dockerfile](https://github.com/joyzoursky/docker-python-chromedriver/blob/master/py2/py2.7/Dockerfile))
 - `2.7-selenium` (based on python:2.7 with selenium installed, [Dockerfile](https://github.com/joyzoursky/docker-python-chromedriver/blob/master/py2/py2.7-selenium/Dockerfile))
 - `2.7-xvfb` (based on python:2.7 with xvfb installed, [Dockerfile](https://github.com/joyzoursky/docker-python-chromedriver/blob/master/py2/py2.7-xvfb/Dockerfile))
 - `2.7-xvfb-selenium` (based on python:2.7 with xvfb and selenium installed, [Dockerfile](https://github.com/joyzoursky/docker-python-chromedriver/blob/master/py2/py2.7-xvfb-selenium/Dockerfile))

## Usage:

For `latest`, `3.6-alpine3.7`, `3.6-alpine3.7-selenium`, `2.7-alpine3.7` or `2.7-alpine3.7-selenium`, run the followings in your terminal:

```
$ cd [your working directory]
$ docker run -it -v $(pwd):/usr/workspace joyzoursky/python-chromedriver:[version] sh
/ # cd /usr/workspace
```

For `3.6`, `3.6-selenium`, `3.6-xvfb`, `3.6-xvfb-selenium`, `2.7`, `2.7-selenium`, `2.7-xvfb` or `2.7-xvfb-selenium`, run the followings in your terminal:

```
$ cd [your working directory]
$ docker run -it -v $(pwd):/usr/workspace joyzoursky/python-chromedriver:[version] bash
root@[container ID]:/# cd /usr/workspace
```

This will create a container from the image. Then you could starting running the commands in the container as in your working directory. The followings are some examples to run a selenium test.

## Examples to run selenium test in the container:

You can download a selenium test example from [here](https://github.com/joyzoursky/selenium-template) to quick start.

For `3.6-alpine3.7-selenium`, `3.6-selenium`, `2.7-alpine3.7-selenium` or `2.7-selenium`, you may run:

```
# python test_script.py
```

For `latest`, `3.6-alpine3.7`, `3.6`, `2.7-alpine3.7` or `2.7`, you may run:

```
# pip install selenium==3.8.0
# python test_script.py
```

*We use selenium version 3.8.0 here to avoid the error `ConnectionResetError: [Errno 104] Connection reset by peer` in latest (3.8.1) version.*

For `3.6-xvfb` or `2.7-xvfb`, you may run:

```
# pip install selenium==3.8.0
# xvfb-run --server-args="-screen 0 1024x768x24" python test_script.py
```

For `3.6-xvfb-selenium` or `2.7-xvfb-selenium`, you may run:

```
# xvfb-run --server-args="-screen 0 1024x768x24" python test_script.py
```

Then you should see the test result like this:

```
test_case_1 (__main__.TestTemplate)
Find and click top-right button ... ok
test_case_2 (__main__.TestTemplate)
Find and click Learn more button ... ok

----------------------------------------------------------------------
Ran 2 tests in 8.684s

OK
```