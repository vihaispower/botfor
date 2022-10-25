if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/nadith-git/tvzonebot.git /tvzonebot
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /tvzonebot
fi
cd /tvzonebot
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 bot.py
