-- CreateTable
CREATE TABLE "user" (
    "id" SERIAL NOT NULL,
    "name" TEXT NOT NULL,
    "username" TEXT NOT NULL,
    "latitude" VARCHAR(255),
    "longitude" VARCHAR(255),
    "notification" BOOLEAN NOT NULL DEFAULT false,
    "fasting" BOOLEAN NOT NULL DEFAULT false,
    "remindertime" INTEGER NOT NULL,
    "logo" INTEGER,

    CONSTRAINT "user_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "time" (
    "id" SERIAL NOT NULL,
    "user_id" INTEGER NOT NULL,

    CONSTRAINT "time_pkey" PRIMARY KEY ("id")
);

-- AddForeignKey
ALTER TABLE "time" ADD CONSTRAINT "time_user_id_fkey" FOREIGN KEY ("user_id") REFERENCES "user"("id") ON DELETE RESTRICT ON UPDATE CASCADE;
