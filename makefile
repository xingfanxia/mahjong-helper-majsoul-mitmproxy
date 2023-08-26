install:
	pip install -r requirements.txt

run:
	mitmdump -p 23410 -s addons.py
	open -na "Google Chrome" --args  --incognito --proxy-server=127.0.0.1:23410 --ignore-certificate-errors https://game.maj-soul.com/1/