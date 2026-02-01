@echo off
setlocal enabledelayedexpansion
REM Cambiar el año:
set year=26
REM Cambiar el mes:
set month=02

REM Cambiar de 30 a 31 o viceversa segun la cantidad de dias del mes:
for /L %%d in (1,1,28) do (
    if %%d LSS 10 (
        set day=0%%d
    ) else (
        set day=%%d
    )

    (
    echo ^<!DOCTYPE html^>
    echo ^<html lang="es"^>
    echo ^<head^>
    echo ^<meta charset="UTF-8"^> 
    echo ^<meta name="viewport" content="width=device-width, initial-scale=1.0"^>
    echo ^<title^>Texto Diario JW^</title^>
    echo ^</head^>
    echo ^<body^>
    echo ^<h3^>Escucha el texto diario:^</h3^>
    echo ^<audio controls controlsList="nodownload" src="!day!!month!!year!.mp3" type="audio/mpeg"^>^</audio^>
    echo ^</body^>
    echo ^</html^>
    ) > !day!!month!!year!.html
)
REM Cambiar de 30 a 31 o viceversa para reflejar los días del mes:
echo 28 archivos HTML creados con el contenido correcto.
pause