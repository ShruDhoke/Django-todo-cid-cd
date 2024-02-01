FROM python:3
RUN pip install Django==5.0.1

COPY . .
RUN python manage.py migrate

CMD ["python","manage.py","runserver","0.0.0.0:8000"]                                                          
