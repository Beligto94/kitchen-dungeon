-- Создание таблицы Пользователи
CREATE TABLE users (
    id SERIAL PRIMARY KEY,
    username VARCHAR(255) NOT NULL,
    password VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL
);
-- Создание таблицы Уроки
CREATE TABLE lessons (
    id SERIAL PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    content TEXT,
    author_id INTEGER REFERENCES users(id)
);
-- Создание таблицы Доступ к урокам
CREATE TABLE lessons_access (
    id SERIAL PRIMARY KEY,
    lesson_id INTEGER REFERENCES lessons(id),
    user_id INTEGER REFERENCES users(id)
);
-- Создание таблицы Telegram чаты
CREATE TABLE telegram,
_chats (
    id SERIAL PRIMARY KEY,
    lesson_id INTEGER REFERENCES lessons(id),
    chat_id VARCHAR(255) NOT NULL
);