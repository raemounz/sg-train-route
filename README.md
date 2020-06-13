# Spring Boot and React

This is a seed project using [Spring Boot](https://start.spring.io) for backend and [React](https://reactjs.org) for frontend.

The frontend is created using [Create React App](https://create-react-app.dev).  It provides named build configurations for development, staging,
and production environments respectively:

- .env.dev
- .env.staging
- .env.prod

The project uses the following:

- [Material-UI](https://material-ui.com/) for material design components

## Preview
![Spring Boot and React Preview](ui/src/images/preview.png)

## Build

To build the project for staging, run `mvn clean install -Pnpm-build-staging`.

To build the project for production, run `mvn clean install -Pnpm-build`.

The build artifacts will be stored in the `target/` directory.

## Run

Run the following in the command prompt:

`java -jar target/springbootreact-0.0.1-SNAPSHOT.jar`

Navigate to http://localhost:8080/.