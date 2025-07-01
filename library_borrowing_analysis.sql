USE library_borrowing_analysis;

CREATE TABLE authors (
	author_id INT PRIMARY KEY, 
    author_name VARCHAR(100),
    birth_year DATE
); 

CREATE TABLE books (
	book_id INT PRIMARY KEY, 
    title VARCHAR(100), 
    publication_year INT, 
    genre VARCHAR(50),
    author_id INT, 
    FOREIGN KEY (author_id) REFERENCES authors(author_id)
); 

CREATE TABLE members (
	member_id INT PRIMARY KEY, 
    member_name VARCHAR(50), 
    join_date DATE
); 

CREATE TABLE borrowings ( 
	borrow_id INT PRIMARY KEY, 
    book_id INT, 
    member_id INT, 
    borrow_date DATE, 
    return_date DATE,
    FOREIGN KEY (book_id) REFERENCES books(book_id),
    FOREIGN KEY (member_id) REFERENCES members(member_id)
);

INSERT INTO authors VALUES
(1, 'Ahmed Khaled Tawfik', '1962-06-10'),
(2, 'J.K. Rowling', '1965-07-31'),
(3, 'George Orwell', '1903-06-25'),
(4, 'Stephen King', '1947-09-21'),
(5, 'Agatha Christie', '1890-09-15'),
(6, 'Naguib Mahfouz', '1911-12-11'),
(7, 'Yuval Noah Harari', '1976-02-24'),
(8, 'Dan Brown', '1964-06-22'),
(9, 'Jane Austen', '1775-12-16'),
(10, 'Mark Manson', '1984-03-09');

INSERT INTO books VALUES
(1, 'Utopia', 2008, 'Sci-Fi', 1),
(2, 'Metro 2033', 2005, 'Sci-Fi', 1),
(3, 'Harry Potter 1', 1997, 'Fantasy', 2),
(4, 'Harry Potter 2', 1998, 'Fantasy', 2),
(5, '1984', 1949, 'Dystopia', 3),
(6, 'Animal Farm', 1945, 'Satire', 3),
(7, 'The Shining', 1977, 'Horror', 4),
(8, 'It', 1986, 'Horror', 4),
(9, 'Murder on the Orient Express', 1934, 'Mystery', 5),
(10, 'And Then There Were None', 1939, 'Mystery', 5),
(11, 'Cairo Trilogy', 1956, 'Historical', 6),
(12, 'Children of the Alley', 1959, 'Political Fiction', 6),
(13, 'Sapiens', 2011, 'History', 7),
(14, 'Homo Deus', 2015, 'Philosophy', 7),
(15, 'The Da Vinci Code', 2003, 'Thriller', 8),
(16, 'Angels & Demons', 2000, 'Thriller', 8),
(17, 'Pride and Prejudice', 1813, 'Romance', 9),
(18, 'Sense and Sensibility', 1811, 'Romance', 9),
(19, 'The Subtle Art of Not Giving a F*ck', 2016, 'Self-help', 10),
(20, 'Everything is F*cked', 2019, 'Self-help', 10),
(21, 'Mockingjay', 2010, 'Dystopia', 2),
(22, 'Misery', 1987, 'Horror', 4),
(23, 'Death on the Nile', 1937, 'Mystery', 5),
(24, 'Digital Fortress', 1998, 'Tech Thriller', 8),
(25, 'Brave New World', 1932, 'Dystopia', 3),
(26, 'The Alchemist', 1988, 'Adventure', 1),
(27, 'Zero to One', 2014, 'Business', 10),
(28, 'Jane Eyre', 1847, 'Romance', 9),
(29, 'Outliers', 2008, 'Psychology', 10),
(30, 'The Institute', 2019, 'Horror', 4);
 
 
INSERT INTO members VALUES
(1, 'Fatma Badawy', '2024-01-10'),
(2, 'Ali Mohamed', '2023-11-25'),
(3, 'Nour El-Sherif', '2024-02-12'),
(4, 'Kareem Adel', '2024-04-05'),
(5, 'Hana Mostafa', '2023-12-15'),
(6, 'Sara Hany', '2023-10-20'),
(7, 'Mohamed Reda', '2024-03-17'),
(8, 'Laila Tarek', '2024-01-22'),
(9, 'Ahmed Yasser', '2024-05-03'),
(10, 'Salma Ehab', '2024-06-10'),
(11, 'Youssef Gamal', '2023-11-10'),
(12, 'Mariam Fathy', '2024-02-28'),
(13, 'Omar Hesham', '2024-03-01'),
(14, 'Reem Saeed', '2024-04-18'),
(15, 'Hossam Lotfy', '2024-05-20');

