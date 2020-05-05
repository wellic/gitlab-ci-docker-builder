[![pipeline
status](https://gitlab.cpcs.ws/cpcs/devops/docker-images/gitlab-ci-docker-builder/badges/master/pipeline.svg)](https://gitlab.cpcs.ws/cpcs/devops/docker-images/gitlab-ci-docker-builder/commits/master)
[![coverage
report](https://gitlab.cpcs.ws/cpcs/devops/docker-images/gitlab-ci-docker-builder/badges/master/coverage.svg)](https://gitlab.cpcs.ws/cpcs/devops/docker-images/gitlab-ci-docker-builder/commits/master)

------------------------------------------------------------------------

Service *`gitlab-ci-docker-builder`*
====================================

Version: *v1.0.0*
-----------------

Maintaining
===========

Create new version
------------------

-   Load last version of master on local PC

    ``` {.bash}
    git checkout master
    ```

-   Change code and commit

    ``` {.bash}
    git status
    git add -A
    git ci -am 'Message'
    ```

-   Create skeleton in `rootproject`

    ``` {.bash}
    ./build_version.sh 0
    ```

-   Edit `CHANGELOG.md`

    ``` {.bash}
    vi CHANGELOG.md
    ```

-   Create new version, add tag and commit

    ``` {.bash}
    ./build_version.sh 1
    ```

-   Push to repository

    ``` {.bash}
    git push origin master
    ```


