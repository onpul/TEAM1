SELECT COUNT(*)
FROM PARTICIPATED_MEMBER PM JOIN RIDING R
ON PM.RIDING_ID=R.RIDING_ID
WHERE R.LEADER_ID = 2;


SELECT *
FROM PARTICIPATED_MEMBER PM JOIN RIDING R
ON PM.RIDING_ID=R.RIDING_ID
ORDER BY USER_ID;


-- 내가 속한 라이딩 모임 찾기
-- 해당 라이딩 모임 아이디가 평가기간에 속하는지   --> 내가 속한 라이딩모임이 평가기간에 속하는지
-- 나의 USER_ID 가 해당 라이딩 모임아이디의 방장인지 
-- 제출했는지 체크


-- 평가기간에 속하는 라이딩모임 뱉음
SELECT TEMP.RIDING_ID AS RIDING_ID
FROM
(
SELECT CASE WHEN SYSDATE < END_DATE AND CREATED_DATE <= SYSDATE THEN 1
            ELSE 0
            END EVADATE
            , RIDING_ID
FROM RIDING
WHERE RIDING_ID = (SELECT RIDING_ID
                   FROM PARTICIPATED_MEMBER 
                   WHERE USER_ID = 10)
)TEMP
WHERE TEMP.EVADATE=1;
                   
                   


SELECT *
FROM RIDING
WHERE RIDING_ID=1;


SELECT *
FROM PARTICIPATED_MEMBER;







SELECT CASE WHEN SYSDATE <= END_DATE +7 AND SYSDATE > START_DATE THEN 1
            ELSE 0
            END EVADATE
            , RIDING_ID
FROM RIDING
WHERE RIDING_ID = (SELECT RIDING_ID
                   FROM PARTICIPATED_MEMBER 
                   WHERE USER_ID = 2);


-- 방장인지 아닌지 체크 

-- 해당 모임에 참여자 인지 체크
-- 유저가 리더인지 체크


            
                   



SELECT USER_ID, RIDING_ID
    FROM PARTICIPATED_MEMBER
    WHERE RIDING_ID = 1 


SELECT COUNT(*)
FROM RIDING
WHERE LEADER_ID = (SELECT USER_ID
                   FROM PARTICIPATED_MEMBER
                   WHERE USER_ID =100)
      AND RIDING_ID = 1;
      
      
SELECT CASE WHEN COUNT(*) = 0 THEN 0
            ELSE 1
            END LEADERCHECK
		FROM RIDING
		WHERE LEADER_ID = 2;
        



SELECT *
FROM ANSWER;

SELECT *
FROM PARTICIPATED_MEMBER;


SELECT CASE WHEN COUNT(*) = 0 THEN 0
            ELSE 1
            END ANSWERCHECK
	FROM PARTICIPATED_MEMBER PM JOIN ANSWER A
	ON PM.P_MEMBER_ID = A.P_MEMBER_ID
	WHERE PM.USER_ID = 40;
    

-- 모임에 속한 응답 제출안한 참여자 찾기
SELECT *
FROM PARTICIPATED_MEMBER PM JOIN ANSWER A
ON PM.P_MEMBER_ID = A.P_MEMBER_ID
WHERE RIDING_ID = 4;

SELECT *
FROM PARTICIPATED_MEMBER PM JOIN RIDING R
ON PM.RIDING_ID = R.RIDING_ID
WHERE R.RIDING_ID =4;

SELECT *
FROM PROFILE
WHERE USER_ID = 42;

SELECT USER_ID,EMAIL,NICKNAME,ONEWORD,PI_ADDRESS FROM VIEW_MYPAGEMAIN WHERE USER_ID = 42;

-- user_id 가 현재 속한 riding_id 조회
SELECT USER_ID, RIDING_ID
FROM PARTICIPATED_MEMBER
WHERE USER_ID = 82;


SELECT TEMP.RIDING_ID
FROM
(
    SELECT ROW_NUMBER() OVER (ORDER BY R.END_DATE DESC) AS ROW1,R.*
    FROM RIDING R JOIN PARTICIPATED_MEMBER PM
    ON R.RIDING_ID = PM.RIDING_ID
    WHERE SYSDATE <= END_DATE AND PM.USER_ID = 82
)TEMP
WHERE TEMP.ROW1 = 1;

DESC RIDING;



SELECT QUESTION_ID , Q_CONTENT
		FROM QUESTION;
SELECT QUESTION_ID
FROM QUESTION
WHERE Q_CONTENT = 'GOOD';

SELECT *
FROM ANSWER_DETAIL_LEADERSHIP;

CREATE SEQUENCE SEQ_ANSWER_DETAIL_LEADERSHIP
NOCACHE;

-- 실수해서 리더십응답 어쩌고 테이블 컬럼 타입 변경
ALTER TABLE ANSWER_DETAIL_LEADERSHIP 
MODIFY ANS_CONTENT VARCHAR2(100);

DESC QUESTION;

INSERT INTO ANSWER_DETAIL_LEADERSHIP(ANS_L_ID,ANSWER_ID,QUESTION_ID,ANS_CONTENT)
VALUES(SEQ_ANSWER_DETAIL_LEADERSHIP.NEXTVAL, 1, 1,'GOOD');





SELECT TEMP.RIDING_ID AS RIDING_ID
FROM
(
SELECT CASE WHEN SYSDATE < END_DATE AND CREATED_DATE <= SYSDATE THEN 1
            ELSE 0
            END EVADATE
            , RIDING_ID
FROM RIDING
WHERE RIDING_ID = (SELECT RIDING_ID
                   FROM PARTICIPATED_MEMBER 
                   WHERE USER_ID = 82
)TEMP
WHERE TEMP.EVADATE=1;



DROP VIEW SELECT_CURREN_RIDING;


SELECT TEMP.RIDING_ID
FROM
(
    SELECT ROW_NUMBER() OVER (ORDER BY R.END_DATE DESC) AS ROW1,R.*
    FROM RIDING R JOIN PARTICIPATED_MEMBER PM
    ON R.RIDING_ID = PM.RIDING_ID
    WHERE SYSDATE <= END_DATE AND PM.USER_ID = 82
)TEMP
WHERE TEMP.ROW1 = 1;


SELECT R.RIDING_ID AS RIDING_ID
		      ,R.RIDING_NAME AS RIDING_NAME
		FROM RIDING R JOIN PARTICIPATED_MEMBER PM
		ON PM.RIDING_ID = R.RIDING_ID
		WHERE R.RIDING_ID = (SELECT RIDING_ID
		                     FROM PARTICIPATED_MEMBER
		                     WHERE USER_ID = 82);
                             
SELECT RIDING_NAME
FROM RIDING 
WHERE RIDING_ID=4;


SELECT RIDING_NAME
		FROM RIDING 
		WHERE RIDING_ID=3;

SELECT *
FROM PARTICIPATED_MEMBER
WHERE RIDING_ID=3;