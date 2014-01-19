//
//  HomeViewController.h
//  WeiBO2.0
//
//  Created by zzlmilk on 14-1-18.
//  Copyright (c) 2014年 zzlmilk. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Statuses.h"

@interface HomeViewController : UIViewController<UITableViewDataSource,UITableViewDelegate>
{
    //Statuses *s;
    NSMutableArray *stastusList;
    
   // UITableView *tableView;
    
}

@property (nonatomic,weak)IBOutlet UITableView *tableView;

@end
