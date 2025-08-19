<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Login</title>

    <style>
        * {
            box-sizing: border-box;
        }

        body {
            margin: 0;
            padding: 0;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background: linear-gradient(135deg, #ffecd2, #fcb69f);
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        .login-container {
            background-color: #fff;
            padding: 40px 30px;
            border-radius: 12px;
            box-shadow: 0 10px 30px rgba(0, 0, 0, 0.1);
            width: 100%;
            max-width: 400px;
        }

        h1 {
            color: #e63946;
            text-align: center;
            margin-bottom: 20px;
            font-size: 20px;
        }

        h2 {
            text-align: center;
            margin-bottom: 25px;
            color: #333;
        }

        .form-group {
            margin-bottom: 20px;
        }

        label {
            display: block;
            margin-bottom: 6px;
            font-weight: 500;
            color: #444;
        }

        input {
            width: 100%;
            padding: 10px 12px;
            border: 1px solid #ccc;
            border-radius: 6px;
            font-size: 15px;
        }

        input:focus {
            border-color: #e76f51;
            outline: none;
            box-shadow: 0 0 0 2px rgba(231, 111, 81, 0.2);
        }

        button {
            width: 100%;
            padding: 12px;
            background-color: #e76f51;
            color: white;
            border: none;
            border-radius: 6px;
            font-size: 16px;
            font-weight: 600;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        button:hover {
            background-color: #d95d39;
        }
    </style>
</head>
<body>

    <div class="login-container">
        <%
            String message = (String) request.getAttribute("key");
            if (message != null && !message.isEmpty()) {
        %>
            <h1><%= message %></h1>
        <%
            }
        %>

        <h2>Login</h2>
        <form action="Login">
            <div class="form-group">
                <label for="m">Email:</label>
                <input type="email" id="m" name="m" placeholder="Enter your email" required>
            </div>

            <div class="form-group">
                <label for="ma">Password:</label>
                <input type="password" id="ma" name="pa" placeholder="Enter your password" required>
            </div>

            <button type="submit">Login</button>
        </form>
    </div>

</body>
</html>
