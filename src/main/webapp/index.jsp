<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Docker - Containerize Your World</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        }

        body {
            background: linear-gradient(135deg, #667eea 0%, #764ba2 25%, #f093fb 50%, #4facfe 75%, #00f2fe 100%);
            background-size: 400% 400%;
            animation: gradientShift 15s ease infinite;
            min-height: 100vh;
            color: #fff;
            overflow-x: hidden;
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
            z-index: 1;
        }

        header {
            text-align: center;
            padding: 60px 0;
            position: relative;
        }

        .logo-container {
            margin-bottom: 30px;
            animation: float 4s ease-in-out infinite;
            position: relative;
        }

        .docker-logo {
            width: 150px;
            height: 150px;
            background: linear-gradient(45deg, #0db7ed, #384d54);
            border-radius: 50%;
            display: flex;
            align-items: center;
            justify-content: center;
            margin: 0 auto;
            box-shadow: 0 15px 35px rgba(0, 0, 0, 0.3);
            position: relative;
            overflow: hidden;
        }

        .docker-logo::before {
            content: '';
            position: absolute;
            top: -50%;
            left: -50%;
            width: 200%;
            height: 200%;
            background: linear-gradient(
                to right,
                rgba(255, 255, 255, 0) 0%,
                rgba(255, 255, 255, 0.3) 50%,
                rgba(255, 255, 255, 0) 100%
            );
            transform: rotate(30deg);
            animation: shine 3s infinite;
        }

        @keyframes shine {
            0% { transform: translateX(-100%) translateY(-100%) rotate(30deg); }
            100% { transform: translateX(100%) translateY(100%) rotate(30deg); }
        }

        .docker-logo i {
            font-size: 80px;
            color: white;
            position: relative;
            z-index: 2;
        }

        h1 {
            font-size: 4rem;
            margin-bottom: 15px;
            text-shadow: 0 4px 15px rgba(0, 0, 0, 0.3);
            animation: fadeInDown 1s ease, colorChange 8s infinite alternate;
            background: linear-gradient(90deg, #fff, #4facfe, #00f2fe, #fff);
            background-size: 300% 300%;
            -webkit-background-clip: text;
            background-clip: text;
            -webkit-text-fill-color: transparent;
            animation: gradientText 6s ease infinite;
        }

        @keyframes gradientText {
            0% { background-position: 0% 50%; }
            50% { background-position: 100% 50%; }
            100% { background-position: 0% 50%; }
        }

        .subtitle {
            font-size: 1.8rem;
            margin-bottom: 40px;
            opacity: 0.9;
            animation: fadeInUp 1s ease 0.3s both;
            text-shadow: 0 2px 10px rgba(0, 0, 0, 0.2);
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
            border-radius: 20px;
            padding: 30px;
            width: 32%;
            margin-bottom: 30px;
            box-shadow: 0 15px 35px rgba(0, 0, 0, 0.2);
            border: 1px solid rgba(255, 255, 255, 0.3);
            transition: transform 0.4s ease, box-shadow 0.4s ease, background 0.4s ease;
            animation: fadeInUp 1s ease 0.5s both;
            position: relative;
            overflow: hidden;
        }

        .card::before {
            content: '';
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 5px;
            background: linear-gradient(90deg, #4facfe, #00f2fe, #ff9a9e);
            transform: scaleX(0);
            transform-origin: left;
            transition: transform 0.5s ease;
        }

        .card:hover::before {
            transform: scaleX(1);
        }

        .card:hover {
            transform: translateY(-15px) rotateX(5deg);
            box-shadow: 0 20px 40px rgba(0, 0, 0, 0.3);
            background: rgba(255, 255, 255, 0.25);
        }

        .card-icon {
            font-size: 3.5rem;
            margin-bottom: 20px;
            text-align: center;
            animation: iconFloat 3s ease-in-out infinite;
        }

        .card:nth-child(1) .card-icon {
            color: #4facfe;
        }

        .card:nth-child(2) .card-icon {
            color: #00f2fe;
        }

        .card:nth-child(3) .card-icon {
            color: #ff9a9e;
        }

        @keyframes iconFloat {
            0%, 100% { transform: translateY(0); }
            50% { transform: translateY(-10px); }
        }

        .card h2 {
            font-size: 2rem;
            margin-bottom: 15px;
            text-align: center;
            color: #ffffff;
            text-shadow: 0 2px 5px rgba(0, 0, 0, 0.2);
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
            border-radius: 15px;
            padding: 25px;
            margin-bottom: 20px;
            display: flex;
            align-items: center;
            animation: slideInLeft 1s ease 0.7s both;
            position: relative;
            overflow: hidden;
            transition: transform 0.3s ease, background 0.3s ease;
        }

        .benefit-item:nth-child(even) {
            animation: slideInRight 1s ease 0.7s both;
        }

        .benefit-item:hover {
            transform: scale(1.03);
            background: rgba(255, 255, 255, 0.2);
        }

        .benefit-icon {
            font-size: 2.5rem;
            margin-right: 20px;
            animation: pulse 2s infinite;
        }

        .benefit-item:nth-child(1) .benefit-icon {
            color: #ff9a9e;
        }

        .benefit-item:nth-child(2) .benefit-icon {
            color: #fad0c4;
        }

        .benefit-item:nth-child(3) .benefit-icon {
            color: #a1c4fd;
        }

        .benefit-item:nth-child(4) .benefit-icon {
            color: #c2e9fb;
        }

        @keyframes pulse {
            0% { transform: scale(1); }
            50% { transform: scale(1.1); }
            100% { transform: scale(1); }
        }

        .benefit-text {
            flex: 1;
        }

        .benefit-text h3 {
            font-size: 1.5rem;
            margin-bottom: 8px;
            color: #ffffff;
        }

        .benefit-text p {
            color: rgba(255, 255, 255, 0.9);
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
            opacity: 0.15;
        }

        .shape-1 {
            width: 400px;
            height: 400px;
            background: linear-gradient(45deg, #4facfe, #00f2fe);
            border-radius: 50%;
            top: -150px;
            right: -150px;
            animation: float 8s ease-in-out infinite, rotate 20s linear infinite;
        }

        .shape-2 {
            width: 300px;
            height: 300px;
            background: linear-gradient(45deg, #ff9a9e, #fad0c4);
            bottom: 100px;
            left: -100px;
            border-radius: 30% 70% 70% 30% / 30% 30% 70% 70%;
            animation: morph 10s infinite alternate, float 6s ease-in-out infinite;
        }

        .shape-3 {
            width: 250px;
            height: 250px;
            background: linear-gradient(45deg, #a1c4fd, #c2e9fb);
            bottom: -100px;
            right: 150px;
            border-radius: 30% 70% 70% 30% / 30% 30% 70% 70%;
            animation: morph 8s infinite alternate-reverse, float 7s ease-in-out infinite;
        }

        .shape-4 {
            width: 200px;
            height: 200px;
            background: linear-gradient(45deg, #ffecd2, #fcb69f);
            top: 200px;
            left: 100px;
            border-radius: 50%;
            animation: pulse 5s infinite alternate, float 9s ease-in-out infinite;
        }

        .particles {
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            z-index: -1;
        }

        .particle {
            position: absolute;
            background: rgba(255, 255, 255, 0.5);
            border-radius: 50%;
            animation: floatUp 15s linear infinite;
        }

        @keyframes floatUp {
            0% {
                transform: translateY(100vh) scale(0);
                opacity: 0;
            }
            10% {
                opacity: 1;
            }
            90% {
                opacity: 1;
            }
            100% {
                transform: translateY(-100vh) scale(1.5);
                opacity: 0;
            }
        }

        footer {
            text-align: center;
            padding: 50px 0;
            font-size: 1.3rem;
            animation: fadeIn 1s ease 1s both;
        }

        .creator {
            display: inline-block;
            background: rgba(255, 255, 255, 0.2);
            backdrop-filter: blur(10px);
            padding: 15px 30px;
            border-radius: 50px;
            margin-top: 20px;
            box-shadow: 0 10px 25px rgba(0, 0, 0, 0.2);
            border: 1px solid rgba(255, 255, 255, 0.3);
            transition: transform 0.3s ease, box-shadow 0.3s ease;
        }

        .creator:hover {
            transform: translateY(-5px);
            box-shadow: 0 15px 30px rgba(0, 0, 0, 0.3);
        }

        /* Animations */
        @keyframes float {
            0%, 100% { transform: translateY(0) rotate(0deg); }
            50% { transform: translateY(-20px) rotate(5deg); }
        }

        @keyframes rotate {
            from { transform: rotate(0deg); }
            to { transform: rotate(360deg); }
        }

        @keyframes fadeInDown {
            from {
                opacity: 0;
                transform: translateY(-40px);
            }
            to {
                opacity: 1;
                transform: translateY(0);
            }
        }

        @keyframes fadeInUp {
            from {
                opacity: 0;
                transform: translateY(40px);
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
                transform: translateX(-70px);
            }
            to {
                opacity: 1;
                transform: translateX(0);
            }
        }

        @keyframes slideInRight {
            from {
                opacity: 0;
                transform: translateX(70px);
            }
            to {
                opacity: 1;
                transform: translateX(0);
            }
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
                font-size: 3rem;
            }
            
            .subtitle {
                font-size: 1.5rem;
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
        <div class="shape shape-4"></div>
    </div>

    <div class="particles" id="particles"></div>

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
        // Create floating particles
        document.addEventListener('DOMContentLoaded', function() {
            const particlesContainer = document.getElementById('particles');
            const particleCount = 30;
            
            for (let i = 0; i < particleCount; i++) {
                const particle = document.createElement('div');
                particle.classList.add('particle');
                
                // Random properties
                const size = Math.random() * 10 + 5;
                const left = Math.random() * 100;
                const animationDuration = Math.random() * 20 + 10;
                const delay = Math.random() * 5;
                
                particle.style.width = `${size}px`;
                particle.style.height = `${size}px`;
                particle.style.left = `${left}%`;
                particle.style.animationDuration = `${animationDuration}s`;
                particle.style.animationDelay = `${delay}s`;
                
                particlesContainer.appendChild(particle);
            }
            
            // Animate cards on scroll
            const cards = document.querySelectorAll('.card');
            const benefitItems = document.querySelectorAll('.benefit-item');
            
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
            
            benefitItems.forEach(item => {
                observer.observe(item);
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
