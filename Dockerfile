FROM directus/directus:11.5.1

WORKDIR /directus

COPY ./uploads /directus/uploads
COPY ./database /directus/database

ENV DB_CLIENT=sqlite3
ENV DB_FILENAME=/directus/database/data.db
ENV KEY=your-key
ENV SECRET=your-secret

EXPOSE 8055
