
npm init -y
npm install typescript
npx tsc --init
npm install prisma express @types/express
# create user model, change rootdir, outdir in tsconfig.json 
# set env variable, run in detached mode(background)
docker run -e POSTGRES_PASSWORD=123123 -p 5432:5432 -d  postgres
