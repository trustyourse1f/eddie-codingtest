# 12시 44분 시작 12시 45분 종료
SELECT
    ITEM_ID,
    ITEM_NAME
FROM ITEM_INFO
JOIN ITEM_TREE
USING (ITEM_ID)
WHERE PARENT_ITEM_ID IS NULL