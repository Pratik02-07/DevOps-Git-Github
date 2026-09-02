#Jenkins — Complete Learning Plan

1. Jenkins Fundamentals
2. Jenkins Architecture
3. Controller & Agent
4. Jobs
5. Plugins
6. Credentials
7. Freestyle Job
8. Jenkins Pipeline
9. Jenkinsfile
10. Declarative Pipeline
11. Stages & Steps
12. Environment Variables
13. Parameters
14. Triggers
15. Webhooks
16. GitHub Integration
17. Docker + Jenkins
18. Docker Registry
19. Artifacts
20. Deployment
21. Rollback
22. Notifications
23. Jenkins Security Basics
24. Complete CI/CD Project

##JENKINS CI/CD PROJECT

Developer
    │
    │ git push
    ▼
  GitHub
    │
    │ Webhook
    ▼
 Jenkins
    │
    ├── Checkout
    │
    ├── Build
    │
    ├── Test
    │
    ├── Docker Build
    │
    ├── Docker Push
    │
    └── Deploy
            │
            ▼
       Docker Container
            │
            ▼
        FastAPI App
