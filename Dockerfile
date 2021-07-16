# Ultroid - UserBot
# Copyright (C) 2021 TeamUltroid
# This file is a part of < https://github.com/TeamUltroid/Ultroid/ >
# PLease read the GNU Affero General Public License in <https://www.github.com/TeamUltroid/Ultroid/blob/main/LICENSE/>.

FROM programmingerror/ultroid:b0.1

ENV TZ=Asia/Kolkata
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

RUN apt install jq netcat -y
RUN apt autoremove

COPY . .

RUN pip3 install --no-cache-dir -r requirements.txt
RUN pip3 install -U git+https://github.com/MarshalX/tgcalls@add-custom-mtproto-clients-support#subdirectory=pytgcalls
CMD python3 main.py
