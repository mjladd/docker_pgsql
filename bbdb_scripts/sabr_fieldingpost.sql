CREATE OR REPLACE VIEW sabermetrics_fielding AS

SELECT
    fielding.*

    -- PCT - Fielding Percentage
    -- round(avg((fielding.PO + fielding.A) / (fielding.PO + fielding.A + fielding.E)), 3) as PCT

FROM fieldingpost AS fielding
ORDER BY fielding.playerID ASC, fielding.yearID ASC

