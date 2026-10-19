mkdir ~/greater-app

cd ~/greater-app

cat Greater.java

cat Dockerfile

cat Jenkinsfile

docker build -t greater-app .

docker run --rm greater-app

git init

git add Greater.java  Dockerfile Jenkinsfile

git commit -m "Java greater program with Dockerfile and jenkinsfile"

git branch -m main

https://github.com/niranjanmore1/greater-app.git

git push -u origin main

sudo usermod -aG docker jenkins

sudo systemctl restart jenkins
