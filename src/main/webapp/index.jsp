<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>DevOps Excellence - Enterprise Solutions</title>
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            line-height: 1.6;
            overflow-x: hidden;
        }

        /* Hero Section with Mountain Background */
        .hero {
            height: 100vh;
            background: linear-gradient(rgba(0, 0, 0, 0.4), rgba(0, 0, 0, 0.6)), 
                        url('data:image/svg+xml,<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 1200 800"><defs><linearGradient id="mountain1" x1="0%" y1="0%" x2="100%" y2="100%"><stop offset="0%" style="stop-color:%23374151;stop-opacity:1" /><stop offset="100%" style="stop-color:%23111827;stop-opacity:1" /></linearGradient><linearGradient id="mountain2" x1="0%" y1="0%" x2="100%" y2="100%"><stop offset="0%" style="stop-color:%23475569;stop-opacity:1" /><stop offset="100%" style="stop-color:%231e293b;stop-opacity:1" /></linearGradient><linearGradient id="mountain3" x1="0%" y1="0%" x2="100%" y2="100%"><stop offset="0%" style="stop-color:%23525965;stop-opacity:1" /><stop offset="100%" style="stop-color:%232d3748;stop-opacity:1" /></linearGradient><linearGradient id="sky" x1="0%" y1="0%" x2="0%" y2="100%"><stop offset="0%" style="stop-color:%23667eea;stop-opacity:1" /><stop offset="100%" style="stop-color:%23374151;stop-opacity:1" /></linearGradient></defs><rect width="1200" height="800" fill="url(%23sky)"/><polygon points="0,600 200,300 400,450 600,250 800,400 1000,200 1200,350 1200,800 0,800" fill="url(%23mountain1)"/><polygon points="100,650 300,400 500,500 700,350 900,450 1100,300 1200,400 1200,800 0,800" fill="url(%23mountain2)" opacity="0.8"/><polygon points="200,700 400,500 600,580 800,480 1000,550 1200,450 1200,800 0,800" fill="url(%23mountain3)" opacity="0.6"/></svg>') center/cover;
            display: flex;
            align-items: center;
            justify-content: center;
            position: relative;
            color: white;
            text-align: center;
        }

        .hero::before {
            content: '';
            position: absolute;
            top: 0;
            left: 0;
            right: 0;
            bottom: 0;
            background: radial-gradient(circle at center, transparent 0%, rgba(0,0,0,0.3) 100%);
        }

        /* Navigation Menu */
        .nav-menu {
            position: absolute;
            top: 30px;
            left: 30px;
            z-index: 100;
            cursor: pointer;
            padding: 15px;
            background: rgba(255, 255, 255, 0.1);
            border-radius: 10px;
            backdrop-filter: blur(10px);
            border: 1px solid rgba(255, 255, 255, 0.2);
            transition: all 0.3s ease;
        }

        .nav-menu:hover {
            background: rgba(255, 255, 255, 0.2);
            transform: translateY(-2px);
        }

        .menu-lines {
            display: flex;
            flex-direction: column;
            gap: 4px;
        }

        .menu-line {
            width: 25px;
            height: 3px;
            background: white;
            border-radius: 2px;
            transition: all 0.3s ease;
        }

        .menu-text {
            color: rgba(255, 255, 255, 0.8);
            font-size: 12px;
            margin-top: 8px;
            font-weight: 500;
            letter-spacing: 1px;
        }

        /* Hero Content */
        .hero-content {
            position: relative;
            z-index: 10;
            max-width: 900px;
            margin: 0 auto;
            padding: 0 20px;
        }

        .hero-title {
            font-size: clamp(3rem, 8vw, 6rem);
            font-weight: 100;
            letter-spacing: 0.2em;
            margin-bottom: 30px;
            opacity: 0;
            transform: translateY(50px);
            animation: fadeInUp 1.2s ease-out 0.5s forwards;
            text-shadow: 2px 2px 20px rgba(0,0,0,0.5);
        }

        .hero-subtitle {
            font-size: clamp(1rem, 3vw, 1.4rem);
            font-weight: 300;
            letter-spacing: 0.15em;
            margin-bottom: 60px;
            opacity: 0;
            transform: translateY(30px);
            animation: fadeInUp 1.2s ease-out 1s forwards;
            color: rgba(255, 255, 255, 0.9);
            line-height: 1.8;
        }

        /* Scroll Indicator */
        .scroll-indicator {
            position: absolute;
            bottom: 40px;
            left: 50%;
            transform: translateX(-50%);
            text-align: center;
            cursor: pointer;
            opacity: 0;
            animation: fadeIn 1s ease-out 2s forwards;
        }

        .scroll-text {
            font-size: 12px;
            letter-spacing: 2px;
            margin-bottom: 20px;
            color: rgba(255, 255, 255, 0.8);
            font-weight: 400;
        }

        .scroll-arrow {
            width: 2px;
            height: 40px;
            background: rgba(255, 255, 255, 0.8);
            margin: 0 auto;
            position: relative;
            animation: scrollBounce 2s infinite;
        }

        .scroll-arrow::after {
            content: '';
            position: absolute;
            bottom: 0;
            left: -4px;
            width: 10px;
            height: 10px;
            border-right: 2px solid rgba(255, 255, 255, 0.8);
            border-bottom: 2px solid rgba(255, 255, 255, 0.8);
            transform: rotate(45deg);
        }

        /* About Section */
        .about-section {
            min-height: 100vh;
            display: flex;
            align-items: center;
            background: linear-gradient(135deg, #f8fafc 0%, #e2e8f0 100%);
            position: relative;
            overflow: hidden;
        }

        .about-container {
            max-width: 1200px;
            margin: 0 auto;
            padding: 100px 20px;
            display: grid;
            grid-template-columns: 1fr 2fr;
            gap: 80px;
            align-items: center;
        }

        .about-image {
            position: relative;
        }

        .profile-card {
            background: white;
            border-radius: 20px;
            padding: 40px;
            box-shadow: 0 25px 50px rgba(0, 0, 0, 0.1);
            transform: rotate(-2deg);
            transition: all 0.5s ease;
            border: 1px solid rgba(0, 0, 0, 0.05);
        }

        .profile-card:hover {
            transform: rotate(0deg) translateY(-10px);
            box-shadow: 0 35px 70px rgba(0, 0, 0, 0.15);
        }

        .profile-image {
            width: 200px;
            height: 200px;
            border-radius: 50%;
            background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
            margin: 0 auto 20px;
            display: flex;
            align-items: center;
            justify-content: center;
            font-size: 4rem;
            color: white;
            position: relative;
            overflow: hidden;
        }

        .profile-image::before {
            content: '';
            position: absolute;
            top: -50%;
            left: -50%;
            width: 200%;
            height: 200%;
            background: linear-gradient(45deg, transparent, rgba(255,255,255,0.2), transparent);
            animation: shine 3s infinite;
        }

        .about-content {
            opacity: 0;
            transform: translateX(50px);
            animation: slideInLeft 1s ease-out 0.5s forwards;
        }

        .about-greeting {
            font-size: 3.5rem;
            font-weight: 300;
            color: #2d3748;
            margin-bottom: 40px;
            letter-spacing: 0.1em;
        }

        .about-text {
            font-size: 1.2rem;
            line-height: 2;
            color: #4a5568;
            margin-bottom: 20px;
            font-weight: 400;
        }

        .highlight {
            color: #667eea;
            font-weight: 600;
            position: relative;
        }

        .highlight::after {
            content: '';
            position: absolute;
            bottom: -2px;
            left: 0;
            right: 0;
            height: 2px;
            background: linear-gradient(90deg, #667eea, #764ba2);
            border-radius: 1px;
        }

        /* DevOps Skills Section */
        .skills-section {
            background: linear-gradient(135deg, #1a202c 0%, #2d3748 100%);
            padding: 120px 0;
            color: white;
            position: relative;
            overflow: hidden;
        }

        .skills-section::before {
            content: '';
            position: absolute;
            top: 0;
            left: 0;
            right: 0;
            bottom: 0;
            background: url('data:image/svg+xml,<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 100 100"><circle cx="25" cy="25" r="1" fill="rgba(255,255,255,0.1)"/><circle cx="75" cy="75" r="1" fill="rgba(255,255,255,0.1)"/><circle cx="50" cy="10" r="0.5" fill="rgba(255,255,255,0.08)"/><circle cx="90" cy="40" r="0.8" fill="rgba(255,255,255,0.06)"/><circle cx="10" cy="80" r="1.2" fill="rgba(255,255,255,0.05)"/></svg>');
            opacity: 0.3;
        }

        .skills-container {
            max-width: 1200px;
            margin: 0 auto;
            padding: 0 20px;
            position: relative;
            z-index: 2;
        }

        .skills-title {
            text-align: center;
            font-size: 3.5rem;
            font-weight: 300;
            margin-bottom: 80px;
            letter-spacing: 0.1em;
        }

        .skills-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(300px, 1fr));
            gap: 40px;
            margin-bottom: 80px;
        }

        .skill-card {
            background: rgba(255, 255, 255, 0.05);
            border-radius: 20px;
            padding: 40px;
            backdrop-filter: blur(10px);
            border: 1px solid rgba(255, 255, 255, 0.1);
            transition: all 0.5s ease;
            opacity: 0;
            transform: translateY(30px);
            animation: fadeInUp 0.8s ease-out forwards;
        }

        .skill-card:nth-child(1) { animation-delay: 0.2s; }
        .skill-card:nth-child(2) { animation-delay: 0.4s; }
        .skill-card:nth-child(3) { animation-delay: 0.6s; }
        .skill-card:nth-child(4) { animation-delay: 0.8s; }

        .skill-card:hover {
            transform: translateY(-10px);
            background: rgba(255, 255, 255, 0.1);
            border-color: rgba(102, 126, 234, 0.5);
        }

        .skill-icon {
            font-size: 3rem;
            margin-bottom: 20px;
            display: block;
        }

        .skill-title {
            font-size: 1.5rem;
            margin-bottom: 15px;
            font-weight: 600;
        }

        .skill-description {
            color: rgba(255, 255, 255, 0.8);
            line-height: 1.8;
            font-size: 1rem;
        }

        /* Floating Elements */
        .floating-element {
            position: absolute;
            opacity: 0.1;
            animation: float 6s ease-in-out infinite;
        }

        .floating-element:nth-child(1) {
            top: 10%;
            left: 10%;
            animation-delay: 0s;
        }

        .floating-element:nth-child(2) {
            top: 20%;
            right: 15%;
            animation-delay: 2s;
        }

        .floating-element:nth-child(3) {
            bottom: 30%;
            left: 20%;
            animation-delay: 4s;
        }

        /* Animations */
        @keyframes fadeInUp {
            from {
                opacity: 0;
                transform: translateY(50px);
            }
            to {
                opacity: 1;
                transform: translateY(0);
            }
        }

        @keyframes slideInLeft {
            from {
                opacity: 0;
                transform: translateX(50px);
            }
            to {
                opacity: 1;
                transform: translateX(0);
            }
        }

        @keyframes fadeIn {
            from { opacity: 0; }
            to { opacity: 1; }
        }

        @keyframes scrollBounce {
            0%, 20%, 50%, 80%, 100% {
                transform: translateY(0);
            }
            40% {
                transform: translateY(-10px);
            }
            60% {
                transform: translateY(-5px);
            }
        }

        @keyframes float {
            0%, 100% {
                transform: translateY(0px) rotate(0deg);
            }
            50% {
                transform: translateY(-30px) rotate(180deg);
            }
        }

        @keyframes shine {
            0% {
                transform: rotate(45deg) translate(-200%, -200%);
            }
            50% {
                transform: rotate(45deg) translate(0%, 0%);
            }
            100% {
                transform: rotate(45deg) translate(200%, 200%);
            }
        }

        /* Responsive Design */
        @media (max-width: 1024px) {
            .about-container {
                grid-template-columns: 1fr;
                gap: 60px;
                text-align: center;
            }

            .profile-card {
                max-width: 400px;
                margin: 0 auto;
            }
        }

        @media (max-width: 768px) {
            .hero-title {
                font-size: 3rem;
                letter-spacing: 0.1em;
            }

            .hero-subtitle {
                font-size: 1.1rem;
            }

            .about-greeting {
                font-size: 2.5rem;
            }

            .about-text {
                font-size: 1.1rem;
            }

            .skills-title {
                font-size: 2.5rem;
            }

            .skills-grid {
                grid-template-columns: 1fr;
                gap: 30px;
            }
        }
    </style>
</head>
<body>
    <!-- Navigation Menu -->
    <div class="nav-menu">
        <div class="menu-lines">
            <div class="menu-line"></div>
            <div class="menu-line"></div>
            <div class="menu-line"></div>
        </div>
        <div class="menu-text">MENU</div>
    </div>

    <!-- Hero Section -->
    <section class="hero">
        <div class="hero-content">
            <h1 class="hero-title">DEVOPS EXCELLENCE</h1>
            <p class="hero-subtitle">TRANSFORMING ENTERPRISE DEVELOPMENT & OPERATIONS</p>
        </div>
        
        <div class="scroll-indicator" onclick="document.querySelector('.about-section').scrollIntoView({behavior: 'smooth'})">
            <div class="scroll-text">SCROLL DOWN</div>
            <div class="scroll-arrow"></div>
        </div>
    </section>

    <!-- About Section -->
    <section class="about-section">
        <div class="about-container">
            <div class="about-image">
                <div class="profile-card">
                    <div class="profile-image">
                        ⚡
                    </div>
                </div>
            </div>
            
            <div class="about-content">
                <h2 class="about-greeting">ENTERPRISE READY</h2>
                <p class="about-text">
                    We are a <span class="highlight">leading DevOps consultancy</span> specializing in enterprise-grade 
                    solutions based in <span class="highlight">Global Operations</span>. We have extensive experience in 
                    transforming traditional development workflows into modern, 
                    <span class="highlight">cloud-native DevOps practices</span>.
                </p>
                <p class="about-text">
                    Our expertise spans across containerization, orchestration, CI/CD pipelines, 
                    infrastructure automation, and monitoring solutions that scale with your business needs.
                </p>
            </div>
        </div>
    </section>

    <!-- Skills Section -->
    <section class="skills-section">
        <div class="floating-element">⚙️</div>
        <div class="floating-element">🚀</div>
        <div class="floating-element">☁️</div>
        
        <div class="skills-container">
            <h2 class="skills-title">OUR CORE COMPETENCIES</h2>
            
            <div class="skills-grid">
                <div class="skill-card">
                    <span class="skill-icon">🐳</span>
                    <h3 class="skill-title">Containerization & Orchestration</h3>
                    <p class="skill-description">
                        Expert deployment with Docker and Kubernetes, enabling scalable microservices 
                        architecture and seamless container management across hybrid cloud environments.
                    </p>
                </div>
                
                <div class="skill-card">
                    <span class="skill-icon">🔄</span>
                    <h3 class="skill-title">CI/CD Pipeline Automation</h3>
                    <p class="skill-description">
                        Advanced continuous integration and deployment pipelines using Jenkins, GitLab CI, 
                        GitHub Actions, and Azure DevOps for rapid, reliable software delivery.
                    </p>
                </div>
                
                <div class="skill-card">
                    <span class="skill-icon">☁️</span>
                    <h3 class="skill-title">Cloud Infrastructure</h3>
                    <p class="skill-description">
                        Multi-cloud expertise across AWS, Azure, and GCP with Infrastructure as Code 
                        using Terraform, CloudFormation, and ARM templates for consistent deployments.
                    </p>
                </div>
                
                <div class="skill-card">
                    <span class="skill-icon">📊</span>
                    <h3 class="skill-title">Monitoring & Observability</h3>
                    <p class="skill-description">
                        Comprehensive monitoring solutions with Prometheus, Grafana, ELK Stack, 
                        and distributed tracing for complete system visibility and performance optimization.
                    </p>
                </div>
            </div>
        </div>
    </section>

    <script>
        // Smooth scrolling for all internal links
        document.querySelectorAll('a[href^="#"]').forEach(anchor => {
            anchor.addEventListener('click', function (e) {
                e.preventDefault();
                const target = document.querySelector(this.getAttribute('href'));
                if (target) {
                    target.scrollIntoView({
                        behavior: 'smooth',
                        block: 'start'
                    });
                }
            });
        });

        // Parallax effect for hero section
        window.addEventListener('scroll', () => {
            const scrolled = window.pageYOffset;
            const hero = document.querySelector('.hero');
            const rate = scrolled * -0.5;
            hero.style.transform = `translateY(${rate}px)`;
        });

        // Animate elements on scroll
        const observerOptions = {
            threshold: 0.1,
            rootMargin: '0px 0px -50px 0px'
        };

        const observer = new IntersectionObserver((entries) => {
            entries.forEach(entry => {
                if (entry.isIntersecting) {
                    entry.target.style.opacity = '1';
                    entry.target.style.transform = 'translateY(0)';
                }
            });
        }, observerOptions);

        // Observe skill cards
        document.querySelectorAll('.skill-card').forEach(card => {
            observer.observe(card);
        });

        // Menu interaction
        const menu = document.querySelector('.nav-menu');
        menu.addEventListener('mouseenter', () => {
            menu.style.transform = 'translateY(-2px) scale(1.05)';
        });

        menu.addEventListener('mouseleave', () => {
            menu.style.transform = 'translateY(0) scale(1)';
        });

        // Add random floating animation to background elements
        setInterval(() => {
            const floatingElements = document.querySelectorAll('.floating-element');
            floatingElements.forEach(element => {
                const randomX = Math.random() * 100;
                const randomY = Math.random() * 100;
                element.style.left = randomX + '%';
                element.style.top = randomY + '%';
            });
        }, 10000);
    </script>
</body>
</html>
