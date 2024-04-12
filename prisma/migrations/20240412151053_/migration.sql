/*
  Warnings:

  - You are about to drop the column `Humedad` on the `datos` table. All the data in the column will be lost.
  - You are about to drop the column `Latittud` on the `datos` table. All the data in the column will be lost.
  - You are about to drop the column `Logitud` on the `datos` table. All the data in the column will be lost.
  - You are about to drop the column `Temperatura` on the `datos` table. All the data in the column will be lost.
  - You are about to drop the `sensor` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `usuarios` table. If the table is not empty, all the data it contains will be lost.
  - Added the required column `humedad` to the `datos` table without a default value. This is not possible if the table is not empty.
  - Added the required column `latitud` to the `datos` table without a default value. This is not possible if the table is not empty.
  - Added the required column `longitud` to the `datos` table without a default value. This is not possible if the table is not empty.
  - Added the required column `temperatura` to the `datos` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE "datos" DROP COLUMN "Humedad",
DROP COLUMN "Latittud",
DROP COLUMN "Logitud",
DROP COLUMN "Temperatura",
ADD COLUMN     "humedad" DOUBLE PRECISION NOT NULL,
ADD COLUMN     "latitud" TEXT NOT NULL,
ADD COLUMN     "longitud" TEXT NOT NULL,
ADD COLUMN     "temperatura" DOUBLE PRECISION NOT NULL;

-- DropTable
DROP TABLE "sensor";

-- DropTable
DROP TABLE "usuarios";
