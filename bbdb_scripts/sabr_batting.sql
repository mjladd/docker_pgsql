CREATE OR REPLACE VIEW sabermetrics_batting AS

SELECT
    batting.*,

    -- PA - Plate Appearances
    (batting.AB + batting.BB + batting.HBP + batting.SF + batting.SH) as PA,

    -- BB% - Walk Percentage (http://www.fangraphs.com/library/offense/rate-stats/)
    round((batting.BB / (batting.AB + batting.BB + batting.HBP + batting.SF + batting.SH)), 3) as BBpct,

    -- K% - Strikeout Percentage (http://www.fangraphs.com/library/offense/rate-stats/)
    round((batting.SO / (batting.AB + batting.BB + batting.HBP + batting.SF + batting.SH)), 3) as Kpct,

    -- ISO - Isolated Power (http://www.fangraphs.com/library/offense/iso/)
    round((((batting.2B) + (2 * batting.3B) + ( 3 * batting.HR)) / batting.AB), 3) as ISO,

    -- BABIP - Batting Average on Balls in Play (http://www.fangraphs.com/library/offense/babip/)
    round(((batting.H - batting.HR) / ((batting.AB + batting.BB + batting.HBP + batting.SF + batting.SH) - batting.SO - batting.BB - batting.HR)), 3) as BABIP,

    -- AVG - Batting Average
    round((batting.H / batting.AB), 3) as AVG,

    -- OBP - On Base Percentage - (http://www.fangraphs.com/library/offense/obp/)
    round(((batting.H + batting.BB + batting.HBP) / (batting.AB + batting.BB + batting.HBP + batting.SF)), 3) as OBP,

    -- SLG - Slugging Percentage
    round(((batting.H + batting.2B + 2 * batting.3B + 3 * batting.HR) / batting.AB), 3) as SLG,

    -- OPS - On Base + Slugging (http://www.fangraphs.com/library/offense/ops/)
    round(((batting.H + batting.BB + batting.HBP) / (batting.AB + batting.BB + batting.HBP + batting.SF)) + (((batting.H - batting.2B - batting.3B - batting.HR) + (2 * batting.2B) + (3 * batting.3B) + (4 * batting.HR)) / batting.AB), 3) as OPS

FROM batting
ORDER BY batting.playerID ASC, batting.yearID ASC

