-- 11:45pm
-- 최고 조회수 게시물/ 첨부파일 경로
-- file id desc
-- path: /home/grep/src/{board_id}/{file_id_name_ext}
SELECT 
  concat('/home/grep/src/', b.board_id , '/' , f.file_id , f.file_name , f.file_ext) AS file_path # concat 함수!
FROM 
  used_goods_board b
JOIN 
  used_goods_file f 
  # using(f.board_id)
  ON b.board_id = f.board_id # using 은 왜 안되는지?
WHERE 
  b.views = (SELECT MAX(views) FROM used_goods_board)
order by f.file_id desc;
