from aws_cdk import (
    # Duration,
    Stack,
    # aws_sqs as sqs,
)
from constructs import Construct
from s3_stack.s3_stack import S3Stack

class DevStack(Stack):

    def __init__(self, scope: Construct, construct_id: str, **kwargs) -> None:
        super().__init__(scope, construct_id, **kwargs)

        # The code that defines your stack goes here

        # example resource
        # queue = sqs.Queue(
        #     self, "NestedS3StackQueue",
        #     visibility_timeout=Duration.seconds(300),
        # )
        s3 = S3Stack(self, "S3Stack")
