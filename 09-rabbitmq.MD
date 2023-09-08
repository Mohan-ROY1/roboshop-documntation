### RabbitMQ

RabbitMQ is a messaging Queue which is used by some components of the applications.

Configure YUM Repos from the script provided by vendor.

upadtes
```
yum update -y
```
Download Erlang
```
yum install https://github.com/rabbitmq/erlang-rpm/releases/download/v23.3.4.11/erlang-23.3.4.11-1.el7.x86_64.rpm -y
```

Download Rabbitmq.

```
yum install https://github.com/rabbitmq/rabbitmq-server/releases/download/v3.9.13/rabbitmq-server-3.9.13-1.el7.noarch.rpm -y
```

Install RabbitMQ

```
chkconfig rabbitmq-server on
```

```
sudo rabbitmq-server -detached
```

Start RabbitMQ Service

```
systemctl enable rabbitmq-server 
```

```
systemctl start rabbitmq-server 
```

RabbitMQ comes with a default username / password as guest/guest. But this user cannot be used to connect. Hence, we need to create one user for the application.

```
rabbitmqctl add_user roboshop roboshop123
```
```
rabbitmqctl set_permissions -p / roboshop ".*" ".*" ".*"
```