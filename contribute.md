

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
- Create a network - `docker network create user-project`
- Start postgres 
   - docker run --network=user-project --name=postgres -e POSTGRES_PASSWORD=123123 -d -p 5433:5433 postgres
- Build the image - `docker build --network=host -t user-project .`
- Start the image - `docker run -e DATABASE_URL=postgresql://postgres:123123@postgres:5432/postgres --network=user-project -p 3000:3000 user-project` 

## Docker compose installation steps
  - Install docker, docker-compose
  - Run `docker-compose up`