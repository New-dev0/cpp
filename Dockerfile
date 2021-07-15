FROM reo7sp/tgbot-cpp

COPY . .
RUN cmake .
RUN make -j4
RUN g++ main.cpp
CMD ./a.out