--Import 2020 baseball database
USE bbdb;

DROP TABLE if EXISTS AllstarFull;
CREATE TABLE ALLstarFULL (
    playerID       --Player ID code
    YearID         --Year
    gameNum        --Game number (zero if only one All-Star game played that season)
    gameID         --Retrosheet ID for the game idea
    teamID         --Team
    lgID           --League
    GP             --1 if Played in the game
    startingPos    --If player was game starter, the position played
);

DROP TABLE if EXISTS Appearances;
CREATE TABLE Appearances ();

DROP TABLE if EXISTS AwardsManagers;
CREATE TABLE AwardsManagers ();

DROP TABLE if EXISTS AwardsPlayers;
CREATE TABLE AwardsPlayers ();

DROP TABLE if EXISTS AwardsShareManagers;
CREATE TABLE AwardsShareManagers ();

DROP TABLE if EXISTS AwardsSharePlayers;
CREATE TABLE AwardsSharePlayers ();

DROP TABLE if EXISTS Batting;
CREATE TABLE Batting ();

DROP TABLE if EXISTS BattingPost;
CREATE TABLE BattingPost ();

DROP TABLE if EXISTS CollegePlaying;
CREATE TABLE CollegePlaying ();

DROP TABLE if EXISTS Fielding;
CREATE TABLE Fielding ();

DROP TABLE if EXISTS FieldingOF;
CREATE TABLE FieldingOF ();

DROP TABLE if EXISTS FieldingOFsplit;
CREATE TABLE FieldingOFsplit ();

DROP TABLE if EXISTS FieldingPost;
CREATE TABLE FieldingPost ();

DROP TABLE if EXISTS HallOfFame;
CREATE TABLE HallOfFame();

DROP TABLE if EXISTS Managers;
CREATE TABLE Managers();

DROP TABLE if EXISTS ManagersHalf;
CREATE TABLE ManagersHalf();

DROP TABLE if EXISTS Parks;
CREATE TABLE Parks ();

DROP TABLE if EXISTS People;
CREATE TABLE People ();

DROP TABLE if EXISTS Pitching;
CREATE TABLE Pitching ();

DROP TABLE if EXISTS PitchingPost;
CREATE TABLE PitchingPost ();

DROP TABLE if EXISTS Salaries;
CREATE TABLE Salaries ();

DROP TABLE if EXISTS Schools;
CREATE TABLE Schools ();

DROP TABLE if EXISTS SeriesPost;
CREATE TABLE SeriesPost ();

DROP TABLE if EXISTS Teams;
CREATE TABLE Teams ();

DROP TABLE if EXISTS TeamsFranchises;
CREATE TABLE TeamsFranchises ();

DROP TABLE if EXISTS TeamsHalf;
CREATE TABLE TeamsHalf ();
