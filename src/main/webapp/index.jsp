<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Docker  - Containerize Your World</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        }

        body {
            background: linear-gradient(135deg, #6a11cb 0%, #2575fc 100%);
            min-height: 100vh;
            color: #fff;
            overflow-x: hidden;
        }

        .container {
            max-width: 1200px;
            margin: 0 auto;
            padding: 20px;
        }

        header {
            text-align: center;
            padding: 60px 0;
            position: relative;
        }

        .logo-container {
            margin-bottom: 30px;
            animation: float 3s ease-in-out infinite;
        }

        .docker-logo {
            width: 120px;
            height: 120px;
            background-color: #0db7ed;
            border-radius: 50%;
            display: flex;
            align-items: center;
            justify-content: center;
            margin: 0 auto;
            box-shadow: 0 10px 30px rgba(0, 0, 0, 0.2);
        }

        .docker-logo i {
            font-size: 70px;
            color: white;
        }

        h1 {
            font-size: 3.5rem;
            margin-bottom: 15px;
            text-shadow: 0 2px 10px rgba(0, 0, 0, 0.3);
            animation: fadeInDown 1s ease;
        }

        .subtitle {
            font-size: 1.5rem;
            margin-bottom: 40px;
            opacity: 0.9;
            animation: fadeInUp 1s ease 0.3s both;
        }

        .content-section {
            display: flex;
            flex-wrap: wrap;
            justify-content: space-between;
            margin-bottom: 60px;
        }

        .card {
            background: rgba(255, 255, 255, 0.15);
            backdrop-filter: blur(10px);
            border-radius: 15px;
            padding: 30px;
            width: 32%;
            margin-bottom: 30px;
            box-shadow: 0 8px 32px rgba(0, 0, 0, 0.1);
            border: 1px solid rgba(255, 255, 255, 0.2);
            transition: transform 0.3s ease, box-shadow 0.3s ease;
            animation: fadeInUp 1s ease 0.5s both;
        }

        .card:hover {
            transform: translateY(-10px);
            box-shadow: 0 15px 35px rgba(0, 0, 0, 0.2);
        }

        .card-icon {
            font-size: 3rem;
            margin-bottom: 20px;
            color: #4facfe;
            text-align: center;
        }

        .card h2 {
            font-size: 1.8rem;
            margin-bottom: 15px;
            text-align: center;
            color: #ffffff;
        }

        .card p {
            line-height: 1.6;
            color: rgba(255, 255, 255, 0.9);
        }

        .benefits {
            display: flex;
            flex-wrap: wrap;
            justify-content: space-between;
            margin-top: 40px;
        }

        .benefit-item {
            width: 48%;
            background: rgba(255, 255, 255, 0.1);
            border-radius: 10px;
            padding: 20px;
            margin-bottom: 20px;
            display: flex;
            align-items: center;
            animation: slideInLeft 1s ease 0.7s both;
        }

        .benefit-item:nth-child(even) {
            animation: slideInRight 1s ease 0.7s both;
        }

        .benefit-icon {
            font-size: 2rem;
            margin-right: 15px;
            color: #ff9a9e;
        }

        .benefit-text {
            flex: 1;
        }

        .benefit-text h3 {
            font-size: 1.3rem;
            margin-bottom: 5px;
        }

        .geometric-shapes {
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            z-index: -1;
            overflow: hidden;
        }

        .shape {
            position: absolute;
            opacity: 0.1;
        }

        .shape-1 {
            width: 300px;
            height: 300px;
            background: #4facfe;
            border-radius: 50%;
            top: -100px;
            right: -100px;
            animation: pulse 4s infinite alternate;
        }

        .shape-2 {
            width: 200px;
            height: 200px;
            background: #00f2fe;
            bottom: 100px;
            left: -50px;
            border-radius: 30% 70% 70% 30% / 30% 30% 70% 70%;
            animation: morph 8s infinite alternate;
        }

        .shape-3 {
            width: 150px;
            height: 150px;
            background: #ff9a9e;
            bottom: -50px;
            right: 100px;
            border-radius: 30% 70% 70% 30% / 30% 30% 70% 70%;
            animation: morph 6s infinite alternate;
        }

        footer {
            text-align: center;
            padding: 40px 0;
            font-size: 1.2rem;
            animation: fadeIn 1s ease 1s both;
        }

        .creator {
            display: inline-block;
            background: rgba(255, 255, 255, 0.2);
            padding: 10px 25px;
            border-radius: 30px;
            margin-top: 20px;
        }

        /* Animations */
        @keyframes float {
            0% { transform: translateY(0px); }
            50% { transform: translateY(-15px); }
            100% { transform: translateY(0px); }
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

        @keyframes slideInLeft {
            from {
                opacity: 0;
                transform: translateX(-50px);
            }
            to {
                opacity: 1;
                transform: translateX(0);
            }
        }

        @keyframes slideInRight {
            from {
                opacity: 0;
                transform: translateX(50px);
            }
            to {
                opacity: 1;
                transform: translateX(0);
            }
        }

        @keyframes pulse {
            0% { transform: scale(1); }
            100% { transform: scale(1.1); }
        }

        @keyframes morph {
            0% { border-radius: 30% 70% 70% 30% / 30% 30% 70% 70%; }
            25% { border-radius: 58% 42% 75% 25% / 76% 46% 54% 24%; }
            50% { border-radius: 50% 50% 33% 67% / 55% 27% 73% 45%; }
            75% { border-radius: 33% 67% 58% 42% / 63% 68% 32% 37%; }
            100% { border-radius: 30% 70% 70% 30% / 30% 30% 70% 70%; }
        }

        /* Responsive Design */
        @media (max-width: 992px) {
            .card {
                width: 48%;
            }
        }

        @media (max-width: 768px) {
            h1 {
                font-size: 2.5rem;
            }
            
            .subtitle {
                font-size: 1.2rem;
            }
            
            .card {
                width: 100%;
            }
            
            .benefit-item {
                width: 100%;
            }
        }
    </style>
</head>
<body>
    <div class="geometric-shapes">
        <div class="shape shape-1"></div>
        <div class="shape shape-2"></div>
        <div class="shape shape-3"></div>
    </div>

    <div class="container">
        <header>
            <div class="logo-container">
                <div class="docker-logo">
                    <i class="fab fa-docker"></i>
                </div>
            </div>
            <h1>Docker</h1>
            <p class="subtitle">Containerize Your World</p>
        </header>

        <section class="content-section">
            <div class="card">
                <div class="card-icon">
                    <i class="fas fa-cube"></i>
                </div>
                <h2>What is Docker?</h2>
                <p>Docker is an open platform for developing, shipping, and running applications. Docker enables you to separate your applications from your infrastructure so you can deliver software quickly.</p>
            </div>

            <div class="card">
                <div class="card-icon">
                    <i class="fas fa-rocket"></i>
                </div>
                <h2>Why Use Docker?</h2>
                <p>With Docker, you can manage your infrastructure in the same ways you manage your applications. By taking advantage of Docker's methodologies for shipping, testing, and deploying code quickly.</p>
            </div>

            <div class="card">
                <div class="card-icon">
                    <i class="fas fa-star"></i>
                </div>
                <h2>Key Benefits</h2>
                <p>Faster delivery of your applications, responsive deployment and scaling, running more workloads on the same hardware, and simplified management with Docker's container platform.</p>
            </div>
        </section>

        <section class="benefits">
            <div class="benefit-item">
                <div class="benefit-icon">
                    <i class="fas fa-tachometer-alt"></i>
                </div>
                <div class="benefit-text">
                    <h3>Faster Delivery</h3>
                    <p>Accelerate your development lifecycle with Docker's streamlined workflows.</p>
                </div>
            </div>

            <div class="benefit-item">
                <div class="benefit-icon">
                    <i class="fas fa-expand-arrows-alt"></i>
                </div>
                <div class="benefit-text">
                    <h3>Elastic Deployment</h3>
                    <p>Scale your services up or down instantly in response to changing demands.</p>
                </div>
            </div>

            <div class="benefit-item">
                <div class="benefit-icon">
                    <i class="fas fa-server"></i>
                </div>
                <div class="benefit-text">
                    <h3>Higher Density</h3>
                    <p>Run more workloads on the same hardware with Docker's lightweight containers.</p>
                </div>
            </div>

            <div class="benefit-item">
                <div class="benefit-icon">
                    <i class="fas fa-shield-alt"></i>
                </div>
                <div class="benefit-text">
                    <h3>Secure Operations</h3>
                    <p>Isolate applications from each other and the underlying infrastructure.</p>
                </div>
            </div>
        </section>
    </div>

    <footer>
        <div class="creator">
            Created by Sridhar
        </div>
    </footer>

    <script>
        // Add some interactive animations
        document.addEventListener('DOMContentLoaded', function() {
            // Animate cards on scroll
            const cards = document.querySelectorAll('.card');
            
            const observer = new IntersectionObserver((entries) => {
                entries.forEach(entry => {
                    if (entry.isIntersecting) {
                        entry.target.style.animation = 'fadeInUp 0.8s ease forwards';
                    }
                });
            }, { threshold: 0.1 });
            
            cards.forEach(card => {
                observer.observe(card);
            });
            
            // Add interactive hover effect to the logo
            const logo = document.querySelector('.docker-logo');
            logo.addEventListener('mouseenter', function() {
                this.style.transform = 'rotate(15deg) scale(1.1)';
                this.style.transition = 'transform 0.5s ease';
            });
            
            logo.addEventListener('mouseleave', function() {
                this.style.transform = 'rotate(0deg) scale(1)';
            });
        });
    </script>
</body>
</html>
