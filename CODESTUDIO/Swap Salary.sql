update salary set sex=
    CASE sex
    WHEN 'm' THEN 'f'
    ELSE 'm'
    END;

UPDATE 4                          