# Write your MySQL query statement below
select s.student_id, s.student_name, j.subject_name, count(e.subject_name) as attended_exams
from Students s
CROSS JOIN Subjects j
left join Examinations e on s.student_id = e.student_id and e.subject_name = j.subject_name
group by 1,2,3 
order by 1,3