<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <title>Murach's Java Servlets and JSP</title>
    <!-- Bootstrap CSS from the Maven dependency -->
    <link rel="stylesheet" href="webjars/bootstrap/5.3.2/css/bootstrap.min.css">
    <style>
        body {
            padding: 20px;
        }

        .container {
            max-width: 600px;
        }

        table {
            width: 100%;
            margin-bottom: 1rem;
            color: #212529;
        }

        table th,
        table td {
            padding: 0.75rem;
            vertical-align: top;
            border-top: 1px solid #dee2e6;
        }

        table th {
            background-color: #f8f9fa;
        }
    </style>
</head>

<body>

<div class="container">
    <h1 class="mt-4 mb-3">Downloads</h1>

    <h2 class="mb-3">86 (the band) - True Life Songs and Pictures</h2>

    <table class="table table-bordered">
        <thead>
        <tr>
            <th scope="col">Song title</th>
            <th scope="col">Audio Format</th>
        </tr>
        </thead>
        <tbody>
        <tr>
            <td>You Are a Star</td>
            <td><a href="./sound/${productCode}/star.mp3" target="_blank">MP3</a></td>
        </tr>
        <tr>
            <td>Don't Make No Difference</td>
            <td><a href="./sound/${productCode}/no_difference.mp3" target="_blank">MP3</a></td>
        </tr>
        </tbody>
    </table>

    <p><a href="?action=viewAlbums" class="btn btn-primary">View list of albums</a></p>

    <p><a href="?action=viewCookies" class="btn btn-secondary">View all cookies</a></p>
</div>

<!-- Bootstrap JS from the Maven dependency -->
<script src="webjars/bootstrap/5.3.2/js/bootstrap.bundle.min.js"></script>
</body>

</html>
