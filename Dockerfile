FROM python:3.9-slim
EXPOSE 80
RUN pip --no-cache-dir install pipenv
COPY Pip* ./
RUN PIPENV_VENV_IN_PROJECT=1 pipenv install --deploy
ENV PATH="/.venv/bin:$PATH"
RUN python --version
COPY app.py ./
ENTRYPOINT [ "gunicorn", "-b 0.0.0.0:80", "app" ]