INSERT INTO borrowings VALUES
(1, 1, 1, '2024-01-15', '2024-01-25'),
(2, 2, 1, '2024-02-10', '2024-02-15'),
(3, 3, 2, '2024-01-20', '2024-02-01'),
(4, 4, 3, '2024-02-05', NULL),
(5, 5, 4, '2024-03-01', '2024-03-15'),
(6, 6, 5, '2024-03-10', '2024-03-20'),
(7, 7, 6, '2024-03-20', NULL),
(8, 8, 7, '2024-03-22', '2024-04-02'),
(9, 9, 8, '2024-04-01', NULL),
(10, 10, 9, '2024-04-05', '2024-04-20'),
(11, 11, 10, '2024-04-07', NULL),
(12, 12, 11, '2024-04-10', '2024-04-17'),
(13, 13, 12, '2024-04-15', '2024-04-25'),
(14, 14, 13, '2024-04-20', NULL),
(15, 15, 14, '2024-04-25', '2024-05-01'),
(16, 16, 15, '2024-05-01', NULL),
(17, 17, 1, '2024-05-02', '2024-05-10'),
(18, 18, 2, '2024-05-03', '2024-05-15'),
(19, 19, 3, '2024-05-04', NULL),
(20, 20, 4, '2024-05-05', NULL),
(21, 21, 5, '2024-05-06', '2024-05-20'),
(22, 22, 6, '2024-05-07', '2024-05-21'),
(23, 23, 7, '2024-05-08', NULL),
(24, 24, 8, '2024-05-09', '2024-05-25'),
(25, 25, 9, '2024-05-10', NULL),
(26, 26, 10, '2024-05-11', NULL),
(27, 27, 11, '2024-05-12', '2024-05-20'),
(28, 28, 12, '2024-05-13', NULL),
(29, 29, 13, '2024-05-14', NULL),
(30, 30, 14, '2024-05-15', '2024-05-30'),
(31, 1, 15, '2024-05-16', '2024-05-22'),
(32, 2, 1, '2024-05-17', NULL),
(33, 3, 2, '2024-05-18', NULL),
(34, 4, 3, '2024-05-19', NULL),
(35, 5, 4, '2024-05-20', NULL),
(36, 6, 5, '2024-05-21', NULL),
(37, 7, 6, '2024-05-22', NULL),
(38, 8, 7, '2024-05-23', NULL),
(39, 9, 8, '2024-05-24', NULL),
(40, 10, 9, '2024-05-25', NULL),
(41, 11, 10, '2024-05-26', NULL),
(42, 12, 11, '2024-05-27', NULL),
(43, 13, 12, '2024-05-28', NULL),
(44, 14, 13, '2024-05-29', NULL),
(45, 15, 14, '2024-05-30', NULL),
(46, 16, 15, '2024-06-01', NULL),
(47, 17, 1, '2024-06-02', NULL),
(48, 18, 2, '2024-06-03', NULL),
(49, 19, 3, '2024-06-04', NULL),
(50, 20, 4, '2024-06-05', NULL);


    
CREATE OR REPLACE VIEW member_borrowing_analysis AS 
	WITH borrow_count AS (
    SELECT 
        member_id ,
        COUNT(*) AS borrow_total 
    FROM 
        borrowings 
    GROUP BY 
        member_id ) 
SELECT 
    m.member_id ,
    bc.borrow_total ,
    RANK() OVER(ORDER BY bc.borrow_total DESC) AS rank_position , 
    LAG(bc.borrow_total) OVER( ORDER BY bc.borrow_total DESC ) AS pervious_rank_position , 
    bc.borrow_total - LAG(bc.borrow_total) OVER( ORDER BY bc.borrow_total DESC ) AS different_rank_position ,
    LEAD(bc.borrow_total) OVER (ORDER BY bc.borrow_total DESC) AS next_position ,
    bc.borrow_total -LEAD(bc.borrow_total) OVER (ORDER BY bc.borrow_total DESC) AS different_next_position 
