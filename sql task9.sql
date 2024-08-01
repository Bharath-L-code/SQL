use bharath;

CREATE TABLE players (
    Player_Name VARCHAR(20) NOT NULL UNIQUE,
    Age INT NOT NULL,
    State VARCHAR(30) NOT NULL,
    Cap_Number INT NOT NULL UNIQUE,
    Player_Score INT NOT NULL
);

CREATE TABLE matches (
    Opponent_team VARCHAR(30) NOT NULL,
    Match_type ENUM('ODI','T20','TEST'),
    Match_date DATE UNIQUE,
    Match_time TIME NOT NULL,
    Location VARCHAR(30) UNIQUE
);

INSERT INTO players (Player_Name, Age, State, Cap_Number, Player_Score) VALUES
('David Warner', 36, 'New South Wales', 245, 221),
('Steve Smith', 34, 'New South Wales', 246, 232),
('Pat Cummins', 30, 'New South Wales', 247, 123),
('Aaron Finch', 37, 'Victoria', 248, 98),
('Glenn Maxwell', 35, 'Victoria', 249, 104),
('Mitchell Starc', 33, 'New South Wales', 250, 117),
('Josh Hazlewood', 32, 'New South Wales', 251, 101),
('Marcus Stoinis', 34, 'Western Australia', 252, 83),
('Adam Zampa', 31, 'New South Wales', 253, 88),
('Alex Carey', 32, 'South Australia', 254, 72);

INSERT INTO matches (Opponent_team, Match_type, Match_date, Match_time, Location) VALUES
('India', 'TEST', '2024-01-20', '10:30:00', 'Mumbai'),
('England', 'ODI', '2024-02-10', '15:00:00', 'Birmingham'),
('South Africa', 'T20', '2024-03-15', '19:30:00', 'Johannesburg'),
('New Zealand', 'ODI', '2024-04-20', '14:30:00', 'Wellington'),
('Pakistan', 'T20', '2024-05-25', '18:45:00', 'Karachi'),
('Sri Lanka', 'TEST', '2024-06-30', '10:00:00', 'Colombo'),
('West Indies', 'ODI', '2024-07-18', '13:45:00', 'Bridgetown'),
('Bangladesh', 'T20', '2024-08-28', '18:15:00', 'Dhaka'),
('Afghanistan', 'ODI', '2024-09-18', '13:15:00', 'Kabul'),
('Zimbabwe', 'TEST', '2024-10-12', '10:00:00', 'Harare');

SELECT * FROM matches;

SELECT * FROM players;

SELECT * FROM matches
WHERE Match_date BETWEEN '2024-01-01' AND '2024-06-30';

SELECT * FROM matches
WHERE Opponent_team LIKE '%an%';

SELECT * FROM matches
ORDER BY Opponent_team DESC;

SELECT UPPER(Opponent_team) AS Uppercase_Opponent_team, Match_type, Match_date, Match_time, Location
FROM matches;

SELECT Opponent_team, Match_type, Match_date, Match_time, LOWER(Location) AS Lowercase_Location
FROM matches;

SELECT CONCAT(Opponent_team, ' vs ', Location) AS Match_Info, Match_type, Match_date, Match_time
FROM matches;

CREATE INDEX idx_match_date ON matches (Match_date);

SELECT * FROM matches
WHERE Match_date > '2024-06-01';

SELECT * FROM matches
WHERE Match_date BETWEEN '2024-03-01' AND '2024-09-01';

SELECT * FROM matches;
SELECT * FROM players;