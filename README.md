# Public Databases

This directory contains data from public databases.

Each Database must contain the following structure:

```
public_databases
├── database_name
│   ├── meta.yml
│   ├── changelog.yml
│   ├── Makefile
│   ├── _data
│   │   ├── archive
│   │   ├── latest
```

The file `meta.yml` must follow the template:
```yaml

name:
link:
description:

```

The file `changelog.yml` must follow the template:
```yaml
changelog:
    version:
    date:
changelog:
    version:
    date:
```

The file `Makefile` must follow the template:
```make

download-db:
    <!-- download database commands -->

```

The file corresponding with the latest version of the database must be named `database` while the file corresponding with oldest version of the same database must be named `database-DD-MM-YYYY` and the date must be equal to the date in the changelog of the corresponding version of the database.