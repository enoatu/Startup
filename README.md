0. VPSでdebian(stretch)を選択し、`ssh root@IPアドレス`でログインする
1. sudo apt-get update; sudo apt-get install git vim`を実行
2. adduser ユーザー名`でユーザ(例:hoge)を作成
3. /etc/sudoers でsudo権限を追加
```
    #Allow members of group sudo to execute any command
    %sudo   ALL=(ALL:ALL) ALL
    hoge    ALL=NOPASSWD: ALL #<-これを追加
```
4. su - hoge`でhogeユーザーでログインする
5. /home/hoge/　以下で git clone https://github.com/enoatu/Startup.git
6. `sh Startup/start.sh` を実行
