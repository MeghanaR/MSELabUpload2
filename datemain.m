#import<Foundation/Foundation.h>
#import "date.h"
#include<stdlib.h>
#include<time.h>

int main(int argc, const char* argv[])
{
	NSAutoreleasePool *pool = [[NSAutoreleasePool alloc]init];
	date *da=[[date alloc]init];
	[da todayDate];
	[da dayAfterTomorrowDate];
	[da lastThursdayDate];
	[da findEarliestDate];
	[da findTenthDay];
	[da release];
	[pool release];
	return 0;
}

