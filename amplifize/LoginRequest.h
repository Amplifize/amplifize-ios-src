#import <Foundation/Foundation.h>
#import "RKObjectMapping.h"

@interface LoginRequest : NSObject
@property (nonatomic, strong) NSString* email;
@property (nonatomic, strong) NSString* password;

+(RKObjectMapping*)defineLoginRequestMapping;
@end