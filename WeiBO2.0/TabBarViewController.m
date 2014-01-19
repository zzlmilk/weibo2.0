//
//  TabBarViewController.m
//  WeiBO2.0
//
//  Created by zzlmilk on 14-1-18.
//  Copyright (c) 2014年 zzlmilk. All rights reserved.
//

#import "TabBarViewController.h"

@interface TabBarViewController ()

@end

@implementation TabBarViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    

    HomeViewController *homeVC = [[HomeViewController alloc]init];

    UINavigationController  *homeNav = [[UINavigationController alloc]initWithRootViewController:homeVC];
    homeVC.title = @"Home";
    homeVC.tabBarItem.image = [UIImage imageNamed:@"sousuotubiao"];
    
    
    UserViewController *userVC = [[UserViewController alloc]init];    UINavigationController *userNav = [[UINavigationController alloc]initWithRootViewController:userVC];
    userVC.title = @"User";
    
    SetViewController *setVC = [[SetViewController alloc]init];
    UINavigationController *setNav = [[UINavigationController alloc]initWithRootViewController:setVC];
    setVC.title = @"Set";
    
    NSArray *array = [NSArray arrayWithObjects:homeNav,userNav,setNav, nil];
    
    self.viewControllers = array;
    
    
    
 //   tabBarVC.viewControllers
    
    
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
