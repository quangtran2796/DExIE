#define INT_MAX 100 
int foo(int a) {
	
	int sum = 0;
	for(int i = i + 100 ; i < a + 1000; i++){
		sum = sum + i;
		for(int j = 0; j < i; j++){
			sum += sum;
		}
	}
	return sum + sum;
}

int bar(int a) {

	int sum = a;
	for(int i = i + 100; i < a + 1000; i++){
		sum = sum + i;
		for(int j = 0; j < i; j++){
			sum += sum;										          
	  	}
	}
	return sum;
}

int baz(int a) {
	
	int sum = 0;
	int test = 0;
	for(int i = a + 100; i < a + 1000; i++){
		sum = sum + 1;
		for(int j = 0; j < i; j++){
			test += bar(10);
		}
	}
	return sum;
}

int direct_version(int a) {
	int i, b = a;
	for (i = 0; i < INT_MAX; ++i) {
		b = foo(b) + bar(b) + baz(b);
	}
	return b;
}

int indirect_version(int (*fn)(int), int (*fn2)(int), int (*fn3)(int), int start_num) {
	int i, b = start_num;

	for (i = 0; i < INT_MAX; ++i) {
		b = fn(b) + fn2(b) + fn3(b);
	}

	return b;
}

int main(int argc, char *argv[]) {
	if (argc == 2 && argv[1][0] == 'd') {
		return direct_version(5);
	}
	else {
		return indirect_version(&foo, &bar, &baz, argc);
	}

	int return_value = 0;
	while(argc > 0) {
		switch(indirect_version(&foo, &bar, &baz, argc)){
		//switch(argc){
			case 10:
				direct_version(5);
				indirect_version(&foo, &direct_version, &baz, argc);
				break;
			case  100:
				indirect_version(&foo, &bar, &baz, argc);
				break;
			case 1000: 
		 		for (int i = 0; i < INT_MAX; ++i) {
					return_value = foo(i) + bar(i) + baz(i);
					indirect_version(&foo, &bar, &direct_version, argc);
		 		}
				break;
			default:
				indirect_version(&direct_version, &bar, &baz, argc);
				break;
		}
		argc--;
	}
	return return_value;
}
