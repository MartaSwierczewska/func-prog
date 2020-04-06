# Programowanie Funkcyjne
## Laboratoria 2019-2020

### Przygotowania 

* [ ] "Zforkuj" projekt
  * [jak stworzyć fork](https://docs.gitlab.com/ee/user/project/repository/forking_workflow.html#creating-a-fork)
* [ ] dodaj @mateusz.slazynski jako członka swojego projektu (rola: **maintainer**)
  * [jak dodać użytkownika do projektu](https://docs.gitlab.com/ee/user/project/members/index.html#add-a-user)
* [ ] Zmień widoczność swojego forka na **private**
  * [jak zmienić widoczność](https://docs.gitlab.com/ee/public_access/public_access.html#how-to-change-project-visibility)

### Bonus: jak aktualizować swojego forka

* [ ] dodaj oryginalne repo jako 'upstream': 
    ```bash
    git remote add upstream https://gitlab.com/agh-teaching/func-prog.git
    ```
* [ ] pobieraj zmiany z 'upstream', np.
    ```bash
    git pull upstream
    ```

### Jak wysyłać rozwiązania

* [ ] Sklonuj swoje repozytorium: git clone:
    ```bash 
    git clone <repository url>
    ```
* [ ] Stwórz nową gałąź na potrzeby zajęć, np. `lab2`
    ```bash 
    git checkout -b <branch name>
    ```
* [ ] Rozwiąż zadania 

* [ ] "Zacommituj" swoje zmiany
    ```bash
    git add <path to the changed files>
    git commit -m <commit message>
    ```
* [ ] "Zpushuj" zmiany na gitlab
    ```bash
    # -u origin <branch name> is only required first time you push a new branch
    git push -u origin <branch name>
    ```
* [ ] Stwórz MR (Merge Request) ze swojej nowej gałęzi (np. `lab2`) na gałąź 'master' (też na swoim repozytorium) i przypisz go do @mateusz.slazynski. 
    * umieść swoje imię w opisie MR
    * [jak stworzyć merge request](https://docs.gitlab.com/ee/user/project/merge_requests/creating_merge_requests.html)

### Instrukcje 

Wszystkie instrukcje są dostępne na [wiki](https://ai.ia.agh.edu.pl/pl:dydaktyka:pf:start). 

 
