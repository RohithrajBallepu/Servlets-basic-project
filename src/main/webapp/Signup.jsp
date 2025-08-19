<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Register</title>

    <style>
        * {
            box-sizing: border-box;
        }

        body {
            margin: 0;
            padding: 0;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background: linear-gradient(135deg, #74ebd5, #acb6e5);
            min-height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
        }

        .form-container {
            background-color: #ffffff;
            padding: 40px;
            border-radius: 12px;
            box-shadow: 0 10px 30px rgba(0, 0, 0, 0.1);
            width: 100%;
            max-width: 420px;
        }

        .form-container h2 {
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

        input,
        select {
            width: 100%;
            padding: 10px 12px;
            border: 1px solid #ccc;
            border-radius: 6px;
            font-size: 15px;
        }

        input:focus,
        select:focus {
            border-color: #4a90e2;
            outline: none;
            box-shadow: 0 0 0 2px rgba(74, 144, 226, 0.2);
        }

        button {
            width: 100%;
            padding: 12px;
            background-color: #4a90e2;
            color: white;
            border: none;
            border-radius: 6px;
            font-size: 16px;
            font-weight: 600;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        button:hover {
            background-color: #3d7ddf;
        }

        @media screen and (max-width: 500px) {
            .form-container {
                padding: 30px 20px;
            }
        }
    </style>
</head>
<body>

    <form action="Register" class="form-container">
        <h2>Register</h2>

        <div class="form-group">
            <label for="n">Name:</label>
            <input type="text" id="n" name="n" placeholder="Enter your name" required>
        </div>

        <div class="form-group">
            <label for="a">Age:</label>
            <input type="number" id="a" name="a" placeholder="Enter your age" required>
        </div>

        <div class="form-group">
            <label for="g">Gender:</label>
            <select id="g" name="g" required>
                <option value="">Select Gender</option>
                <option value="Male">Male</option>
                <option value="Female">Female</option>
                <option value="Other">Other</option>
            </select>
        </div>

        <div class="form-group">
            <label for="p">Phone:</label>
            <input type="tel" id="p" name="p" placeholder="Enter your phone number" pattern="[0-9]{10}" required>
        </div>

        <div class="form-group">
            <label for="m">Email:</label>
            <input type="email" id="m" name="m" placeholder="Enter your email" required>
        </div>

        <div class="form-group">
            <label for="pa">Password:</label>
            <input type="password" id="pa" name="pa" placeholder="Enter your password" required>
        </div>

        <button type="submit">Register</button>
    </form>

</body>
</html>
