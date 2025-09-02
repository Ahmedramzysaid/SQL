-- Problem:
-- Show patient_id and first_name from patients where their first_name starts and ends with 's' and is at least 6 characters long.
select
    patient_id,
    first_name
from
    patients
where
    first_name like 'S%s'
    and length(first_name) >= 6;