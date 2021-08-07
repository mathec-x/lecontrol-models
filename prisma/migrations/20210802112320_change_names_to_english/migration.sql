/*
  Warnings:

  - You are about to drop the column `email` on the `Laborer` table. All the data in the column will be lost.
  - You are about to drop the column `nome` on the `Laborer` table. All the data in the column will be lost.
  - You are about to drop the column `situacao` on the `Laborer` table. All the data in the column will be lost.
  - You are about to drop the column `telefone` on the `Laborer` table. All the data in the column will be lost.
  - You are about to drop the column `descricao` on the `LaborerProfile` table. All the data in the column will be lost.
  - You are about to drop the column `situacao` on the `LaborerProfile` table. All the data in the column will be lost.
  - Added the required column `mail` to the `Laborer` table without a default value. This is not possible if the table is not empty.
  - Added the required column `name` to the `Laborer` table without a default value. This is not possible if the table is not empty.
  - Added the required column `phone` to the `Laborer` table without a default value. This is not possible if the table is not empty.
  - Added the required column `status` to the `Laborer` table without a default value. This is not possible if the table is not empty.
  - Added the required column `description` to the `LaborerProfile` table without a default value. This is not possible if the table is not empty.
  - Added the required column `status` to the `LaborerProfile` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE "Laborer" DROP COLUMN "email",
DROP COLUMN "nome",
DROP COLUMN "situacao",
DROP COLUMN "telefone",
ADD COLUMN     "mail" TEXT NOT NULL,
ADD COLUMN     "name" TEXT NOT NULL,
ADD COLUMN     "phone" TEXT NOT NULL,
ADD COLUMN     "status" BOOLEAN NOT NULL;

-- AlterTable
ALTER TABLE "LaborerProfile" DROP COLUMN "descricao",
DROP COLUMN "situacao",
ADD COLUMN     "description" TEXT NOT NULL,
ADD COLUMN     "status" BOOLEAN NOT NULL;
