 

# Github - Basic

> [1. Git 설치 ](#1-git-설치)
>
> [2. Git 사용법](#2-git-사용법)
>
> ​	[2.1. 최초 설정 ](#21-최초-설정)
>
> ​	[2.2. 상태 점검 ](#22-상태-점검)
>
> ​	[2.3. 디렉토리 ](#23-디렉토리)
>
> ​	[2.4. 초기화 ](#24-초기화)
>
> ​	[2.5. 파일 생성 ](#25-파일-생성)
>
> ​	[2.6. Add하기 ](#26-add하기)
>
> ​	[2.7. Commit하기 ](#27-commit하기)
>
> ​	[2.8. Log보기 ](#28-log보기)
>
> ​	[2.9. 원격 저장소 등록하기 ](#29-원격-저장소remote-repo-등록하기)
>
> ​	[2.10. 원격 저장소에 Push하기 ](#210-원격-저장소에-push하기)
>
> [Summary ](#summary)

---

## 1. Git 설치

1. [git-scm.com](https://git-scm.com) 에서 다운로드한다.
2. `Next`로 설치한다.

---

## 2. Git 사용법

### 2.1. 최초 설정

처음 컴퓨터에 Git을 설치하면, 사용자의 이메일과 이름을 적어준다.

이는 앞으로 일어나는 Commit에 서명을 하기 위해서 필요하다.

``` bash
$ git config --global user.name <"이름">
$ git config --global user.email <이름@이메일>
```

잘 설정되었나 확인하려면,

```bash
$ git config user.name # 이름 확인
$ git config user.email # 이메일 확인

또는,

$ git config --list
```

### 2.2. 상태 점검

Terminal 창에서 Git 위치를 확인한다.

```bash
$ which git
/usr/bin/git
```

Finder를 연다.

~~~bash
$ open .
~~~

목록을 확인한다.

```bash
$ ls
```

### 2.3. 디렉토리

디렉토리를 생성한다.

~~~bash
$ mkdir <디렉토리_이름>
~~~

해당 디렉토리로 이동한다.

~~~bash
$ cd <디렉토리_이름>
~~~

### 2.4. 초기화

초기화는 `git init` 을 통해 진행한다.

`git status` 로 확인한다.

~~~bash
$ git status
On branch master
No commits yet
nothing to commit (create/copy files and use "git add"to track)
~~~

### 2.5. 파일 생성

```bash
$ touch *.txt
```

파일을 삭제하려면,

```bash
$ rm *.txt
```

`git status` 로 확인한다.

~~~bash
$ git status
On branch master
Untracked files:
	(use "git add <file>..." to include in what will be committed)
       
       생성한_파일_이름
~~~

### 2.6. Add하기

~~~bash
$git add 생성한_파일_이름
~~~

`git status` 로 확인한다.

~~~bash
$ git status
On branch master
Changes to be committed:
	(use "git rm --cached <file>..." to unstage)
	
       new file:    생성한_파일_이름
~~~

`add` 실행을 취소하려면,

~~~bash
$ git restore --staged <파일_이름>
~~~

### 2.7. Commit하기

`git commit` 했을 시,

 `esc`를 누르고, `:q`로 나온다.

~~~bash
$ git commit -m "메세지_내용"
1 file changed, 0 insertions(+), 0 deletions(-)
~~~

### 2.8. Log보기

~~~bash
$ git log
commit xxxxxxxxxxxx... (HEAD -> master)
Author: user.name (user.email@gmail.com)
Date:   해당 시각
   
     메세지_내용
     
commit xxxxxxxxxxxx...
~~~

### 2.9. 원격 저장소(Remote Repo) 등록하기

remote를 등록한다.

~~~bash
$ git remote add origin <URL>
~~~

등록한 remote를 확인한다.

~~~bash
$ git remote -v
origin <URL>... (fetch) # origin remote 저장소 이름
origin <URL>... (push)
~~~

remote를 제거하려면,

~~~bash
$ git remote rm <remote_repo_name>
~~~

### 2.10. 원격 저장소에 Push하기

remote 이름이 origin일 경우에 master branch를 push한다.

~~~bash
$ git push origin master
Username for 'https://github.com : 
Password for 'https://github.com':
~~~

---

## Summary

| git 명령어                       | 설명                                          |
| -------------------------------- | --------------------------------------------- |
| `git init`                       | 빈 디렉토리(폴더)를 Git 저장소(Repo)로 초기화 |
| `git add <file_name>`            | <file_name>을 Stage에 올린다                  |
| `git commit -m 'commit_message'` | Commit 하기                                   |
| `git log -2`                     | 최근 2개의 로그 조회                          |
| `git log --pretty=oneline`       | Commit 내용을 한줄로 출력                     |
| `git commit --amend`             | Commit 내용 수정                              |

| 터미널 명령어                      | 설명                                   |
| ---------------------------------- | -------------------------------------- |
| `~`                                | 홈 폴더                                |
| `ctrl+c`                           | Cancel. 동작 취소                      |
| `cd ..`                            | 뒤로가기                               |
| `cd 알파벳+Tab`                    | 해당 알파벳으로 시작하는 디렉토리 검색 |
| `cd <디렉토리_이름>`               | 해당 디렉토리로 이동                   |
| `cd ~/<디렉토리_이름>`             |                                        |
| `mv <원래이름> <변경할_이름>`      | 디렉토리 이름 변경                     |
| `mv *.원래_확장자 *.변경할_확장자` | 파일 확장자 변경                       |
| `rm -rf <디렉토리_이름>`           | 디렉토리 삭제                          |
| `rm -rf .git`                      | Git 삭제                               |
| `vim`                              | 터미널 문서 편집기                     |
| `*.md`                             | Markdown 확장자                        |

