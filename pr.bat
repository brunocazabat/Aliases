@echo off
set datetimef=%date:~-4%_%date:~3,2%_%date:~0,2%_%time:~0,2%_%time:~3,2%_%time:~6,2%
cls
@echo Pushing changes to a dedicated branch and asking for a pull request
git checkout -b PullRequestAsked-%datetimef%
git push -u origin PullRequestAsked-%datetimef%
git add .
git commit -m "Pull request asked at %datetimef%"
git push
git request-pull main ./
git checkout main