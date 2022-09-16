# Project 2: Extract Transform Load

### Overview
We performed the ETL process using two datasets gathered from Kaggle and Wikipedia. To perform this process, we were required to make use of Pandas, SQLAlchemy, BeautifulSoup, and a few more Python libraries. The two datasets were a CSV downloaded from Kaggle and information scraped from a Wikipedia article. This data was cleaned then transformed using mostly Pandas and stored into two corresponding DataFrames. Once the data was ready for use, the database was created in pgAdmin4 along with its two constituent tables. We then used SQLAlchemy to transfer the DataFrame content into the tables and perform a cursory `inner join` as proof future analysis was possible.

### Group Members
- Brandon Groenewold
- Scott Neubauer
- Mauvonte Roberts

### Links to datasets
- [DnD Monsters](https://www.kaggle.com/datasets/mrpantherson/dnd-5e-monsters)
- [Wikipedia multi-page table](https://en.wikipedia.org/wiki/List_of_legendary_creatures_(A))

### Database Used
- PostgreSQL

### Instructions to Reproduce Database
1. Clone the Repo
    1. Create a new folder on your desktop and name it ETL_Project (or whatever you wish).
    1. Open a GitBash (Windows) or Terminal (Mac) on the ETL_Project.
    1. Copy `git clone git@github.com:seneubauer/extract-transform-load.git` into your terminal window and press `Enter`.
    1. Ensure you have the following libraries in your current Python environment to satisfy the specified dependencies (shown below).
    1. Open a jupyter notebook with `jupyter notebook`.
1. Create Database and Tables
    1. Open pgAdmin4.
    1. Create a new database named `dnd_db`.
    1. Open a new query tool.
    1. Run the `schema.sql` script.
1. Jupyter Notebook
    1. Execute the `erd.ipynb` script from a Jupyter Notebook.

#### Required Python Libraries
```
import pandas as pd
import unicodedata
import re
from sqlalchemy import create_engine, inspect
from sqlalchemy.orm import Session
from sqlalchemy.dialects import postgresql
from sqlalchemy.ext.automap import automap_base
from sqlalchemy.ext.declarative import declarative_base
from bs4 import BeautifulSoup as bs
from splinter import Browser
from webdriver_manager.chrome import ChromeDriverManager
```

#### Confidential Information Required
The following lines should be stored in a `config.py` file within the base repo path.
```
postgresql_key = "your PostgreSQL/pgAdmin4 password"
postgresql_port = your PostgreSQL/pgAdmin4 port, typically 5432
postgresql_host = "your host name, typically localhost"
postgresql_db = "dnd_db"
postgresql_user = "your PostgreSQL user, typically postgres"
```