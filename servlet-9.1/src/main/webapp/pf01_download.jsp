<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <title>Murach's Java Servlets and JSP</title>
    <!-- Bootstrap CSS from the Maven dependency -->
    <link rel="stylesheet" href="webjars/bootstrap/5.3.2/css/bootstrap.min.css">
</head>

<body>

<div class="container mt-5">
    <div class="row">
        <div class="col-md-6 offset-md-3">
            <h1 class="mb-4">Downloads</h1>

            <h2 class="mb-3">Paddlefoot - The First CD</h2>

            <table class="table">
                <thead>
                <tr>
                    <th scope="col">Song title</th>
                    <th scope="col">Audio Format</th>
                </tr>
                </thead>
                <tbody>
                <tr>
                    <td>64 Corvair</td>
                    <td><a href="./sound/${productCode}/corvair.mp3" target="_blank">MP3</a></td>
                </tr>
                <tr>
                    <td>Whiskey Before Breakfast</td>
                    <td><a href="./sound/${productCode}/whiskey.mp3" target="_blank">MP3</a></td>
                </tr>
                </tbody>
            </table>

            <div class="mb-3">
                <a href="?action=viewAlbums" class="btn btn-primary btn-lg btn-block">View list of albums</a>
            </div>

            <div class="mb-3">
                <a href="?action=viewCookies" class="btn btn-secondary btn-lg btn-block">View all cookies</a>
            </div>
        </div>
    </div>
</div>

<!-- Bootstrap JS from the Maven dependency -->
<script src="webjars/bootstrap/5.3.2/js/bootstrap.bundle.min.js"></script>
</body>

</html>
