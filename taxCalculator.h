#import<Foundation/Foundation.h>
#import"tax.h"
#import"bill.h"

@interface TaxCalculator:NSObject
-(void)Calc:(Bill*) bill;
@end