<html>
<head>
    <title>Library Management System</title>
    <style>
        body {
            font-family: 'Segoe UI', Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f4f6f9;
        }
        header {
            background: linear-gradient(to right, #4CAF50, #2E7D32);
            color: white;
            padding: 20px;
            text-align: center;
        }
        header h1 {
            margin: 0;
            font-size: 32px;
        }
        nav {
            background: #333;
            padding: 10px;
            text-align: center;
        }
        nav a {
            color: white;
            margin: 0 15px;
            text-decoration: none;
            font-weight: bold;
        }
        nav a:hover {
            color: #FFD700;
        }
        .hero {
            background: url('library-banner.jpg') no-repeat center center;
            background-size: cover;
            height: 300px;
            display: flex;
            align-items: center;
            justify-content: center;
            color: white;
            font-size: 28px;
            font-weight: bold;
            text-shadow: 2px 2px 5px rgba(0,0,0,0.7);
        }
        .container {
            padding: 40px;
        }
        .section {
            margin-bottom: 40px;
        }
        .section h2 {
            color: #333;
            margin-bottom: 20px;
        }
        .cards {
            display: flex;
            flex-wrap: wrap;
            gap: 20px;
        }
        .card {
            background: white;
            border-radius: 8px;
            box-shadow: 0 2px 8px rgba(0,0,0,0.1);
            padding: 20px;
            flex: 1 1 200px;
            text-align: center;
            transition: 0.3s;
        }
        .card:hover {
            transform: scale(1.05);
        }
        .card a {
            text-decoration: none;
            color: #4CAF50;
            font-weight: bold;
        }
    </style>
</head>
<body>
    <header>
        <h1>📚 Library Management System</h1>
        <p>From Classics to New Arrivals — All in One Place</p>
    </header>

    <nav>
        <a href="search.jsp">Search Books</a>
        <a href="borrow.jsp">Borrow</a>
        <a href="return.jsp">Return</a>
        <a href="history.jsp">History</a>
    </nav>

    <div class="hero">
        Welcome to Your Digital Library
    </div>

    <div class="container">
        <!-- Categories Section -->
        <div class="section">
            <h2>Explore Categories</h2>
            <div class="cards">
                <div class="card"><a href="search.jsp?query=Fiction">Fiction</a></div>
                <div class="card"><a href="search.jsp?query=Non-Fiction">Non-Fiction</a></div>
                <div class="card"><a href="search.jsp?query=Kids">Kids</a></div>
                <div class="card"><a href="search.jsp?query=Exams">Exams</a></div>
            </div>
        </div>

        <!-- Featured Section -->
        <div class="section">
            <h2>Featured Books</h2>
            <div class="cards">
                <div class="card">
                    <p><b>The Great Gatsby</b></p>
                    <p>F. Scott Fitzgerald</p>
                    <a href="borrow.jsp">Borrow Now</a>
                </div>
                <div class="card">
                    <p><b>1984</b></p>
                    <p>George Orwell</p>
                    <a href="borrow.jsp">Borrow Now</a>
                </div>
                <div class="card">
                    <p><b>To Kill a Mockingbird</b></p>
                    <p>Harper Lee</p>
                    <a href="borrow.jsp">Borrow Now</a>
                </div>
            </div>
        </div>
    </div>
</body>
</html>