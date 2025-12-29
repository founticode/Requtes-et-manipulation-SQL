CREATE TABLE Utilisateur (
    id_utilisateur INT AUTO_INCREMENT PRIMARY KEY,
    nom VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    mot_de_passe VARCHAR(255) NOT NULL
);

CREATE TABLE Article (
    id_article INT AUTO_INCREMENT PRIMARY KEY,
    titre VARCHAR(150) NOT NULL,
    contenu TEXT NOT NULL,
    date_publication DATE,
    id_utilisateur INT NOT NULL,
    FOREIGN KEY (id_utilisateur) REFERENCES Utilisateur(id_utilisateur)
);

CREATE TABLE Commentaire (
    id_commentaire INT AUTO_INCREMENT PRIMARY KEY,
    contenu TEXT NOT NULL, 
    auteur VARCHAR(100) NOT NULL,
    date_commentaire DATE,
    id_article INT NOT NULL,
    FOREIGN KEY (id_article) REFERENCES Article(id_article)
);


INSERT INTO Utilisateur (nom, email, mot_de_passe) VALUES
('Youssef Amrani', 'youssef.amrani@gmail.com', 'pass123'),
('Sara El Fassi', 'sara.elfassi@gmail.com', 'sara2024'),
('Omar Benali', 'omar.benali@gmail.com', 'omar_pwd'),
('Khadija Rahmani', 'khadija.rahmani@gmail.com', 'khadija_pass'),
('Anas Toumi', 'anas.toumi@gmail.com', 'anas456');


INSERT INTO Article (titre, contenu, date_publication, id_utilisateur) VALUES
(
  'Introduction to Web Development',
  'This article explains the basics of web development including HTML, CSS, and JavaScript.',
  '2024-05-01',
  1
),
(
  'Understanding Databases',
  'A beginner-friendly guide to databases, tables, and relationships.',
  '2024-05-03',
  2
),
(
  'What is SQL?',
  'SQL is a language used to manage and query relational databases.',
  '2024-05-05',
  3
),
(
  'Frontend vs Backend',
  'This article compares frontend and backend development roles and technologies.',
  '2024-05-07',
  4
),
(
  'Why Learn Database Design?',
  'Good database design helps maintain data integrity and scalability.',
  '2024-05-09',
  5
);


INSERT INTO Commentaire (contenu, auteur, date_commentaire, id_article)
VALUES
('Great article, very clear explanation.', 'Youssef', '2025-01-10', 1),
('Thanks for sharing this useful content.', 'Sara', '2025-01-11', 1),
('I did not understand one part, can you explain more?', 'Ali', '2025-01-12', 2),
('Very well written, keep it up!', 'Khadija', '2025-01-13', 3),
('This article helped me a lot, thanks!', 'Omar', '2025-01-14', 2);

UPDATE Utilisateur
SET email = 'newyoussef@email.com'
WHERE nom = 'Youssef';

UPDATE Article
SET titre = 'New Title', date_publication = '2025-01-20'
WHERE id_article = 2;

DELETE FROM Commentaire
WHERE id_commentaire = 3;

DELETE FROM Article
WHERE id_utilisateur = 2;


