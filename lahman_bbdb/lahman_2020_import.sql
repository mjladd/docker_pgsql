BEGIN TRANSACTION;

COPY AllStarFull FROM '/mnt/lahman_bbdb/csv/AllstarFull.csv' WITH CSV HEADER DELIMITER AS ',';
COPY Appearances FROM '/mnt/lahman_bbdb/csv/Appearances.csv' WITH CSV HEADER DELIMITER AS ',';
COPY AwardsManagers FROM '/mnt/lahman_bbdb/csv/AwardsManagers.csv' WITH CSV HEADER DELIMITER AS ',';
COPY AwardsPlayers FROM '/mnt/lahman_bbdb/csv/AwardsPlayers.csv' WITH CSV HEADER DELIMITER AS ',';
COPY AwardsShareManagers FROM '/mnt/lahman_bbdb/csv/AwardsShareManagers.csv' WITH CSV HEADER DELIMITER AS ',';
COPY AwardsSharePlayers FROM '/mnt/lahman_bbdb/csv/AwardsSharePlayers.csv' WITH CSV HEADER DELIMITER AS ',';
COPY Batting FROM '/mnt/lahman_bbdb/csv/Batting.csv' WITH CSV HEADER DELIMITER AS ',';
COPY BattingPost FROM '/mnt/lahman_bbdb/csv/BattingPost.csv' WITH CSV HEADER DELIMITER AS ',';
COPY CollegePlaying FROM '/mnt/lahman_bbdb/csv/CollegePlaying.csv' WITH CSV HEADER DELIMITER AS ',';
COPY Fielding FROM '/mnt/lahman_bbdb/csv/Fielding.csv' WITH CSV HEADER DELIMITER AS ',';
COPY FieldingOF FROM '/mnt/lahman_bbdb/csv/FieldingOF.csv' WITH CSV HEADER DELIMITER AS ',';
COPY FieldingPost FROM '/mnt/lahman_bbdb/csv/FieldingPost.csv' WITH CSV HEADER DELIMITER AS ',';
COPY FieldingOFsplit FROM '/mnt/lahman_bbdb/csv/FieldingOFsplit.csv' WITH CSV HEADER DELIMITER AS ',';
COPY HallOfFame FROM '/mnt/lahman_bbdb/csv/HallOfFame.csv' WITH CSV HEADER DELIMITER AS ',';
COPY HomeGames FROM '/mnt/lahman_bbdb/csv/HomeGames.csv' WITH CSV HEADER DELIMITER AS ',';
COPY Managers FROM '/mnt/lahman_bbdb/csv/Managers.csv' WITH CSV HEADER DELIMITER AS ',';
COPY ManagersHalf FROM '/mnt/lahman_bbdb/csv/ManagersHalf.csv' WITH CSV HEADER DELIMITER AS ',';
COPY Parks FROM '/mnt/lahman_bbdb/csv/Parks.csv' WITH CSV HEADER DELIMITER AS ',';
COPY People FROM '/mnt/lahman_bbdb/csv/People.csv' WITH CSV HEADER DELIMITER AS ',';
COPY Pitching FROM '/mnt/lahman_bbdb/csv/Pitching.csv' WITH CSV HEADER DELIMITER AS ',';
COPY PitchingPost FROM '/mnt/lahman_bbdb/csv/PitchingPost.csv' WITH CSV HEADER DELIMITER AS ',';
COPY Salaries FROM '/mnt/lahman_bbdb/csv/Salaries.csv' WITH CSV HEADER DELIMITER AS ',';
COPY Schools FROM '/mnt/lahman_bbdb/csv/Schools.csv' WITH CSV HEADER DELIMITER AS ',';
COPY SeriesPost FROM '/mnt/lahman_bbdb/csv/SeriesPost.csv' WITH CSV HEADER DELIMITER AS ',';
COPY Teams FROM '/mnt/lahman_bbdb/csv/Teams.csv' WITH CSV HEADER DELIMITER AS ',';
COPY TeamsFranchises FROM './mnt/lahman_bbdb/csv/TeamsFranchises.csv' WITH CSV HEADER DELIMITER AS ',';
COPY TeamsHalf FROM './mnt/lahman_bbdb/csv/TeamsHalf.csv' WITH CSV HEADER DELIMITER AS ',';

END TRANSACTION;
