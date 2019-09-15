# docker-python-chromedriver

Python with Chromedriver, for running automated tests

## Quick Try:

```
$ git clone https://github.com/joyzoursky/docker-python-chromedriver.git
$ cd docker-python-chromedriver
$ docker run -it -w /usr/workspace -v $(pwd):/usr/workspace joyzoursky/python-chromedriver:3.7 bash
/usr/wrokspace# pip install selenium
/usr/wrokspace# python test_script.py
```

## Includes:

 - Python
 - Google Chrome
 - Chromedriver
 - Selenium (in some versions)
 - Xvfb (in some versions)

## Versions:

### Python 3:

 - `3.7`, `latest` (based on python:3.7, [Dockerfile](https://github.com/joyzoursky/docker-python-chromedriver/blob/master/py3/py3.7/Dockerfile))
 - `3.7-selenium` (based on python:3.7 with selenium installed, [Dockerfile](https://github.com/joyzoursky/docker-python-chromedriver/blob/master/py3/py3.7-selenium/Dockerfile))
 - `3.7-alpine3.8` (based on python:3.7-alpine3.8, [Dockerfile](https://github.com/joyzoursky/docker-python-chromedriver/blob/master/py3/py3.7-alpine3.8/Dockerfile))
 - `3.7-alpine3.8-selenium` (based on python:3.7-alpine3.8 with selenium installed, [Dockerfile](https://github.com/joyzoursky/docker-python-chromedriver/blob/master/py3/py3.7-alpine3.8-selenium/Dockerfile))
 - `3.6` (based on python:3.6, [Dockerfile](https://github.com/joyzoursky/docker-python-chromedriver/blob/master/py3/py3.6/Dockerfile))
 - `3.6-selenium` (based on python:3.6 with selenium installed, [Dockerfile](https://github.com/joyzoursky/docker-python-chromedriver/blob/master/py3/py3.6-selenium/Dockerfile))
 - `3.6-alpine3.7` (based on python:3.6-alpine3.7, [Dockerfile](https://github.com/joyzoursky/docker-python-chromedriver/blob/master/py3/py3.6-alpine3.7/Dockerfile))
 - `3.6-alpine3.7-selenium` (based on python:3.6-alpine3.7 with selenium installed, [Dockerfile](https://github.com/joyzoursky/docker-python-chromedriver/blob/master/py3/py3.6-alpine3.7-selenium/Dockerfile))
 - `3.6-xvfb` (based on python:3.6 with xvfb installed, [Dockerfile](https://github.com/joyzoursky/docker-python-chromedriver/blob/master/py3/py3.6-xvfb/Dockerfile))
 - `3.6-xvfb-selenium` (based on python:3.6 with xvfb and selenium installed, [Dockerfile](https://github.com/joyzoursky/docker-python-chromedriver/blob/master/py3/py3.6-xvfb-selenium/Dockerfile))

### Python 2:

 - `2.7` (based on python:2.7, [Dockerfile](https://github.com/joyzoursky/docker-python-chromedriver/blob/master/py2/py2.7/Dockerfile))
 - `2.7-selenium` (based on python:2.7 with selenium installed, [Dockerfile](https://github.com/joyzoursky/docker-python-chromedriver/blob/master/py2/py2.7-selenium/Dockerfile))
 - `2.7-alpine3.7` (based on python:2.7-alpine3.7, [Dockerfile](https://github.com/joyzoursky/docker-python-chromedriver/blob/master/py2/py2.7-alpine3.7/Dockerfile))
 - `2.7-alpine3.7-selenium` (based on python:2.7-alpine3.7 with selenium installed, [Dockerfile](https://github.com/joyzoursky/docker-python-chromedriver/blob/master/py2/py2.7-alpine3.7-selenium/Dockerfile))
 - `2.7-xvfb` (based on python:2.7 with xvfb installed, [Dockerfile](https://github.com/joyzoursky/docker-python-chromedriver/blob/master/py2/py2.7-xvfb/Dockerfile))
 - `2.7-xvfb-selenium` (based on python:2.7 with xvfb and selenium installed, [Dockerfile](https://github.com/joyzoursky/docker-python-chromedriver/blob/master/py2/py2.7-xvfb-selenium/Dockerfile))

## Usage:

For the following ubuntu based images:
- `latest`
- `3.7`
- `3.7-selenium`
- `3.6`
- `3.6-selenium`
- `3.6-xvfb`
- `3.6-xvfb-selenium`
- `2.7`
- `2.7-selenium`
- `2.7-xvfb`
- `2.7-xvfb-selenium`

Run the followings in your terminal:

```
$ cd [your working directory]
$ docker run -it -w /usr/workspace -v $(pwd):/usr/workspace joyzoursky/python-chromedriver:[version] bash
```

For the following alpine based images:
- `3.7-alpine3.8`
- `3.7-alpine3.8-selenium`
- `3.6-alpine3.7`
- `3.6-alpine3.7-selenium`
- `2.7-alpine3.7`
- `2.7-alpine3.7-selenium`

Run the followings in your terminal:

```
$ cd [your working directory]
$ docker run -it -w /usr/workspace -v $(pwd):/usr/workspace joyzoursky/python-chromedriver:[version] sh
```

This will create a container from the image. Then you could starting running the commands in the container as in your working directory. The followings are some examples to run a selenium test.

## Examples to run selenium test in the container:

You can download a selenium test example from [here](https://github.com/joyzoursky/docker-python-chromedriver/blob/master/test_script.py) to quick start.

For the following images with selenium pre-installed:
- `3.7-alpine3.8-selenium`
- `3.7-selenium`
- `3.6-alpine3.7-selenium`
- `3.6-selenium`
- `2.7-alpine3.7-selenium`
- `2.7-selenium`

You may run:

```
# python test_script.py
```

For the following images that do not have selenium pre-installed:
- `latest`
- `3.7-alpine3.8`
- `3.7`
- `3.6-alpine3.7`
- `3.6`
- `2.7-alpine3.7`
- `2.7`

You may run:

```
# pip install selenium
# python test_script.py
```

For `3.6-xvfb` or `2.7-xvfb`, you may run:

```
# pip install selenium
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
