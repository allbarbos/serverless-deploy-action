# Serverless Deploy Github Action

This action wraps the Serverless Framework to enable common Serverless commands.

## Usage
```
- name: serverless deploy
  with:
    args: deploy
  env:
    SERVERLESS_ACCESS_KEY: ${{ secrets.SERVERLESS_ACCESS_KEY }}
    # or if using AWS creds directly
    # AWS_ACCESS_KEY_ID: ${{ secrets.AWS_ACCESS_KEY_ID }}
    # AWS_SECRET_ACCESS_KEY: ${{ secrets.AWS_SECRET_ACCESS_KEY }}
```
