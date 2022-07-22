# AleksandrMalinovskiy_infra
testapp_IP = 51.250.10.185
testapp_port = 9292
bastion_IP = 51.250.93.181\
someinternalhost_IP = 10.128.0.4\
AleksandrMalinovskiy Infra repository 
____________
Домашнее задание по Terraform -2\
Задание
- Удалите из папки terraform файлы main.tf, outputs.tf, terraform.tfvars, variables.tf, так как они теперь перенесены в stage и prod\
Все удалено.\
- Параметризируйте конфигурацию модулей насколько считаете нужным\
Добавлены новые параметры
- Отформатируйте все конфигурационные файлы используя команду terraform fmt;\
Все файлы отформатированны
________________
Домашнее задание по Terraform -1\
Задание
- Определите input переменную для приватного ключа, использующегося в определении подключения для
провижинеров (connection); \
Опредилил переменную private_key = file(var.private_key)
- Определите input переменную для задания зоны в ресурсе "yandex_compute_instance" "app". У нее должно быть значение
по умолчанию; \
Определено zone = var.zone 
- Отформатируйте все конфигурационные файлы используя команду terraform fmt;\
Все файлы отформатированны
- Так как в репозиторий не попадет ваш terraform.tfvars, то нужно сделать рядом файл terraform.tfvars.example, в
котором будут указаны переменные для образца.\
Создан файл terraform.tfvars.example
________________
Домашнее задание по Packer\
Задание 1 \
Параметризируйте созданный вами шаблон.Для переопределения переменных нужно использовать файл variables.json.examples 
с вымышленными значениями. \
В файл variables.json.examples включены следующие значения: \
  "service_account_key_file": "key.json", \
  "folder_id": "qwqeqeqwr", \
  "source_image_family": "weqeqweq" \
Дополнительное задание \
Исследуйте и другие опции билдера выборочно параметризируйте их. \
В файл ubuntu16.json добавлено: \
  "disk_type": "network-ssd" - тип диска для запущенного экземпляра \
  "disk_size_gb": "15" - размер диска в ГБ \
  "image_description": "dz packer" - описание изображения 
________________
Домашнее задание по Yandex Cloud\
Задание 1 \
Исследовать способ подключения к someinternalhost в одну команду из вашего рабочего устройства\ 
ВМ bastion ip 51.250.93.181 \
ВМ someinternalhost ip 10.128.0.4 \
Подключение в одну команду \
ssh -J alex@51.250.93.181 alex@10.128.0.4 \
Дополнительное задание \
Предложить вариант решения для подключения из консоли при помощи команды вида ssh someinternalhost из локальной консоли рабочего устройства, \
чтобы подключение выполнялось по алиасу someinternalhost \
Записываем а файл /home/.ssh/config 
host someinternalhost\
hostName 10.128.0.4 \ 
ProxyJump 51.250.93.181 
_______________
Домашнее задание "Деплой тестового приложения"\
Задание 1\
Команды по настройке системы и деплоя приложения нужно завернуть в баш скрипты, чтобы не вбивать эти команды вручную.\
Скрипт install_ruby.sh содержит команды по установке Ruby;\
Скрипт install_mongodb.sh содержит команды по установке MongoDB;\
Скрипт deploy.sh содержить команды скачивания кода, установки зависимостей через bundler и запуск приложения\
Дополнительное задание\
В качестве доп. задания используйте созданные ранее скрипты для создания скрипта , который будет запускаться при создании инстанса.\
Для запуска скрипта используйне ./instance.sh в ходе выполнения будет создан инстас с установлеными приложениями\ 
testapp_IP = 51.250.10.185 \
testapp_port = 9292
