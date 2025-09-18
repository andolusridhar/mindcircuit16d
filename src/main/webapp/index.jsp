<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>DevOps Terminal - Sridhar</title>
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: 'Courier New', monospace;
            background: linear-gradient(135deg, #0c0c0c 0%, #1a1a2e 50%, #16213e 100%);
            color: #00ff88;
            overflow-x: hidden;
            min-height: 100vh;
            position: relative;
        }

        /* Animated Background Stars */
        .stars {
            position: fixed;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            pointer-events: none;
            z-index: 1;
        }

        .star {
            position: absolute;
            width: 2px;
            height: 2px;
            background: #00ff88;
            border-radius: 50%;
            animation: twinkle 3s infinite;
        }

        @keyframes twinkle {
            0%, 100% { opacity: 0.3; transform: scale(1); }
            50% { opacity: 1; transform: scale(1.5); }
        }

        /* Header */
        header {
            position: fixed;
            top: 0;
            width: 100%;
            background: rgba(0, 0, 0, 0.9);
            backdrop-filter: blur(10px);
            border-bottom: 2px solid #00ff88;
            z-index: 1000;
            animation: slideDown 1s ease-out;
        }

        @keyframes slideDown {
            from { transform: translateY(-100%); }
            to { transform: translateY(0); }
        }

        nav {
            display: flex;
            justify-content: space-between;
            align-items: center;
            padding: 1rem 2rem;
            max-width: 1200px;
            margin: 0 auto;
        }

        .logo {
            font-size: 1.5rem;
            font-weight: bold;
            color: #00ff88;
            text-shadow: 0 0 10px #00ff88;
            animation: glow 2s ease-in-out infinite alternate;
        }

        @keyframes glow {
            from { text-shadow: 0 0 10px #00ff88; }
            to { text-shadow: 0 0 20px #00ff88, 0 0 30px #00ff88; }
        }

        .sridhar-name {
            font-size: 1rem;
            color: #ffd700;
            font-weight: 600;
            text-shadow: 0 0 15px #ffd700;
            animation: pulseGold 2s ease-in-out infinite;
        }

        @keyframes pulseGold {
            0%, 100% { opacity: 0.8; }
            50% { opacity: 1; }
        }

        /* Main Container */
        .container {
            max-width: 1200px;
            margin: 0 auto;
            padding: 0 20px;
            position: relative;
            z-index: 10;
        }

        /* Terminal Section */
        .terminal-section {
            min-height: 100vh;
            display: flex;
            align-items: center;
            justify-content: center;
            padding: 100px 0;
        }

        .terminal-content {
            text-align: center;
            width: 100%;
            max-width: 800px;
        }

        .greeting {
            font-size: 3.5rem;
            margin-bottom: 1rem;
            color: #00ff88;
            animation: typeIn 2s ease-out;
            text-shadow: 0 0 20px #00ff88;
        }

        .welcome-text {
            font-size: 2rem;
            margin-bottom: 2rem;
            color: #88ccff;
            animation: typeIn 2s ease-out 0.5s both;
            text-shadow: 0 0 15px #88ccff;
        }

        .subtitle {
            font-size: 1.2rem;
            margin-bottom: 3rem;
            color: #ffaa44;
            animation: typeIn 2s ease-out 1s both;
        }

        @keyframes typeIn {
            from {
                opacity: 0;
                transform: translateY(50px);
            }
            to {
                opacity: 1;
                transform: translateY(0);
            }
        }

        /* Terminal Box */
        .terminal-box {
            background: rgba(0, 0, 0, 0.8);
            border: 2px solid #00ff88;
            border-radius: 15px;
            padding: 2rem;
            margin: 3rem auto;
            max-width: 600px;
            box-shadow: 0 0 30px rgba(0, 255, 136, 0.3);
            animation: terminalGlow 3s ease-in-out infinite alternate;
            position: relative;
            overflow: hidden;
        }

        .terminal-box::before {
            content: '';
            position: absolute;
            top: -2px;
            left: -2px;
            right: -2px;
            bottom: -2px;
            background: linear-gradient(45deg, #00ff88, #88ccff, #ffaa44, #ff6b9d);
            border-radius: 15px;
            z-index: -1;
            animation: borderRotate 4s linear infinite;
        }

        @keyframes borderRotate {
            0% { transform: rotate(0deg); }
            100% { transform: rotate(360deg); }
        }

        @keyframes terminalGlow {
            from { box-shadow: 0 0 30px rgba(0, 255, 136, 0.3); }
            to { box-shadow: 0 0 50px rgba(0, 255, 136, 0.6), inset 0 0 20px rgba(0, 255, 136, 0.1); }
        }

        .terminal-header {
            display: flex;
            justify-content: space-between;
            align-items: center;
            margin-bottom: 1.5rem;
            padding-bottom: 1rem;
            border-bottom: 1px solid #333;
        }

        .terminal-title {
            color: #00ff88;
            font-size: 1rem;
        }

        .terminal-controls {
            display: flex;
            gap: 0.5rem;
        }

        .control-btn {
            width: 12px;
            height: 12px;
            border-radius: 50%;
            animation: controlPulse 2s ease-in-out infinite;
        }

        .control-btn.close { background: #ff5f57; }
        .control-btn.minimize { background: #ffbd2e; }
        .control-btn.maximize { background: #28ca42; }

        @keyframes controlPulse {
            0%, 100% { opacity: 0.7; }
            50% { opacity: 1; }
        }

        .command-line {
            font-family: 'Courier New', monospace;
            font-size: 1.1rem;
            text-align: left;
            margin: 1rem 0;
            animation: typing 3s steps(20) 2s both;
        }

        .prompt {
            color: #ffd700;
            margin-right: 0.5rem;
        }

        .command {
            color: #88ccff;
        }

        @keyframes typing {
            from { width: 0; }
            to { width: 100%; }
        }

        .info-line {
            display: flex;
            justify-content: space-between;
            margin: 0.8rem 0;
            padding: 0.5rem 0;
            border-left: 3px solid #00ff88;
            padding-left: 1rem;
            animation: slideInLeft 1s ease-out;
        }

        .info-line:nth-child(odd) {
            border-left-color: #ffaa44;
            animation-delay: 0.2s;
        }

        .info-line:nth-child(even) {
            border-left-color: #ff6b9d;
            animation-delay: 0.4s;
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

        .info-label {
            color: #88ccff;
            min-width: 120px;
        }

        .info-value {
            color: #00ff88;
            font-weight: bold;
            text-shadow: 0 0 10px #00ff88;
        }

        /* Status Indicator */
        .status-indicator {
            display: flex;
            align-items: center;
            gap: 0.5rem;
            justify-content: center;
            margin-top: 2rem;
        }

        .status-dot {
            width: 12px;
            height: 12px;
            border-radius: 50%;
            background: #00ff88;
            animation: statusBlink 1.5s ease-in-out infinite;
        }

        @keyframes statusBlink {
            0%, 50% { opacity: 1; }
            51%, 100% { opacity: 0.3; }
        }

        .status-text {
            color: #00ff88;
            font-weight: bold;
        }

        /* DevOps Tools Section */
        .tools-section {
            padding: 5rem 0;
            background: rgba(0, 0, 0, 0.3);
        }

        .section-title {
            text-align: center;
            font-size: 2.5rem;
            color: #00ff88;
            margin-bottom: 3rem;
            text-shadow: 0 0 20px #00ff88;
        }

        .tools-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(280px, 1fr));
            gap: 2rem;
            margin-top: 3rem;
        }

        .tool-card {
            background: rgba(0, 0, 0, 0.6);
            border: 1px solid #00ff88;
            border-radius: 15px;
            padding: 2rem;
            text-align: center;
            transition: all 0.3s ease;
            animation: cardFloat 3s ease-in-out infinite;
            position: relative;
            overflow: hidden;
        }

        .tool-card::before {
            content: '';
            position: absolute;
            top: -100%;
            left: 0;
            width: 100%;
            height: 100%;
            background: linear-gradient(transparent, rgba(0, 255, 136, 0.1), transparent);
            transition: top 0.5s;
        }

        .tool-card:hover::before {
            top: 100%;
        }

        .tool-card:hover {
            transform: translateY(-15px) scale(1.05);
            border-color: #ffd700;
            box-shadow: 0 20px 40px rgba(0, 255, 136, 0.3);
        }

        @keyframes cardFloat {
            0%, 100% { transform: translateY(0px); }
            50% { transform: translateY(-5px); }
        }

        .tool-card:nth-child(1) { animation-delay: 0s; border-color: #ff6b9d; }
        .tool-card:nth-child(2) { animation-delay: 0.5s; border-color: #ffaa44; }
        .tool-card:nth-child(3) { animation-delay: 1s; border-color: #88ccff; }
        .tool-card:nth-child(4) { animation-delay: 1.5s; border-color: #00ff88; }
        .tool-card:nth-child(5) { animation-delay: 2s; border-color: #ff6b9d; }
        .tool-card:nth-child(6) { animation-delay: 2.5s; border-color: #ffaa44; }

        .tool-icon {
            font-size: 3rem;
            margin-bottom: 1rem;
            animation: rotate 4s linear infinite;
        }

        @keyframes rotate {
            from { transform: rotateY(0deg); }
            to { transform: rotateY(360deg); }
        }

        .tool-name {
            color: #ffd700;
            font-size: 1.4rem;
            margin-bottom: 1rem;
            font-weight: bold;
        }

        .tool-description {
            color: #88ccff;
            font-size: 0.95rem;
            line-height: 1.6;
            margin-bottom: 1rem;
        }

        .tool-commands {
            background: rgba(0, 0, 0, 0.8);
            border: 1px solid #333;
            border-radius: 8px;
            padding: 1rem;
            text-align: left;
            font-family: 'Courier New', monospace;
            font-size: 0.85rem;
        }

        .command-example {
            color: #00ff88;
            margin: 0.3rem 0;
            animation: fadeIn 2s ease-out;
        }

        @keyframes fadeIn {
            from { opacity: 0; }
            to { opacity: 1; }
        }

        .command-prompt {
            color: #ffd700;
            margin-right: 0.5rem;
        }

        /* Footer */
        footer {
            background: rgba(0, 0, 0, 0.9);
            color: #88ccff;
            text-align: center;
            padding: 2rem 0;
            border-top: 2px solid #00ff88;
        }

        .footer-content {
            display: flex;
            justify-content: center;
            align-items: center;
            gap: 2rem;
            flex-wrap: wrap;
        }

        .footer-text {
            color: #88ccff;
        }

        .footer-highlight {
            color: #ffd700;
            font-weight: bold;
            text-shadow: 0 0 10px #ffd700;
        }

        /* Cursor Animation */
        .cursor {
            display: inline-block;
            background-color: #00ff88;
            margin-left: 3px;
            width: 2px;
            animation: blink 1s infinite;
        }

        @keyframes blink {
            0%, 50% { opacity: 1; }
            51%, 100% { opacity: 0; }
        }

        /* Responsive Design */
        @media (max-width: 768px) {
            .greeting { font-size: 2.5rem; }
            .welcome-text { font-size: 1.5rem; }
            .subtitle { font-size: 1rem; }
            .terminal-box { padding: 1.5rem; margin: 2rem auto; }
            nav { padding: 1rem; }
            .logo { font-size: 1.2rem; }
            .tools-grid { grid-template-columns: 1fr; }
        }
    </style>
</head>
<body>
    <div class="stars" id="stars"></div>

    <header>
        <nav>
            <div class="logo">DevOps</div>
            <div class="sridhar-name">Sridhar</div>
        </nav>
    </header>

    <main>
        <section class="terminal-section">
            <div class="container">
                <div class="terminal-content">
                    <h1 class="greeting">Hi Sridhar</h1>
                    <h2 class="welcome-text">Welcome to DevOps</h2>
                    <p class="subtitle">Building Scalable Infrastructure | Automating Excellence</p>

                    <div class="terminal-box">
                        <div class="terminal-header">
                            <span class="terminal-title">devops-terminal</span>
                            <div class="terminal-controls">
                                <div class="control-btn close"></div>
                                <div class="control-btn minimize"></div>
                                <div class="control-btn maximize"></div>
                            </div>
                        </div>

                        <div class="command-line">
                            <span class="prompt">$</span>
                            <span class="command">sridhar --info</span>
                            <span class="cursor">|</span>
                        </div>

                        <div class="info-line">
                            <span class="info-label">Role:</span>
                            <span class="info-value">DevOps Engineer</span>
                        </div>
                        
                        <div class="info-line">
                            <span class="info-label">Expertise:</span>
                            <span class="info-value">Kubernetes, Docker, AWS, CI/CD</span>
                        </div>
                        
                        <div class="info-line">
                            <span class="info-label">Mission:</span>
                            <span class="info-value">Streamlining deployment pipelines</span>
                        </div>
                        
                        <div class="info-line">
                            <span class="info-label">Status:</span>
                            <span class="info-value">🟢 Online</span>
                        </div>

                        <div class="status-indicator">
                            <div class="status-dot"></div>
                            <span class="status-text">System Ready</span>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <section class="tools-section">
            <div class="container">
                <h2 class="section-title">DevOps Arsenal</h2>
                
                <div class="tools-grid">
                    <div class="tool-card">
                        <div class="tool-icon">🐳</div>
                        <h3 class="tool-name">Docker</h3>
                        <p class="tool-description">Containerization platform for packaging applications with their dependencies</p>
                        <div class="tool-commands">
                            <div class="command-example">
                                <span class="command-prompt">$</span>docker build -t myapp .
                            </div>
                            <div class="command-example">
                                <span class="command-prompt">$</span>docker run -p 8080:80 myapp
                            </div>
                            <div class="command-example">
                                <span class="command-prompt">$</span>docker-compose up -d
                            </div>
                        </div>
                    </div>
                    
                    <div class="tool-card">
                        <div class="tool-icon">☸️</div>
                        <h3 class="tool-name">Kubernetes</h3>
                        <p class="tool-description">Container orchestration platform for managing containerized applications</p>
                        <div class="tool-commands">
                            <div class="command-example">
                                <span class="command-prompt">$</span>kubectl get pods
                            </div>
                            <div class="command-example">
                                <span class="command-prompt">$</span>kubectl apply -f deployment.yaml
                            </div>
                            <div class="command-example">
                                <span class="command-prompt">$</span>kubectl scale deployment myapp --replicas=3
                            </div>
                        </div>
                    </div>
                    
                    <div class="tool-card">
                        <div class="tool-icon">☁️</div>
                        <h3 class="tool-name">AWS</h3>
                        <p class="tool-description">Amazon Web Services cloud platform for scalable infrastructure</p>
                        <div class="tool-commands">
                            <div class="command-example">
                                <span class="command-prompt">$</span>aws ec2 describe-instances
                            </div>
                            <div class="command-example">
                                <span class="command-prompt">$</span>aws s3 cp file.txt s3://mybucket/
                            </div>
                            <div class="command-example">
                                <span class="command-prompt">$</span>aws eks update-kubeconfig --name cluster
                            </div>
                        </div>
                    </div>
                    
                    <div class="tool-card">
                        <div class="tool-icon">🔧</div>
                        <h3 class="tool-name">Terraform</h3>
                        <p class="tool-description">Infrastructure as Code tool for provisioning cloud resources</p>
                        <div class="tool-commands">
                            <div class="command-example">
                                <span class="command-prompt">$</span>terraform init
                            </div>
                            <div class="command-example">
                                <span class="command-prompt">$</span>terraform plan
                            </div>
                            <div class="command-example">
                                <span class="command-prompt">$</span>terraform apply
                            </div>
                        </div>
                    </div>
                    
                    <div class="tool-card">
                        <div class="tool-icon">🔄</div>
                        <h3 class="tool-name">Jenkins</h3>
                        <p class="tool-description">CI/CD automation server for building and deploying applications</p>
                        <div class="tool-commands">
                            <div class="command-example">
                                <span class="command-prompt">$</span>jenkins-cli build job-name
                            </div>
                            <div class="command-example">
                                <span class="command-prompt">$</span>curl -X POST http://jenkins/job/deploy/build
                            </div>
                            <div class="command-example">
                                <span class="command-prompt">$</span>jenkins-cli console job-name 42
                            </div>
                        </div>
                    </div>
                    
                    <div class="tool-card">
                        <div class="tool-icon">📊</div>
                        <h3 class="tool-name">Monitoring</h3>
                        <p class="tool-description">Prometheus & Grafana stack for monitoring and observability</p>
                        <div class="tool-commands">
                            <div class="command-example">
                                <span class="command-prompt">$</span>promtool query instant 'up'
                            </div>
                            <div class="command-example">
                                <span class="command-prompt">$</span>curl http://prometheus:9090/metrics
                            </div>
                            <div class="command-example">
                                <span class="command-prompt">$</span>grafana-cli admin reset-admin-password
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    </main>

    <footer>
        <div class="footer-content">
            <span class="footer-text">&copy; 2025 DevOps Terminal by</span>
            <span class="footer-highlight">Sridhar</span>
        </div>
    </footer>

    <script>
        // Generate animated stars
        function createStars() {
            const starsContainer = document.getElementById('stars');
            const numberOfStars = 150;

            for (let i = 0; i < numberOfStars; i++) {
                const star = document.createElement('div');
                star.className = 'star';
                star.style.left = Math.random() * 100 + '%';
                star.style.top = Math.random() * 100 + '%';
                star.style.animationDelay = Math.random() * 3 + 's';
                star.style.animationDuration = (Math.random() * 3 + 2) + 's';
                starsContainer.appendChild(star);
            }
        }

        // Professional DevOps terminal commands
        function typeEffect() {
            const commands = [
                'sridhar --info',
                'kubectl get nodes',
                'docker ps -a',
                'terraform plan',
                'aws ecs list-clusters',
                'helm list',
                'ansible-playbook deploy.yml',
                'jenkins-cli build pipeline'
            ];
            
            const commandElement = document.querySelector('.command');
            let commandIndex = 0;
            
            setInterval(() => {
                commandIndex = (commandIndex + 1) % commands.length;
                commandElement.style.animation = 'none';
                setTimeout(() => {
                    commandElement.textContent = commands[commandIndex];
                    commandElement.style.animation = 'typing 2s steps(20) both';
                }, 100);
            }, 4000);
        }

        // Animate command examples in tool cards
        function animateCommands() {
            const commandExamples = document.querySelectorAll('.command-example');
            
            const observer = new IntersectionObserver((entries) => {
                entries.forEach(entry => {
                    if (entry.isIntersecting) {
                        entry.target.style.animation = 'fadeIn 1s ease-out forwards';
                        entry.target.style.animationDelay = Math.random() * 1 + 's';
                    }
                });
            }, { threshold: 0.3 });

            commandExamples.forEach(cmd => observer.observe(cmd));
        }

        // Interactive tool cards with DevOps-themed responses
        function addToolInteractions() {
            const toolCards = document.querySelectorAll('.tool-card');
            const toolMessages = [
                "🐳 Docker: Containerizing your applications!",
                "☸️ Kubernetes: Orchestrating at scale!",
                "☁️ AWS: Cloud infrastructure ready!",
                "🔧 Terraform: Infrastructure as Code!",
                "🔄 Jenkins: CI/CD pipeline active!",
                "📊 Monitoring: System health checked!"
            ];

            toolCards.forEach((card, index) => {
                card.addEventListener('click', function() {
                    // Create DevOps status popup
                    const popup = document.createElement('div');
                    popup.textContent = toolMessages[index];
                    popup.style.cssText = `
                        position: fixed;
                        top: 20%;
                        right: 20px;
                        background: rgba(0, 255, 136, 0.9);
                        color: black;
                        padding: 1rem 1.5rem;
                        border-radius: 8px;
                        font-weight: bold;
                        z-index: 10000;
                        font-family: 'Courier New', monospace;
                        animation: slideInRight 0.5s ease-out;
                    `;
                    
                    document.body.appendChild(popup);
                    
                    setTimeout(() => {
                        popup.remove();
                    }, 3000);
                    
                    // Card rotation effect
                    this.style.transform = 'scale(1.05) rotateY(360deg)';
                    setTimeout(() => {
                        this.style.transform = '';
                    }, 800);
                });
            });
        }

        // Matrix-style command rain
        function createCommandRain() {
            const commands = ['kubectl', 'docker', 'terraform', 'aws', 'helm', 'ansible'];
            
            setInterval(() => {
                const command = document.createElement('div');
                command.textContent = commands[Math.floor(Math.random() * commands.length)];
                command.style.cssText = `
                    position: fixed;
                    top: -50px;
                    left: ${Math.random() * window.innerWidth}px;
                    color: rgba(0, 255, 136, 0.6);
                    font-family: 'Courier New', monospace;
                    font-size: 12px;
                    z-index: 2;
                    animation: fall 5s linear forwards;
                    pointer-events: none;
                `;
                
                document.body.appendChild(command);
                
                setTimeout(() => {
                    command.remove();
                }, 5000);
            }, 2000);
        }

        // System monitoring simulation
        function simulateSystemMetrics() {
            const metrics = [
                'CPU: 23.4% | Memory: 67.8% | Disk: 45.2%',
                'Pods: 47/50 Running | Services: 23 Active',
                'Pipeline Status: ✅ Build Success | ⚡ Deploy Ready',
                'Cluster Health: 🟢 All Nodes Ready',
                'Container Registry: 15 Images | 3 New Pushes'
            ];
            
            const metricsDisplay = document.createElement('div');
            metricsDisplay.style.cssText = `
                position: fixed;
                bottom: 20px;
                left: 20px;
                background: rgba(0, 0, 0, 0.8);
                color: #00ff88;
                padding: 0.5rem 1rem;
                border: 1px solid #00ff88;
                border-radius: 5px;
                font-family: 'Courier New', monospace;
                font-size: 0.8rem;
                z-index: 1000;
                min-width: 300px;
                animation: fadeInUp 0.5s ease-out;
            `;
            
            let metricIndex = 0;
            
            function updateMetric() {
                metricsDisplay.textContent = metrics[metricIndex];
                metricIndex = (metricIndex + 1) % metrics.length;
            }
            
            updateMetric();
            document.body.appendChild(metricsDisplay);
            
            setInterval(updateMetric, 3000);
        }

        // Network activity visualization
        function createNetworkActivity() {
            const activity = document.createElement('div');
            activity.style.cssText = `
                position: fixed;
                top: 50%;
                right: 20px;
                width: 200px;
                height: 100px;
                pointer-events: none;
                z-index: 5;
            `;
            
            document.body.appendChild(activity);
            
            setInterval(() => {
                const packet = document.createElement('div');
                packet.style.cssText = `
                    position: absolute;
                    width: 4px;
                    height: 4px;
                    background: #00ff88;
                    border-radius: 50%;
                    animation: networkFlow 2s linear forwards;
                `;
                
                const startX = Math.random() * 200;
                const startY = Math.random() * 100;
                packet.style.left = startX + 'px';
                packet.style.top = startY + 'px';
                
                activity.appendChild(packet);
                
                setTimeout(() => {
                    packet.remove();
                }, 2000);
            }, 300);
        }

        // Real-time log simulation
        function simulateLogs() {
            const logMessages = [
                '[INFO] Container started successfully',
                '[DEBUG] Health check passed',
                '[WARN] High memory usage detected',
                '[INFO] Scaling deployment to 3 replicas',
                '[SUCCESS] Pipeline completed in 2m 34s',
                '[INFO] SSL certificate renewed',
                '[DEBUG] Database connection established',
                '[INFO] Backup completed successfully'
            ];
            
            const logContainer = document.createElement('div');
            logContainer.style.cssText = `
                position: fixed;
                top: 80px;
                right: 20px;
                width: 350px;
                max-height: 200px;
                background: rgba(0, 0, 0, 0.9);
                border: 1px solid #333;
                border-radius: 8px;
                padding: 1rem;
                font-family: 'Courier New', monospace;
                font-size: 0.75rem;
                color: #00ff88;
                z-index: 1000;
                overflow-y: auto;
            `;
            
            const logTitle = document.createElement('div');
            logTitle.textContent = '📋 System Logs';
            logTitle.style.cssText = `
                color: #ffd700;
                margin-bottom: 0.5rem;
                font-weight: bold;
                text-align: center;
            `;
            
            logContainer.appendChild(logTitle);
            document.body.appendChild(logContainer);
            
            function addLogMessage() {
                const logLine = document.createElement('div');
                const timestamp = new Date().toLocaleTimeString();
                const message = logMessages[Math.floor(Math.random() * logMessages.length)];
                
                logLine.textContent = `${timestamp} ${message}`;
                logLine.style.cssText = `
                    margin: 0.2rem 0;
                    padding: 0.2rem;
                    animation: logFadeIn 0.5s ease-out;
                `;
                
                logContainer.appendChild(logLine);
                
                // Keep only last 8 messages
                const logLines = logContainer.querySelectorAll('div:not(:first-child)');
                if (logLines.length > 8) {
                    logLines[0].remove();
                }
                
                logContainer.scrollTop = logContainer.scrollHeight;
            }
            
            // Add initial logs
            setTimeout(() => {
                for (let i = 0; i < 3; i++) {
                    setTimeout(addLogMessage, i * 500);
                }
            }, 2000);
            
            // Continue adding logs
            setInterval(addLogMessage, 4000);
        }

        // Performance graphs
        function createPerformanceGraphs() {
            const graphContainer = document.createElement('div');
            graphContainer.style.cssText = `
                position: fixed;
                bottom: 20px;
                right: 20px;
                width: 250px;
                height: 120px;
                background: rgba(0, 0, 0, 0.8);
                border: 1px solid #00ff88;
                border-radius: 8px;
                padding: 1rem;
                z-index: 1000;
            `;
            
            const graphTitle = document.createElement('div');
            graphTitle.textContent = '📊 Performance';
            graphTitle.style.cssText = `
                color: #ffd700;
                font-weight: bold;
                text-align: center;
                margin-bottom: 0.5rem;
                font-size: 0.9rem;
            `;
            
            const canvas = document.createElement('canvas');
            canvas.width = 220;
            canvas.height = 60;
            canvas.style.cssText = `
                width: 100%;
                height: 60px;
            `;
            
            graphContainer.appendChild(graphTitle);
            graphContainer.appendChild(canvas);
            document.body.appendChild(graphContainer);
            
            const ctx = canvas.getContext('2d');
            let dataPoints = [];
            
            function drawGraph() {
                ctx.clearRect(0, 0, 220, 60);
                
                // Generate new data point
                const newPoint = Math.random() * 40 + 20;
                dataPoints.push(newPoint);
                
                if (dataPoints.length > 50) {
                    dataPoints.shift();
                }
                
                // Draw grid
                ctx.strokeStyle = '#333';
                ctx.lineWidth = 1;
                for (let i = 0; i < 5; i++) {
                    const y = (i * 60) / 4;
                    ctx.beginPath();
                    ctx.moveTo(0, y);
                    ctx.lineTo(220, y);
                    ctx.stroke();
                }
                
                // Draw line
                ctx.strokeStyle = '#00ff88';
                ctx.lineWidth = 2;
                ctx.beginPath();
                
                dataPoints.forEach((point, index) => {
                    const x = (index * 220) / (dataPoints.length - 1);
                    const y = 60 - (point * 60) / 100;
                    
                    if (index === 0) {
                        ctx.moveTo(x, y);
                    } else {
                        ctx.lineTo(x, y);
                    }
                });
                
                ctx.stroke();
                
                // Add glow effect
                ctx.shadowColor = '#00ff88';
                ctx.shadowBlur = 5;
                ctx.stroke();
                ctx.shadowBlur = 0;
            }
            
            setInterval(drawGraph, 500);
        }

        // Deployment progress simulation
        function simulateDeployment() {
            const deploymentSteps = [
                'Building Docker image...',
                'Pushing to registry...',
                'Updating Kubernetes manifests...',
                'Rolling out deployment...',
                'Health checks passing...',
                'Deployment complete! ✅'
            ];
            
            function runDeployment() {
                const deploymentBox = document.createElement('div');
                deploymentBox.style.cssText = `
                    position: fixed;
                    top: 50%;
                    left: 50%;
                    transform: translate(-50%, -50%);
                    background: rgba(0, 0, 0, 0.9);
                    border: 2px solid #ffd700;
                    border-radius: 10px;
                    padding: 2rem;
                    z-index: 10000;
                    min-width: 400px;
                    text-align: center;
                    font-family: 'Courier New', monospace;
                    color: #00ff88;
                `;
                
                const title = document.createElement('div');
                title.textContent = '🚀 Deployment in Progress';
                title.style.cssText = `
                    color: #ffd700;
                    font-size: 1.2rem;
                    font-weight: bold;
                    margin-bottom: 1rem;
                `;
                
                const progressBar = document.createElement('div');
                progressBar.style.cssText = `
                    width: 100%;
                    height: 20px;
                    background: #333;
                    border-radius: 10px;
                    overflow: hidden;
                    margin-bottom: 1rem;
                `;
                
                const progressFill = document.createElement('div');
                progressFill.style.cssText = `
                    height: 100%;
                    background: linear-gradient(90deg, #00ff88, #ffd700);
                    width: 0%;
                    border-radius: 10px;
                    transition: width 0.5s ease;
                `;
                
                const statusText = document.createElement('div');
                statusText.style.cssText = `
                    color: #88ccff;
                    margin-top: 1rem;
                `;
                
                progressBar.appendChild(progressFill);
                deploymentBox.appendChild(title);
                deploymentBox.appendChild(progressBar);
                deploymentBox.appendChild(statusText);
                document.body.appendChild(deploymentBox);
                
                let step = 0;
                const deployInterval = setInterval(() => {
                    if (step < deploymentSteps.length) {
                        statusText.textContent = deploymentSteps[step];
                        progressFill.style.width = ((step + 1) / deploymentSteps.length) * 100 + '%';
                        step++;
                    } else {
                        clearInterval(deployInterval);
                        setTimeout(() => {
                            deploymentBox.remove();
                        }, 2000);
                    }
                }, 1000);
            }
            
            // Trigger random deployments
            setTimeout(() => {
                runDeployment();
                setInterval(runDeployment, 45000);
            }, 10000);
        }

        // Initialize all effects
        document.addEventListener('DOMContentLoaded', () => {
            createStars();
            typeEffect();
            animateCommands();
            addToolInteractions();
            createCommandRain();
            simulateSystemMetrics();
            createNetworkActivity();
            simulateLogs();
            createPerformanceGraphs();
            simulateDeployment();
            
            // Add CSS for additional animations
            const style = document.createElement('style');
            style.textContent = `
                @keyframes slideInRight {
                    from {
                        opacity: 0;
                        transform: translateX(100px);
                    }
                    to {
                        opacity: 1;
                        transform: translateX(0);
                    }
                }
                
                @keyframes fall {
                    from {
                        transform: translateY(-50px);
                        opacity: 1;
                    }
                    to {
                        transform: translateY(100vh);
                        opacity: 0;
                    }
                }
                
                @keyframes networkFlow {
                    0% {
                        opacity: 1;
                        transform: scale(1);
                    }
                    50% {
                        opacity: 0.8;
                        transform: scale(1.2);
                    }
                    100% {
                        opacity: 0;
                        transform: scale(0.5) translate(50px, -20px);
                    }
                }
                
                @keyframes logFadeIn {
                    from {
                        opacity: 0;
                        transform: translateX(-10px);
                    }
                    to {
                        opacity: 1;
                        transform: translateX(0);
                    }
                }
                
                @keyframes fadeInUp {
                    from {
                        opacity: 0;
                        transform: translateY(20px);
                    }
                    to {
                        opacity: 1;
                        transform: translateY(0);
                    }
                }
            `;
            document.head.appendChild(style);
        });

        // Terminal glitch effect
        setInterval(() => {
            const terminal = document.querySelector('.terminal-box');
            terminal.style.filter = 'hue-rotate(180deg) contrast(1.2)';
            setTimeout(() => {
                terminal.style.filter = 'none';
            }, 150);
        }, 15000);
    </script>
</body>
</html>
