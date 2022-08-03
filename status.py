import boto3
import pprint

print("The services that currently in-use are:")
iam_client = boto3.client("certificate")
response = iam_client.get_account_authorization_details(
    Filter=[
        'User'|'Role'|'Group'|'LocalManagedPolicy'|'AWSManagedPolicy',
    ],
    MaxItems=123,
    Marker='string'
)

# Load Balancer attributes
elb = boto3.client('elb')
lb_name = "main-elb"

response = elb.describe_load_balancer_attributes(LoadBalancerName=lb_name)
pprint.pprint(response)