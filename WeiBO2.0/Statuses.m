//
//  Statuses.m
//  WeiBO2.0
//
//  Created by zzlmilk on 14-1-18.
//  Copyright (c) 2014年 zzlmilk. All rights reserved.
//

#import "Statuses.h"
#import "AFHTTPSessionManager.h"
#import "MBProgressHUD.h"


@implementation Statuses

-(id)initWith:(NSDictionary *)dic{
    self = [super init];
    if (self) {
        NSLog(@"%@",dic);
        
        self.text = [dic objectForKey:@"text"];
       NSDictionary *userDic = [dic objectForKey:@"user"];
        
        _user = [[User alloc]initWithDic:userDic];
    }
    
    return self;
}

-(id)init{
    self = [super init];
    if (self) {
        _user = [[User alloc]init];
    }
    
    return self;
}

+(NSURLSessionDataTask *)stauatusParameters:(NSDictionary *)parameters WithBlock:(void (^)(NSArray *))block{
    NSURLSessionDataTask * tast;
    
    AFHTTPSessionManager *manager = [[AFHTTPSessionManager alloc]initWithBaseURL:[NSURL URLWithString:@"https://api.weibo.com/"] sessionConfiguration:[NSURLSessionConfiguration defaultSessionConfiguration]];
    
    NSMutableDictionary *dic = [NSMutableDictionary dictionaryWithObject:@"2.00CRgIDC7EG4JE58ef8087bdlMIUVD" forKey:@"access_token"];
    [dic setObject:@"20" forKey:@"count"];
    [dic setObject:@"" forKey:@""];
    
    
     
    
    [manager GET:@"2/statuses/friends_timeline.json" parameters:dic success:^(NSURLSessionDataTask *task, id responseObject) {
        NSLog(@"%@",responseObject);
        
        NSArray *statuesArray = [responseObject objectForKey:@"statuses"];
        
        NSMutableArray *statueses = [NSMutableArray array];
        
        for (int i=0; i<statuesArray.count; i++) {
           // NSLog(@"----%@-------", [statuesArray objectAtIndex:i]);
            Statuses * s= [[Statuses alloc]initWith:[statuesArray objectAtIndex:i]];
            
            [statueses addObject:s];
        }
        
        block(statueses);
        
        
        
        NSString *str = [responseObject objectForKey:@"total_number"];
        
        NSLog(@"%@",str);
        
    } failure:^(NSURLSessionDataTask *task, NSError *error) {
        NSLog(@"%@",error);
    }];
    
    
    return tast;
}
@end
