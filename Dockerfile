FROM ubuntu
RUN apt-get update
RUN apt-get install -y vim curl git python3 pip 
RUN pip3 install matplotlib flask numpy app xmlrunner pytest 
RUN pip3 install flask_sqlalchemy pymysql 
RUN git clone https://github.com/mohamad0880218/Final-Project.git
RUN pytest ./Final-Project/testt.py --junitxml=report.xml
RUN mv report.xml ./Final-Project/Artifact/
EXPOSE 5000
CMD ["python3","./Final-Project/main.py"]