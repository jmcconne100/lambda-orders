FROM public.ecr.aws/lambda/python:3.11

RUN pip install pandas boto3 faker -t /var/task/

COPY handler.py .

CMD ["handler.handler"]
