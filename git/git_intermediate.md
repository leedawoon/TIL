# Git - Intermediate

> [사전 준비 ](#사전-준비)
>
> [1. 브랜치 ](#1-브랜치)
>
> ​	[1.1. 브랜치 생성 ](#11-브랜치-생성)
>
> ​	[1.2. 브랜치 삭제 ](#12-브랜치-삭제)
>
> ​	[1.3. 브랜치 확인 ](#13-브랜치-확인)
>
> ​	[1.4. 브랜치 전환 (Head 움직이기) ](#14-브랜치-전환-head-움직이기)
>
> ​	[1.5. 브랜치 생성 및 전환 ](#15-브랜치-생성-및-전환)
>
> ​	[1.6. 브랜치 병합 ](#16-브랜치-병합)
>
> ​	[1.7. 브랜치 병합 취소 ](#17-브랜치-병합-취소)
>
> [2. 원격 저장소 ](#2-원격-저장소)
>
> ​	[2.1. 원격 저장소 관리 ](#21-원격-저장소-관리)
>
> ​	[2.2. 원격 저장소 삭제 ](#21-원격-저장소-삭제)
>
> ​	[2.3. 원격 저장소 복제 ](#23-원격-저장소-복제)
>
> ​	[2.4. Push ](#24-push)
>
> ​	[2.5. Push 취소 ](#25-push-취소)
>
> ​	[2.6. Pull ](#26-pull)
>
> ​	[2.7. Pull 취소 ](#27-pull-취소)
>
> [Summary ](#summary)

---

## 사전 준비

`directory`와 `file`을 생성한다.

~~~bash
$ mkdir <directory_name>
$ cd <directory_name>
$ git init

$ git add <file_name>
$ git commit -m "commit_message"
~~~

---

## 1. 브랜치

### 1.1. 브랜치 생성

~~~bash
$ git branch <branch_name>
~~~

### 1.2. 브랜치 삭제

~~~bash
 $git branch -d <branch_name>
 Deleted branch <branch_name>
~~~

### 1.3. 브랜치 확인

~~~bash
$ git branch
<branch_name>
*master
~~~

### 1.4. 브랜치 전환 (`Head` 움직이기)

~~~bash
$ git switch <branch_name>
Switched to branch <branch_name>
~~~

### 1.5. 브랜치 생성 및 전환

~~~bash
$ git switch -c <branch_name>
$ git checkout -d <branch_name>
Switched to a new branch <branch_name>
~~~

### 1.6. 브랜치 병합

항상 `master`에서 다른 브랜치를 병합한다.

~~~bash
$ git merge <branch_name>
~~~

`git branch --merged` 로 확인한다.

### 1.7. 브랜치 병합 취소

~~~bash
$ git merge --abort
~~~

---

## 2. 원격 저장소

### 2.1. 원격 저장소 관리

~~~bash
$ git remote add origin <URL>
~~~

### 2.2. 원격 저장소 삭제

~~~bash
$ git remote remove origin
~~~

### 2.3. 원격 저장소 복제

`local`에 없는 상태에서 원격 저장소의 data를 가져온다.

~~~bash
$ git clone <URL>
Cloning into <name>...
remote: Enumerating objects: 3, done.
remote: Counting objects: 100% (3/3), done.
remote: Total 3 (delta 0), reused 3 (delta 0), pack-reused 0
Unpacking objects: 100% (3/3), done.
~~~

### 2.4. Push

`add`하고  `commit`한 코드를 내보낸다.

~~~bash
$ git push <remote> <branch>
$ git push origin master
Enumerating objects: 5, done.
Counting objects: 100% (5/5), done.
Delta compression using up to 8 threads
Compressing objects: 100% (2/2), done.
Writing objects: 100% (3/3), 295 bytes | 295.00 KiB/s, done.
Total 3 (delta 0), reused 0 (delta 0)
To <URL>
   e6b2104..5284d48  master -> master
~~~

### 2.5. Push 취소

~~~bash
$ git reset HEAD^;
Unstaged changes after reset:
~~~

~~~bash
$ git reflog
$ git log -g # 확인
$ git push origin master -f # 강제 push
~~~

### 2.6. Pull

`local`에 없는 data를 내려받아 연결된 remote branch와 자동으로 merge한다.

~~~bash
$ git pull <remote> <branch>
~~~

### 2.7. Pull 취소

~~~bash
$ git reset --hard ORIG_HEAD
~~~

---

## Summary

| 명령어                                    | 설명                        |
| ----------------------------------------- | --------------------------- |
| `touch <directory_name>/*.md`             | 디렉토리에 *.md 파일을 추가 |
| `.gitignore`                              | 무시할 파일을 담는 디렉토리 |
| `git branch -r`                           | 원격 브랜치 확인            |
| `git branch -a`                           | 로컬 브랜치 확인            |
| `git switch -h`                           | Help. 안내                  |
| `git log --pretty=format:"%h %s" --graph` | 그래프형 Commit history     |
