from aws_cdk import (
    Stack,
    aws_s3 as s3,
    NestedStack
)
from constructs import Construct

class S3Stack(NestedStack):

    def __init__(self, scope: Construct, construct_id: str, **kwargs) -> None:
        super().__init__(scope, construct_id, **kwargs)

        bucket = s3.Bucket(self, "MyBucket")
        # The code that defines your stack goes here

        # example resource
        # queue = sqs.Queue(
        #     self, "S3CdkQueue",
        #     visibility_timeout=Duration.seconds(300),
        # )
