#define INT_MAX 100 
int foo(int a) {
	return a;
}

int bar(int a) {
	return a;
}

int baz(int a) {
	return a;
}

int direct_version() {
	int i, b = 0;
	for (i = 0; i < INT_MAX; ++i) {
		b = foo(b) + bar(b) + baz(b);
			    }
	return b;
}

int indirect_version(int (*fn)(int), int (*fn2)(int), int (*fn3)(int)) {
	int i, b = 0;

	for (i = 0; i < INT_MAX; ++i) {
		b = fn(b) + fn2(b) + fn3(b);
	}

	return b;
}

int main(int argc, char *argv[]) {
	if (argc == 2 && argv[1][0] == 'd') {
		return direct_version();
	}
	else {
		return indirect_version(&foo, &bar, &baz);
	}
}
