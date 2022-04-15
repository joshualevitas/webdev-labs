-- Exercise 1 (done for you):
SELECT * FROM users;



-- Exercise 2 (done for you):
SELECT id, first_name, last_name 
FROM users;



-- Exercise 3
SELECT jd, first_name, last_name
FROM users 
Order BY last_name;



-- Exercise 4
SELECT id, user_id, image_url
FROM posts
WHERE user_id = 26; 



-- Exercise 5
SELECT id, user_id, image_url
FROM posts
WHERE user_id = 26 or user_id = 12;



-- Exercise 6
SELECT count(*)
FROM posts;



-- Exercise 7
SELECT user_id, count(id)
FROM comments
GROUP BY user_id
ORDER BY count(*) desc;



-- Exercise 8
SELECT posts.id, posts.image_url, user_id, users.first_name, users.last_name
FROM posts
INNER JOIN users on posts.user_id = user_id
WHERE user_id = 26 or user_id=12




-- Exercise 9
SELECT posts.id, posts.pub_date, following.following_id
FROM posts
INNER JOIN following on posts.user_id = following.following_id
WHERE following.user_id = 26 




-- Exercise 10
SELECT post.id, posts.pub_data, following.following_id, users.username
FROM posts 
INNER JOIN following on posts.user_id = following.following_id
INNER JOIN users on posts.user_id = users.id
WHERE following.user_id = 26 



-- Exercise 11
INSERT INTO bookmarks(user_id, post_id, timestamp)
VALUES(26, 219, now());

INSERT INTO bookmarks(user_id, post_id, timestamp)
VALUES(26, 220, now());

INSERT INTO bookmarks(user_id, post_id, timestamp)
VALUES(26, 221, now());




-- Exercise 12
DELETE FROM bookmarks
WHERE id = 219;
DELETE FROM bookmarks
WHERE id = 220;
DELETE FROM bookmarks
WHERE id = 221;




-- Exercise 13
UPDATE users
SET email = 'knick2022@gmail.com' 
WHERE id = 26;




-- Exercise 14
SELECT post.id, posts.user_id, posts.caption, count(comments.id)
FROM posts
INNER JOIN comments on comments.post_id = posts.id
WHERE posts.user_id = 26 
GROUP BY posts.id
ORDER BY posts.id desc; 

-- This was confusing for me, My Classmate Annabel helped me with this a lot. 
