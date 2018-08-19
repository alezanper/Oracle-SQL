--Scalar Functions--

-- Character Functions --
SELECT ASCII('A') FROM DUAL;                            	--65
SELECT ASCII(1) FROM DUAL;                              	--49
SELECT CHR(65) FROM DUAL;                               	--'A'
SELECT COALESCE(NULL,NULL,2) FROM DUAL;                 	--2
SELECT COALESCE(0,1,2) FROM DUAL;                       	--1
SELECT CONCAT('Hello ', 'World') FROM DUAL;             	--Hello World
SELECT INITCAP('alexander') FROM DUAL;                  	--Alexander
SELECT LENGTH('alezanper') FROM DUAL;                   	--9
SELECT LOWER('ALEXANDER') FROM DUAL;                    	--alexander
SELECT UPPER('oracle') FROM DUAL;                       	--ORACLE
SELECT LPAD('Alexander', 15, '*') FROM DUAL;            	--******Alexander
SELECT RPAD('Alexander', 15, '*') FROM DUAL;            	--Alexander******
SELECT LTRIM('$$Money$$','$') FROM DUAL;                	--Money$$
SELECT RTRIM('$$Money$$','$') FROM DUAL;                	--$$Money
SELECT TRIM('  Money  ') FROM DUAL;                     	--Money
SELECT NVL(NULL,'value_2')  FROM DUAL;                  	--value_2
SELECT NVL('value_1','value_2')  FROM DUAL;             	--value_1
SELECT NVL2(NULL,'value_1','value_2')  FROM DUAL;       	--value_2
SELECT NVL2('some','value_1','value_2')  FROM DUAL;     	--value_1
SELECT REPLACE('abababa','a','e') FROM DUAL;            	--ebebebe
SELECT SOUNDEX('Stevan') FROM DUAL;
SELECT SUBSTR('Hello World!', 6, 6) FROM DUAL;          	--World
SELECT TRANSLATE('alex', 'ale', '@13') FROM DUAL;       	--@1ex
SELECT convert ('vis-à-vis','AL16UTF16','AL32UTF8') FROM DUAL; --

-- TO_CHAR (NUMBERS) --
SELECT TO_CHAR(12.4, '99') FROM DUAL;           			-- 12
SELECT TO_CHAR(12.4, '099') FROM DUAL;          			-- 012
SELECT TO_CHAR(12.4, '099D99') FROM DUAL;       			-- 012,40
SELECT TO_CHAR(1240, '099G99') FROM DUAL;       			-- 012.40
SELECT TO_CHAR(12.4, '$099D99') FROM DUAL;      			-- 012,40
SELECT TO_CHAR(-12.4, '99D99MI') FROM DUAL;     			-- 12,40-
SELECT TO_CHAR(-12.4, '99D99PR') FROM DUAL;     			-- <12,40>
SELECT TO_CHAR(125.45, '9.99EEEE') FROM DUAL;   			-- 1.25E+02
SELECT TO_CHAR(12.4, '99V999') FROM DUAL;       			-- 12400
SELECT TO_CHAR(12.4, 'S99.99') FROM DUAL;       			-- +12.40
SELECT TO_CHAR(1234.56, '099.99') FROM DUAL;    			-- #######

-- TO_CHAR (Dates) --
SELECT SYSDATE FROM DUAL;                       			-- 19/08/18
SELECT TO_CHAR(SYSDATE, 'Y') FROM DUAL;         			-- 8
SELECT TO_CHAR(SYSDATE, 'YY') FROM DUAL;        			-- 18
SELECT TO_CHAR(SYSDATE, 'YYY') FROM DUAL;      				-- 018
SELECT TO_CHAR(SYSDATE, 'YYYY') FROM DUAL;     				-- 2018
SELECT TO_CHAR(SYSDATE, 'YEAR') FROM DUAL;      			-- TWENTY EIGHTEEN
SELECT TO_CHAR(SYSDATE, 'MM') FROM DUAL;        			-- 08
SELECT TO_CHAR(SYSDATE, 'MON') FROM DUAL;       			-- AGO
SELECT TO_CHAR(SYSDATE, 'Month') FROM DUAL;     			-- Agosto
SELECT TO_CHAR(SYSDATE, 'd')  FROM DUAL;        			-- 1
SELECT TO_CHAR(SYSDATE, 'DD') FROM DUAL;        			-- 19
SELECT TO_CHAR(SYSDATE, 'DDD') FROM DUAL;       			-- 231
SELECT TO_CHAR(SYSDATE, 'DY') FROM DUAL;        			-- DOM
SELECT TO_CHAR(SYSDATE, 'DAY') FROM DUAL;       			-- DOMINGO
SELECT TO_CHAR(SYSDATE, 'DDTH') FROM DUAL;      			-- 19TH
SELECT TO_CHAR(SYSDATE, 'BC') FROM DUAL;        			-- DC
SELECT TO_CHAR(SYSDATE, 'DL') FROM DUAL;        			-- Domingo 19 de Agosto de 2018
SELECT TO_CHAR(SYSDATE, 'DS') FROM DUAL;        			-- 19/08/2018
SELECT TO_CHAR(SYSDATE, 'J') FROM DUAL;         			-- 2458350
SELECT TO_CHAR(SYSDATE, 'W') FROM DUAL;         			-- 3
SELECT TO_CHAR(SYSDATE, 'WW') FROM DUAL;        			-- 33
SELECT TO_CHAR(SYSDATE, 'IW') FROM DUAL;        			-- 33
SELECT TO_CHAR(SYSDATE, 'Q') FROM DUAL;         			-- 3
SELECT TO_CHAR(SYSDATE, 'RM') FROM DUAL;        			-- VIII
SELECT TO_CHAR(SYSDATE, 'RR') FROM DUAL;        			-- 18
SELECT TO_CHAR(SYSDATE, 'RRRR') FROM DUAL;      			-- 2018
SELECT TO_CHAR(SYSDATE, 'CC') FROM DUAL;        			-- 21
SELECT TO_CHAR(SYSDATE, 'SSSSS') FROM DUAL;     			-- 39509
SELECT TO_CHAR(SYSDATE, 'Yyyysp') FROM DUAL;     			-- Two Thousand Eighteen
SELECT TO_CHAR(SYSDATE, 'Mmspth') FROM DUAL;     			-- Eighth

