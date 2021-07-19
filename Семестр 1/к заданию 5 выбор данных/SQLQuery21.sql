SELECT Код_записи, Наименование, Альбом

FROM Записи WHERE EXISTS ( SELECT * 

FROM Записи1 WHERE  Альбом = 'Альбом1' ); 