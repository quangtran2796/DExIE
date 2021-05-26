#include "foo.h"

static void Bar(void) {}
const struct _func_set FuncSet={.SubSet.Foo=Bar};
