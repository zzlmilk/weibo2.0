//
//  User.h
//  WeiBO2.0
//
//  Created by zzlmilk on 14-1-18.
//  Copyright (c) 2014年 zzlmilk. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface User : NSObject

@property (nonatomic,strong)NSString *screen_name;
@property (nonatomic,strong)NSString *profile_image_url;

-(id)initWithDic:(NSDictionary *)dic;
@end
