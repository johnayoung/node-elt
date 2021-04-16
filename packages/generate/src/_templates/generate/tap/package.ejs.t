---
to: tap-<%=name%>/package.json
---
{
  "name": "@node-elt/tap-<%=name%>",
  "description": "Singer tap, generated by @node-elt/tap-generator",
  "version": "1.2.2",
  "author": "",
  "bin": {
    "tap-<%=name%>": "./bin/tap-<%=name%>.js"
  },
  "dependencies": {
    "@node-elt/singer-js": "^1.1.0",
    "@node-elt/tap-framework": "^1.1.0",
    "axios": "^0.21.1",
    "commander": "^7.2.0",
    "dayjs": "^1.10.4",
    "fs-extra": "^9.1.0",
    "lodash": "^4.17.21",
    "pino": "^6.11.2",
    "pino-pretty": "^4.7.1"
  },
  "devDependencies": {},
  "license": "ISC",
  "main": "src/",
  "scripts": {
    "generate": "node ./bin/tap-<%=name%>.js --config config.json --generate generate.json",
    "discover": "node ./bin/tap-<%=name%>.js --discover",
    "dry": "node ./bin/tap-<%=name%>.js --config config.json --catalog catalog.json | node ../target-csv/lib/target-csv.js >> state.json",
    "sync": "node ./bin/tap-<%=name%>.js --config config.json --catalog catalog.json | pino-pretty",
    "test": "echo \"Error: no test specified\" && exit 1"
  },
  "gitHead": "959b61004987bd60cf8fa786cebd69bc78876e3b",
  "publishConfig": {
    "access": "public"
  }
}