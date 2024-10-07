@echo off

REM Navigate to your Git repository
cd /d "D:\Projects\js-progress"

REM Loop to create 10 unique commits with different times
for /l %%x in (1, 1, 10) do (

    REM Get the current timestamp for unique filenames
    setlocal
    for /f "tokens=1-4 delims=/- " %%a in ("%date%") do (
      set day=%%a
      set month=%%b
      set year=%%c
    )
    for /f "tokens=1-4 delims=:. " %%a in ("%time%") do (
      set hour=%%a
      set minute=%%b
      set second=%%c
    )
    set timestamp=%year%%month%%day%_commit%%x%%hour%%minute%%second%

    REM Create a unique file for each commit
    echo "Commit %%x: Update for feature development" > feature_update_%%timestamp%%.txt

    REM Add the file
    git add .

    REM Calculate commit time from morning to night (8 AM to 6 PM)
    set /a commit_hour=8 + %%x

    REM Set commit time for each commit
    set GIT_AUTHOR_DATE="2024-10-8T%commit_hour%:00:00"
    set GIT_COMMITTER_DATE="2024-10-8T%commit_hour%:00:00"

    REM Commit with a different message for each
    git commit -m "Commit %%x: Feature development updates"
    
    endlocal
)

REM Push all 10 commits
git push origin main

echo "10 commits created with differing times from morning to night!"
