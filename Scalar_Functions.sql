--Scalar Functions--

SELECT ASCII('A') FROM DUAL;                            --65
SELECT ASCII(1) FROM DUAL;                              --49

SELECT CHR(65) FROM DUAL;                               --'A'

SELECT COALESCE(NULL,NULL,2) FROM DUAL;                 --2
SELECT COALESCE(0,1,2) FROM DUAL;                       --1

SELECT CONCAT('Hello ', 'World') FROM DUAL;             --Hello World

SELECT INITCAP('alexander') FROM DUAL;                  --Alexander

SELECT LENGTH('alezanper') FROM DUAL;                   --9

SELECT LOWER('ALEXANDER') FROM DUAL;                    --alexander
SELECT UPPER('oracle') FROM DUAL;                       --ORACLE

SELECT LPAD('Alexander', 15, '*') FROM DUAL;            --******Alexander
SELECT RPAD('Alexander', 15, '*') FROM DUAL;            --Alexander******

SELECT LTRIM('$$Money$$','$') FROM DUAL;                --Money$$
SELECT RTRIM('$$Money$$','$') FROM DUAL;                --$$Money
SELECT TRIM('  Money  ') FROM DUAL;                     --Money

SELECT NVL(NULL,'value_2')  FROM DUAL;                  --value_2
SELECT NVL('value_1','value_2')  FROM DUAL;             --value_1

SELECT NVL2(NULL,'value_1','value_2')  FROM DUAL;       --value_2
SELECT NVL2('some','value_1','value_2')  FROM DUAL;     --value_1

SELECT REPLACE('abababa','a','e') FROM DUAL;            --ebebebe

SELECT SOUNDEX('Stevan') FROM DUAL;

SELECT SUBSTR('Hello World!', 6, 6) FROM DUAL;          --World

SELECT TRANSLATE('alex', 'ale', '@13') FROM DUAL;       --@1ex


