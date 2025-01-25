CREATE TABLE participant (
    idno INT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    age INT NOT NULL
);

CREATE TABLE contactdetails (
    idno INT PRIMARY KEY,
    address VARCHAR(255) NOT NULL,
    city VARCHAR(100) NOT NULL,
    mobile VARCHAR(15) NOT NULL,
    email VARCHAR(255) NOT NULL,
    FOREIGN KEY (idno) REFERENCES participant(idno)
);

INSERT INTO participant (idno, name, age) VALUES
(1, 'John Doe', 30),
(2, 'Jane Smith', 25),
(3, 'Alice Johnson', 28);

INSERT INTO contactdetails (idno, address, city, mobile, email) VALUES
(1, '123 Elm St', 'Springfield', '555-1234', 'john.doe@example.com'),
(2, '456 Oak St', 'Shelbyville', '555-5678', 'jane.smith@example.com'),
(3, '789 Pine St', 'Capital City', '555-8765', 'alice.johnson@example.com');
CREATE TABLE project (
    projectno INT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    startdate DATE NOT NULL
);

CREATE TABLE members (
    memberid INT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    role VARCHAR(100) NOT NULL,
    projectno INT,
    FOREIGN KEY (projectno) REFERENCES project(projectno)
);

INSERT INTO project (projectno, name, startdate) VALUES
(1, 'Project Alpha', '2023-01-01'),
(2, 'Project Beta', '2023-02-01');

INSERT INTO members (memberid, name, role, projectno) VALUES
(1, 'John Doe', 'Manager', 1),
(2, 'Jane Smith', 'Developer', 1),
(3, 'Alice Johnson', 'Tester', 2);

CREATE TABLE candidate (
    sno INT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    dob DATE NOT NULL,
    city VARCHAR(100) NOT NULL
);

CREATE TABLE skills (
    skillid INT PRIMARY KEY,
    name VARCHAR(255) NOT NULL
);

CREATE TABLE skillmap (
    sno INT,
    skillid INT,
    FOREIGN KEY (sno) REFERENCES candidate(sno),
    FOREIGN KEY (skillid) REFERENCES skills(skillid)
    PRIMARY KEY (sno, skillid)
);

INSERT INTO candidate (sno, name, dob, city) VALUES
(1, 'John Doe', '1993-05-15', 'Springfield'),
(2, 'Jane Smith', '1998-07-20', 'Shelbyville'),
(3, 'Alice Johnson', '1995-03-10', 'Capital City');

INSERT INTO skills (skillid, name) VALUES
(1, 'Java'),
(2, 'SQL'),
(3, 'Python');

INSERT INTO skillmap (sno, skillid) VALUES
(1, 1),
(1, 2),
(2, 2),
(2, 3),
(3, 1),
(3, 3);