USE joblister_db;

TRUNCATE TABLE categories;

INSERT INTO categories (name)
VALUES ('Space'),
       ('Violence'),
       ('Theft'),
       ('Career'),
       ('Harassment'),
       ('Fraud'),
       ('Cyber'),
       ('Vandalism'),
       ('Science'),
       ('Ransom');