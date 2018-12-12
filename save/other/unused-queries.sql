-- Vyber auto, které zajelo nejlepší čas v kvalifikaci na okruhu Spa.
SELECT r.full_name, r."number", MIN(res.best_qualifying_laptime)
FROM racecar r
JOIN driver_group dg ON dg.racecar_racecar_id = r.racecar_id
JOIN participation p ON p.driver_group_driver_group_id = dg.driver_group_id
JOIN results res ON res.participation_participation_id = p.participation_id
JOIN qualifying q ON q.session_id = p.qualifying_session_id
JOIN "Session" s USING (session_id)
JOIN circuit c ON c.circuit_id = s.circuit_circuit_id
WHERE c.name = 'Spa'
GROUP BY r.full_name, r."number"

-- Vyber z jezdců vždy nejlepšího z dané země.

-- Vyber 5 nejlepších výsledků ze závodů jezdce Nicki Thiim a jeho spolujezdců.