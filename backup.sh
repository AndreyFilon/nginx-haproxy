#! /bin/bash

SOURCE="/home/vlad"  # Копируемый каталог
BACKUP="/tmp/backup"  # Каталог, где будет храниться резервная копия

rsync -a --delete --exclude '.*' --checksum "$SOURCE" "$BACKUP"  # Выполняемая команда

if [ $? -eq 0 ]; then    # Проверяем код возврата rsync и записываем сообщение в системный лог
    echo "Копирование $SOURCE выполнено успешно" >> /var/log/cron.log
else
    echo "Копирование $SOURCE не удалось" >> /var/log/cron.log
fi
