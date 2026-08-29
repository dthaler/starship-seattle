echo Updating Starship Seattle files...

rem Determine profile name (default = harbinger)
set "PROFILE=%~1"
if "%PROFILE%"=="" set "PROFILE=harbinger"

rem Back up preferences.json if not already done
cd data
if not exist preferences-stock.json (
    copy preferences.json preferences-stock.json
)

rem Update missions to latest dev release
cd missions
call sbs update
call sbs production -b v1.4.0_dev -q

rem Back up settings.yaml
copy LegendaryMissions\settings.yaml LegendaryMissions\settings-stock.yaml

rem Create LegendaryMissionsUnlocked
xcopy /s /y LegendaryMissions\ LegendaryMissionsUnlocked\

rem Restore Starship Seattle configuration
cd ..\..
xcopy /s /y %PROFILE%-data\ data\
