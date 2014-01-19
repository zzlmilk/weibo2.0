//
//  HomeViewController.m
//  WeiBO2.0
//
//  Created by zzlmilk on 14-1-18.
//  Copyright (c) 2014年 zzlmilk. All rights reserved.
//

#import "HomeViewController.h"
#import "HomeCell.h"
#import "User.h"
#import "MBProgressHUD.h"

#import "UIImageView+AFNetworking.h"


@interface HomeViewController ()

@end

@implementation HomeViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
        stastusList =[NSMutableArray array];
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
//     s = [[Statuses alloc]init];
//    s.text = @"【跨年光绘神奇Pixelstick LED棒 变身光绘高手】一根LED棒是怎么做到这么漂亮的光绘图形的？一起看视频吧！http://t.cn/8kr9464[ok]";
//    
//    s.user.screen_name = @"VIPMirJie";
//    s.user.profile_image_url=@"http://tp4.sinaimg.cn/3814836419/50/40034727228/0";
    
    

    
    MBProgressHUD *hud = [MBProgressHUD showHUDAddedTo:self.view animated:YES];
    hud.mode = MBProgressHUDModeDeterminate;
    hud.labelText = @"Loading";   // [hub showWhileExecuting:@selector(myTask) onTarget:self withObject:nil animated:YES];
    
    [Statuses stauatusParameters:nil WithBlock:^(NSArray *Statuseses) {
        stastusList = [NSMutableArray arrayWithArray:Statuseses];
        
        [hud hide:YES]; 
        [self.tableView reloadData];
    }];
    
    
}


-(void)myTask{
    
}

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 100;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return stastusList.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
        static NSString *cellId = @"HomeCell";
    
    HomeCell *cell = [tableView dequeueReusableCellWithIdentifier:cellId];
    
    
    if (cell ==nil) {
        cell = [[HomeCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellId];
    }
    
    Statuses * s= [stastusList objectAtIndex:indexPath.row];
    
    cell.nickLabel.text = s.user.screen_name;
    cell.weiboTextLabel.text = s.text;
    
    [cell.userImageView setImageWithURL:[NSURL URLWithString:s.user.profile_image_url]];
    
    
    return cell;
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
