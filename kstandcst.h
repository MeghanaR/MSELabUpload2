#import<Foundation/Foundation.h>
#import "tax.h"
#import "bill.h"
@interface KSTandCST:Tax
-(void)CalculateTax:(Bill*) bill;
@end