<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Docker - Container Magic</title>
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background: linear-gradient(135deg, #667eea 0%, #764ba2 50%, #f093fb 100%);
            min-height: 100vh;
            overflow-x: hidden;
            position: relative;
        }

        .container {
            max-width: 1200px;
            margin: 0 auto;
            padding: 40px 20px;
        }

        header {
            text-align: center;
            margin-bottom: 50px;
            animation: fadeInDown 1s ease-out;
        }

        h1 {
            font-size: 4em;
            color: white;
            text-shadow: 3px 3px 6px rgba(0,0,0,0.3);
            margin-bottom: 10px;
            animation: pulse 2s infinite;
        }

        .logo {
            font-size: 5em;
            animation: rotate 4s linear infinite;
            display: inline-block;
        }

        .tagline {
            font-size: 1.5em;
            color: #fff;
            font-weight: 300;
        }

        .content-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(300px, 1fr));
            gap: 30px;
            margin-top: 40px;
        }

        .card {
            background: rgba(255, 255, 255, 0.95);
            border-radius: 20px;
            padding: 30px;
            box-shadow: 0 10px 30px rgba(0,0,0,0.3);
            transition: transform 0.3s ease, box-shadow 0.3s ease;
            animation: fadeInUp 1s ease-out;
        }

        .card:hover {
            transform: translateY(-10px);
            box-shadow: 0 15px 40px rgba(0,0,0,0.4);
        }

        .card h2 {
            color: #667eea;
            margin-bottom: 15px;
            font-size: 1.8em;
        }

        .card p {
            color: #555;
            line-height: 1.6;
            font-size: 1.1em;
        }

        .icon {
            font-size: 3em;
            margin-bottom: 15px;
            animation: bounce 2s infinite;
        }

        .features {
            background: rgba(255, 255, 255, 0.1);
            backdrop-filter: blur(10px);
            border-radius: 20px;
            padding: 40px;
            margin-top: 40px;
            animation: fadeIn 1.5s ease-out;
        }

        .features h2 {
            color: white;
            font-size: 2.5em;
            margin-bottom: 30px;
            text-align: center;
        }

        .feature-list {
            display: flex;
            flex-wrap: wrap;
            gap: 20px;
            justify-content: center;
        }

        .feature-item {
            background: rgba(255, 255, 255, 0.2);
            padding: 15px 30px;
            border-radius: 50px;
            color: white;
            font-size: 1.1em;
            transition: all 0.3s ease;
            animation: slideIn 1s ease-out;
        }

        .feature-item:hover {
            background: rgba(255, 255, 255, 0.3);
            transform: scale(1.1);
        }

        .floating-shapes {
            position: fixed;
            width: 100%;
            height: 100%;
            top: 0;
            left: 0;
            pointer-events: none;
            z-index: -1;
        }

        .shape {
            position: absolute;
            border-radius: 50%;
            animation: float 6s infinite ease-in-out;
        }

        .shape:nth-child(1) {
            width: 80px;
            height: 80px;
            background: rgba(255, 255, 255, 0.1);
            top: 10%;
            left: 10%;
            animation-delay: 0s;
        }

        .shape:nth-child(2) {
            width: 120px;
            height: 120px;
            background: rgba(255, 255, 255, 0.08);
            top: 60%;
            right: 20%;
            animation-delay: 2s;
        }

        .shape:nth-child(3) {
            width: 100px;
            height: 100px;
            background: rgba(255, 255, 255, 0.06);
            bottom: 20%;
            left: 30%;
            animation-delay: 4s;
        }

        .credit {
            position: fixed;
            bottom: 20px;
            right: 20px;
            background: rgba(255, 255, 255, 0.2);
            backdrop-filter: blur(10px);
            padding: 10px 20px;
            border-radius: 10px;
            color: white;
            font-size: 0.9em;
            animation: fadeIn 2s ease-out;
        }

        @keyframes fadeInDown {
            from {
                opacity: 0;
                transform: translateY(-30px);
            }
            to {
                opacity: 1;
                transform: translateY(0);
            }
        }

        @keyframes fadeInUp {
            from {
                opacity: 0;
                transform: translateY(30px);
            }
            to {
                opacity: 1;
                transform: translateY(0);
            }
        }

        @keyframes fadeIn {
            from { opacity: 0; }
            to { opacity: 1; }
        }

        @keyframes pulse {
            0%, 100% { transform: scale(1); }
            50% { transform: scale(1.05); }
        }

        @keyframes rotate {
            from { transform: rotate(0deg); }
            to { transform: rotate(360deg); }
        }

        @keyframes bounce {
            0%, 100% { transform: translateY(0); }
            50% { transform: translateY(-20px); }
        }

        @keyframes float {
            0%, 100% { transform: translateY(0px); }
            50% { transform: translateY(-30px); }
        }

        @keyframes slideIn {
            from {
                opacity: 0;
                transform: translateX(-50px);
            }
            to {
                opacity: 1;
                transform: translateX(0);
            }
        }
    </style>
</head>
<body>
    <div class="floating-shapes">
        <div class="shape"></div>
        <div class="shape"></div>
        <div class="shape"></div>
    </div>

    <div class="container">
        <header>
            <div class="logo">🐳</div>
            <h1>Docker</h1>
            <p class="tagline">Build, Ship, and Run Anywhere</p>
        </header>

        <div class="content-grid">
            <div class="card">
                <div class="icon">📦</div>
                <h2>Containers</h2>
                <p>Docker packages applications and their dependencies into lightweight, portable containers that can run consistently across any environment.</p>
            </div>

            <div class="card">
                <div class="icon">🚀</div>
                <h2>Fast Deployment</h2>
                <p>Deploy applications in seconds instead of hours. Docker containers start instantly and use minimal resources compared to virtual machines.</p>
            </div>

            <div class="card">
                <div class="icon">🔧</div>
                <h2>Easy Management</h2>
                <p>Simplify your DevOps workflow with Docker's intuitive CLI and powerful orchestration tools like Docker Compose and Kubernetes.</p>
            </div>

            <div class="card">
                <div class="icon">🌍</div>
                <h2>Platform Independent</h2>
                <p>Write once, run anywhere. Docker containers work seamlessly across Windows, Mac, and Linux systems without modification.</p>
            </div>

            <div class="card">
                <div class="icon">💡</div>
                <h2>Microservices</h2>
                <p>Perfect for building microservices architecture. Each service runs in its own container with isolated dependencies.</p>
            </div>

            <div class="card">
                <div class="icon">🔒</div>
                <h2>Secure & Isolated</h2>
                <p>Applications run in isolated environments, providing better security and preventing conflicts between different services.</p>
            </div>
        </div>

        <div class="features">
            <h2>Why Developers Love Docker</h2>
            <div class="feature-list">
                <div class="feature-item">Version Control</div>
                <div class="feature-item">Scalability</div>
                <div class="feature-item">Cost Effective</div>
                <div class="feature-item">CI/CD Integration</div>
                <div class="feature-item">Community Support</div>
                <div class="feature-item">Cloud Ready</div>
                <div class="feature-item">Resource Efficient</div>
                <div class="feature-item">Rapid Testing</div>
            </div>
        </div>
    </div>

    <div class="credit">Created by Sridhar</div>
</body>
</html>
