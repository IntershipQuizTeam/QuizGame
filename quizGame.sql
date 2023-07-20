CREATE DATABASE Quiz;
USE QUIZ;
CREATE TABLE User (
  id INT PRIMARY KEY AUTO_INCREMENT,
  email VARCHAR(255) NOT NULL,
  username VARCHAR(100) NOT NULL,
  password VARCHAR(100) NOT NULL
  ); 
  
CREATE TABLE math (
  id INT PRIMARY KEY AUTO_INCREMENT,
  question_text VARCHAR(255),
  question_type ENUM('open-ended', 'multiple-choice'),
  option1 VARCHAR(100),
  option2 VARCHAR(100),
  option3 VARCHAR(100),
  option4 VARCHAR(100),
  correct_answer VARCHAR(100)
);

CREATE TABLE scores (
id INT PRIMARY KEY AUTO_INCREMENT,
user_id INT,
score INT,
date DATE,
CONSTRAINT FOREIGN KEY (user_id) REFERENCES User(id)
);


INSERT INTO math(question_text, question_type, option1, option2, option3, option4, correct_answer)
VALUES('Which of the following is a prime number?','multiple-choice' , '4', '9', '11', '15', '11');
 
INSERT INTO math(question_text, question_type, option1, option2, option3, option4, correct_answer)
VALUES('What is the value of π (pi) to three decimal places?','multiple-choice', '3.142', '3.412', '3.246', '3.198', '3.142');
 
INSERT INTO math(question_text, question_type, option1, option2, option3, option4, correct_answer)
VALUES('Which of the following is a rational number?', 'multiple-choice', '√2 (square root of 2)', 'π (pi)', '0.333...', 'e - Euler', '0.333...');
 
INSERT INTO math(question_text, question_type, option1, option2, option3, option4, correct_answer)
VALUES('Solve the following equation: -15 + (-5x)=0', 'multiple-choice', '-3', '0', '1', '-1', '-3');
 
INSERT INTO math(question_text, question_type, option1, option2, option3, option4, correct_answer)
VALUES('Which number is best represented in binary as 100?', 'multiple-choice', '1', '2', '3', '4', '4');
 
INSERT INTO math(question_text, question_type, option1, option2, option3, option4, correct_answer)
VALUES ('20 % of 2 is equal to: ', 'multiple-choice', '20', '4', '0.4', '0.04', '0.4');
 
INSERT INTO math(question_text, question_type, option1, option2, option3, option4, correct_answer)
VALUES ('What is the area of a rectangle with length 8 units and width 6 units? ','multiple-choice', '12 square units', '14 square units', '42 square units', '48 square units', '48 square units');
 
INSERT INTO math(question_text, question_type, option1, option2, option3, option4, correct_answer)
VALUES ('What is the value of 5 factorial (5!)? ', 'multiple-choice', '15', '25', '60', '120', '120');
 
INSERT INTO math(question_text, question_type, option1, option2, option3, option4, correct_answer)
VALUES ('Which of the following fractions is equivalent to 3/5?', 'multiple-choice', '4/5', '6/10', '9/15', '12/20', '9/15');
 
INSERT INTO math(question_text, question_type, option1, option2, option3, option4, correct_answer)
VALUES ('Solve the equation: 2x + 3 = 11.', 'multiple-choice', 'x = 2', 'x = 3', 'x = 4', 'x = 5', 'x = 4');
 
INSERT INTO math(question_text, question_type, correct_answer)
VALUES ('Which 3 numbers have the same answer whether they’re added or multiplied together?','open-ended', '1, 2, 3');
 
INSERT INTO math(question_text, question_type, correct_answer)
VALUES ('What is the square root of 144?', 'open-ended', '12');

INSERT INTO math(question_text, question_type, correct_answer)
VALUES ('A car travels at an average speed of 60 miles per hour. How far will it travel in 3.5 hours?', 'open-ended', '210');

INSERT INTO math(question_text, question_type, correct_answer)
VALUES ('If 20% of a number is 60, what is the number?', 'open-ended', '300');

INSERT INTO math(question_text, question_type, correct_answer)
VALUES ('What is the sum of the interior angles of a triangle?', 'open-ended', '180');

INSERT INTO math(question_text, question_type, correct_answer)
VALUES ('Find the perimeter of a rectangle with length 9 meters and width 5 meters.', 'open-ended', '28');

