-- CreateTable
CREATE TABLE "datos" (
    "id" SERIAL NOT NULL,
    "nombrecompleto" TEXT NOT NULL,
    "correouniversidad" TEXT NOT NULL,
    "carne" TEXT NOT NULL,
    "Latittud" TEXT NOT NULL,
    "Logitud" TEXT NOT NULL,
    "Humedad" DOUBLE PRECISION NOT NULL,
    "Temperatura" DOUBLE PRECISION NOT NULL,

    CONSTRAINT "datos_pkey" PRIMARY KEY ("id")
);
