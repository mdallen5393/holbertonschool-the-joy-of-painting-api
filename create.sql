DROP DATABASE IF EXISTS tjopdb;
CREATE DATABASE tjopdb;
USE tjopdb;

CREATE TABLE episodes (
    episode_id INT PRIMARY KEY,
    season INT,
    episode INT,
    title VARCHAR(100),
    youtube_src VARCHAR(500),
    air_date DATE
);

CREATE TABLE subjects (
    subject_id INT PRIMARY KEY,
    name VARCHAR(100)
);

CREATE TABLE colors (
    color_id INT PRIMARY KEY,
    name VARCHAR(100)
);

CREATE TABLE paintings (
    painting_id INT PRIMARY KEY,
    img_src VARCHAR(250),
    title VARCHAR(100),
    episode_id INT UNIQUE,
    FOREIGN KEY (episode_id) REFERENCES episodes (episode_id)
);

CREATE TABLE painting_colors (
    painting_color_id INT PRIMARY KEY AUTO_INCREMENT,
    painting_id INT,
    color_id INT,
    FOREIGN KEY (painting_id) REFERENCES paintings (painting_id),
    FOREIGN KEY (color_id) REFERENCES colors (color_id)
);

CREATE TABLE painting_subjects (
    painting_subject_id INT PRIMARY KEY AUTO_INCREMENT,
    painting_id INT,
    subject_id INT,
    FOREIGN KEY (painting_id) REFERENCES paintings (painting_id),
    FOREIGN KEY (subject_id) REFERENCES subjects (subject_id)
);