INSERT INTO math(question_text, question_type, correct_answer)
VALUES (' Simplify the expression: (3 + 5) × (4 - 2).', 'open-ended', '16');

INSERT INTO math(question_text, question_type, correct_answer)
VALUES ('What is the median of the following set of numbers: 3, 5, 6, 8, 9?', 'open-ended', '6');

INSERT INTO math(question_text, question_type, correct_answer)
VALUES ('What is the value of 2 times the quantity 3 plus 4?', 'open-ended', '14');

INSERT INTO math(question_text, question_type, correct_answer)
VALUES ('Solve the equation 2x + 3 = 11.', 'open-ended', '4');

CREATE TABLE literature (
  id INT PRIMARY KEY AUTO_INCREMENT,
  question_text VARCHAR(255),
  question_type ENUM('open-ended', 'multiple-choice'),
  option1 VARCHAR(100),
  option2 VARCHAR(100),
  option3 VARCHAR(100),
  option4 VARCHAR(100),
  correct_answer VARCHAR(100)
);

INSERT INTO literature (question_text, question_type, option1, option2, option3, option4, correct_answer)
VALUES ('Who wrote the famous play "Romeo and Juliet"?', 'multiple-choice', 'William Shakespeare', 'F. Scott Fitzgerald', 'Jane Austen', 'Charles Dickens' , 'William Shakespeare');

INSERT INTO literature (question_text, question_type, option1, option2, option3, option4, correct_answer)
VALUES ('The novel "Pride and Prejudice" was written by whom?', 'multiple-choice', 'Jane Austen', 'Mark Twain', 'Leo Tolstoy', 'Emily Brontë', 'Jane Austen');

INSERT INTO literature (question_text, question_type, option1, option2, option3, option4, correct_answer)
VALUES ('The book "1984" is a dystopian novel written by which author?', 'multiple-choice', 'George Orwell', 'Aldous Huxley', 'Ray Bradbury', 'Margaret Atwood', 'George Orwell');

INSERT INTO literature (question_text, question_type, option1, option2, option3, option4, correct_answer)
VALUES ('The novella "Animal Farm" is an allegorical tale written by which author?', 'multiple-choice', 'George Orwell', 'Franz Kafka', 'Aldous Huxley', 'Ray Bradbury', 'George Orwell');

INSERT INTO literature (question_text, question_type, option1, option2, option3, option4, correct_answer)
VALUES ('Which play by William Shakespeare features the character Ophelia?', 'multiple-choice', 'Hamlet', 'Macbeth', 'Romeo and Juliet', 'King Lear', 'Hamlet');

INSERT INTO literature (question_text, question_type, option1, option2, option3, option4, correct_answer)
VALUES ('Which Bulgarian writer is known for his short story "The Peach Thief"?', 'multiple-choice', 'Georgi Gospodinov', 'Yordan Radichkov', 'Elin Pelin', 'Emiliyan Stanev', 'Emiliyan Stanev');

INSERT INTO literature (question_text, question_type, option1, option2, option3, option4, correct_answer)
VALUES ('"Albena" is a novel written by which Bulgarian author?', 'multiple-choice', 'Elin Pelin', 'Ivan Vazov', 'Yordan Yovkov', 'Yordan Radichkov', 'Yordan Yovkov');

INSERT INTO literature (question_text, question_type, option1, option2, option3, option4, correct_answer)
VALUES ('Which Bulgarian poet and revolutionary is known for his epic poem "Hadji Dimitar"?', 'multiple-choice', 'Peyo Yavorov', 'Ivan Vazov', 'Hristo Botev', 'Geo Milev', 'Hristo Botev');

INSERT INTO literature (question_text, question_type, option1, option2, option3, option4, correct_answer)
VALUES ('Who wrote the satirical novel "Bai Ganyo"?', 'multiple-choice', 'Aleko Konstantinov', 'Elin Pelin', 'Yordan Yovkov', 'Ivan Vazov', 'Aleko Konstantinov');

INSERT INTO literature (question_text, question_type, option1, option2, option3, option4, correct_answer)
VALUES ('"Chichovci" is a novel written by:', 'multiple-choice', 'Ivan Vazov', 'Dimitar Talev', 'Yordan Radichkov', 'Aleko Konstantinov', 'Ivan Vazov');

