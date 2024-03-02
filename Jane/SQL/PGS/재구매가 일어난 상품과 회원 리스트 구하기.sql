-- 코드를 입력하세요
# ONLINE_SALE 테이블에서 동일한 회원이 동일한 상품을 재구매한 데이터를 구하여, 재구매한 회원 ID와 재구매한 상품 ID를 출력하는 SQL문을 작성해주세요. 결과는 회원 ID를 기준으로 오름차순 정렬해주시고 회원 ID가 같다면 상품 ID를 기준으로 내림차순 정렬해주세요.
# GROUP BY는 특정 컬럼 이름을 지정(column-names)해주면 그 컬럼의 UNIQUE한 값에 따라서 데이터를 그룹 짓고, 중복된 열은 제거
# HAVING은 간단하게 생각해서 GROUP BY한 결과에 조건을 붙이고 싶을때, 즉 GROUP BY의 WHERE 절과도 같다

SELECT USER_ID, PRODUCT_ID
FROM ONLINE_SALE
GROUP BY USER_ID, PRODUCT_ID
HAVING COUNT(*) > 1
ORDER BY USER_ID, PRODUCT_ID DESC
