

DELETE T
from Датыпремьеры1 T
where Код_записи= (
  select top 1 Код_записи
  from Датыпремьеры1
  where Номерисполнениявэфире = T.Номерисполнениявэфире
  order by Код_записи desc
)
