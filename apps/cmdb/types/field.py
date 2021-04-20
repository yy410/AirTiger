import types

field_list = ["type", "default", "unique", "nullable", "lens", "choises", "prefix", "max", "min"]
type_list = ["Str", "Int", "Choice", "IP"]


class Verify_Field():
    def __init__(self, data):
        self.data = data

    def run(self):
        self.check()

    def check(self):
        for f, t in self.data['fields'].items():
            self.field_val(f, t)
            if f in self.data['meta']:
                for k, v in self.data['meta'][f].items():
                    getattr(self, k)(f, k, v)
            else:
                raise KeyError(f"field {k} Undefined meta")

    def field_val(self, f, val):
        name = val.get('name')
        weight = val.get('weight')
        if isinstance(name, str) and isinstance(weight, int):
            return val
        raise KeyError(f"field {f} Missing arguments or incorrect types name(str) or weight(int).")

    def type(self, field, key, val):
        if val in type_list:
            return
        raise KeyError(f"filed {field} {key} is {val} Unsupported")

    def default(self, field, key, val):
        if isinstance(val, int):
            return
        raise KeyError(f"filed {field} {key} value: it should be list index.")

    def unique(self, field, key, val):
        if isinstance(val, bool):
            return
        raise KeyError(f"filed {field} {key} value: it should be bool")

    def not_null(self, field, key, val):
        if isinstance(val, bool):
            return
        raise KeyError(f"filed {field} {key} value: it should be bool")

    def prefix(self, field, key, val):
        if isinstance(val, str) and len(val) != 0:
            return
        raise KeyError(f"filed {field} {key} value: it should be srt and lens not 0")

    def choises(self, field, key, val):
        if isinstance(val, list) and len(val) != 2:
            return
        raise KeyError(f"filed {field} {key} value: it should be list and lens Not less than 2")

    def lens(self, field, key, val):
        if isinstance(val, int) and val != 0:
            return
        raise KeyError(f"filed {field} {key} value: it should be int and lens not 0")

    def max(self, field, key, val):
        if isinstance(val, int):
            return
        raise KeyError(f"filed {field} {key} value: it should be int ")

    def min(self, field, key, val):
        if isinstance(val, int) and val != 0:
            return
        raise KeyError(f"filed {field} {key} value: it should be int")


def check_field(data):
    Verify_Field(data).run()
    return 'OK'
