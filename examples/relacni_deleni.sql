-- id_zakazniku, kteri si rezervovali KAZDOU modrou lod

-- REZERVACE[zid, lodid]÷LOD(BARVA='modrá')[lodid]

SELECT *
FROM zakaznik z
WHERE NOT EXISTS (
    SELECT *
    FROM lod l
    WHERE barva='modrá' AND NOT EXISTS (
        SELECT *
        FROM rezervace r
        WHERE r.zid = z.zid
        AND l.lodid = r.lodid
    )
)

-- zakaznika, pro ktereho neexistuje modra lod, kterou si nerezervoval