FROM 
    borrow_count AS bc
JOIN 
    members AS m 
ON 
    bc.member_id = m.member_id;
    
ALTER VIEW member_borrowing_analysis AS
WITH borrow_count AS (
    SELECT member_id, COUNT(*) AS borrow_total
    FROM borrowings
    GROUP BY member_id
)
SELECT 
    m.member_id,
    m.member_name,
    bc.borrow_total,
    RANK() OVER (ORDER BY bc.borrow_total DESC) AS rank_position,
    LAG(bc.borrow_total) OVER (ORDER BY bc.borrow_total DESC) AS previous_rank_position,
    bc.borrow_total - LAG(bc.borrow_total) OVER (ORDER BY bc.borrow_total DESC) AS different_rank_position,
    LEAD(bc.borrow_total) OVER (ORDER BY bc.borrow_total DESC) AS next_position,
    bc.borrow_total - LEAD(bc.borrow_total) OVER (ORDER BY bc.borrow_total DESC) AS different_next_position,
    CASE 
        WHEN bc.borrow_total >= 10 THEN 'Very Active'
        WHEN bc.borrow_total BETWEEN 5 AND 9 THEN 'Active'
        ELSE 'Low Activity'
    END AS activity_level
FROM borrow_count AS bc
JOIN members AS m ON bc.member_id = m.member_id;

ALTER VIEW member_borrowing_analysis AS 
WITH member_days AS (
    SELECT 
        m.member_id , 
        m.member_name ,
        DATEDIFF(return_date , borrow_date) AS days_off
    FROM 
        borrowings AS br 
    JOIN 
        members AS m 
    ON 
        m.member_id = br.member_id
    WHERE 
        return_date IS NOT NULL 
        ),

avg_days_per_member AS (
    SELECT 
        member_id , 
        member_name ,
        AVG(days_off) AS avg_days
    FROM 
        member_days 
    GROUP BY 
        member_id , member_name ) 

SELECT 
    member_id , 
    member_name ,
    avg_days , 
    CASE
        WHEN avg_days > 50 THEN 'RETURN SLOW ' 
        WHEN avg_days BETWEEN 20 and 40 THEN 'RETURN GOOD ' 
        ELSE 'RETURN FAST'
    END AS return_category
FROM avg_days_per_member ; 

ALTER VIEW member_borrowing_analysis AS 
WITH reader_levels AS (
    SELECT 
        m.member_id,
        CASE
            WHEN COUNT(br.borrow_id) >= 50 THEN 'BORROW WELL'
            WHEN COUNT(br.borrow_id) BETWEEN 20 AND 40 THEN 'BORROW GOOD'
            ELSE 'BORROW BAD'
        END AS reader_level
    FROM 
        borrowings AS br
    JOIN 
        members AS m ON m.member_id = br.member_id
    GROUP BY 
        m.member_id
),
borrow_with_genre AS (
    SELECT 
        rl.reader_level,
        b.genre
    FROM 
        borrowings AS br
    JOIN 
        reader_levels AS rl ON br.member_id = rl.member_id
    JOIN 
        books AS b ON br.book_id = b.book_id
)
SELECT 
    reader_level,
    genre,
    COUNT(*) AS borrow_count
FROM 
    borrow_with_genre
GROUP BY 
    reader_level, genre;


ALTER VIEW member_borrowing_analysis AS 
SELECT 
    a.author_name ,
    COUNT(*) AS author_count 
FROM 
    borrowings AS br 
JOIN 
    books AS b 
ON 
    b.book_id = br.book_id 
JOIN 
    authors AS a 
ON 
    a.author_id = b.author_id
GROUP BY 
    a.author_name 
ORDER BY 
    author_count; 
    
ALTER VIEW member_borrowing_analysis AS 
SELECT 
    m.member_name ,
    COUNT(*) AS late_return 
FROM 
    borrowings AS br 
JOIN 
    members AS m 
ON 
    m.member_id = br.member_id 
WHERE 
    DATEDIFF(return_date,borrow_date) > 30 
GROUP BY 
    m.member_name 
ORDER BY 
    late_return DESC ;