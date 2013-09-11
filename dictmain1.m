#import <Foundation/Foundation.h>
#import "dict.h"
int main()
{
	dict *d=[[dict alloc]init];
	[d printValues];
	[d release];
	return 0;
}
	