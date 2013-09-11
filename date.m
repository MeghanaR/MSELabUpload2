#import <Foundation/Foundation.h>
#import "date.h"
#include<time.h>

@implementation date

-(void)todayDate
{
	//To find today's date
	NSDate *today = [NSDate date];
   NSDateFormatter *dateFormat = [[NSDateFormatter alloc] init];
   [dateFormat setDateFormat:@"dd-MM-yyyy"];
   NSString *dateStr = [dateFormat stringFromDate:today];
   NSLog(@"Today's date: %@", dateStr);
}

-(void)dayAfterTomorrowDate
{
   //To find day after tomorrow's date
   NSDate *dayAfter = [[NSDate alloc] initWithTimeIntervalSinceNow:24*60*60*2];
 	NSDateFormatter *dateFormat = [[NSDateFormatter alloc] init]; 
	[dateFormat setDateFormat:@"dd-MM-yyyy"]; 
	NSString *dayAfterStr = [dateFormat stringFromDate:dayAfter];
	NSLog(@"Day after tomorrow's date: %@", dayAfterStr);
}

-(void)lastThursdayDate
{
	//To find last thursday's date
	NSDate *today = [NSDate date];
	NSCalendar *gregorian = [[[NSCalendar alloc] initWithCalendarIdentifier:NSGregorianCalendar] autorelease];
   NSDateComponents *component = [gregorian components:NSWeekdayCalendarUnit fromDate:today];	
	NSTimeInterval interval1 = 24*60*60;  
	int weekday = [component weekday];
	if(weekday>5) 
	{
 		interval1 = 24*60*60*(weekday-5);
	}
	else
	{
		interval1 = 24*60*60*(weekday+2); 
	}
	NSDate *lastThursday = [[NSDate date] addTimeInterval:-interval1];
  NSDateFormatter *dateFormat = [[NSDateFormatter alloc] init]; 
	[dateFormat setDateFormat:@"dd-MM-yyyy"];  
	NSString *lastThursdayStr = [dateFormat stringFromDate:lastThursday];
   NSLog(@"Last Thursday's date: %@",lastThursdayStr);
}

-(void)findEarliestDate
{
	//Finding the earliest date among a given set of dates
	int i=0;
	NSMutableArray *dates = [[NSMutableArray alloc]init];
	NSTimeInterval interval = 24*60*600, random = 0; 
	NSDate *randomDate = nil;
	NSDateFormatter *dateFormat = [[NSDateFormatter alloc] init];
	[dateFormat setDateFormat:@"dd-MM-yyyy"];  
	NSLog(@"Randomly generated dates: \n");
	for(i=0;i<5;i++)
	{
		random = interval* (rand()%5);
		randomDate = [[NSDate alloc] initWithTimeIntervalSinceNow:random];
		[dates addObject:randomDate];
      NSString *randomDateStr = [dateFormat stringFromDate:randomDate];
		NSLog(@"%@", randomDateStr);
	}
	NSDate *earliestDate = nil;
	for(id entry in dates)
	{
		if(earliestDate == nil)
		{
			earliestDate = entry;
		}
		else if([earliestDate compare:entry] == NSOrderedDescending)
		{
			earliestDate = entry;
		}
	}
   NSString *earliestDateStr = [dateFormat stringFromDate:earliestDate];
	NSLog(@"The earliest date among the above given dates: %@", earliestDateStr);
}

-(void)findTenthDay
{
	//To find tenth day of the month given the first day
   NSDictionary *days = [NSDictionary dictionaryWithObjectsAndKeys:
	             			  @"Sunday", [NSNumber numberWithInteger:1],
	             				@"Monday", [NSNumber numberWithInteger:2],
	             				@"Tuesday", [NSNumber numberWithInteger:3],
	             				@"Wednesday", [NSNumber numberWithInteger:4],
	             				@"Thurday", [NSNumber numberWithInteger:5],
	             				@"Friday", [NSNumber numberWithInteger:6],
	             				@"Saturday", [NSNumber numberWithInteger:7], nil];
	id firstDayOfMonth = [NSNumber numberWithInteger:1];
	int tenthDay = ([firstDayOfMonth intValue]+2)%7;
	id tenthDayOfMonth = [NSNumber numberWithInteger:tenthDay];
	NSLog(@"First day of the month is %@,Tenth day is %@",[days objectForKey:firstDayOfMonth],[days objectForKey:tenthDayOfMonth]);
}
@end
