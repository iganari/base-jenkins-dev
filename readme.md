# How to Use

### 目的

0からjenkinsを立ち上げるところまで。

### repositoryの取得

```
$ git clone git@github.com:iganari/base-jenkins.git
```

### vagrant立ち上げ

```
$ cd opsfiles/vagrant
$ vagrant up
```

### 取得

+ securely password

```
$ ssh -i opsfiles/vagrant/.vagrant/machines/web/virtualbox/private_key vagrant@192.168.33.51 "sudo cat /var/lib/jenkins/secrets/initialAdminPassword"
```

### ブラウザでjenkinsにアクセス

http://192.168.33.51:8080/

|user | passwod | mailaddress |
|:-:|:-:|:-:|
|jenkins|jenkins|jenkins@example.com|



# jenkinsについて

### サービス

### 本体

### ソース

```
/var/lib/jenkins
```
