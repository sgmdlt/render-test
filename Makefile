install:
	uv sync

build:
	./build.sh

collectstatic:
	uv run manage.py collectstatic --noinput

migrate:
	uv run manage.py migrate

render-start:
	gunicorn task_manager.wsgi

start-debug-local:
	uv run .venv/bin/python -m gunicorn --chdir hexlet-code --reload --log-level debug task_manager.wsgi

collectstatic-local:
	.venv/bin/python manage.py collectstatic

lint:
	uv run flake8 task_manager
