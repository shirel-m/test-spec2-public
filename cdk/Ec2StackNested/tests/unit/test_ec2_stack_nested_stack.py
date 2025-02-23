import aws_cdk as core
import aws_cdk.assertions as assertions

from ec2_stack_nested.ec2_stack_nested_stack import Ec2StackNestedStack

# example tests. To run these tests, uncomment this file along with the example
# resource in ec2_stack_nested/ec2_stack_nested_stack.py
def test_sqs_queue_created():
    app = core.App()
    stack = Ec2StackNestedStack(app, "ec2-stack-nested")
    template = assertions.Template.from_stack(stack)

#     template.has_resource_properties("AWS::SQS::Queue", {
#         "VisibilityTimeout": 300
#     })
