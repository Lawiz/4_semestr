use S_univer;
--select join

SELECT AUDITORIUM, AUDITORIUM_TYPENAME
FROM AUDITORIUM
    JOIN AUDITORIUM_TYPE
    ON AUDITORIUM.AUDITORIUM_TYPE=AUDITORIUM_TYPE.AUDITORIUM_TYPE;

go
--SELECT JOIN WITH STRIG 
SELECT AUDITORIUM, AUDITORIUM_TYPENAME
FROM AUDITORIUM
    JOIN AUDITORIUM_TYPE
    ON AUDITORIUM.AUDITORIUM_TYPE=AUDITORIUM_TYPE.AUDITORIUM_TYPE
    AND AUDITORIUM_TYPE.AUDITORIUM_TYPENAME LIKE '%компьютер%'


--selects dnt have joins

SELECT a.AUDITORIUM, b.AUDITORIUM_TYPENAME
FROM AUDITORIUM as a, AUDITORIUM_TYPE as b
where a.AUDITORIUM_TYPE=b.AUDITORIUM_TYPE

SELECT a.AUDITORIUM, b.AUDITORIUM_TYPENAME
FROM AUDITORIUM as a, AUDITORIUM_TYPE as b
where a.AUDITORIUM_TYPE=b.AUDITORIUM_TYPE
    and b.AUDITORIUM_TYPENAME like '%компьютер%'


--select nots



