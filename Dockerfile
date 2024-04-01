FROM python:3.2
WORKDIR /user/apps
ADD hello-world.py .
ENTRYPOINT ["python"]
CMD ["hello-world.py"]
