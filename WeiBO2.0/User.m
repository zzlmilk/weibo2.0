//
//  User.m
//  WeiBO2.0
//
//  Created by zzlmilk on 14-1-18.
//  Copyright (c) 2014年 zzlmilk. All rights reserved.
//

#import "User.h"

@implementation User
-(id)initWithDic:(NSDictionary *)dic{
    self = [super init];
    self.screen_name= [dic objectForKey:@"screen_name"];
    self.profile_image_url = [dic objectForKey:@"avatar_large"];
    
    
    return self;
}
@end