INSERT INTO literature (question_text, question_type, correct_answer)
VALUES ('"The Odyssey" is an epic poem written by which ancient Greek poet?', 'open-ended', 'Homer');

INSERT INTO literature (question_text, question_type, correct_answer)
VALUES ('American author is known for his works "The Adventures of Tom Sawyer" and "Adventures of Huckleberry Finn"?', 'open-ended', 'Mark Twain');

INSERT INTO literature (question_text, question_type, correct_answer)
VALUES ('The play "Othello" was written by:', 'open-ended', ' William Shakespeare');

INSERT INTO literature (question_text, question_type, correct_answer)
VALUES ('"Moby-Dick" is a novel about the hunt for what type of creature?', 'open-ended', 'whale');

INSERT INTO literature (question_text, question_type, correct_answer)
VALUES ('Which Russian writer penned the novel "War and Peace"?','open-ended','Leo Tolstoy');

INSERT INTO literature (question_text, question_type, correct_answer)
VALUES ('Who is the author of the novel "Pod Igoto" (Под игото)?', 'open-ended', 'Ivan Vazov');

INSERT INTO literature (question_text, question_type, correct_answer)
VALUES ('Which Bulgarian poet is known for his poem "September" (Септември)?', 'open-ended', 'Geo Milev');

INSERT INTO literature (question_text, question_type, correct_answer)
VALUES ('The novel "Tobacco" was written by whom?', 'open-ended', 'Dimitar Dimov');

INSERT INTO literature (question_text, question_type, correct_answer)
VALUES ('The novella "Geratsite" was written by:', 'open-ended', 'Elin Pelin');

INSERT INTO literature (question_text, question_type, correct_answer)
VALUES ('"The Time of Parting" (Време разделно) is a novel written by whom?', 'open-ended', 'Anton Donchev');

CREATE TABLE history (
  id INT PRIMARY KEY AUTO_INCREMENT,
  question_text VARCHAR(255),
  question_type ENUM('open-ended', 'multiple-choice'),
  option1 VARCHAR(100),
  option2 VARCHAR(100),
  option3 VARCHAR(100),
  option4 VARCHAR(100),
  correct_answer VARCHAR(100)
);

INSERT INTO history (question_text, question_type, option1, option2, option3, option4, correct_answer)
VALUES ('Who was the first president of the United States?', 'multiple-choice', 'Thomas Jefferson', 'Abraham Lincoln', 'George Washington', 'John Adams', 'George Washington');

INSERT INTO history (question_text, question_type, option1, option2, option3, option4, correct_answer)
VALUES ('In which city did the famous "Boston Tea Party" take place in 1773?', 'multiple-choice', 'Philadelphia', 'Boston', 'New York', 'Charleston', 'Boston');

INSERT INTO history (question_text, question_type, option1, option2, option3, option4, correct_answer)
VALUES ('Who was the leader of the Soviet Union during World War II?', 'multiple-choice', 'Vladimir Putin', 'Nikita Khrushchev', 'Joseph Stalin', 'Mikhail Gorbachev', 'Joseph Stalin');

INSERT INTO history (question_text, question_type, option1, option2, option3, option4, correct_answer)
VALUES ('Which famous American inventor is credited with inventing the lightbulb?', 'multiple-choice', 'Thomas Edison', 'Alexander Graham Bell', 'Isaac Newton', 'Benjamin Franklin', 'Thomas Edison');

INSERT INTO history (question_text, question_type, option1, option2, option3, option4, correct_answer)
VALUES ('Who was the first woman to fly solo across the Atlantic Ocean?', 'multiple-choice', ' Amelia Earhart', 'Bessie Coleman', 'Marie Curie', 'Rosa Parks', 'Amelia Earhart');

INSERT INTO history (question_text, question_type, option1, option2, option3, option4, correct_answer)
VALUES ('When was the First Bulgarian Empire established?', 'multiple-choice', '681 AD', '865 AD', '1018 AD', '1185 AD', '681 AD');

INSERT INTO history (question_text, question_type, option1, option2, option3, option4, correct_answer)
VALUES ('Which significant historical event marked the end of five centuries of Ottoman rule in Bulgaria?', 'multiple-choice', 'The Russo-Turkish War of 1877-1878', 'The Balkan Wars', 'The Battle of Adrianople', 'The Unification of Bulgaria', 'The Russo-Turkish War of 1877-1878');

