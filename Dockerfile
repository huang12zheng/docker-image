FROM hzgood/prisma-base

COPY prisma .
RUN npm run gen

ENTRYPOINT ["npm","run dev"]