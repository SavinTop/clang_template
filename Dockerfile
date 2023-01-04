FROM ubuntu:18.04
RUN apt-get update
RUN apt-get install -y build-essential
RUN apt-get install -y python3-pip &&\
    pip3 install --upgrade pip &&\
    pip3 install scikit-build
RUN pip3 install conan
RUN pip3 install cmake

RUN apt-get install -y clang && apt-get install -y clang-tidy

WORKDIR /app
COPY app .
RUN chmod +x build.sh
CMD [ "./build.sh", "Release" ]

