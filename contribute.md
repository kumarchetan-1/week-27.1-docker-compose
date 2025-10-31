

## Manual Installation 
  - install nodejs locally ()
  - clone the repo
  - install dependancies (npm install)
  - Start the db locally
     - docker run -e POSTGRES_PASSWORD=123123 -p 5432:5432 -b  postgres
     - got to neon.tech and get yourself a db url
  - Change your DB url in .env
  - npx prisma migrate
  - npx prisma generate
  - npm run build
  - npm run start


## Docker installation
- Docker install
- Start a new network `Docker network create user_project`
- Start postgres 
   - docker run -e POSTGRES_PASSWORD = 123123 -d -p 5432:5432 postgres
- Build the image - `docker build -t user-project`
- Start the image - `docker run -p 3000:3000 user-project`



## Docker compose installation steps
  - Install docker, docker-compose
  - Run `docker-compose up`