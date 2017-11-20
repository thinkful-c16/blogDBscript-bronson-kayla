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
   screen_name TEXT NOT NULL,
   post_id NUMERIC,
   comment_id NUMERIC
)