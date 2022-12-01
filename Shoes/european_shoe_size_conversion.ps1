
$european_conversion = (
    (34 ,215 ,2 ,3 ,4),
    (34.5 ,215 ,2.5 ,3.5 ,4.5),
    (35 ,220 ,3 ,4 ,5),
    (35.5 ,225 ,3.5 ,4.5 ,5.5),
    (36 ,225 ,4 ,5 ,6),
    (36.5 ,230 ,4 ,5 ,6),
    (37 ,235 ,4.5 ,5.5 ,6.5),
    (37.5 ,235 ,5 ,6 ,7),
    (38 ,240 ,5.5 ,6.5 ,7.5),
    (38.5 ,245 ,5.5 ,6.5 ,7.5),
    (39 ,245 ,6 ,7 ,8),
    (39.5 ,250 ,6.5 ,7.5 ,8.5),
    (40 ,255 ,7 ,8 ,9),
    (40.5 ,255 ,7.5 ,8.5 ,9.5),
    (41 ,260 ,7.5 ,8.5 ,9.5),
    (41.5 ,265 ,8 ,9 ,10),
    (42 ,265 ,8.5 ,9.5 ,10.5),
    (42.5 ,270 ,9 ,10 ,11),
    (43 ,275 ,9.5 ,10.5 ,11.5),
    (43.5 ,275 ,9.5 ,10.5 ,11.5),
    (44 ,280 ,10 ,11 ,12),
    (44.5 ,285 ,10.5 ,11.5 ,12.5),
    (45 ,285 ,11 ,12 ,13),
    (45.5 ,290 ,11.5 ,12.5 ,13.5),
    (46 ,295 ,11.5 ,12.5 ,13.5),
    (46.5 ,295 ,12 ,13 ,14),
    (47 ,300 ,12.5 ,13.5 ,14.5),
    (47.5 ,305 ,13 ,14 ,15),
    (48 ,305 ,13 ,14 ,15),
    (48.5 ,310 ,13.5 ,14.5 ,15.5),
    (49 ,315 ,14 ,15 ,16),
    (49.5 ,315 ,14.5 ,15.5 ,16.5),
    (50 ,320 ,15 ,16 ,17)
)

$european_conversion = $european_conversion | ForEach-Object {
    [PSCustomObject]@{
        Euro        = [float]$_[0]
        Mondo       = [float]$_[1]
        UK          = [float]$_[2]
        US_MEN      = [float]$_[3]
        US_WOMAN    = [float]$_[4]
    }
}

$european_conversion | Format-Table

$european_conversion | Out-GridView -Title "European Shoe Conversion Table"