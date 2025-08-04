# HEALTH REPORT ANALYZER

## Overview
A cross-platform health monitoring system that connects to external medical devices (e.g., MCU-based sensors) to collect data such as heart rate and blood pressure. It uses AI to analyze incoming data and scanned reports, then delivers insights, diagnostics, and personalized health advice to users via web and mobile applications.

## Technologies

### Deployment Environment
- Docker (for containerization and deployment)

###  Frontend
#### Web
- React

#### Mobile App
- Flutter

### Backend
- Java (Spring Boot)
- Python (for AI processing or health analytics)

### Database
- PostgreSQL

## Security
- JWT authentication and authorization
- HTTPS enforced for all API communication
- Role-based access control (User, Admin, Doctor)
- Data encryption at rest and in transit

## API Endpoints
###  Auth
| No. | Method   | Endpoint         | Description            |
|-----|----------|------------------|------------------------|
| 1   | POST     | /auth/signup     | Create new account     |
| 2   | POST     | /auth/signin     | Login to account       |
| 3   | POST     | /auth/refresh    | Refresh JWT token      |
| 4   | POST     | /auth/logout     | Revoke JWT token       |

###  User
| No. | Method   | Endpoint     | Description              |
|-----|----------|--------------|--------------------------|
| 1   | GET      | /user/me     | Get current user info    |
| 2   | PUT      | /user/me     | Update user info         |
| 3   | DELETE   | /user/me     | Delete user account      |

###  Report
| No. | Method   | Endpoint                      | Description                               |
|-----|----------|-------------------------------|-------------------------------------------|
| 1   | GET      | /report/{id}                  | Get report by ID                          |
| 2   | GET      | /report                       | Get list of reports (with filters)        |
| 3   | POST     | /report                       | Submit new report                         |
| 4   | DELETE   | /report/{id}                  | Delete report by ID                       |
| 5   | GET      | /report/{id}/analysis         | Get AI analysis result of a report        |
| 6   | POST     | /report/{id}/comment          | Add user/doctor comment to a report       |

###  Device
| No. | Method   | Endpoint         | Description                              |
|-----|----------|------------------|------------------------------------------|
| 1   | POST     | /device/connect  | Register or connect a health device      |
| 2   | POST     | /device/data     | Send device data (e.g. heartbeat)        |
| 3   | GET      | /device/status   | Get device connection status             |

###  Advice / AI
| No. | Method   | Endpoint              | Description                               |
|-----|----------|-----------------------|-------------------------------------------|
| 1   | GET      | /advice/{reportId}    | Get AI-generated health advice            |
| 2   | POST     | /advice/custom        | Submit manual input for AI-based advice   |


