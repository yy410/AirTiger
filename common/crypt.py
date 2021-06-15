import crypt

from django.conf import settings

from cryptography.fernet import Fernet


class Prpcrypt(object):
    key = 'xds0asask;alsdfsfd'

    @classmethod
    def encrypt(cls, password):
        fn = Fernet(cls.key)
        password_encode = password.encode()
        token = fn.encrypt(password_encode)
        return token.decode()

    @classmethod
    def decrypt(cls, password):
        fn = Fernet(cls.key)
        password_encode = password.encode()
        token = fn.decrypt(password_encode)
        return token.decode()


def make_crypt_password(password, salt=settings.SECRET_KEY):
    """
    crypt加密
    """
    return crypt.crypt(password, salt)


def make_password(length=8):
    """
    生成随机密码
    """
    import string
    from random import choice

    chars = string.ascii_letters + string.digits
    return ''.join([choice(chars) for i in range(length)])