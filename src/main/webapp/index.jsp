<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Sridhar - DevOps Professional</title>
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" rel="stylesheet">
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background: linear-gradient(135deg, #0f0f23 0%, #1a1a2e 50%, #16213e 100%);
            color: #ffffff;
            overflow-x: hidden;
            line-height: 1.6;
        }

        .container {
            max-width: 1400px;
            margin: 0 auto;
            padding: 0 20px;
        }

        /* Header */
        .header {
            position: relative;
            min-height: 100vh;
            display: flex;
            align-items: center;
            justify-content: center;
            text-align: center;
            background: radial-gradient(ellipse at center, rgba(64, 224, 208, 0.1) 0%, transparent 50%);
        }

        .floating-particles {
            position: absolute;
            width: 100%;
            height: 100%;
            overflow: hidden;
            z-index: 1;
        }

        .particle {
            position: absolute;
            background: #40e0d0;
            border-radius: 50%;
            opacity: 0.6;
            animation: float 6s infinite ease-in-out;
        }

        .particle:nth-child(1) { width: 4px; height: 4px; left: 10%; animation-delay: 0s; }
        .particle:nth-child(2) { width: 6px; height: 6px; left: 20%; animation-delay: 1s; }
        .particle:nth-child(3) { width: 3px; height: 3px; left: 30%; animation-delay: 2s; }
        .particle:nth-child(4) { width: 5px; height: 5px; left: 40%; animation-delay: 3s; }
        .particle:nth-child(5) { width: 4px; height: 4px; left: 50%; animation-delay: 4s; }
        .particle:nth-child(6) { width: 6px; height: 6px; left: 60%; animation-delay: 5s; }
        .particle:nth-child(7) { width: 3px; height: 3px; left: 70%; animation-delay: 0.5s; }
        .particle:nth-child(8) { width: 5px; height: 5px; left: 80%; animation-delay: 1.5s; }
        .particle:nth-child(9) { width: 4px; height: 4px; left: 90%; animation-delay: 2.5s; }

        @keyframes float {
            0%, 100% { transform: translateY(100vh) rotate(0deg); opacity: 0; }
            10% { opacity: 0.6; }
            90% { opacity: 0.6; }
            50% { transform: translateY(-100px) rotate(180deg); opacity: 1; }
        }

        .hero-content {
            position: relative;
            z-index: 2;
        }

        .name-title {
            font-size: 5rem;
            font-weight: 700;
            background: linear-gradient(135deg, #40e0d0, #00d4ff, #0099ff);
            -webkit-background-clip: text;
            -webkit-text-fill-color: transparent;
            background-clip: text;
            margin-bottom: 1rem;
            text-shadow: 0 0 30px rgba(64, 224, 208, 0.3);
            animation: glow 3s ease-in-out infinite alternate;
        }

        @keyframes glow {
            from { filter: drop-shadow(0 0 20px rgba(64, 224, 208, 0.3)); }
            to { filter: drop-shadow(0 0 40px rgba(64, 224, 208, 0.6)); }
        }

        .subtitle {
            font-size: 1.8rem;
            color: #b3b3cc;
            margin-bottom: 2rem;
            animation: slideUp 1s ease-out 0.5s both;
        }

        .tagline {
            font-size: 1.2rem;
            color: #40e0d0;
            margin-bottom: 3rem;
            animation: slideUp 1s ease-out 1s both;
        }

        @keyframes slideUp {
            from { opacity: 0; transform: translateY(30px); }
            to { opacity: 1; transform: translateY(0); }
        }

        /* DevOps Skills Grid */
        .skills-section {
            padding: 100px 0;
            background: rgba(255, 255, 255, 0.02);
        }

        .section-title {
            text-align: center;
            font-size: 3rem;
            margin-bottom: 4rem;
            background: linear-gradient(135deg, #40e0d0, #00d4ff);
            -webkit-background-clip: text;
            -webkit-text-fill-color: transparent;
            background-clip: text;
        }

        .skills-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(300px, 1fr));
            gap: 2rem;
            margin-top: 3rem;
        }

        .skill-card {
            background: linear-gradient(145deg, rgba(64, 224, 208, 0.1), rgba(0, 153, 255, 0.1));
            border-radius: 20px;
            padding: 2rem;
            text-align: center;
            border: 1px solid rgba(64, 224, 208, 0.2);
            transition: all 0.3s ease;
            position: relative;
            overflow: hidden;
        }

        .skill-card::before {
            content: '';
            position: absolute;
            top: -50%;
            left: -50%;
            width: 200%;
            height: 200%;
            background: linear-gradient(45deg, transparent, rgba(64, 224, 208, 0.1), transparent);
            transform: rotate(45deg);
            transition: all 0.5s ease;
            opacity: 0;
        }

        .skill-card:hover::before {
            opacity: 1;
            animation: shimmer 2s linear infinite;
        }

        @keyframes shimmer {
            0% { transform: translateX(-100%) translateY(-100%) rotate(45deg); }
            100% { transform: translateX(100%) translateY(100%) rotate(45deg); }
        }

        .skill-card:hover {
            transform: translateY(-10px);
            box-shadow: 0 20px 40px rgba(64, 224, 208, 0.2);
            border-color: rgba(64, 224, 208, 0.5);
        }

        .skill-icon {
            font-size: 3rem;
            color: #40e0d0;
            margin-bottom: 1rem;
            position: relative;
            z-index: 1;
        }

        .skill-title {
            font-size: 1.3rem;
            font-weight: 600;
            margin-bottom: 0.5rem;
            position: relative;
            z-index: 1;
        }

        .skill-description {
            color: #b3b3cc;
            font-size: 0.95rem;
            position: relative;
            z-index: 1;
        }

        /* Pipeline Animation */
        .pipeline-section {
            padding: 100px 0;
            position: relative;
        }

        .pipeline-container {
            display: flex;
            justify-content: space-between;
            align-items: center;
            position: relative;
            margin: 3rem 0;
            flex-wrap: wrap;
            gap: 2rem;
        }

        .pipeline-step {
            background: linear-gradient(145deg, rgba(64, 224, 208, 0.15), rgba(0, 153, 255, 0.15));
            border-radius: 15px;
            padding: 1.5rem;
            text-align: center;
            border: 2px solid rgba(64, 224, 208, 0.3);
            flex: 1;
            min-width: 200px;
            position: relative;
            transition: all 0.3s ease;
        }

        .pipeline-step:hover {
            transform: scale(1.05);
            border-color: #40e0d0;
            box-shadow: 0 10px 30px rgba(64, 224, 208, 0.3);
        }

        .pipeline-arrow {
            font-size: 2rem;
            color: #40e0d0;
            animation: pulse 2s infinite;
        }

        @keyframes pulse {
            0%, 100% { opacity: 0.6; transform: scale(1); }
            50% { opacity: 1; transform: scale(1.1); }
        }

        /* Footer */
        .footer {
            background: rgba(0, 0, 0, 0.3);
            padding: 3rem 0;
            text-align: center;
            border-top: 1px solid rgba(64, 224, 208, 0.2);
        }

        .social-links {
            display: flex;
            justify-content: center;
            gap: 2rem;
            margin-bottom: 2rem;
        }

        .social-link {
            display: inline-flex;
            align-items: center;
            justify-content: center;
            width: 50px;
            height: 50px;
            background: linear-gradient(145deg, rgba(64, 224, 208, 0.2), rgba(0, 153, 255, 0.2));
            border-radius: 50%;
            color: #40e0d0;
            text-decoration: none;
            font-size: 1.5rem;
            transition: all 0.3s ease;
            border: 1px solid rgba(64, 224, 208, 0.3);
        }

        .social-link:hover {
            background: linear-gradient(145deg, #40e0d0, #00d4ff);
            color: #0f0f23;
            transform: translateY(-5px);
            box-shadow: 0 10px 20px rgba(64, 224, 208, 0.3);
        }

        /* Responsive */
        @media (max-width: 768px) {
            .name-title {
                font-size: 3rem;
            }

            .subtitle {
                font-size: 1.4rem;
            }

            .skills-grid {
                grid-template-columns: 1fr;
            }

            .pipeline-container {
                flex-direction: column;
            }

            .pipeline-arrow {
                transform: rotate(90deg);
            }

            .social-links {
                gap: 1rem;
            }
        }

        /* Code Terminal Effect */
        .terminal {
            background: #1a1a2e;
            border-radius: 10px;
            padding: 1rem;
            margin: 2rem 0;
            border: 1px solid rgba(64, 224, 208, 0.3);
            font-family: 'Courier New', monospace;
            position: relative;
            overflow: hidden;
        }

        .terminal::before {
            content: '';
            position: absolute;
            top: 0;
            left: 0;
            right: 0;
            height: 3px;
            background: linear-gradient(90deg, #40e0d0, #00d4ff, #0099ff);
        }

        .terminal-header {
            color: #40e0d0;
            font-size: 0.9rem;
            margin-bottom: 0.5rem;
        }

        .terminal-code {
            color: #b3b3cc;
            font-size: 0.85rem;
            line-height: 1.4;
        }

        .highlight {
            color: #40e0d0;
        }
    </style>
</head>
<body>
    <div class="floating-particles">
        <div class="particle"></div>
        <div class="particle"></div>
        <div class="particle"></div>
        <div class="particle"></div>
        <div class="particle"></div>
        <div class="particle"></div>
        <div class="particle"></div>
        <div class="particle"></div>
        <div class="particle"></div>
    </div>

    <section class="header">
        <div class="container">
            <div class="hero-content">
                <h2 style="font-size: 2.2rem; color: #40e0d0; margin-bottom: 1rem; font-weight: 300;">Hi Sridhar</h2>
                <p class="subtitle">DevOps Engineer & Cloud Architect</p>
                <p class="tagline">Building Scalable Infrastructure | Automating Excellence</p>
                
                <div class="terminal">
                    <div class="terminal-header">$ sridhar --info</div>
                    <div class="terminal-code">
                        <span class="highlight">Role:</span> DevOps Engineer<br>
                        <span class="highlight">Expertise:</span> Kubernetes, Docker, AWS, CI/CD<br>
                        <span class="highlight">Mission:</span> Streamlining deployment pipelines<br>
                        <span class="highlight">Status:</span> <span style="color: #4ade80;">● Online</span>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <section class="skills-section">
        <div class="container">
            <h2 class="section-title">DevOps Expertise</h2>
            <div class="skills-grid">
                <div class="skill-card">
                    <div class="skill-icon"><i class="fab fa-docker"></i></div>
                    <h3 class="skill-title">Containerization</h3>
                    <p class="skill-description">Docker, Kubernetes, Container Orchestration, Microservices Architecture</p>
                </div>
                
                <div class="skill-card">
                    <div class="skill-icon"><i class="fas fa-cloud"></i></div>
                    <h3 class="skill-title">Cloud Platforms</h3>
                    <p class="skill-description">AWS, Azure, GCP, Infrastructure as Code, Multi-cloud Strategies</p>
                </div>
                
                <div class="skill-card">
                    <div class="skill-icon"><i class="fas fa-code-branch"></i></div>
                    <h3 class="skill-title">CI/CD Pipelines</h3>
                    <p class="skill-description">Jenkins, GitLab CI, GitHub Actions, Automated Testing & Deployment</p>
                </div>
                
                <div class="skill-card">
                    <div class="skill-icon"><i class="fas fa-chart-line"></i></div>
                    <h3 class="skill-title">Monitoring & Logging</h3>
                    <p class="skill-description">Prometheus, Grafana, ELK Stack, Application Performance Monitoring</p>
                </div>
                
                <div class="skill-card">
                    <div class="skill-icon"><i class="fas fa-shield-alt"></i></div>
                    <h3 class="skill-title">Security & Compliance</h3>
                    <p class="skill-description">DevSecOps, Security Scanning, Compliance Automation, Risk Management</p>
                </div>
                
                <div class="skill-card">
                    <div class="skill-icon"><i class="fas fa-cogs"></i></div>
                    <h3 class="skill-title">Infrastructure Automation</h3>
                    <p class="skill-description">Terraform, Ansible, Puppet, Configuration Management, IaC</p>
                </div>
            </div>
        </div>
    </section>

    <section class="pipeline-section">
        <div class="container">
            <h2 class="section-title">DevOps Pipeline</h2>
            <div class="pipeline-container">
                <div class="pipeline-step">
                    <div class="skill-icon"><i class="fas fa-code"></i></div>
                    <h3>Development</h3>
                    <p>Code, Commit, Collaborate</p>
                </div>
                
                <div class="pipeline-arrow"><i class="fas fa-arrow-right"></i></div>
                
                <div class="pipeline-step">
                    <div class="skill-icon"><i class="fas fa-vial"></i></div>
                    <h3>Testing</h3>
                    <p>Automated Quality Assurance</p>
                </div>
                
                <div class="pipeline-arrow"><i class="fas fa-arrow-right"></i></div>
                
                <div class="pipeline-step">
                    <div class="skill-icon"><i class="fas fa-rocket"></i></div>
                    <h3>Deployment</h3>
                    <p>Continuous Integration & Delivery</p>
                </div>
                
                <div class="pipeline-arrow"><i class="fas fa-arrow-right"></i></div>
                
                <div class="pipeline-step">
                    <div class="skill-icon"><i class="fas fa-eye"></i></div>
                    <h3>Monitoring</h3>
                    <p>Performance & Health Tracking</p>
                </div>
            </div>
        </div>
    </section>

    <footer class="footer">
        <div class="container">
            <div class="social-links">
                <a href="#" class="social-link"><i class="fab fa-linkedin"></i></a>
                <a href="#" class="social-link"><i class="fab fa-github"></i></a>
                <a href="#" class="social-link"><i class="fab fa-docker"></i></a>
                <a href="#" class="social-link"><i class="fas fa-envelope"></i></a>
            </div>
            <p>&copy; 2025 Sridhar - DevOps Professional. Automating the Future.</p>
        </div>
    </footer>

    <script>
        // Add smooth scrolling and interactive effects
        document.addEventListener('DOMContentLoaded', function() {
            // Smooth reveal animation for skill cards
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

            // Apply initial styles and observe elements
            const skillCards = document.querySelectorAll('.skill-card');
            skillCards.forEach((card, index) => {
                card.style.opacity = '0';
                card.style.transform = 'translateY(50px)';
                card.style.transition = `all 0.6s ease ${index * 0.1}s`;
                observer.observe(card);
            });

            // Pipeline step animation
            const pipelineSteps = document.querySelectorAll('.pipeline-step');
            pipelineSteps.forEach((step, index) => {
                step.style.opacity = '0';
                step.style.transform = 'scale(0.8)';
                step.style.transition = `all 0.6s ease ${index * 0.2}s`;
                observer.observe(step);
            });

            // Dynamic particle colors
            const particles = document.querySelectorAll('.particle');
            setInterval(() => {
                particles.forEach(particle => {
                    const colors = ['#40e0d0', '#00d4ff', '#0099ff', '#4ade80', '#f59e0b'];
                    particle.style.background = colors[Math.floor(Math.random() * colors.length)];
                });
            }, 3000);

            // Terminal typing effect
            const terminalCode = document.querySelector('.terminal-code');
            if (terminalCode) {
                const originalText = terminalCode.innerHTML;
                terminalCode.innerHTML = '';
                let index = 0;
                
                function typeText() {
                    if (index < originalText.length) {
                        terminalCode.innerHTML = originalText.substring(0, index + 1);
                        index++;
                        setTimeout(typeText, 50);
                    }
                }
                
                setTimeout(typeText, 2000);
            }
        });
    </script>
</body>
</html>
