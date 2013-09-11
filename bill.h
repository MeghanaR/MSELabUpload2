#import<Foundation/Foundation.h>

@interface Bill:NSObject
{
  NSString *Type;
  float amount;
}
@property float amount;
@property (retain)NSString  *Type;
@end