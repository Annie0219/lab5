DROP TABLE IF EXISTS users;
CREATE TABLE users (
    uid serial NOT NULL PRIMARY KEY,
    username TEXT NOT NULL,
    password TEXT NOT NULL
);

INSERT INTO users (username, password) VALUES ('Michelle', 'test_pw1');
INSERT INTO users (username, password) VALUES ('Jasmine', 'test_pw2');

DROP TABLE IF EXISTS posts;
CREATE TABLE posts (
    pid serial NOT NULL PRIMARY KEY,
    author serial NOT NULL,
    content TEXT NOT NULL,
    FOREIGN KEY (author) REFERENCES users(uid)
);

INSERT INTO posts (author, content) VALUES (1, 'test_post_1');
INSERT INTO posts (author, content) VALUES (2, 'test_post_2');
