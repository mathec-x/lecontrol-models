/*
  Warnings:

  - A unique constraint covering the columns `[description]` on the table `LaborerProfile` will be added. If there are existing duplicate values, this will fail.

*/
-- AlterTable
ALTER TABLE "Laborer" ALTER COLUMN "updatedAt" SET DEFAULT CURRENT_TIMESTAMP,
ALTER COLUMN "createdAt" SET DEFAULT CURRENT_TIMESTAMP,
ALTER COLUMN "status" SET DEFAULT true;

-- AlterTable
ALTER TABLE "LaborerProfile" ALTER COLUMN "updatedAt" SET DEFAULT CURRENT_TIMESTAMP,
ALTER COLUMN "createdAt" SET DEFAULT CURRENT_TIMESTAMP,
ALTER COLUMN "status" SET DEFAULT true;

-- CreateIndex
CREATE UNIQUE INDEX "LaborerProfile.description_unique" ON "LaborerProfile"("description");
