<%-- 
    Document   : demo
    Created on : Oct 26, 2018, 8:17:32 PM
    Author     : DoThong
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <div>
            <video id="videoID" autoplay style="border: 1px solid black;"></video>
        </div> 
        <div>
            <canvas id="canvasID" style="border: 1px solid black;">
            </canvas>
        </div> 
        <div> 
            <!--<input type="button" value="Take photo" onclick="capture()" style="width: 200px; height: 30px;"/>--> 
            <input type="button" value="Send" onclick="send()" style="width: 200px; height: 30px;"/> 
        </div>
        <script type="text/javascript">
            var video = document.getElementById('videoID');
            var canvas = document.getElementById('canvasID');
            var context = canvas.getContext('2d');
            window.URL = window.URL || window.webkitURL;
            navigator.getUserMedia = navigator.getUserMedia 
                    || navigator.webkitGetUserMedia 
                    || navigator.mozGetUserMedia 
                    || navigator.msGetUserMedia;
            navigator.getUserMedia(
                    { video : true }, 
                    function(stream) { 
                        video.src = window.URL.createObjectURL(stream); 
                    }, 
                    function(e) { 
                        console.log('An error happened:', e); 
                    }
                            );
            function send() { 
                context.drawImage(video, 0, 0, canvas.width, canvas.height);
                var imageData = canvas.toDataURL(); 
                var xmlhttp = new XMLHttpRequest(); 
                xmlhttp.open("POST", "/qrcode/QrCodeController", true); 
                xmlhttp.send(imageData); 
            };

        </script>

    </body>
</html>
