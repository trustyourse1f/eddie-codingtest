-- 코드를 입력하세요
SELECT board.title as TITLE, -- 게시글 제몰ㄱ
board.board_id as BOARD_ID, -- 게시글 id
reply.reply_id as REPLY_ID, -- 댓글 id
reply.WRITER_ID as WRITER_ID, -- 댓 작성자 id
reply.contents as CONTENTS, -- 댓 내용
date_format(reply.created_date, '%Y-%m-%d') as CREATED_DATE -- 댓 작성일

from used_goods_board as board join used_goods_reply as reply on board.board_id = reply.board_id 

where 1=1
and year(board.created_date ) = 2022
and month(board.created_date) = 10
order by reply.created_date asc, board.title asc