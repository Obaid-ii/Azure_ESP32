#FROM gcc:13.2.0
FROM python:3.8
COPY . /usr/src/fyp
WORKDIR /usr/src/fyp
# Install PlatformIO
RUN pip install -U platformio

# Compile the source code using PlatformIO
RUN platformio run -e esp32doit-devkit-v1 --target .

#RUN g++ -o Test src/main.cpp
#CMD [ "./Test" ]