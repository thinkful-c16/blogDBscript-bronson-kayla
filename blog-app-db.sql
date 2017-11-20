-- //Posts - post (text), post_id, author(user), title, content, timestamp, 
-- zero or more tags (null)
-- //Comments - author(user), comment (text), comment_id, post(text), post_id
-- //Users - first_name (text), last_name(text) ,email addresses (required)
-- screen name (required)
-- //Tags - tag(text), tag_id

CREATE TABLE users (
   id SERIAL PRIMARY KEY,
   first_name TEXT,
   last_name TEXT,
   email_address TEXT NOT NULL,
   screen_name TEXT NOT NULL
)

CREATE TABLE post (
   id SERIAL PRIMARY KEY,
   title TEXT,
   content TEXT,
   user_id INT REFERENCES users ON DELETE RESTRICT
)

CREATE TABLE comment (
    id SERIAL PRIMARY KEY,
    post_id INT REFERENCES post ON DELETE RESTRICT NOT NULL,
    user_id INT REFERENCES users ON DELETE RESTRICT NOT NULL,
    contents TEXT 
)

CREATE TABLE tag (
    id SERIAL PRIMARY KEY,
    tag TEXT NOT NULL
)



