from aws_cdk import Stack
import aws_cdk as cdk
import aws_cdk.aws_cloudformation as cloudformation
from constructs import Construct

"""
  Root Stack
"""
class Ec2StackNestedStack(Stack):
  def __init__(self, scope: Construct, construct_id: str, **kwargs) -> None:
    super().__init__(scope, construct_id, **kwargs)

    # Applying default props
    props = {
      'imageId': cdk.CfnParameter(self, 'imageId', 
        type = 'AWS::EC2::Image::Id',
        default = str(kwargs.get('imageId', 'ami-0e42de9d667b232f7')),
      ),
    }

    # Resources
    nestedStack1 = cloudformation.CfnStack(self, 'NestedStack1',
          template_url = 'https://cloudformation-shirel.s3.amazonaws.com/cfn%20stacks/nested-stack1.yaml',
          parameters = {
            'ImageId': props['imageId'],
          },
        )


