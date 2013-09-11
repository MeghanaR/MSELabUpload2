#import<Foundation/Foundation.h>
#import "bill.h"
@interface Tax:NSObject
{
 float totalTax;
 float totalAmount;
}
-(void)printTax;
-(void)CalculateTax:(Bill*) bill;
@end