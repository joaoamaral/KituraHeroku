# KituraHeroku
### Kitura on Heroku Proof of Concept

![Kitura on Heroku](https://raw.githubusercontent.com/joaoamaral/KituraHeroku/master/KituraHeroku.png)

**Heroku** is a Platform as a Service (PaaS) that helps you build, run, and scale apps. It’s ‘Cloud computing designed and built for developers.’

**Kitura** is a lightweight web framework that allows you to easily build web services with complex routes. Much of its design was inspired by Express.js based on the success of its overall design in particular URL routing and pluggable middleware. Kitura takes these principles and adds the advantages of Swift, which include:

* Compiled native-code
* Type-safety
* Optionals
* Multi-programming based on Grand Central Dispatch

The combination of these features provides the foundation for an extendable and robust web framework.

This enables both mobile frontend and backend portions of an application to be written in the same language.

In addition, web developers who are used to other routing frameworks such Express, Sinatra, or Flask will be able to easily create or port web apps over to the Swift language.

Following instructions here:

https://github.com/IBM-Swift/Kitura#developing-kitura-applications

then here to push it to the cloud (Heroku):

https://github.com/kylef/heroku-buildpack-swift

