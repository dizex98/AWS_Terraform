import boto3
import pprint
import json

print("The services that currently in-use are:")

###VPC attributes:
ec2 = boto3.resource('ec2')
vpc = ec2.Vpc('vpc-037a6f85bf2004722')
print("VPC:")
response = vpc.describe_attribute(
    Attribute='enableDnsHostnames',
)
print(json.dumps(response, sort_keys=False, indent=4))


###Route 53:
print("Route 53:")
client = boto3.client('route53')
response = client.list_hosted_zones()
print(json.dumps(response, sort_keys=False, indent=4))


# ###IAM
# print("IAM:")
# iam_client = boto3.client("iam")
# response = iam_client.get_account_authorization_details()
# print(json.dumps(response, sort_keys=False, indent=4))

# Load Balancer attributes
# elb = boto3.client('elb')
# lb_name = "main-elb"

# response = elb.describe_load_balancer_attributes(LoadBalancerName=lb_name)
# pprint.pprint(response)