# Directus Starter Kit

An empty Directus project that can be setup with the database and assets
stored on either your local machine or via Supabase.

## Setup with with database and assets stored on your local machine

Open your terminal and checkout the project via git, the run the following commands inside the directory:

```
mkdir uploads
cp docker-compose-local.yml docker-compose.yml 
docker compose build
docker compose up -d
```

You will then be able to login to directus at the following link (see docker compose file for admin details):
http://localhost:8055/admin/login

## Setup with with database and assets stored on Supabase

First run the following commands:

```
cp .env.example .env
cp docker-compose-supabase.yml docker-compose.yml 
```

### Create a Supabase Project

1. Create a Supabase account by signing in with GitHub.
2. Give your organization a name (this can be changed later).
3. Click New Project and select your organization.
4. Follow the prompts, setting a project Name, Database Password, Region, and Pricing Plan, 
    then click Create New Project.
5. After your project has been provisioned, navigate to Settings > Database in the sidebar.
6. Scroll down to Connection Info and take note of your database's Host, Database Name, Port, User, and Password. You will need to enter this during your Directus project setup.
7. Copy these values into the appropriate variables in your .env file

#### Enable PostGis (to Support Geometry and Mapping)

1. From the sidebar, navigate to Database > Extensions.
2. Use the search bar to look up PostGIS.
3. Toggle the PostGIS option to enable it.

### Setup storage buckets in Supabase



1. Setup a bucket:
   https://supabase.com/docs/guides/storage/quickstart
2. Set the value of STORAGE_SUPABASE_BUCKET as the name of your bucket created in step 1.
2. Set the value of STORAGE_SUPABASE_PROJECT_ID to the Reference ID of you Supabase project 
   which can be found in the General section of your Project Settings
3. Set the value of STORAGE_SUPABASE_SERVICE_ROLE to the value of the service_role secret 
   of you Supabase project which can be found in the API Settings section of Project Settings

Once you have all the env vars set you can start your project:

```
docker compose up -d
```
