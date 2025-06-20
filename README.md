# 기능 요구사항
## 1. /ajax/board로 요청시 /board/board.jsp 페이지를 반환하는 서블릿을 구현.
 상세설명
  - 서블릿클래스명 : com.kh.board.BoardServlet
  - 매핑url : (GET) /ajax/board
  - html로드완료시 2번 기능을 실행할 것.

## 2. 네비게이션 바의 "게시판" 버튼을 클릭하면 현재 페이지가 전환되지 않고 게시글 목록이 동적으로 로드
 상세설명
 - 서블릿클래스명 : com.kh.board.BoardListServlet
 - 매핑url : (GET) /ajax/board/list
 - ajax를 이용하여 목록페이지(/board/list.jsp)를 얻어와서 .outer에 출력
 - session scope에 게시글 목록정보가 없다면 추가한다.
 - 추가할 데이터는 이미지를 참조하거나 자율적으로 진행.

## 3. 게시글 목록의 각 행을 클릭하면 페이지 전환 없이 해당 게시글의 상세 내용을 표시하기
 - 서블릿클래스명 : com.kh.board.BoardViewServlet
 - 매핑url : (GET) /ajax/board/view
 - ajax를 이용하여 상세페이지(/board/view.jsp)를 얻어와서 .outer에 출력
 - 내가 선택한 게시글의 글번호를 요청시 함께 전달하여 게시글배열에서 내가 선택한 게시글을 찾는다.

## 4. 등록 버튼 클릭시 페이지 이동 없이 게시글 등록페이지가 보이도록 하시오.
 상세설명
 - 서블릿클래스명 : com.kh.board.BoardInsertServlet
 - 매핑url : (GET) /ajax/board/insert
 - ajax를 이용하여 등록페이지(/board/insert.jsp)를 얻어와서 .outer에 출력

## 5. 게시글 등록 페이지에서 작성된 게시글 정보를 서버로 전송한 후 게시글정보를 session scope에 저장하기.
 - 서블릿클래스명 : com.kh.board.BoardInsertServlet
 - 매핑url : (POST) /ajax/board/insert
 - 클라이언트가 입력한 값을 얻어온후 Board객체로 변환한다.
 - 게시글 번호는 게시글배열의 마지막 게시글의 no값을 얻어와서 + 1을 더해준다.
 - 작성일은 현재시간을 기준으로 저장한다.
 - 저장 성공시 "저장성공!" 알럿메세지 출력후 , 게시글 목록페이지를 새로고침 없이 보여주기.
 

![게시글 목록](1.게시글목록.png)
![게시글 상세보기](2.게시글상세보기.png)
![게시글 등록](3.게시글등록.PNG)
![게시글 등록 후 알럿](4.게시글등록시알럿.png)
![게시글 등록후 목록](5.게시글등록후목록.png)
![등록된 게시글 상세보기](6.등록된게시글상세보기.png)









