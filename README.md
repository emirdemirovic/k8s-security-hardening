# K8S Security Hardening

This project is a security-hardened web application deployed on Kubernetes. It demonstrates best practices in security and configuration management, including a focus on network policies, RBAC, and secure container configurations.

## Features

- **Security Context Configurations**: The application enforces strict security contexts to ensure containers are running with minimal privileges.
- **Network Policies**: Network policies are defined to restrict ingress and egress traffic.
- **RBAC Policies**: Role-based access control (RBAC) is implemented for granular permissions.
- **Pod Security Admission (PSA)**: Utilizes Kubernetes Pod Security Admission to enforce predefined security profiles.
- **CI/CD Pipeline**: Automates build, security scanning, and deployment.