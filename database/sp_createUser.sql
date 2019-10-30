DELIMITER $$
CREATE PROCEDURE `sp_createUser`(
    IN p_name VARCHAR(45),
    IN p_username VARCHAR(45),
    IN p_password LONGTEXT
)
BEGIN
    if ( select exists (select 1 from tbl_users where p_username = user_username) ) THEN
     
        select 'Username Exists !!';
     
    ELSE
     
        insert into tbl_users
        (
            user_name,
            user_username,
            user_password
        )
        values
        (
            p_name,
            p_username,
            p_password
        );
     
    END IF;
END$$
DELIMITER ;