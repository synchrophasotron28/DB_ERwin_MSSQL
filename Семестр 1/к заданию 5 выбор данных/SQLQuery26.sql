WITH C(dz, ���_�����������) AS 

(  SELECT YEAR(����_������), ���_�����������   FROM ������1) 

SELECT dz, COUNT(DISTINCT ���_�����������) AS kjanr

FROM C 

GROUP BY dz; 