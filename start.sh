if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/utsavzarah/url-auto-delete-shortener-bot/tree/main
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /Eva
fi
cd /Eva
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 bot.py
