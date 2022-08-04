import boto3
import json


def printLabelandResponse(label,response):
    print()
    print("----------")
    print(label)
    print("----------")
    print()
    print(json.dumps(response, sort_keys=False, indent=4, default=str))


###EC2 attributes:


client = boto3.client('ec2')
response = client.describe_account_attributes()
printLabelandResponse("Ec2 Service",response)


labels = ["VPC","Internet Gatway","Subnets","Route Tables"]
functions = [client.describe_vpcs,client.describe_internet_gateways,client.describe_subnets,client.describe_route_tables]

print("The resources under this service are:")

for label, function in zip(labels, functions):
    response = function()
    printLabelandResponse(label,response)

client = boto3.client('elb')
response = client.describe_load_balancers()
printLabelandResponse("Elastic Load Balancer",response)


###Route 53 attributes:

client = boto3.client('route53')
response = client.list_hosted_zones()
printLabelandResponse("Route 53 Service",response)

print("The resources under this service are:")


hostedZone = response.get('HostedZones')[0].get('Id')
response = client.list_resource_record_sets(HostedZoneId=hostedZone)
printLabelandResponse("Records",response)
