
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Docker Portfolio - Sridhar</title>
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: 'Inter', -apple-system, BlinkMacSystemFont, sans-serif;
            background: linear-gradient(45deg, #ff9a9e 0%, #fecfef 25%, #fecfef 50%, #f5a623 75%, #ff6b6b 100%);
            background-size: 400% 400%;
            animation: gradientBG 8s ease infinite;
            min-height: 100vh;
            overflow-x: hidden;
        }

        @keyframes gradientBG {
            0% { background-position: 0% 50%; }
            50% { background-position: 100% 50%; }
            100% { background-position: 0% 50%; }
        }

        /* Floating Docker containers */
        .floating-containers {
            position: fixed;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            z-index: -1;
            overflow: hidden;
        }

        .docker-container {
            position: absolute;
            width: 60px;
            height: 40px;
            background: linear-gradient(45deg, #2496ED, #0db7ed);
            border-radius: 8px;
            opacity: 0.3;
            animation: float 15s infinite linear;
        }

        .docker-container::before {
            content: '🐳';
            position: absolute;
            top: 50%;
            left: 50%;
            transform: translate(-50%, -50%);
            font-size: 20px;
        }

        @keyframes float {
            0% {
                transform: translateY(100vh) rotate(0deg);
                opacity: 0;
            }
            10% {
                opacity: 0.3;
            }
            90% {
                opacity: 0.3;
            }
            100% {
                transform: translateY(-100px) rotate(360deg);
                opacity: 0;
            }
        }

        .container {
            max-width: 1200px;
            margin: 0 auto;
            padding: 0 20px;
        }

        /* Header */
        header {
            padding: 4rem 0;
            text-align: center;
            position: relative;
        }

        .docker-logo {
            font-size: 8rem;
            margin-bottom: 2rem;
            display: block;
            animation: bounce 2s ease-in-out infinite;
        }

        @keyframes bounce {
            0%, 20%, 50%, 80%, 100% {
                transform: translateY(0);
            }
            40% {
                transform: translateY(-20px);
            }
            60% {
                transform: translateY(-10px);
            }
        }

        .main-title {
            font-size: 4rem;
            font-weight: 900;
            background: linear-gradient(45deg, #2496ED, #0db7ed, #2496ED, #0db7ed);
            background-size: 300% 300%;
            -webkit-background-clip: text;
            -webkit-text-fill-color: transparent;
            background-clip: text;
            animation: shimmer 3s ease-in-out infinite;
            margin-bottom: 1rem;
            text-shadow: 0 0 30px rgba(36, 150, 237, 0.5);
        }

        @keyframes shimmer {
            0%, 100% { background-position: 0% 50%; }
            50% { background-position: 100% 50%; }
        }

        .subtitle {
            font-size: 1.8rem;
            color: #fff;
            font-weight: 400;
            text-shadow: 0 2px 10px rgba(0, 0, 0, 0.3);
            margin-bottom: 3rem;
        }

        /* Docker features grid */
        .features-section {
            padding: 4rem 0;
        }

        .features-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(280px, 1fr));
            gap: 3rem;
            margin-top: 3rem;
        }

        .feature-card {
            background: rgba(255, 255, 255, 0.25);
            backdrop-filter: blur(20px);
            border-radius: 25px;
            padding: 3rem 2rem;
            text-align: center;
            border: 2px solid rgba(255, 255, 255, 0.3);
            transition: all 0.4s ease;
            position: relative;
            overflow: hidden;
            box-shadow: 0 10px 30px rgba(0, 0, 0, 0.2);
        }

        .feature-card::before {
            content: '';
            position: absolute;
            top: 0;
            left: -100%;
            width: 100%;
            height: 100%;
            background: linear-gradient(90deg, transparent, rgba(255, 255, 255, 0.3), transparent);
            transition: left 0.8s ease;
        }

        .feature-card:hover::before {
            left: 100%;
        }

        .feature-card:hover {
            transform: translateY(-15px) scale(1.05);
            background: rgba(255, 255, 255, 0.4);
            box-shadow: 0 25px 50px rgba(0, 0, 0, 0.3);
            border-color: rgba(255, 255, 255, 0.5);
        }

        .feature-icon {
            font-size: 4rem;
            margin-bottom: 2rem;
            display: block;
            animation: pulse 2s ease-in-out infinite;
        }

        @keyframes pulse {
            0%, 100% {
                transform: scale(1);
            }
            50% {
                transform: scale(1.1);
            }
        }

        .feature-card h3 {
            color: #fff;
            font-size: 1.8rem;
            margin-bottom: 1.5rem;
            font-weight: 700;
            text-shadow: 0 2px 10px rgba(0, 0, 0, 0.3);
        }

        .feature-card p {
            color: rgba(255, 255, 255, 0.9);
            line-height: 1.8;
            font-size: 1.1rem;
            text-shadow: 0 1px 5px rgba(0, 0, 0, 0.2);
        }

        /* Interactive Docker commands */
        .commands-section {
            padding: 4rem 0;
            text-align: center;
        }

        .section-title {
            font-size: 3rem;
            color: #fff;
            margin-bottom: 3rem;
            font-weight: 800;
            text-shadow: 0 3px 15px rgba(0, 0, 0, 0.3);
        }

        .command-container {
            background: rgba(0, 0, 0, 0.7);
            backdrop-filter: blur(15px);
            border-radius: 20px;
            padding: 2rem;
            margin: 2rem 0;
            border: 2px solid #2496ED;
            box-shadow: 0 10px 30px rgba(36, 150, 237, 0.3);
            transition: all 0.3s ease;
        }

        .command-container:hover {
            transform: scale(1.02);
            box-shadow: 0 15px 40px rgba(36, 150, 237, 0.5);
        }

        .command {
            color: #2496ED;
            font-family: 'Courier New', monospace;
            font-size: 1.3rem;
            font-weight: bold;
            margin: 0.5rem 0;
        }

        .command-description {
            color: rgba(255, 255, 255, 0.8);
            font-size: 1rem;
            margin-top: 0.5rem;
        }

        /* Footer */
        footer {
            text-align: center;
            padding: 3rem 0;
            margin-top: 4rem;
        }

        .footer-content {
            background: rgba(255, 255, 255, 0.2);
            backdrop-filter: blur(20px);
            border-radius: 30px;
            padding: 2rem;
            border: 2px solid rgba(255, 255, 255, 0.3);
        }

        .footer-name {
            color: #fff;
            font-size: 1.2rem;
            font-weight: 600;
            text-shadow: 0 2px 10px rgba(0, 0, 0, 0.3);
        }

        /* Responsive design */
        @media (max-width: 768px) {
            .main-title {
                font-size: 2.5rem;
            }
            
            .docker-logo {
                font-size: 5rem;
            }
            
            .subtitle {
                font-size: 1.3rem;
            }
            
            .features-grid {
                grid-template-columns: 1fr;
                gap: 2rem;
            }
            
            .section-title {
                font-size: 2rem;
            }
        }

        /* Color-changing elements */
        .color-cycle {
            animation: colorCycle 4s ease-in-out infinite;
        }

        @keyframes colorCycle {
            0% { filter: hue-rotate(0deg); }
            25% { filter: hue-rotate(90deg); }
            50% { filter: hue-rotate(180deg); }
            75% { filter: hue-rotate(270deg); }
            100% { filter: hue-rotate(360deg); }
        }
    </style>
