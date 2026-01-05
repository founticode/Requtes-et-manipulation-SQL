-- Q-1 Select article title and author name
SELECT 
    a.titre,
    u.nom AS author_name
FROM Article a
JOIN Utilisateur u 
    ON a.id_utilisateur = u.id_utilisateur;

-- Q-2 Count number of articles per user
SELECT 
    u.nom,
    COUNT(a.id_article) AS total_articles
FROM Utilisateur u
LEFT JOIN Article a 
    ON u.id_utilisateur = a.id_utilisateur
GROUP BY u.id_utilisateur;

-- Q-3 Display comments with related article title
SELECT 
    c.contenu,
    c.auteur,
    a.titre AS article_title
FROM Commentaire c
JOIN Article a 
    ON c.id_article = a.id_article;

-- Q-4 Select articles having more than one comment
SELECT 
    a.titre,
    COUNT(c.id_commentaire) AS total_comments
FROM Article a
JOIN Commentaire c 
    ON a.id_article = c.id_article
GROUP BY a.id_article
HAVING COUNT(c.id_commentaire) > 1;