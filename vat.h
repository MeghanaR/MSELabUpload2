#import<Foundation/Foundation.h>
#import "tax.h"
#import "bill.h"
@interface Vat:Tax
-(void)CalculateTax:(Bill*) bill;
@end