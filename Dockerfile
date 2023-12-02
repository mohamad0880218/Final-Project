FROM ubuntu
RUN apt-get update
RUN apt-get install -y vim curl git python3 pip 
RUN pip3 install matplotlib flask numpy app xmlrunner pytest flask_sqlalchemy
RUN git clone https://github.com/mohamad0880218/Final-Project.git
 
#COPY .  ./
#CMD ["echo","Image Created"]
RUN pytest /home/rizwan9478639168/actions-runner/_work/Final-Project/Final-Project/testt.py --junitxml=report.xml
#RUN mv report.xml /home/rizwan9478639168/actions-runner/_work/Final-Project/Final-Project/Final-Project/Artifact/
EXPOSE 5000
CMD ["python3","/home/rizwan9478639168/actions-runner/_work/Final-Project/Final-Project/main.py"]
