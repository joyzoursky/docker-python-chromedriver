# docker-python-chromedriver

Python with Chromedriver, for running automated tests

## Quick Try

```
$ git clone https://github.com/joyzoursky/docker-python-chromedriver.git
$ cd docker-python-chromedriver
$ docker run -it -w /usr/workspace -v $(pwd):/usr/workspace joyzoursky/python-chromedriver:latest bash
/usr/wrokspace# pip install selenium
/usr/wrokspace# python test_script.py
```

> Warning: Current versions only support for building and running on amd64 (aka x86-64) machines, for arm64 (e.g. Apple M1 chip) machines, sevaral issues are found to be blocking (ref https://github.com/joyzoursky/docker-python-chromedriver/issues/31 https://github.com/joyzoursky/docker-python-chromedriver/issues/30).

## Image includes
 - Python (Debian or Alpine based)
 - Google Chrome
 - Chromedriver
 - Selenium (in some versions)
 - Xvfb (in some versions)

## Versions

### Python 3 (Debian-based)
 - `3.9`, `latest` (based on python:3.9, [Dockerfile](https://github.com/joyzoursky/docker-python-chromedriver/blob/master/py-debian/3.9/Dockerfile))
 - `3.9-selenium` (based on python:3.9 with selenium installed, [Dockerfile](https://github.com/joyzoursky/docker-python-chromedriver/blob/master/py-debian/3.9-selenium/Dockerfile))
 - `3.8` (based on python:3.8, [Dockerfile](https://github.com/joyzoursky/docker-python-chromedriver/blob/master/py-debian/3.8/Dockerfile))
 - `3.8-selenium` (based on python:3.8 with selenium installed, [Dockerfile](https://github.com/joyzoursky/docker-python-chromedriver/blob/master/py-debian/3.8-selenium/Dockerfile))
 - `3.7` (based on python:3.7, [Dockerfile](https://github.com/joyzoursky/docker-python-chromedriver/blob/master/py-debian/3.7/Dockerfile))
 - `3.7-selenium` (based on python:3.7 with selenium installed, [Dockerfile](https://github.com/joyzoursky/docker-python-chromedriver/blob/master/py-debian/3.7-selenium/Dockerfile))
 - `3.6` (based on python:3.6, [Dockerfile](https://github.com/joyzoursky/docker-python-chromedriver/blob/master/py-debian/3.6/Dockerfile))
 - `3.6-selenium` (based on python:3.6 with selenium installed, [Dockerfile](https://github.com/joyzoursky/docker-python-chromedriver/blob/master/py-debian/3.6-selenium/Dockerfile))

### Python 3 (Alpine-based)
- `3.9-alpine` (based on python:3.9-alpine, [Dockerfile](https://github.com/joyzoursky/docker-python-chromedriver/blob/master/py-alpine/3.9-alpine/Dockerfile))
- `3.9-alpine-selenium` (based on python:3.9-alpine with selenium installed, [Dockerfile](https://github.com/joyzoursky/docker-python-chromedriver/blob/master/py-alpine/3.9-alpine-selenium/Dockerfile))
- `3.8-alpine` (based on python:3.8-alpine, [Dockerfile](https://github.com/joyzoursky/docker-python-chromedriver/blob/master/py-alpine/3.8-alpine/Dockerfile))
- `3.8-alpine-selenium` (based on python:3.8-alpine with selenium installed, [Dockerfile](https://github.com/joyzoursky/docker-python-chromedriver/blob/master/py-alpine/3.8-alpine-selenium/Dockerfile))
- `3.7-alpine` (based on python:3.7-alpine, [Dockerfile](https://github.com/joyzoursky/docker-python-chromedriver/blob/master/py-alpine/3.7-alpine/Dockerfile))
- `3.7-alpine-selenium` (based on python:3.7-alpine3.8 with selenium installed, [Dockerfile](https://github.com/joyzoursky/docker-python-chromedriver/blob/master/py-alpine/3.7-alpine-selenium/Dockerfile))
- `3.6-alpine` (based on python:3.6-alpine, [Dockerfile](https://github.com/joyzoursky/docker-python-chromedriver/blob/master/py-alpine/3.6-alpine/Dockerfile))
- `3.6-alpine-selenium` (based on python:3.6-alpine with selenium installed, [Dockerfile](https://github.com/joyzoursky/docker-python-chromedriver/blob/master/py-alpine/3.6-alpin-selenium/Dockerfile))

### Python 2 (Deprecated)

 - `2.7` (based on python:2.7, [Dockerfile](https://github.com/joyzoursky/docker-python-chromedriver/blob/master/deprecated/py2.7/Dockerfile))
 - `2.7-selenium` (based on python:2.7 with selenium installed, [Dockerfile](https://github.com/joyzoursky/docker-python-chromedriver/blob/master/deprecated/py2.7-selenium/Dockerfile))
 - `2.7-alpine3.7` (based on python:2.7-alpine3.7, [Dockerfile](https://github.com/joyzoursky/docker-python-chromedriver/blob/master/deprecated/py2.7-alpine3.7/Dockerfile))
 - `2.7-alpine3.7-selenium` (based on python:2.7-alpine3.7 with selenium installed, [Dockerfile](https://github.com/joyzoursky/docker-python-chromedriver/blob/master/deprecated/py2.7-alpine3.7-selenium/Dockerfile))

### Versions with Xvfb (Deprecated)
- `3.6-xvfb` (based on python:3.6 with xvfb installed, [Dockerfile](https://github.com/joyzoursky/docker-python-chromedriver/blob/master/deprecated/py3.6-xvfb/Dockerfile))
- `3.6-xvfb-selenium` (based on python:3.6 with xvfb and selenium installed, [Dockerfile](https://github.com/joyzoursky/docker-python-chromedriver/blob/master/deprecated/py3.6-xvfb-selenium/Dockerfile))
- `2.7-xvfb` (based on python:2.7 with xvfb installed, [Dockerfile](https://github.com/joyzoursky/docker-python-chromedriver/blob/master/deprecated/py2.7-xvfb/Dockerfile))
- `2.7-xvfb-selenium` (based on python:2.7 with xvfb and selenium installed, [Dockerfile](https://github.com/joyzoursky/docker-python-chromedriver/blob/master/deprecated/py2.7-xvfb-selenium/Dockerfile))


## Usage

For the following Debian-based images:
- `latest`
- `3.9`
- `3.9-selenium`
- `3.8`
- `3.8-selenium`
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

For the following Alpine-based images:
- `3.9-alpine`
- `3.9-alpine-selenium`
- `3.8-alpine`
- `3.8-alpine-selenium`
- `3.7-alpine`
- `3.7-alpine-selenium`
- `3.6-alpine`
- `3.6-alpine-selenium`
- `2.7-alpine`
- `2.7-alpine-selenium`

Run the followings in your terminal:

```
$ cd [your working directory]
$ docker run -it -w /usr/workspace -v $(pwd):/usr/workspace joyzoursky/python-chromedriver:[version] sh
```

This will create a container from the image. Then you could starting running the commands in the container as in your working directory. The followings are some examples to run a selenium test.

## Examples to run selenium test in the container

You can download a selenium test example from [here](https://github.com/joyzoursky/docker-python-chromedriver/blob/master/test_script.py) to quick start.

For the following images with selenium pre-installed:
- `3.9-alpine-selenium`
- `3.9-selenium`
- `3.8-alpine-selenium`
- `3.8-selenium`
- `3.7-alpine-selenium`
- `3.7-selenium`
- `3.6-alpine-selenium`
- `3.6-selenium`
- `2.7-alpine-selenium`
- `2.7-selenium`

You may run:

```
# python test_script.py
```

For the following images that do not have selenium pre-installed:
- `latest`
- `3.9-alpine`
- `3.9`
- `3.8-alpine`
- `3.8`
- `3.7-alpine`
- `3.7`
- `3.6-alpine`
- `3.6`
- `2.7-alpine`
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
Find and click top-left logo button ... ok
test_case_2 (__main__.TestTemplate)
Find and click top-right Start your project button ... ok

----------------------------------------------------------------------
Ran 2 tests in 11.852s

OK
```

## Contributing

To make changes upon the existing Dockerfiles, you are suggested to edit upon the `Dockerfile.template` files, and generate the new Dockerfiles for different versions by running `render.sh`.

### How to edit and generate new versions of Dockerfiles

1. `cd` to the folder that you want to edit, e.g. `py-debian`
2. Make changes upon `Dockerfile.template` or `Dockerfile-selenium.template`
3. Run `bash render.sh` from command-line

Note: The `render.sh` is written for Mac OS; If you are using Windows or other OS, some commands may need to be optimised before running.

Thanks a lot for helping on improving this project!
