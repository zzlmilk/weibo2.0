//
//  Statuses.h
//  WeiBO2.0
//
//  Created by zzlmilk on 14-1-18.
//  Copyright (c) 2014年 zzlmilk. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "User.h"

@interface Statuses : NSObject

@property (nonatomic,strong)NSString *text;
@property (nonatomic,strong)User *user;


-(id)initWith:(NSDictionary *)dic;


+(NSURLSessionDataTask *)stauatusParameters:(NSDictionary *)parameters WithBlock:(void (^) (NSArray * Statuseses))block;


@end
