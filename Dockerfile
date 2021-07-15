FROM reo7sp/tgbot-cpp

RUN mkdir app
RUN apt-get update && apt upgrade -y && apt-get install sudo -y
RUN apt-get install git -y

RUN git clone -b for_me https://github.com/New-dev0/tgbot-cpp.git
COPY . .
RUN cd tgbot-cpp && make install && cmake .
RUN g++ main.cpp -o telegram_bot --std=c++14 -I/usr/local/include -lTgBot -lboost_system -lssl -lcrypto -lpthread

CMD ./telegram_bot
