#include <assert.h>
#include <stdio.h>
#include "add.h"
// #include "define.h"

int solve_success(void)
{
	int a=5, b= 7,c;

	int z=addFunc(a,b);
	c=z-4;

	return c;
}