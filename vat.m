#import "tax.h"
#import "bill.h"
#import "vat.h"

@implementation Vat
-(void)CalculateTax:(Bill*) bill
{
   float rate=0.08;
   float amt=[bill amount];
   totalAmount=amt+amt*rate;
   totalTax=amt*rate;
}
@end
