# complexweb

A sample project for learning Docker & Docker Compose with mutiple services based on this [course](https://www.udemy.com/docker-and-kubernetes-the-complete-guide/) on Udemy

## Architecture
![Project Architecture](https://www.lucidchart.com/publicSegments/view/3373a7af-060f-42d5-a9e9-50d763bf7d6f/image.png)
[Diagram](https://www.lucidchart.com/invitations/accept/7938cd15-5ed8-4436-95ce-589702b9fafd)

## Docker Compose Configuration
docker-compose.yml

## Nginx Configuration
default.conf

## Getting Started (Dev)
- docker-compose up --build
- Nagigate the browser to: http://localhost:3050
- Run Data services inside the containers: PostgreSQL and Redis

## Getting Started (CI & Prod)
- .travis.yml
- Run Data services on AWS: 
  - PostgreSQL: AWS RDS
  - Redis: AWS Elastic Cache
