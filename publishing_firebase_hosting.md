# Using Henry with Firebase Hosting

The included [Docker config](https://github.com/kaushikgopal/henry-jekyll/blob/42d3a5d175905a7abcb57e3ca324463104a69933/docker-compose.yml) comes prebuilt with firebase tools installed. This makes it a breeze to setup publishing. 

## Add firebase token 

Create a `.env` file in your blog folder with the following content:

```sh
FIREBASE_TOKEN=X//XXXX
```

_You can read up on how to get a [token from the firebase documentation](https://github.com/firebase/firebase-tools/blob/master/README.md#general)._


## Use docker to publish to your website

Assuming you have your firebase project setup locally, the following command will publish directly to your firebase project:

```sh
docker-compose -f docker-compose-publish.yml up
```
