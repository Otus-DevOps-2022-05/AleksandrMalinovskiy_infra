# AleksandrMalinovskiy_infra
bastion_IP = 51.250.93.181
someinternalhost_IP = 10.128.0.4
AleksandrMalinovskiy Infra repository
Домашнее задание по Yandex Cloud
Задание 1
Исследовать способ подключения к someinternalhost в одну команду из вашего рабочего устройства
ВМ bastion ip 51.250.93.181
ВМ someinternalhost ip 10.128.0.4
Подключение в одну команду ssh -J alex@51.250.93.181 alex@10.128.0.4
Дополнительное задание
Предложить вариант решения для подключения из консоли при помощи команды вида ssh someinternalhost
из локальной консоли рабочего устройства, чтобы подключение выполнялось по алиасу someinternalhost
записываем а файл /home/.ssh/config
host VMYandexCloud
  hostName 10.128.0.4
    ProxyJump 51.250.93.181
