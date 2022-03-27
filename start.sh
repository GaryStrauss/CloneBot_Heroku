cd ./telegram_gcloner
echo -e "[General]\npath_to_gclone = ./gclone\n\ntelegram_token = $telegram_token\nuser_ids = $user_ids\ngroup_ids = $group_ids\n\ngclone_para_override = $GC_PARA_OVERRIDE">> config.ini
chmod 777 config.ini
cd ..
npm install http-server -g
http-server -p $PORT &
python3 telegram_gcloner/telegram_gcloner.py
