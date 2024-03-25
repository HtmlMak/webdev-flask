FROM python
WORKDIR /app
COPY ./requirements.txt .
RUN pip install -r requirements.txt
RUN pip install gunicorn

CMD ["gunicorn", "-w", "1", "-b", "0.0.0.0:5000", "app:app"]