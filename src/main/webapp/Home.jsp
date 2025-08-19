<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Welcome</title>

    <style>
        body {
            margin: 0;
            padding: 0;
            font-family: 'Helvetica Neue', sans-serif;
            background: linear-gradient(135deg, #667eea, #764ba2);
            height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
        }

        .card {
            background-color: rgba(255, 255, 255, 0.95);
            padding: 40px 50px;
            border-radius: 12px;
            box-shadow: 0 10px 25px rgba(0, 0, 0, 0.15);
            text-align: center;
            max-width: 300px;
            width: 100%;
        }

        .card h2 {
            margin-bottom: 30px;
            color: #333;
            font-weight: 600;
            font-size: 24px;
        }

        .btn {
            display: inline-block;
            background-color: #667eea;
            color: #fff;
            border: none;
            padding: 12px 24px;
            margin: 10px 0;
            font-size: 16px;
            border-radius: 6px;
            cursor: pointer;
            width: 100%;
            transition: background-color 0.3s ease;
        }

        .btn:hover {
            background-color: #5a67d8;
        }

        a {
            text-decoration: none;
        }
    </style>
</head>
<body>

    <div class="card">
        <h2>Welcome</h2>
        <a href="Signup.jsp">
            <button class="btn">Sign Up</button>
        </a>
        <a href="Login.jsp">
            <button class="btn">Log In</button>
        </a>
    </div>

</body>
</html>
