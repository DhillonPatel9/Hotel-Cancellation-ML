FROM python:3.11-slim

WORKDIR /project

COPY . /project

RUN pip install --no-cache-dir -r requirements.txt

EXPOSE 8888

CMD ["jupyter", "notebook", "--ip=0.0.0.0", "--allow-root", "--no-browser"]