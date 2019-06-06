# Coffee Shop Blogs

Coffee Shop Blogs is a blogging site where users can write, comment for, like blogs within their enclosed coffee shop community.

## Motivation

Coffee Shop Blogs aims to create an intimate, blogging community. It assigns members to a coffee shop where they are only able to read and interact with blogs by other members of that coffee shop and write blogs for only these members. Modern blogging sites can be overwhelming where every blog is at once available to every member. This creates an atmosphere of disinterest for community, the relationship between bloggers, and a respect for one's thoughts and writing. On a practical note, this also makes it hard for one's blogs to be noticed and networks are difficult to establish. Coffee Shop Blogs aims to solve these issues, particularly the first one, by encouraging an intimate community.

## Tech/framework used

##### Built with

* Ruby on Rails
* sqlite3 for the database
* Bootstrap for CSS framework

## Features

The application has the most of the features of a blogging app with some unique tweaks outlined below:

1. User model belongs to and every subsequent model stems from the coffee shop model, creating the small, enclosed communities. When a user signs up, they are attached to a coffee shop.  

2. A user can perform all CRUD actions for a blog. They are able to comment on and like blogs as well.

3. A user can update their user information and conveniently access their blogs via their profile page.

4. There is an updated feed for the most popular blogs based on their likes.

checkout the following for a video demo: https://www.youtube.com/watch?v=88te7qxI-WQ&feature=youtu.be

## Getting Started

These instructions will get you a copy of the project up and running on your local machine for development and testing purposes.

### Installation

##### Backend Setup
1. cd into the backend directory

```
cd backend
```

2. run bundle install in your terminal

```
bundle install
```

3. setup your database by running migrations


```
rails db:migrate
```

4. run the server and check in the browser that the endpoints are not throwing a 404

```
rails s
```

## Authors

* **Myung Kim** - [mjk287](https://github.com/mjk287)
* **Maximo Bautista** - [link04](https://github.com/link04)


