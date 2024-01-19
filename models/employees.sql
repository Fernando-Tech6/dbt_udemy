select
    concat(concat(last_name, ' '), first_name) as name,
    datediff(year, birth_date, current_date) as age,
    datediff(year, hire_date, current_date) as lenghtofservice,
    employee_id,
    title,
    title_of_courtesy,
    birth_date,
    hire_date,
    address,
    city,
    region,
    postal_code,
    country,
    home_phone,
    extension,
    notes,
    reports_to,
    photo_path,
    salary
from {{ source("sources", "employees") }}
limit 10
