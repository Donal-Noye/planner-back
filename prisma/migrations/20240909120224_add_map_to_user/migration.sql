/*
  Warnings:

  - You are about to drop the column `totalSeconds` on the `pomodoro_round` table. All the data in the column will be lost.
  - You are about to drop the column `breakInterval` on the `user` table. All the data in the column will be lost.
  - You are about to drop the column `intervalsCount` on the `user` table. All the data in the column will be lost.
  - You are about to drop the column `workInterval` on the `user` table. All the data in the column will be lost.
  - Added the required column `total_seconds` to the `pomodoro_round` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE "pomodoro_round" DROP COLUMN "totalSeconds",
ADD COLUMN     "total_seconds" INTEGER NOT NULL;

-- AlterTable
ALTER TABLE "user" DROP COLUMN "breakInterval",
DROP COLUMN "intervalsCount",
DROP COLUMN "workInterval",
ADD COLUMN     "break_interval" INTEGER DEFAULT 10,
ADD COLUMN     "intervals_count" INTEGER DEFAULT 7,
ADD COLUMN     "work_interval" INTEGER DEFAULT 50;
