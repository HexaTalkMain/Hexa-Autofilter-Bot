if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/HexaTalkMain/Hexa-AutofilterBot.git /Hexa-AutofilterBot
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /Hexa-AutofilterBot
fi
cd /Hexa-AutofilterBot
pip3 install -U -r requirements.txt
echo "Starting Lucifer...."
python3 bot.py
