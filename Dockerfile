FROM reo7sp/tgbot-cpp

RUN git clone https://github.com/reo7sp/tgbot-cpp.git
COPY . .
RUN cmake .
RUN make -j4
RUN g++ main.cpp
CMD ./a.out
