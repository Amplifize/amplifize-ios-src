//
//  User.m
//  amplifize
//
//  Created by Melih Onvural on 5/2/15.
//  Copyright (c) 2015 Big Fish, Big Pond. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <RestKit/RestKit.h>
#import "User.h"

@interface User ()

@end

@implementation User

@synthesize email;
@synthesize display_name;
@synthesize single_access_token;

+(RKObjectMapping*)defineUserMapping   {
    
    RKObjectMapping *mapping = [RKObjectMapping mappingForClass:[User class]];
    
    [mapping addAttributeMappingsFromDictionary:@{
                                                  @"email":   @"email",
                                                  @"display_name":   @"display_name",
                                                  @"single_access_token": @"single_access_token"
                                                  }];
    
    
    return mapping;
    
}

@end
