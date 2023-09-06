# Домашнее задание к занятию 2 "`«Кластеризация и балансировка нагрузки»`" - `Филон Андрей`

---

### Задание 1
    
    Составьте команду rsync, которая позволяет создавать зеркальную копию домашней директории пользователя в директорию /tmp/backup
    Необходимо исключить из синхронизации все директории, начинающиеся с точки (скрытые)
    Необходимо сделать так, чтобы rsync подсчитывал хэш-суммы для всех файлов, даже если их время модификации и размер идентичны в источнике и приемнике.
    На проверку направить скриншот с командой и результатом ее выполнения

### Ответ:  

Команда:  
rsync -a --progress --exclude '.*' --checksum /home/vlad /tmp/backup

![Ссылка на скриншот]()

---

### Задание 2

    Запустите три simple python сервера на своей виртуальной машине на разных портах
    Настройте балансировку Weighted Round Robin на 7 уровне, чтобы первый сервер имел вес 2, второй - 3, а третий - 4
    HAproxy должен балансировать только тот http-трафик, который адресован домену example.local
    На проверку направьте конфигурационный файл haproxy, скриншоты, где видно перенаправление запросов на разные серверы при обращении к HAProxy c использованием домена example.local и без него.

### Ответ:

![Ссылка на haproxy.cfg](https://github.com/AndreyFilon/nginx-haproxy/blob/main/2.2%20haproxy-task2.cfg)
![Ссылка на скриншот](https://github.com/AndreyFilon/nginx-haproxy/blob/main/2.1.png)

---

