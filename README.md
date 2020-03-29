# portfolio

A portfolio website

## Getting Started

```bash
## Clone the repo and link to src namespace
npm i -s https://github.com/denzuko-forked/demo-portfolio.git
ln -s node_modules/portfolio src/ ## must match the name from package.json

$EDITOR src/
npm run generate
npx run
```
### Build Setup

``` bash
# serve with hot reload at localhost:3000
$ npm run dev

# build for production and launch server
$ npm run build
$ npm start

# generate static project
$ npm run generate
# Set ipfs-deploy environment varables: https://www.npmjs.com/package/ipfs-deploy#Usage
## deploy to ipfs
$ npx ipfs-deploy dist
```

For detailed explanation on how things work, checkout the [Nuxt.js docs](https://github.com/nuxt/nuxt.js).
