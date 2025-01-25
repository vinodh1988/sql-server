### SQL Server Table Creation Exercise

#### Question:
Create six tables in SQL Server that demonstrate the following concepts:
1. Table creation
2. Constraint creation (Primary Key, Foreign Key, Unique, Not Null)
3. Relationships (One-to-One, One-to-Many, Many-to-Many)
4. Inserting values
5. Updating values

#### Instructions:
1. **Table Names and Structure:**
    - **Table 1:** `Authors`
        - `AuthorID` (Primary Key, INT, Not Null)
        - `FirstName` (VARCHAR(50), Not Null)
        - `LastName` (VARCHAR(50), Not Null)
        - `Email` (VARCHAR(100), Unique, Not Null)
    - **Table 2:** `Books`
        - `BookID` (Primary Key, INT, Not Null)
        - `Title` (VARCHAR(100), Not Null)
        - `Genre` (VARCHAR(50))
        - `PublishedYear` (INT)
        - `AuthorID` (Foreign Key, INT, Not Null)
    - **Table 3:** `Publishers`
        - `PublisherID` (Primary Key, INT, Not Null)
        - `PublisherName` (VARCHAR(100), Not Null)
        - `Address` (VARCHAR(200))
    - **Table 4:** `BookPublishers`
        - `BookID` (Foreign Key, INT, Not Null)
        - `PublisherID` (Foreign Key, INT, Not Null)
        - Primary Key (`BookID`, `PublisherID`)
    - **Table 5:** `Libraries`
        - `LibraryID` (Primary Key, INT, Not Null)
        - `LibraryName` (VARCHAR(100), Not Null)
        - `Location` (VARCHAR(200))
    - **Table 6:** `LibraryBooks`
        - `LibraryID` (Foreign Key, INT, Not Null)
        - `BookID` (Foreign Key, INT, Not Null)
        - `Quantity` (INT, Not Null)
        - Primary Key (`LibraryID`, `BookID`)

2. **Relationships:**
    - One-to-One: `Authors` to `Books` (via `AuthorID`)
    - One-to-Many: `Publishers` to `BookPublishers` (via `PublisherID`)
    - Many-to-Many: `Books` to `Libraries` (via `LibraryBooks`)

3. **Insert Values:**
    - Insert at least 3 records into each table.

4. **Update Values:**
    - Update at least one record in each table.