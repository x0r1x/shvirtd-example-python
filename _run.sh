python3 -m venv venv  # on Windows, use "python -m venv venv" instead
. venv/bin/activate   # on Windows, use "venv\Scripts\activate" instead
pip install -r requirements.txt
$ cat $VIRTUAL_ENV/bin/postactivate
#!/bin/bash
# This hook is run after this virtualenv is activated.
export FLASK_RUN_PORT=5001
export DB_HOST=127.0.0.1
export DB_USER=user1
export DB_PASSWORD=pass1
export DB_NAME=example
export DB_TABLE_NAME=requests1
python main.py