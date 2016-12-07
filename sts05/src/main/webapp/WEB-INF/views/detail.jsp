<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>DETAIL</title>
    <!-- jQuery (자바스크립트 플러그인을 위해 필요합니다) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
    <script type="text/javascript">
        $(document).ready(function () {
            $("button").click(function () {
                if ($(this).text() == "수정") {
                    if ($(this).attr("type") == "button") {
                        $(".nalja").remove();
                        $("h1").text("수정페이지");
                        $("input").removeAttr("readonly");
                        $(this).attr("type", "submit");
                        return false;
                    }
                } else {
                    $.post(
                        "/guest/delete",
                        {'idx': '${bean.sabun}'},
                        function () {
                            window.location.replace("/guest/");
                        }
                    )
                }
            });
        });
    </script>
</head>
<body>
<h1>상세페이지</h1>
<form action="${pageContext.request.contextPath}/guest/update" method="post">
    <p>
        <label for="sabun">사번</label>
        <input type="text" name="sabun" id="sabun" value="${bean.sabun}" readonly="readonly">
    </p>
    <p>
        <label for="name">이름</label>
        <input type="text" name="name" id="name" value="${bean.name}" readonly="readonly">
    </p>
    <p class="nalja">
        <label for="nalja">날짜</label>
        <input type="text" name="nalja" id="nalja" value="${bean.nalja}" readonly="readonly">
    </p>
    <p>
        <label for="pay">금액</label>
        <input type="text" name="pay" id="pay" value="${bean.pay}" readonly="readonly">
    </p>
    <p>
        <button type="button">수정</button>
        <button type="button">삭제</button>
    </p>
</form>
</body>
</html>
