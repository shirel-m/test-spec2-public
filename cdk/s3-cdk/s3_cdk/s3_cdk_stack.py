from aws_cdk import (
    # Duration,
    Stack,
    # aws_sqs as sqs,
)
from constructs import Construct

class S3CdkStack(Stack):

    def __init__(self, scope: Construct, construct_id: str, **kwargs) -> None:
        super().__init__(scope, construct_id, **kwargs)

        bucket = s3.Bucket(self, "MyBucket")
        # The code that defines your stack goes here

        # example resource
        # queue = sqs.Queue(
        #     self, "S3CdkQueue",
        #     visibility_timeout=Duration.seconds(300),
        # )