INSERT INTO history (question_text, question_type, option1, option2, option3, option4, correct_answer)
VALUES ('What was the capital city of the Bulgarian Empire during the First Bulgarian Empire?', 'multiple-choice', 'Pliska', 'Sofia', 'Plovdiv', 'Veliko Tarnovo', 'Pliska');

INSERT INTO history (question_text, question_type, option1, option2, option3, option4, correct_answer)
VALUES ('The Cyrillic alphabet, used in the Bulgarian language, was created by:', 'multiple-choice', 'Saints Cyril and Methodius', 'Tsar Boris I', 'Tsar Simeon the Great', 'Saint John of Rila', 'Saints Cyril and Methodius');

INSERT INTO history (question_text, question_type, option1, option2, option3, option4, correct_answer)
VALUES ('The Second Bulgarian Empire reached its peak during the rule of which Bulgarian tsar?', 'multiple-choice', 'Tsar Kaloyan', 'Tsar Ivan Alexander', 'Tsar Ivan Asen II', 'Tsar Simeon the Great', 'Tsar Ivan Asen II');

INSERT INTO history (question_text, question_type, correct_answer)
VALUES ('The Renaissance was a period of cultural and intellectual rebirth that originated in which country?', 'open-ended', 'Italy');

INSERT INTO history (question_text, question_type, correct_answer)
VALUES ('Which ancient wonder was a massive tomb built for an Egyptian pharaoh?', 'open-ended', 'Pyramid of Giza');

INSERT INTO history (question_text, question_type, correct_answer)
VALUES ('Which European explorer is credited with discovering America in 1492?', 'open-ended', 'Christopher Columbus');

INSERT INTO history (question_text, question_type, correct_answer)
VALUES ('The Industrial Revolution began in which country?', 'open-ended', 'England');

INSERT INTO history (question_text, question_type, correct_answer)
VALUES ('Who was the first female Prime Minister of Great Britain?', 'open-ended', 'Margaret Thatcher');

INSERT INTO history (question_text, question_type, correct_answer)
VALUES ('Who is known as the "Apostle of Freedom" and played a key role in the Bulgarian National Revival?', 'open-ended', 'Vasil Levski');

INSERT INTO history (question_text, question_type, correct_answer)
VALUES ('Which battle marked a significant victory for Bulgaria during the reign of Khan Krum?', 'open-ended', 'Battle of Ongal');

INSERT INTO history (question_text, question_type, correct_answer)
VALUES ('The capital of the Second Bulgarian Empire was:', 'open-ended', 'Veliko Tarnovo');

INSERT INTO history (question_text, question_type, correct_answer)
VALUES ('During which war did Bulgaria gain its independence from Ottoman rule?', 'open-ended', 'Russo-Turkish War');

INSERT INTO history (question_text, question_type, correct_answer)
VALUES ('Which Bulgarian monarch proclaimed the independence of the Principality of Bulgaria in 1908?', 'open-ended', 'Ferdinand I');

CREATE TABLE geography (
  id INT PRIMARY KEY AUTO_INCREMENT,
  question_text VARCHAR(255),
  question_type ENUM('open-ended', 'multiple-choice'),
  option1 VARCHAR(100),
  option2 VARCHAR(100),
  option3 VARCHAR(100),
  option4 VARCHAR(100),
  correct_answer VARCHAR(100)
);

INSERT INTO geography (question_text, question_type, option1, option2, option3, option4, correct_answer)
VALUE ('What is the largest continent on Earth?', 'multiple-choice', 'Africa', 'Europe', 'Asia', 'North America', 'Asia');

INSERT INTO geography (question_text, question_type, option1, option2, option3, option4, correct_answer)
VALUE ('Which ocean is the largest by surface area?', 'multiple-choice', 'Atlantic Ocean', 'Pacific Ocean', 'Indian Ocean', 'Arctic Ocean', 'Pacific Ocean');

INSERT INTO geography (question_text, question_type, option1, option2, option3, option4, correct_answer)
VALUE ('Mount Everest, the worlds highest peak, is located in which mountain range?', 'multiple-choice', 'Andes', 'Rocky Mountains', 'Alps', 'Himalayas', 'Himalayas');

