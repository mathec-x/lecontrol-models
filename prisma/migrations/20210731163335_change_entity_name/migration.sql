/*
  Warnings:

  - You are about to drop the `User` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `UserProfile` table. If the table is not empty, all the data it contains will be lost.

*/
-- DropForeignKey
ALTER TABLE "User" DROP CONSTRAINT "User_userProfileId_fkey";

-- DropTable
DROP TABLE "User";

-- DropTable
DROP TABLE "UserProfile";

-- CreateTable
CREATE TABLE "Laborer" (
    "id" SERIAL NOT NULL,
    "uuid" TEXT NOT NULL,
    "nome" TEXT NOT NULL,
    "telefone" TEXT NOT NULL,
    "email" TEXT NOT NULL,
    "situacao" BOOLEAN NOT NULL,
    "updatedAt" TIMESTAMP(3) NOT NULL,
    "createdAt" TIMESTAMP(3) NOT NULL,
    "laborerProfileId" INTEGER NOT NULL,

    PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "LaborerProfile" (
    "id" SERIAL NOT NULL,
    "uuid" TEXT NOT NULL,
    "descricao" TEXT NOT NULL,
    "situacao" BOOLEAN NOT NULL,
    "updatedAt" TIMESTAMP(3) NOT NULL,
    "createdAt" TIMESTAMP(3) NOT NULL,

    PRIMARY KEY ("id")
);

-- CreateIndex
CREATE UNIQUE INDEX "Laborer.uuid_unique" ON "Laborer"("uuid");

-- CreateIndex
CREATE UNIQUE INDEX "LaborerProfile.uuid_unique" ON "LaborerProfile"("uuid");

-- AddForeignKey
ALTER TABLE "Laborer" ADD FOREIGN KEY ("laborerProfileId") REFERENCES "LaborerProfile"("id") ON DELETE CASCADE ON UPDATE CASCADE;
