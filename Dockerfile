FROM reo7sp/tgbot-cpp

RUN apt-get update && apt upgrade -y && apt-get install sudo -y
RUN apt-get install git -y

RUN git clone https://github.com/reo7sp/tgbot-cpp.git
COPY . .
RUN cmake .
/ RUN cmake tgbot-cpp
RUN g++ main.cpp -o telegram_bot --std=c++14 -I/usr/local/include -lTgBot -lboost_system -lssl -lcrypto -lpthread

CMD ./a.out
