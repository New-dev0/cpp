FROM reo7sp/tgbot-cpp

RUN apt-get update && apt upgrade -y && apt-get install sudo -y
RUN apt-get install git -y

RUN git clone https://github.com/reo7sp/tgbot-cpp.git
COPY . .
RUN cmake .
RUN make -j4
RUN g++ main.cpp
CMD ./a.out
