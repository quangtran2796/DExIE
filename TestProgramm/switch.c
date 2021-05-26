int a()
{
	int a = 2;
	a += 11;
	return a;
}

int b()
{
	int a = 2;
	a += 12;
	return a;
}
int c()
{
	int c = 5;
	c += 6;
	return c;
}

int main()
{
	volatile int* n;
	int result;
	switch(*n){
		case 1:
			result = a();	
		break;
		case 2:
			result = b();
		break;
		case 3:
			result = c();
		break;
	}

calling_b:
	return result;
}