-- TO_CHAR (TIME) --
SELECT TO_CHAR(SYSDATE, 'TS') FROM DUAL;       				-- 10:55:49 AM
SELECT TO_CHAR(SYSDATE, 'AM') FROM DUAL;        			-- AM
SELECT TO_CHAR(SYSDATE, 'HH12') FROM DUAL;      			-- 10
SELECT TO_CHAR(SYSDATE, 'HH24') FROM DUAL;      			-- 10
SELECT TO_CHAR(SYSDATE, 'MI') FROM DUAL;        			-- 55
SELECT TO_CHAR(SYSDATE, 'SS') FROM DUAL;        			-- 49

--Math Functions--
SELECT ABS(-5) FROM DUAL;                           		-- 5
SELECT ACOS(-1) FROM DUAL;                          		-- 3,141592
SELECT ASIN(1) FROM DUAL;                           		-- 1.570796
SELECT ATAN(9E99) FROM DUAL;                        		-- 1.570796
SELECT ATAN2(9E99,1) FROM DUAL;                     		-- 1.570796
SELECT BITAND(6,3) FROM DUAL;                       		-- 2 (0010) 0110 AND 0011 = 0010
SELECT CEIL(9.8) FROM DUAL;                         		-- 10
SELECT EXP(1) FROM DUAL;                            		-- 2.718281 (Euler number)
SELECT FLOOR(9.8) FROM DUAL;                        		-- 9
SELECT LN(2.7) FROM DUAL;                           		-- 0,993251
SELECT LOG(8,64) FROM DUAL;                         		-- 2
SELECT MOD(14,5) FROM DUAL;                         		-- 4
SELECT NANVL(TO_BINARY_FLOAT('NaN'), 0) FROM DUAL;  		-- 0,0
SELECT POWER(3,3) FROM DUAL;                        		-- 27
SELECT REMAINDER(13,5) FROM DUAL;                   		-- -2
SELECT ROUND(123.489,2) FROM DUAL;                  		-- 123,49
SELECT SIGN(-2.3) FROM DUAL;                        		-- -1
SELECT SIN(1.57079) FROM DUAL;                      		-- 0,999999
SELECT SINH(1) FROM DUAL;                           		-- 1,175201
SELECT SQRT(64) FROM DUAL;                          		-- 8
SELECT TAN(1.57079633/2) FROM DUAL;                 		-- 1.000000
SELECT TRUNC(123.489,2) FROM DUAL;                  		-- 123,48
SELECT BIN_TO_NUM(1,1,0,1) FROM DUAL;                       -- 13

--Date Functions
SELECT SYSDATE FROM DUAL;                                   -- 19/08/18
SELECT ADD_MONTHS(SYSDATE, 12) FROM DUAL;                   -- 19/08/19
SELECT CURRENT_DATE FROM DUAL;                              -- 19/08/18
SELECT CURRENT_TIMESTAMP  FROM DUAL;                        -- 19/08/18 11:33:03,762000000 AM AMERICA/BOGOTA
SELECT DBTIMEZONE FROM DUAL;                                -- +00:00
SELECT EXTRACT(YEAR FROM SYSDATE) FROM DUAL;                -- 2018
SELECT FROM_TZ(LOCALTIMESTAMP, '-5:00') FROM DUAL;          -- 19/08/18 11:36:44,270000000 AM -05:00
SELECT LAST_DAY(SYSDATE) FROM DUAL;                         -- 31/08/18
SELECT LOCALTIMESTAMP FROM DUAL;                            -- 19/08/18 11:37:13,909000000 AM
SELECT MONTHS_BETWEEN('30-NOV-08', '30-JUL-08') FROM DUAL;  -- 4
SELECT NEW_TIME(SYSDATE, 'CDT', 'HDT') FROM DUAL;           -- 19/08/18
SELECT SESSIONTIMEZONE  FROM DUAL;                          -- America/Bogota
SELECT SYS_EXTRACT_UTC(CURRENT_TIMESTAMP) FROM DUAL;        -- 19/08/18 04:40:41,625000000 PM
SELECT SYSTIMESTAMP FROM DUAL;                              -- 19/08/18 11:40:53,875000000 AM -05:00
SELECT TRUNC(SYSDATE) FROM DUAL;                            -- 19/08/18
SELECT TZ_OFFSET('Asia/Singapore') FROM DUAL;               -- +08:00

-- Other Functions --
SELECT DECODE(NULL,NULL,3) FROM DUAL;                   	-- 3
SELECT DUMP('HELLO') FROM DUAL;                         	-- Typ=96 Len=5: 72,69,76,76,79
SELECT GREATEST(1,2,3) FROM DUAL;                       	-- 3
SELECT LEAST(1,2,3) FROM DUAL;                          	-- 1
SELECT NULLIF(123,123) FROM DUAL;                       	-- Null
SELECT SYS_CONTEXT('USERENV','IP_ADDRESS') FROM DUAL;   	-- 127.0.0.1
SELECT UID FROM DUAL;                                   	--
SELECT USER FROM DUAL;                                  	-- User
SELECT VSIZE('ORACLE') FROM DUAL;                       	-- 6