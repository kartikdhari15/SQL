select *
from Patients
where conditions 
like '%DIAB1%';

 patient_id | patient_name |  conditions  
------------+--------------+--------------
          3 | Bob          | DIAB100 MYOP
          4 | George       | ACNE DIAB100
(2 rows)

