FROM ubuntu
RUN apt-get update
RUN git clone https://github.com/mohamad0880218/Final-Project.git
RUN apt-get install -y vim curl git python3 pip 
RUN pip3 install -r ./Final-Project/requirements.txt 
EXPOSE 5000
CMD ["python3","./Final-Project/main.py"]
