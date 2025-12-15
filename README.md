# Apex Connect – Customer Relationship Management (CRM) System

Apex Connect is a role-based Customer Relationship Management (CRM) system built using *Java* and *Spring Boot*.  
The application is designed to manage the complete client lifecycle, enforce role-based access control, handle business workflows, and generate documents — similar to real-world enterprise CRM systems.

---

## 🚀 Why This Project?

This project was built to simulate a *production-style backend application* by handling:

- Authentication and authorization
- Business rules based on user roles
- Secure data access and workflows
- Bulk data import/export
- Document generation
- Event-based notifications

It demonstrates how backend systems are structured and managed in real-world software products.

---

## ✨ Key Features

- Role-based authentication and authorization using Spring Security  
  (Admin, Manager, Employee)

- User and client management with strict access control

- Complete client lifecycle management  
  (Leads → Customers)

- Contract creation and approval workflow based on contract value and user role

- CSV import/export for bulk client data processing

- PDF generation for contracts and reports

- Event scheduling with daily notification system

- REST API for client-related operations

---

## 🛠 Tech Stack

### Backend
- Java 8
- Spring Boot
- Spring Data JPA
- Hibernate
- Spring Security

### Frontend
- Thymeleaf
- HTML
- CSS
- JavaScript

### Database
- MySQL

### Libraries & Tools
- Lombok
- OpenCSV
- iText
- JUnit
- Maven

---

## 🌐 Live Demo

🔗 https://apex-connect-11.onrender.com/

> ⚠ Note: Initial load may take a few seconds as the application is hosted on a free-tier service.

---

## 🔗 REST API

Apex Connect exposes a REST API for client-related operations, enabling integration with external systems or frontend applications.

---

## ⚙ Getting Started (Local Setup)

### Prerequisites
- Java 8
- Maven
- MySQL

### Steps

1. Clone the repository:
   ```bash
   git clone https://github.com/devpateriya/Apex_Connect.git
