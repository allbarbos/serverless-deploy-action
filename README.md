# Serverless Deploy Github Action

This action wraps the Serverless Framework 1.72.0 to enable common Serverless commands.

## Usage
```
name: CI
on:
  push:
    branches: [ master ]
jobs:
  deploy:
    runs-on: ubuntu-latest

    steps:
    - uses: actions/checkout@v2

    # if using plugins
    - name: install plugins
      run: npm i <yours serverless plugins>

    - name: serverless deploy
      uses: allbarbos/serverless-deploy-action@master
      with:
        args: deploy
      env:
        SERVERLESS_ACCESS_KEY: ${{ secrets.SERVERLESS_ACCESS_KEY }}
        # or if using AWS creds directly
        # AWS_ACCESS_KEY_ID: ${{ secrets.AWS_ACCESS_KEY_ID }}
        # AWS_SECRET_ACCESS_KEY: ${{ secrets.AWS_SECRET_ACCESS_KEY }}
```




