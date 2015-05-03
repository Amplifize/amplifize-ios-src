#import "LoginRequest.h"
#import "RKObjectManager.h"

@implementation LoginRequest
@synthesize email;
@synthesize password;

+(RKObjectMapping*)defineLoginRequestMapping   {
    
    RKObjectMapping *mapping = [RKObjectMapping mappingForClass:[LoginRequest class]];
    
    [mapping addAttributeMappingsFromDictionary:@{
                                                  @"email":   @"email",
                                                  @"password":   @"password",
                                                  }];
    
    
    return mapping;
    
}
@end