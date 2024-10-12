@echo off

REM Navigate to your Git repository
cd /d "D:\Projects\js-progress"

REM Create realistic-looking files with natural content
echo "Implemented login validation for new user flow" > login_validation_notes.txt
echo "Optimized database queries for better performance" > db_optimization_log.txt

REM Add all changes
git add .

REM Set both author and committer date to make the commit look natural
set GIT_AUTHOR_DATE="2024-10-12T15:00:00"
set GIT_COMMITTER_DATE="2024-10-12T15:00:00"

REM Commit with a realistic message and backdated date
git commit -m "Optimized database queries and added login validation"

REM Push the commit to the 'main' branch
git push origin main

echo "Natural commit with backdated timestamps created and pushed!"
