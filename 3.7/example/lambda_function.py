import pandas

def lambda_handler(event, context):
    return pandas.__version__
