# Maintaining

## Create new version

### Load last version of master on local PC

```bash
git checkout master
```

### Change code and commit

```bash
git status
git add -A
git ci -am 'Message'
```

### Create skeleton in `rootproject`

```bash
./build_version.sh 0
```

### Edit `CHANGELOG.md`

- Add/Edit/Remove `CHANGELOG.md`

### Create new version, add tag and commit

```bash
./build_version.sh 1
```

### Push to repository

```bash
git push origin master:master
```
