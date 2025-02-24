import aws_cdk as core
import aws_cdk.assertions as assertions

from cdk_nested_poc.cdk_nested_poc_stack import CdkNestedPocStack

# example tests. To run these tests, uncomment this file along with the example
# resource in cdk_nested_poc/cdk_nested_poc_stack.py
def test_sqs_queue_created():
    app = core.App()
    stack = CdkNestedPocStack(app, "cdk-nested-poc")
    template = assertions.Template.from_stack(stack)

#     template.has_resource_properties("AWS::SQS::Queue", {
#         "VisibilityTimeout": 300
#     })
