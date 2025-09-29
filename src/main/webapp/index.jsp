<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Docker Animation Showcase</title>
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background: linear-gradient(135deg, #667eea 0%, #764ba2 25%, #f093fb 50%, #4facfe 75%, #00f2fe 100%);
            background-size: 400% 400%;
            animation: gradientShift 15s ease infinite;
            color: white;
            overflow-x: hidden;
            min-height: 100vh;
        }

        @keyframes gradientShift {
            0% { background-position: 0% 50%; }
            50% { background-position: 100% 50%; }
            100% { background-position: 0% 50%; }
        }

        .container {
            max-width: 1200px;
            margin: 0 auto;
            padding: 20px;
            position: relative;
            z-index: 10;
        }

        header {
            text-align: center;
            padding: 40px 0;
            position: relative;
        }

        h1 {
            font-size: 3.5rem;
            margin-bottom: 10px;
            text-shadow: 2px 2px 4px rgba(0,0,0,0.3);
            animation: pulse 2s infinite alternate;
        }

        @keyframes pulse {
            from { transform: scale(1); }
            to { transform: scale(1.05); }
        }

        .subtitle {
            font-size: 1.5rem;
            margin-bottom: 30px;
            opacity: 0.9;
        }

        .creator {
            font-size: 1.2rem;
            background: rgba(255,255,255,0.2);
            display: inline-block;
            padding: 8px 20px;
            border-radius: 30px;
            backdrop-filter: blur(10px);
            border: 1px solid rgba(255,255,255,0.3);
        }

        .content {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(300px, 1fr));
            gap: 30px;
            margin: 50px 0;
        }

        .card {
            background: rgba(255,255,255,0.15);
            backdrop-filter: blur(10px);
            border-radius: 20px;
            padding: 30px;
            border: 1px solid rgba(255,255,255,0.2);
            box-shadow: 0 8px 32px rgba(0,0,0,0.1);
            transition: transform 0.3s ease, box-shadow 0.3s ease;
        }

        .card:hover {
            transform: translateY(-10px);
            box-shadow: 0 15px 40px rgba(0,0,0,0.2);
        }

        .card h2 {
            font-size: 1.8rem;
            margin-bottom: 15px;
            color: #FFD700;
        }

        .card p {
            line-height: 1.6;
            opacity: 0.9;
        }

        .docker-icon {
            width: 60px;
            height: 60px;
            margin: 0 auto 20px;
            display: block;
            animation: float 3s ease-in-out infinite;
        }

        @keyframes float {
            0%, 100% { transform: translateY(0); }
            50% { transform: translateY(-15px); }
        }

        .floating-containers {
            position: fixed;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            pointer-events: none;
            z-index: 1;
        }

        .docker-container {
            position: absolute;
            width: 80px;
            height: 100px;
            background: linear-gradient(145deg, #0db7ed, #384d54);
            border-radius: 10px;
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
            box-shadow: 0 10px 20px rgba(0,0,0,0.2);
            animation: float-around 20s infinite linear;
            opacity: 0.7;
        }

        .docker-container::before {
            content: "🐳";
            font-size: 2rem;
        }

        .docker-container::after {
            content: attr(data-name);
            font-size: 0.7rem;
            margin-top: 5px;
            color: white;
        }

        @keyframes float-around {
            0% {
                transform: translate(0, 100vh) rotate(0deg);
            }
            100% {
                transform: translate(100vw, -100px) rotate(360deg);
            }
        }

        .features {
            display: flex;
            justify-content: space-around;
            flex-wrap: wrap;
            margin: 40px 0;
        }

        .feature {
            text-align: center;
            margin: 20px;
            animation: fadeIn 1s ease-out;
        }

        @keyframes fadeIn {
            from { opacity: 0; transform: translateY(20px); }
            to { opacity: 1; transform: translateY(0); }
        }

        .feature-icon {
            font-size: 3rem;
            margin-bottom: 10px;
            animation: bounce 2s infinite;
        }

        @keyframes bounce {
            0%, 100% { transform: translateY(0); }
            50% { transform: translateY(-20px); }
        }

        footer {
            text-align: center;
            padding: 30px;
            margin-top: 50px;
            background: rgba(0,0,0,0.2);
            border-radius: 20px;
        }

        .btn {
            display: inline-block;
            background: linear-gradient(45deg, #FF6B6B, #4ECDC4);
            color: white;
            padding: 12px 30px;
            border-radius: 30px;
            text-decoration: none;
            font-weight: bold;
            margin-top: 20px;
            transition: transform 0.3s ease, box-shadow 0.3s ease;
            box-shadow: 0 4px 15px rgba(0,0,0,0.2);
        }

        .btn:hover {
            transform: translateY(-3px);
            box-shadow: 0 7px 20px rgba(0,0,0,0.3);
        }

        @media (max-width: 768px) {
            h1 { font-size: 2.5rem; }
            .subtitle { font-size: 1.2rem; }
            .content { grid-template-columns: 1fr; }
        }
    </style>
</head>
<body>
    <div class="floating-containers">
        <div class="docker-container" style="left: 10%; animation-delay: 0s;" data-name="Nginx"></div>
        <div class="docker-container" style="left: 30%; animation-delay: 5s;" data-name="Redis"></div>
        <div class="docker-container" style="left: 50%; animation-delay: 10s;" data-name="MySQL"></div>
        <div class="docker-container" style="left: 70%; animation-delay: 15s;" data-name="Node.js"></div>
        <div class="docker-container" style="left: 90%; animation-delay: 20s;" data-name="Python"></div>
    </div>

    <div class="container">
        <header>
            <h1>Docker Magic</h1>
            <p class="subtitle">Containerize Your World</p>
            <div class="creator">Created by Sridhar</div>
        </header>

        <main>
            <div class="content">
                <div class="card">
                    <div class="docker-icon">🐳</div>
                    <h2>What is Docker?</h2>
                    <p>Docker is an open platform for developing, shipping, and running applications in containers. Containers package up code and all its dependencies so the application runs quickly and reliably from one computing environment to another.</p>
                </div>

                <div class="card">
                    <div class="docker-icon">🚢</div>
                    <h2>Why Use Docker?</h2>
                    <p>Docker enables you to separate your applications from your infrastructure so you can deliver software quickly. With Docker, you can manage your infrastructure in the same ways you manage your applications.</p>
                </div>

                <div class="card">
                    <div class="docker-icon">🔧</div>
                    <h2>Key Benefits</h2>
                    <p>Faster delivery of your applications, responsive deployment and scaling, running more workloads on the same hardware, and simplified migration between environments.</p>
                </div>
            </div>

            <div class="features">
                <div class="feature">
                    <div class="feature-icon">⚡</div>
                    <h3>Lightweight</h3>
                    <p>Containers share the host OS kernel</p>
                </div>
                <div class="feature">
                    <div class="feature-icon">🔄</div>
                    <h3>Portable</h3>
                    <p>Run anywhere consistently</p>
                </div>
                <div class="feature">
                    <div class="feature-icon">📦</div>
                    <h3>Scalable</h3>
                    <p>Easily scale services up or down</p>
                </div>
                <div class="feature">
                    <div class="feature-icon">🔒</div>
                    <h3>Secure</h3>
                    <p>Isolated application environments</p>
                </div>
            </div>

            <div style="text-align: center;">
                <a href="https://www.docker.com/" target="_blank" class="btn">Learn More About Docker</a>
            </div>
        </main>

        <footer>
            <p>Created with ❤️ by Sridhar | Docker Animation Showcase</p>
            <p>© 2023 All rights reserved</p>
        </footer>
    </div>

    <script>
        // Add interactive elements
        document.addEventListener('DOMContentLoaded', function() {
            // Animate cards on scroll
            const cards = document.querySelectorAll('.card');
            const observer = new IntersectionObserver(entries => {
                entries.forEach(entry => {
                    if (entry.isIntersecting) {
                        entry.target.style.animation = 'fadeIn 1s ease-out forwards';
                    }
                });
            });

            cards.forEach(card => {
                observer.observe(card);
            });

            // Add click interaction to floating containers
            const containers = document.querySelectorAll('.docker-container');
            containers.forEach(container => {
                container.addEventListener('click', function() {
                    this.style.animation = 'none';
                    setTimeout(() => {
                        this.style.animation = '';
                    }, 10);
                });
            });
        });
    </script>
</body>
</html>
