CREATE OR REPLACE VIEW sabermetrics_pitching AS

SELECT
    pitching.*,

    -- IP - Innings Pitched
    round((pitching.IPouts / 3), 3) as IP,

    -- K/9 - Strikeouts per 9 innings (http://www.fangraphs.com/library/pitching/rate-stats/)
    round((pitching.SO * 9) / (pitching.IPouts / 3), 3) as k_9,

    -- BB/9 - Walks per 9 innings (http://www.fangraphs.com/library/pitching/rate-stats/)
    round((pitching.BB * 9) / (pitching.IPouts / 3), 3) as BB_9,

    -- K/BB - Strikeout to Walk Ratio
    round((pitching.SO / pitching.BB), 3) as K_BB,

    -- K% - Strikeout Percentage (http://www.fangraphs.com/library/pitching/rate-stats/)
    round((pitching.SO / pitching.BFP), 3) as Kpct,

    -- BB% - Walk Percentage (http://www.fangraphs.com/library/pitching/rate-stats/)
    round((pitching.BB / pitching.BFP), 3) as BBpct,

    -- HR/9 - Home Runs per 9 innings
    round((pitching.HR * 9) / (pitching.IPouts / 3), 3) as HR_9,

    -- AVG - Batting Average Against
    round((pitching.H / (pitching.IPouts - pitching.BB - pitching.HBP - pitching.SH - pitching.SF)), 3) as AVG,

    -- WHIP - Walks + Hits per Inning Pitch (http://www.fangraphs.com/library/pitching/whip/)
    round(((pitching.BB + pitching.H) / (pitching.IPouts / 3)), 3) as WHIP,

    -- BABIP - Batting Average on Balls in Play (http://www.fangraphs.com/library/pitching/babip/)
    round(((pitching.H - pitching.HR) / (pitching.BFP - pitching.SO - pitching.BB - pitching.HR)), 3) as BABIP
    
FROM pitching
ORDER BY pitching.playerID ASC, pitching.yearID ASC

