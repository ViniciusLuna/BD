begin 
    FOR item IN
        (SELECT last_name, job_id FROM employees WHERE job_id LIKE '%CLERK%'
        AND manager_id > 120)
    LOOP
    DBMS_OUTPUT.PUT_LINE ('Name = ' || item.last_name || ', Job = '
                                            item.job_id);
    END LOOP;
END;                                                