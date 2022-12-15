<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="true"%>

<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1" />
        <title>JBK Gallery</title>

        <!-- Link s -->
		<%@include file="../common/user/includeV1/link.jsp"%>
        <!-- Link e -->
        
    </head>
    <body>
        <div class="container px-4" style="margin-top: 5%">
            <div class="row gx-5">
                <div class="col-2"></div>

                <!-- Main area s -->
                <div class="col-8">
                    <h2>김진범 갤러리</h2>
                    <hr />

                    <br />

                    <div class="input-group">
                        <input id="ifmmId" type="text" class="form-control" placeholder="검색" />
                        <button class="btn btn-light">검색</button>
                    </div>

                    <br />

                    <!-- List Button area s -->
                    <div>
                        <button class="btn btn-light">전체글</button>
                        <button class="btn btn-light">개념글</button>
                        <button class="btn btn-light">공지</button>
                    </div>
                    <!-- List Button area e -->

                    <br />
                    <!-- Table area s -->
                    <table class="table table-hover" style="cursor: pointer">
                        <!-- table header s -->
                        <tr>
                            <th>타입</th>
                            <th>작성일</th>
                            <th>작성자</th>
                            <th>제목</th>
                            <th>조회</th>
                            <th>댓글</th>
                        </tr>
                        <!-- table header e -->

                        <!-- table body s -->
                        <tr>
                            <td>일반</td>
                            <td>2022.12.16 02:31</td>
                            <td>guest</td>
                            <td>제목입니다</td>
                            <td>20</td>
                            <td>5</td>
                        </tr>
                        <tr>
                            <td>일반</td>
                            <td>2022.12.16 02:31</td>
                            <td>guest</td>
                            <td>제목입니다</td>
                            <td>20</td>
                            <td>5</td>
                        </tr>
                        <tr>
                            <td>일반</td>
                            <td>2022.12.16 02:31</td>
                            <td>guest</td>
                            <td>제목입니다</td>
                            <td>20</td>
                            <td>5</td>
                        </tr>
                        <tr>
                            <td>일반</td>
                            <td>2022.12.16 02:31</td>
                            <td>guest</td>
                            <td>제목입니다</td>
                            <td>20</td>
                            <td>5</td>
                        </tr>
                        <tr>
                            <td>일반</td>
                            <td>2022.12.16 02:31</td>
                            <td>guest</td>
                            <td>제목입니다</td>
                            <td>20</td>
                            <td>5</td>
                        </tr>
                        <tr>
                            <td>일반</td>
                            <td>2022.12.16 02:31</td>
                            <td>guest</td>
                            <td>제목입니다</td>
                            <td>20</td>
                            <td>5</td>
                        </tr>
                        <tr>
                            <td>일반</td>
                            <td>2022.12.16 02:31</td>
                            <td>guest</td>
                            <td>제목입니다</td>
                            <td>20</td>
                            <td>5</td>
                        </tr>
                        <!-- table body e -->
                    </table>
                    <!-- Table area e -->

                    <!-- Pagination s -->
                    <%@include file="../common/user/includeV1/pagination.jsp"%>
                    <!-- Pagination e -->
                    
                </div>
                <!-- Main area e -->

                <div class="col-2">
                    <!-- Login Form area s -->
                    <form name="" id="" action="" method="POST" class="form">
                        <!-- ID -->
                        <label for="ifmmId" class="form-label">ID</label>
                        <input id="ifmmId" type="text" class="form-control" placeholder="ID" />

                        <!-- PW -->
                        <label for="ifmmPw" class="form-label">PW</label>
                        <input id="ifmmPw" type="text" class="form-control" placeholder="PW" />

                        <br />

                        <!-- Login Butoon -->
                        <button class="btn btn-primary">로그인</button>
                    </form>
                    <!-- Login Form area e -->
                </div>
            </div>
        </div>

        <!-- Footer s -->
        <%@include file="../common/user/includeV1/footer.jsp"%>
        <!-- Footer e -->

        <!-- Bootstrap Script s -->
        <script
            src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4"
            crossorigin="anonymous"
        ></script>
        <!-- Bootstrap Script e -->
    </body>
</html>
