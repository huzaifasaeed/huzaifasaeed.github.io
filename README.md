# :man_cartwheeling: portfolio

This repository contains code for my [portfolio website](https://huzaifasaeed.github.io/) which is made using flutter. 

## :1234: Getting Started

To build the project locally, first clone this repository.
```
git clone https://github.com/huzaifasaeed/huzaifasaeed.github.io.git
```
Then enter this repository.
```
cd portfolio
```

Now we can build the website.
```
flutter build web
```

This will generate the needed files for the website and place then inside `/build/web`. 

To deploy the website and test it locally, I recommend using `http-server`. Follow instructions from [this](https://www.npmjs.com/package/http-server) link to install `http-server`. 

Now run the following command:
```
http-server /portfolio/build/web/
```

Google Chrome is the preffered browser for testing as refreshing here serves as hot reload. So you need not start a new server everytime you make changes to the flutter files and build the web files again.                              |

## :desktop_computer: Resources

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://flutter.dev/docs/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://flutter.dev/docs/cookbook)

For help getting started with Flutter, view the [online documentation](https://flutter.dev/docs), which offers tutorials,
samples, guidance on mobile development, and a full API reference.
