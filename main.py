import os
from telethon import TelegramClient as Client
from pytgcalls import GroupCallFactory
from telethon.sessions import StringSession as SS

API_ID = 6
API_HASH = os.getenv("HASH")
SES = SS(os.getenv("SES"))

Client = Client(SES, api_id=API_ID, api_hash=API_HASH)

telethon_gcf = GroupCallFactory(
        Client, GroupCallFactory.MTPROTO_CLIENT_TYPE.TELETHON, enable_logs_to_console=False
)

print(telethon_gcf.get_file_group_call('input.raw'))
