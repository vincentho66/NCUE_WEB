<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
    <script src="http://ajax.aspnetcdn.com/ajax/jquery.validate/1.14.0/jquery.validate.min.js"></script>
    <!--additional method - for checkbox .. ,require_from_group method ...-->
    <script src="http://jqueryvalidation.org/files/dist/additional-methods.min.js"></script>
    <link href="post_style.css" rel="stylesheet" type="text/css" />
    <title>Q6_2</title>
    <style>
        textarea {
            overflow-y: scroll;
        }

        td {
            border: 1px solid #000;
        }
    </style>
    <!-- <script>
        $.validator.setDefaults({
            submitHandler: function () {
                alert("提交!");
            }
        });
        $().ready(
            function () {                
                $("form").validate({                    
                    rules:{
                        name:{
                            required: true
                        },
                        date:{
                            required:true
                        },
                        what:{
                            required:true
                        },
                        email:{
                            required:true,
                            email: true
                        },
                        "hobby[]":{
                            minlength: 2
                        }
                    }

                })

                
            }
        );
    </script> -->
</head>

<body>
    <form name="f1" action="" method="POST">
        <table>
            <caption>
                會員基本資料填寫
            </caption>
            <tr>
                <td>姓名:</td>
                <td>
                    <input type="text" name="name">
                </td>
            </tr>
            <tr>
                <td>
                    生日:
                </td>
                <td>
                    <input id="date" type="date" name="date">
                </td>
            </tr>
            <tr>
                <td>性別:</td>
                <td>
                    <input type="radio" name="what" value="1">男
                    <input type="radio" name="what" value="2">女

                </td>
            </tr>
            <tr>
                <td>興趣:</td>
                <td>
                    <input type="checkbox" name="hobby[]" value="1">游泳
                    <input type="checkbox" name="hobby[]" value="2">慢跑
                    <input type="checkbox" name="hobby[]" value="3">打網球
                    <input type="checkbox" name="hobby[]" value="4">打籃球
                    <input type="checkbox" name="hobby[]" value="5">爬山
                </td>
            </tr>
            <tr>
                <td>
                    email:
                </td>
                <td>
                    <input type="text" name="email">
                </td>
            </tr>
            <tr>
                <td>
                    照片上傳:
                </td>
                <td>
                    <input type="file">
                </td>
            </tr>
            <tr>
                <td>
                    自我介紹:
                </td>
                <td>
                    <textarea name="content" rows="10" cols="40"></textarea>
                </td>
            </tr>
            <tr>
                <td colspan="2" style="text-align:center">
                    <input type="submit" value="確定送出" class="c_button">

                </td>
            </tr>
        </table>
    </form>
    <?php if(isset($_POST["user"])) echo '"display:nne";' ?>
    <div>
        <table>
            <caption>
                會員基本資料填寫
            </caption>
            <tr>
                <td>姓名:</td>
                <td>
                    <input type="text" name="name">
                </td>
            </tr>
            <tr>
                <td>
                    生日:
                </td>
                <td>
                    <input id="date" type="date" name="date">
                </td>
            </tr>
            <tr>
                <td>性別:</td>
                <td>
                    <input type="radio" name="what" value="1">男
                    <input type="radio" name="what" value="2">女

                </td>
            </tr>
            <tr>
                <td>興趣:</td>
                <td>
                    <input type="checkbox" name="hobby[]" value="1">游泳
                    <input type="checkbox" name="hobby[]" value="2">慢跑
                    <input type="checkbox" name="hobby[]" value="3">打網球
                    <input type="checkbox" name="hobby[]" value="4">打籃球
                    <input type="checkbox" name="hobby[]" value="5">爬山
                </td>
            </tr>
            <tr>
                <td>
                    email:
                </td>
                <td>
                    <input type="text" name="email">
                </td>
            </tr>
            <tr>
                <td>
                    照片上傳:
                </td>
                <td>
                    <input type="file">
                </td>
            </tr>
            <tr>
                <td>
                    自我介紹:
                </td>
                <td>
                    <textarea name="content" rows="10" cols="40"></textarea>
                </td>
            </tr>
            <tr>
                <td colspan="2" style="text-align:center">
                    <input type="submit" value="確定送出" class="c_button">

                </td>
            </tr>
        </table>
    </div>
</body>

</html>