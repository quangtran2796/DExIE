#include<stdio.h>

int add(int c, int e){
	return c+e;
}

int main(){
	int a = 19, e = 1;
	int c = 0, d = 0;  
	for ( int i = 0; i < e; i ++){
		if( a >= 19 )
			c = add(a, e);
		else 
			d = add(a, i);
	a--;
	}

	int b = add(a, e);
	return b;
}

//int main(){
////      int a = 10;
////      int b = a;
////      return add(a, b);
////}
//i