</head>
<body>
    <!-- Floating Docker containers -->
    <div class="floating-containers" id="floating-containers"></div>

    <!-- Header -->
    <header>
        <div class="container">
            <span class="docker-logo">🐳</span>
            <h1 class="main-title">DOCKER</h1>
            <p class="subtitle">Container Technology & Virtualization</p>
        </div>
    </header>

    <!-- Docker Features Section -->
    <section class="features-section">
        <div class="container">
            <div class="features-grid">
                <div class="feature-card">
                    <span class="feature-icon color-cycle">🚀</span>
                    <h3>Lightning Fast</h3>
                    <p>Deploy applications in seconds with lightweight containers that share the OS kernel for maximum efficiency.</p>
                </div>
                <div class="feature-card">
                    <span class="feature-icon color-cycle">🔧</span>
                    <h3>Easy to Use</h3>
                    <p>Simple commands and intuitive workflow make containerization accessible for developers of all skill levels.</p>
                </div>
                <div class="feature-card">
                    <span class="feature-icon color-cycle">📦</span>
                    <h3>Portable</h3>
                    <p>Build once, run anywhere. Containers work consistently across development, testing, and production environments.</p>
                </div>
                <div class="feature-card">
                    <span class="feature-icon color-cycle">🔒</span>
                    <h3>Secure</h3>
                    <p>Isolated containers provide strong security boundaries while maintaining resource efficiency and performance.</p>
                </div>
            </div>
        </div>
    </section>

    <!-- Docker Commands Section -->
    <section class="commands-section">
        <div class="container">
            <h2 class="section-title">Essential Commands</h2>
            
            <div class="command-container">
                <div class="command">docker run -d nginx</div>
                <div class="command-description">Run an nginx container in detached mode</div>
            </div>
            
            <div class="command-container">
                <div class="command">docker build -t myapp .</div>
                <div class="command-description">Build an image with tag 'myapp' from current directory</div>
            </div>
            
            <div class="command-container">
                <div class="command">docker ps -a</div>
                <div class="command-description">List all containers (running and stopped)</div>
            </div>
        </div>
    </section>

    <!-- Footer -->
    <footer>
        <div class="container">
            <div class="footer-content">
                <p class="footer-name">Created by Sridhar</p>
            </div>
        </div>
    </footer>

    <script>
        // Create floating Docker containers
        function createFloatingContainers() {
            const container = document.getElementById('floating-containers');
            const containerCount = 20;

            for (let i = 0; i < containerCount; i++) {
                const dockerContainer = document.createElement('div');
                dockerContainer.className = 'docker-container';
                dockerContainer.style.left = Math.random() * 100 + '%';
                dockerContainer.style.animationDelay = Math.random() * 15 + 's';
                dockerContainer.style.animationDuration = (Math.random() * 5 + 10) + 's';
                container.appendChild(dockerContainer);
            }
        }

        // Add interactive effects to command containers
        function addCommandEffects() {
            const commands = document.querySelectorAll('.command-container');
            
            commands.forEach(cmd => {
                cmd.addEventListener('click', () => {
                    cmd.style.background = 'rgba(36, 150, 237, 0.3)';
                    setTimeout(() => {
                        cmd.style.background = 'rgba(0, 0, 0, 0.7)';
                    }, 300);
                });
            });
        }

        // Initialize everything
        document.addEventListener('DOMContentLoaded', () => {
            createFloatingContainers();
            addCommandEffects();
        });

        // Add dynamic background color changes
        setInterval(() => {
            const hue = Math.floor(Math.random() * 360);
            document.body.style.filter = `hue-rotate(${hue}deg)`;
        }, 5000);
    </script>
</body>
</html>
