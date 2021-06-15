from rest_framework.views import exception_handler


def custom_exception_handler(exc, context):
    """自定义异常"""
    response = exception_handler(exc, context)
    if response is not None:
        notification_response = dict()
        print(response.data)
        # notification_response['code'] = response.status_code
        notification_response['code'] = -1
        # notification_response['message'] = '失败' if response.status_code >= 400 else '成功'
        notification_response['message'] = response.data
        notification_response['data'] = None
        response.data = notification_response
    return response