INSERT INTO geography (question_text, question_type, option1, option2, option3, option4, correct_answer)
VALUE ('Which country is known as the "Land of the Rising Sun"?', 'multiple-choice', 'China', 'Japan', 'South Korea', 'Vietnam', 'Japan');

INSERT INTO geography (question_text, question_type, option1, option2, option3, option4, correct_answer)
VALUE ('The Sahara Desert, the largest hot desert in the world, is primarily located in which continent?', 'multiple-choice', 'Africa', 'Asia', 'Australia', 'South America', 'Africa');

INSERT INTO geography (question_text, question_type, option1, option2, option3, option4, correct_answer)
VALUE ('Which Bulgarian city is situated at the foot of Vitosha Mountain and is known for its proximity to the Boyana Church?', 'multiple-choice', 'Pernik', 'Sofia', 'Blagoevgrad', 'Dobrich', 'Sofia');

INSERT INTO geography (question_text, question_type, option1, option2, option3, option4, correct_answer)
VALUE ('The second-largest city in Bulgaria, known for its ancient Roman theater, is:', 'multiple-choice', 'Varna', 'Burgas', 'Plovdiv', 'Stara Zagora', 'Plovdiv');

INSERT INTO geography (question_text, question_type, option1, option2, option3, option4, correct_answer)
VALUE ('What is the name of the famous Bulgarian Black Sea resort known for its sandy beaches and vibrant nightlife?', 'multiple-choice', 'Golden Sands', 'Albena', 'Sozopol', 'Sunny Beach', 'Sunny Beach');

INSERT INTO geography (question_text, question_type, option1, option2, option3, option4, correct_answer)
VALUE ('Which of the following mountain ranges is located in southwestern Bulgaria and is a UNESCO World Heritage site?', 'multiple-choice', 'Pirin Mountains', 'Rhodope Mountains', 'Balkan Mountains', 'Vitosha Mountains', 'Pirin Mountains');

INSERT INTO geography (question_text, question_type, option1, option2, option3, option4, correct_answer)
VALUE ('Which mountain range separates Bulgaria from Serbia to the west?', 'multiple-choice', 'Rila Mountains', 'Pirin Mountains', 'Balkan Mountains', 'Vitosha Mountains', 'Balkan Mountains');

INSERT INTO geography (question_text, question_type, option1, option2, option3, option4, correct_answer)
VALUE ('Which of the following Bulgarian cities is a major cultural and university center, often referred to as the "City of the Tsars"?', 'multiple-choice', 'Plovdiv', 'Veliko Tarnovo', 'Burgas', 'Ruse', 'Veliko Tarnovo');

INSERT INTO geography (question_text, question_type, correct_answer)
VALUE ('Which country is known as "the land of a thousand lakes"?', 'open-ended', 'Finland');

INSERT INTO geography (question_text, question_type, correct_answer)
VALUE ('Which river is the longest in Europe?', 'open-ended', 'Volga');

INSERT INTO geography (question_text, question_type, correct_answer)
VALUE ('The capital city of Canada is:', 'open-ended', 'Ottawa');

INSERT INTO geography (question_text, question_type, correct_answer)
VALUE ('The Dead Sea, known for its high salt concentration, is located between which two countries?', 'open-ended', 'Israel and Jordan');

INSERT INTO geography (question_text, question_type, correct_answer)
VALUE ('Which continent is the least populated?', 'open-ended', 'Antarctica');

INSERT INTO geography (question_text, question_type, correct_answer)
VALUE ('What is Bulgarias official currency?', 'open-ended', 'lev');

INSERT INTO geography (question_text, question_type, correct_answer)
VALUE ('Which national park in Bulgaria is famous for its unique rock formations and is often referred to as the "Stone Forest"?', 'open-ended', 'Belogradchik Rocks');

INSERT INTO geography (question_text, question_type, correct_answer)
VALUE ('Which sea borders Bulgaria to the east?', 'open-ended', 'BlackSea');

INSERT INTO geography (question_text, question_type, correct_answer)
VALUE ('What is the capital city of Bulgaria?', 'open-ended', 'Sofia');

INSERT INTO geography (question_text, question_type, correct_answer)
VALUE ('Which famous Bulgarian mountain is known for its stunning Seven Rila Lakes?', 'open-ended', 'Rila');



select * from scores;


select * from user;



 