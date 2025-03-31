install:
	uv sync

build:
	./build.sh

collectstatic:
	uv run hexlet-code/manage.py collectstatic --noinput

migrate:
	uv run hexlet-code/manage.py migrate

render-start:
	gunicorn hexlet-code.task_manager.wsgi

start-debug-local:
	uv run .venv/bin/python -m gunicorn --chdir hexlet-code --reload --log-level debug task_manager.wsgi

collectstatic-local:
	.venv/bin/python hexlet-code/manage.py collectstatic

lint:
	uv run flake8 hexlet-code/task_manager
