----------
#### 1. Vérification des conditions requise (Extension PHP, Yarn, Docker, Docker-Compose)


```cmd
symfony book:check-requirements
```
----------------
#### 2. Installer les packages de Composer

```composer log
composer install
```

#### Lancer le conteneur docker Postgres
```dockerfile
version: '3'

services:
  database:
    image: postgres:13-alpine
    environment:
      POSTGRES_USER: main
      POSTGRES_PASSWORD: main
      POSTGRES_DB: main
    ports: [5432]
```

--------------------    
Sauvegarder et restaurer les données de la base¶
Utilisez pg_dump pour sauvegarder les données de la base :


```bash
$ symfony run pg_dump --data-only > dump.sql
```

Et restaurer les données :

```bash
$ symfony run psql < dump.sql
```
