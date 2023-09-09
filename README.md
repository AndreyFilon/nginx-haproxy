# Домашнее задание к занятию 3 "`«Резервное копирование»`" - `Филон Андрей`

---

### Задание 1
    
    Составьте команду rsync, которая позволяет создавать зеркальную копию домашней директории пользователя в директорию /tmp/backup
    Необходимо исключить из синхронизации все директории, начинающиеся с точки (скрытые)
    Необходимо сделать так, чтобы rsync подсчитывал хэш-суммы для всех файлов, даже если их время модификации и размер идентичны в источнике и приемнике.
    На проверку направить скриншот с командой и результатом ее выполнения

### Ответ:  

Команда:  
rsync -a --delete --exclude '.*' --progress --checksum /home/vlad /tmp/backup

![Ссылка на скриншот](https://github.com/AndreyFilon/rsync-task3/blob/main/2.jpg)

---

### Задание 2
   
    Написать скрипт и настроить задачу на регулярное резервное копирование домашней директории пользователя с помощью rsync и cron.
    Резервная копия должна быть полностью зеркальной
    Резервная копия должна создаваться раз в день, в системном логе должна появляться запись об успешном или неуспешном выполнении операции
    Резервная копия размещается локально, в директории /tmp/backup
    На проверку направить файл crontab и скриншот с результатом работы утилиты.

### Ответ:

файл скрипта (https://github.com/AndreyFilon/rsync-task3/blob/main/backup.sh)

результат выполнения cron по расписанию в 00.00
![Ссылка на скриншот](https://github.com/AndreyFilon/rsync-task3/blob/main/result%20cron.jpg)
---

