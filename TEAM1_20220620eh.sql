DELETE
FROM ANSWER_ATTENDANCE;

DELETE
FROM ANSWER_DETAIL;

DELETE
FROM ANSWER;

DELETE
FROM CHECK_ATTENDANCE;

DELETE
FROM ANSWER_DETAIL_LEADERSHIP;

COMMIT;
------------------------------------------
SELECT *
FROM MEMBER M JOIN PROFILE P
ON M.USER_ID = P.USER_ID
WHERE P.EMAIL ='eh0606@test.com';

DESC PARTICIPATED_MEMBER;