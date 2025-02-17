**Important!:** **API Gateway/Service Mesh** is the chosen as the recommended pattern despite Bearer Token Pattern chosen as the recommended pattern in this document.

The appropriate design pattern for the communication between the **AuthService** and the **Record Management App** depends on the overall architecture and the desired characteristics, such as scalability, security, and decoupling. Here are two common and effective design patterns you can consider:

---

### **1. Token-Based Authentication (Stateless Communication)**
**Recommended Pattern**: **Bearer Token Pattern**  
**Why**: Ensures scalability and simplifies the authentication flow.

#### How It Works:
- The **Record Management App** includes a middleware or interceptor in the backend that verifies the JWT (JSON Web Token) provided by the client.
- The **AuthService** generates and signs JWTs during login and provides them to the client.
- For each request, the client includes the token in the `Authorization` header.
- The backend validates the token using the secret/public key without direct communication with the **AuthService** for every request, making it stateless.

**Advantages**:
- Scalability: No need for persistent sessions or frequent communication with the **AuthService**.
- Performance: Validation is fast, as it doesn’t require database calls or network round trips to the **AuthService**.

**Disadvantages**:
- Limited revocation: Token revocation requires additional mechanisms, such as a revocation list or shorter token lifetimes.

---

### **2. Proxy or Middleware Pattern (Centralised Validation)**
**Recommended Pattern**: **API Gateway/Service Mesh**  
**Why**: Centralises authentication and authorisation logic for better control.

#### How It Works:
- Requests first pass through an API Gateway or service mesh that integrates with the **AuthService**.
- The API Gateway handles token validation, rate limiting, and security checks before forwarding requests to the **Record Management App**.
- The **AuthService** is called for token validation or permissions checking only when necessary.

**Advantages**:
- Centralised control: Auth logic is consolidated in the gateway or middleware.
- Simplified services: The **Record Management App** focuses on its core logic, delegating auth concerns to the gateway.
- Support for more complex auth scenarios: Such as role-based access control (RBAC) or policy evaluation.

**Disadvantages**:
- Added latency: Extra hop for validation can impact performance.
- Gateway as a single point of failure (mitigated with redundancy).

---

### Recommendation for DanaCore ERP:
For the **Record Management App**, using the **Bearer Token Pattern** with JWT is generally more suitable, especially during the early stages of development. It provides scalability and efficiency without requiring the complexity of an API Gateway. 

As the system grows or integrates with more services, consider adopting the **API Gateway/Service Mesh** approach for enhanced centralised control and advanced features like rate limiting, multi-tenancy, and auditing.

**Note:** This document is a part of the DanaCore ERP Design Decision Documents. The documents in this series outline the design decisions made during the development of DanaCore ERP. These decisions encompass architecture, infrastructure, and other significant aspects of the system.
