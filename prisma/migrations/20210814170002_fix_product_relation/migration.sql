/*
  Warnings:

  - You are about to drop the column `productsValidationsId` on the `Product` table. All the data in the column will be lost.

*/
-- DropForeignKey
ALTER TABLE "Product" DROP CONSTRAINT "Product_productsValidationsId_fkey";

-- AlterTable
ALTER TABLE "Product" DROP COLUMN "productsValidationsId";

-- AlterTable
ALTER TABLE "ProductValidation" ADD COLUMN     "productId" INTEGER;

-- AddForeignKey
ALTER TABLE "ProductValidation" ADD FOREIGN KEY ("productId") REFERENCES "Product"("id") ON DELETE SET NULL ON UPDATE CASCADE;
