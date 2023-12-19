DROP DATABASE IF EXISTS defaultdb;
CREATE DATABASE defaultdb;
USE defaultdb;

CREATE TABLE IF NOT EXISTS offenses (
    offense_id INT PRIMARY KEY AUTO_INCREMENT,
    file_id VARCHAR(10),
    offense_date DATE,
    offense_description VARCHAR(255),
    location VARCHAR(20)
);

CREATE TABLE IF NOT EXISTS nic_offenses (
    nic_number VARCHAR(12),
    offense_id INT,
    PRIMARY KEY (nic_number, offense_id),
    FOREIGN KEY (offense_id) REFERENCES offenses(offense_id)
);

-- Dummy data (GPT Generated)
-- Insert data into the 'offenses' table
INSERT INTO offenses (file_id, offense_date, offense_description, location)
VALUES
  ('F123', '2023-01-15', 'A case of theft was reported in Colombo, where several valuable items were stolen from a residence, prompting an investigation.', 'Colombo'),
  ('F124', '2023-02-20', 'An assault incident took place in Kandy, involving two individuals with a history of conflict, resulting in injuries and requiring medical attention.', 'Kandy'),
  ('F125', '2023-03-10', 'Reports of vandalism emerged in the Galle area, indicating deliberate damage to public property, leading authorities to address the situation and enhance security measures.', 'Galle'),
  ('F126', '2023-04-05', 'A case of fraud was detected in Jaffna, involving financial transactions with misleading information, prompting an investigation into potential fraudulent activities.', 'Jaffna'),
  ('F127', '2023-05-18', 'A burglary incident was reported in Matara, where unauthorized entry into a residential property occurred, leading to the loss of valuable possessions and an ongoing investigation.', 'Matara');

-- Insert data into the 'nic_offenses' table
INSERT INTO nic_offenses (nic_number, offense_id)
VALUES
  ('200023402567', 1),
  ('200023402567', 2),
  ('200023402567', 3),
  ('200125601234', 4),
  ('200125601234', 5),
  ('200125601234', 1),
  ('201912345678', 3),
  ('201912345678', 4),
  ('201912345678', 5);
