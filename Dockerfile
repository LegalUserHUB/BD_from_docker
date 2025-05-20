FROM mysql:latest
# Устанавливаем переменные окружения для MySQL
ENV MYSQL_ROOT_PASSWORD=my-secret-pw
ENV MYSQL_DATABASE=test_db
ENV MYSQL_USER=test_user
ENV MYSQL_PASSWORD=1
# Копируем SQL-файл для инициализации базы данных
COPY ./init.sql /docker-entrypoint-initdb.d/
