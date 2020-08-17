# pandas-lambda-layer
This is the AWS Lambda layer that contains pandas for python3.7 or 3.8.

## Required

Docker Desktop

## Usage

Here is for python 3.7. But the same is for python 3.8.

```
git clone git@github.com:kazasiki/pandas-lambda-layer.git
cd panda-lambda-layer
cd 3.7
make build
make zip
```

This will generate a layer.zip, which is contains pandas.  
You can upload it to AWS any way you like.
