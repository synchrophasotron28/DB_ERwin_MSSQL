SELECT dyear, COUNT(DISTINCT ���_�����) AS kjanr

FROM (SELECT YEAR(����_������) AS dyear, ���_�����

FROM ������1) as �  

GROUP BY dyear;