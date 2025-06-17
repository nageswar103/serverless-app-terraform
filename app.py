import json
import boto3
import uuid

dynamodb = boto3.resource('dynamodb')
table = dynamodb.Table('nagesh-items')  # match your table name

def lambda_handler(event, context):
    if event['requestContext']['http']['method'] == 'POST':
        body = json.loads(event['body'])
        item_id = str(uuid.uuid4())
        table.put_item(Item={"id": item_id, **body})
        return {
            "statusCode": 200,
            "body": json.dumps({"message": "Item added", "id": item_id})
        }
    return {
        "statusCode": 405,
        "body": json.dumps({"message": "Method not allowed"})
    }
