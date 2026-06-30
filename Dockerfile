FROM redhat/ubi8:latest
RUN dnf -y install python3
RUN pip3 install flask
CMD ["python3" ,"main.py"]

