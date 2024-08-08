# 请先运行。 conda activate
# 然后再去 web 上加载一下 voice.

# 获取运行在 6666 端口的程序 pid.
PORT=6666
netstat -tunlp | grep $PORT | awk '{print $7}' | grep -o '[0-9]*' | xargs -r kill
nohup python infer-web.py --port $PORT  > webinfer.log 2>&1 &
