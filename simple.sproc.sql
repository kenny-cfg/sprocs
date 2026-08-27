USE CodingExample;

DROP PROCEDURE IF EXISTS getAllStudents;
DELIMITER //

CREATE PROCEDURE getAllStudents()
BEGIN
	SELECT * FROM Students;
END //

DELIMITER ;

CALL getAllStudents();