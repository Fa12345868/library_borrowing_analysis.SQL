# 📚 Library Borrowing Analysis

## 🔍 Overview  
This project analyzes the borrowing activity within a library system. It includes detailed insights into book popularity, member borrowing behavior, return patterns, and author performance — using structured SQL queries and a well-designed relational database.

---

## 🗂️ Database Structure  
The database consists of the following main tables:

- 📘 **`books`**: Stores book details such as title, publication year, genre, and linked author.  
- 👤 **`members`**: Contains member information and their join date.  
- 📝 **`borrowings`**: Tracks which member borrowed which book and when it was returned.  
- ✍️ **`authors`**: Information about book authors.

> *ERD (Entity Relationship Diagram) included in project files.*

---

## 📈 Key Analysis Queries  
- 🔹 Most Borrowed Books & Genres  
- 🔹 Member Borrowing Frequency and Activity Levels  
- 🔹 Ranking Members Based on Borrow Count  
- 🔹 Return Timeliness Classification (e.g., Fast / Good / Slow)  
- 🔹 Reader Level vs. Favorite Genres  
- 🔹 Late Return Detection (return after 30 days)

---

## 🛠️ SQL Features Used  
- `JOIN`, `GROUP BY`, `ORDER BY`  
- Window functions: `RANK()`, `LAG()`, `LEAD()`  
- `CASE` statements for classification  
- Views and CTEs (`WITH`)  
- `DATEDIFF()` for return analysis

---

## 📊 Insights & Observations  
- Some members are highly active, borrowing **50+ books**.  
- Certain genres (e.g., *Fiction*) are more popular among "Good" readers.  
- Most late returns happen with books published before **2000**.  
- Return durations vary significantly by reader level.

---

## 🚀 Future Improvements  
- Add visual dashboards using Power BI or Tableau.  
- Integrate a fine system for late returns.  
- Expand the database to include staff, branches, and reservations.  

---

## 👩‍💻 Author  
**Fatma Badawy**  
Track: Data Science & AI

---

FB
Tools Used: MySQL, Jupyter Notebook, Draw.io

