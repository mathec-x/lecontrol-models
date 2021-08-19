## .env
JWT_SECRET="token"

DATABASE_URL="postgresql://user:password:port/database?schema=public"

## Scripts

 - "db:generate": "npx prisma generate"

 - "db:studio": "npx prisma studio"
 
 - "db:introspect": "npx prisma introspect"
 
 - "db:migrate": "npx prisma migrate dev"
 
 - "db:deploy": "npx prisma migrate deploy"

 ## postinstall

 will execute generate