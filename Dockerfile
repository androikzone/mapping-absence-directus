FROM directus/directus:11.5.1

WORKDIR /directus

COPY ./database /directus/database
COPY ./uploads /directus/uploads

ENV DB_CLIENT=sqlite3
ENV DB_FILENAME=/directus/database/data.db
ENV WEBSOCKETS_ENABLED=true

EXPOSE 8055
