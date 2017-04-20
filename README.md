# Proview In Docker

[Proview Homepage](http://www.proview.se/v3/)

```
docker build -t proview .
```
If build fails you can also download it:
```
docker pull suonto/proview
```

```
docker run -d --name proview -p 5900:5900 proview
```

Connect with vnc to 5900.
Password is *secret*.
Right click -> Applications -> Shells -> Bash
```
dpkg -i pwrdemo55_5.5.0-1_amd64.deb
su pwrp
cd ~/Desktop
./run.sh
```

Press *Start Runtime*.
Open *File -> Start Runtime Navigator* 
