DROP PROCEDURE IF EXISTS sp_check_duplicate_email;
DELIMITER $$

CREATE PROCEDURE sp_check_duplicate_email (
    IN p_email VARCHAR(100)
)
BEGIN
    DECLARE v_email_normalized VARCHAR(100);
    DECLARE v_count INT DEFAULT 0;

    SET v_email_normalized = LOWER(TRIM(p_email));

    SELECT COUNT(*) INTO v_count
    FROM fitness_management_system.tbl_members
    WHERE LOWER(TRIM(email)) = v_email_normalized;

    IF v_count > 1 THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT ='Duplicate email found in tbl_members';
    ELSE
        SELECT 'Email is available (No duplicate found)' AS message;
    END IF;

END$$

DELIMITER ;



CALL sp_check_duplicate_email('chirag.chauhan4@hotmail.com');


