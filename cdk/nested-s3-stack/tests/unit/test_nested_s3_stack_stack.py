import aws_cdk as core
import aws_cdk.assertions as assertions

from nested_s3_stack.nested_s3_stack_stack import NestedS3StackStack

# example tests. To run these tests, uncomment this file along with the example
# resource in nested_s3_stack/nested_s3_stack_stack.py
def test_sqs_queue_created():
    app = core.App()
    stack = NestedS3StackStack(app, "nested-s3-stack")
    template = assertions.Template.from_stack(stack)

#     template.has_resource_properties("AWS::SQS::Queue", {
#         "VisibilityTimeout": 300
#     })
