//
//  LLInstagramView.m
//  LLSimpleAutoLayout
//
//  Created by qingyun on 16/1/12.
//  Copyright © 2016年 lily. All rights reserved.
//


#import "LLInstagramView.h"
#import "Masonry.h"

@implementation LLInstagramView

/**
 * 纯代码方式，走initWithFrame方法
 */
- (instancetype)initWithFrame:(CGRect)frame
{
    if (self = [super initWithFrame:frame]) {
        [self createSubviews];
        [self setupSubviews];
        
    }
    return self;
}

/**
 * StoryBoard / Xib 方式，走initWithCoder方法
 */
- (instancetype)initWithCoder:(NSCoder *)aDecoder
{
    if (self = [super initWithCoder:aDecoder]) {
        [self createSubviews];
        [self setupSubviews];
    }
    return self;
}

/**
 * 创建并添加视图
 */
- (void)createSubviews
{
    //创建视图
    _avatarImageView = [UIImageView new];
    _nicknameLabel = [UILabel new];
    _timestampIndicator = [UIView new];
    _timestampLabel = [UILabel new];
    _contentImageView = [UIImageView new];
    _likeIndicator = [UIView new];
    _likesLabel = [UILabel new];
    _likeButton = [UIButton new];
    _commentButton = [UIButton new];
    _moreButton = [UIButton new];
    
    [self addSubview:_avatarImageView];
    [self addSubview:_nicknameLabel];
    [self addSubview:_timestampIndicator];
    [self addSubview:_timestampLabel];
    [self addSubview:_contentImageView];
    [self addSubview:_likeIndicator];
    [self addSubview:_likesLabel];
    [self addSubview:_likeButton];
    [self addSubview:_commentButton];
    [self addSubview:_moreButton];
}

- (void)setupSubviews
{
    _avatarImageView.image = [UIImage imageNamed:@"icon"];
    _avatarImageView.layer.cornerRadius = 17.5;
    _avatarImageView.layer.masksToBounds = YES;
    
    
    _nicknameLabel.text = @"lily";
    _nicknameLabel.textColor = [UIColor blueColor];
    _nicknameLabel.font = [UIFont systemFontOfSize:12];

    
    _timestampIndicator.backgroundColor = [UIColor greenColor];
    
    _timestampLabel.text = @"7小时";
    _timestampLabel.textColor = [UIColor lightGrayColor];
    _timestampLabel.font = [UIFont preferredFontForTextStyle:UIFontTextStyleHeadline];
    
//    _contentImageView.backgroundColor = [UIColor yellowColor];
    _contentImageView.image = [UIImage imageNamed:@"萌萌哒"];
    
    _likeIndicator.backgroundColor = [UIColor orangeColor];

    
    _likesLabel.text = @"32个赞";
    _likesLabel.textColor = [UIColor blueColor];
    _likesLabel.font = _timestampLabel.font;
    
    _likeButton.backgroundColor = [UIColor grayColor];
    _commentButton.backgroundColor = [UIColor cyanColor];
    _moreButton.backgroundColor = [UIColor purpleColor];

}

- (void)updateConstraints
{
    [_avatarImageView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self).with.offset(10);
        make.top.equalTo(self.mas_top).with.offset(84);
        make.size.mas_equalTo(CGSizeMake(35, 35));
    }];
    
    [_nicknameLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(_avatarImageView.mas_right).with.offset(10);
        //固有尺寸
        //_nicknameLabel.sizeToFit  Label特有的大小自适应属性
        
        
    }];
    
    [_timestampIndicator  mas_makeConstraints:^(MASConstraintMaker *make) {
        make.right.equalTo(self.timestampLabel.mas_left).with.offset(-10);
        make.size.mas_equalTo(CGSizeMake(10, 10));
    }];
    
    [_timestampLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.right.mas_equalTo(self.mas_right).with.offset(-10);
        
        //几个控件水平对齐
        make.centerY.equalTo(@[_avatarImageView,_nicknameLabel,_timestampIndicator]);
        
        
    }];
    
    [_contentImageView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(self.avatarImageView.mas_bottom).with.offset(10);
        make.left.mas_equalTo(self.mas_left).with.offset(0);
        make.width.mas_equalTo(self.mas_width);
        make.height.mas_equalTo(self.mas_width);
        
    }];
    
    [_likeIndicator mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(self.avatarImageView.mas_left);
        make.top.mas_equalTo(self.contentImageView.mas_bottom).with.offset(10);
        make.size.mas_equalTo(CGSizeMake(20, 20));
        
    }];
    
    [_likesLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(self.likeIndicator.mas_top);
        make.left.mas_equalTo(self.likeIndicator.mas_right).with.offset(10);
    }];
    
    [_likeButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(_likeIndicator);
        make.top.equalTo(_likeIndicator.mas_bottom).with.offset(20);
        make.size.mas_equalTo(CGSizeMake(50, 25));
    }];
    
    [_commentButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.right.equalTo(self.likeButton.mas_right).with.offset(5);
        make.size.mas_equalTo(CGSizeMake(60, 25));

    }];
    
    [_moreButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.right.equalTo(self.mas_right).with.offset(-10);
        make.size.mas_equalTo(CGSizeMake(40, 25));
        make.centerY.equalTo(@[_commentButton,_likeButton]);
//        make.height.equalTo(@[_commentButton,_likeButton]);
    }];
    
    [super updateConstraints];
}



@end
