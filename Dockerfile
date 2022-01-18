FROM python:3.10

ENV PIP_DISABLE_PIP_VERSION_CHECK=on

RUN pip install poetry

WORKDIR /food-finder-main/
COPY poetry.lock pyproject.toml /food-finder-main

RUN poetry config virtualenvs.create false
RUN poetry install --no-interaction

COPY . /food-finder-main

CMD ["python", "./food_proj/food_app/manage.py", "runserver", "0.0.0.0:8000"]

