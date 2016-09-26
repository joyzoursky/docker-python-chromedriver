# docker-python-chromedriver

Headless Chrome driver based on Python

### Includes:

 - Python
 - Google Chrome (latest version)
 - Chrome driver (latest version)
 - Xvfb (for headless running)

### Versions:

 - 2.7 - based on Python 2.7
 - 3.5 - based on Python 3.5
 - latest (default version, same as 2.7)

### Usage:

```
$ cd [your working directory]
$ docker run -it -v $(pwd):/usr/workspace joyzoursky/python-chromedriver bash
root@[container ID]:/# cd /usr/workspace
```
Then run the commands in this bash as in your working directory.


### Example to run selenium test in this image:

```
$ pip install -r requirements.txt
$ xvfb-run --server-args="-screen 0 1024x768x24" python your_selenium_test.py
```

You may download a selenium test example from [here](https://github.com/joyzoursky/selenium-template) to quick start.
