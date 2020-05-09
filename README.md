# calling-npm-start-from-bash-with-args

## A Spike To Try Things
This is a spike project for me to basically test out the proper BASH syntax for soing this before integrating it into larger, more important projects. Feel free to learn from it yourself! 👍

## Motivation For This Project

Suppose you have a nice little node.js script that prints _foobar_ to the console.

```
npm start

// prints: foobar
```


Now suppose you can pass it the flags "--num" and "--color" that takes a number and color that then also get printed to the console. 

For example:
```
npm start -- --num=42 --color-blue

// prints: foobar 42
``` 

Also, suppose you have a bash script which can accepts any flags and calls the underlying command of _npm start_ with these arguments.

If the bash run was named `npm-start.sh`, the command should look like this:
```
./npm-start.sh --num=100 --color=red

// prints: foobar 100
```


## Usage

The project here is basically the bare minimum amount of code that best satifies the above requirements.

It is recommended to use a new version of node v13.

```
nvm use
```

Also, install the node dependencies before running the bash script:

```
npm i
```

You will probably need to explicitly allow the bash file to be executed:
```
chmod +x npm-start.sh
```


Then run the bash script:
```
./npm-start.sh
```

Notice how the bash file correctly passes the flags to the node process as well.

Examples:
```
./npm-start.sh -- --num=5
./npm-start.sh -- --color=foobar
./npm-start.sh -- --color=green --num=14
```

