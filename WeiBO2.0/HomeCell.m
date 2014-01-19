//
//  HomeCell.m
//  WeiBO2.0
//
//  Created by zzlmilk on 14-1-18.
//  Copyright (c) 2014年 zzlmilk. All rights reserved.
//

#import "HomeCell.h"

@implementation HomeCell

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // Initialization code
        
        _nickLabel = [[UILabel alloc]init];
        _nickLabel.frame = CGRectMake(64, 10, 100, 44);
        _nickLabel.text = @"nickName";
        [self.contentView addSubview:_nickLabel];
        
        _weiboTextLabel = [[UILabel alloc]initWithFrame:CGRectMake(64, 64, 200, 30)];
        _weiboTextLabel.text = @"weibo text content";
        _weiboTextLabel.numberOfLines = 2;
        [self.contentView addSubview:_weiboTextLabel];
        
        _userImageView = [[UIImageView alloc]init];
        _userImageView.frame = CGRectMake(10, 28, 44, 44);
        [self.contentView addSubview:_userImageView];
        
        
    }
    return self;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
