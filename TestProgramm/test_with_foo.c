#include "foo.h"

int main(void)
{
	FuncSet.SubSet.Foo();//indirect call to Bar()
	return 0;
}
