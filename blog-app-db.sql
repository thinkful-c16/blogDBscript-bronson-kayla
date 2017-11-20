CREATE TABLE users (
   id SERIAL PRIMARY KEY,
   first_name TEXT,
   last_name TEXT,
   email_address TEXT NOT NULL,
   screen_name TEXT NOT NULL
);

CREATE TABLE post (
   id SERIAL PRIMARY KEY,
   title TEXT,
   content TEXT,
   user_id INT REFERENCES users ON DELETE RESTRICT
);

CREATE TABLE comment (
    id SERIAL PRIMARY KEY,
    post_id INT REFERENCES post ON DELETE RESTRICT NOT NULL,
    user_id INT REFERENCES users ON DELETE RESTRICT NOT NULL,
    contents TEXT 
);

CREATE TABLE tag (
    id SERIAL PRIMARY KEY,
    tag TEXT NOT NULL
);

INSERT INTO users (id, first_name, last_name, email_address, screen_name)] VALUES 
    ('Kayla', 'Webb', 'kaylarwebb@gmail.com', 'kwebb91') 
    ('Bronson', 'Akimoto', 'hawaii@hawaii.com', 'bronson1') 
    ('John', 'Doe', 'jdoe@john.com', 'jdoe10') 
    ('Sally', 'Student', 'sstudent@sally.com', 'sstudent19'), RETURNING id; 

INSERT INTO post (id, title, content, tag, user_id) VALUES 
    ('The best blog', 'Current events', 'The best blog post ever') 
    ('Blogging', 'Energy', 'Hello world')
    ('Foo bar', 'Foreign affairs', 'Bizz bang') 
    ('Fizz buzz', 'mental health', 'Buzz buzz fizz') RETURNING id;

INSERT INTO tag (id, tag) VALUES
    ('current events') 
    ('energy') 
    ('foreign affairs')
    ('mental health') RETURNING id; 


INSERT INTO comment (id, post_id, user_id, contents) VALUES
    ('worst blog post ever') 
    ('i love this post!')
    ('interesting perspective') 
    ('i hate this so much') RETURNING id; 

