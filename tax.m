#import<Foundation/Foundation.h>
#import "bill.h"
#import "tax.h"
@implementation Tax
-(void)printTax
{
   NSLog(@"The total tax is %.2f",totalTax);
   NSLog(@"The total bill amount is %.2f",totalAmount);
}
-(void)CalculateTax:(Bill*) bill
{
   printf("over");
}
@end