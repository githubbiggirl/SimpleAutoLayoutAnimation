//
//  LLInstagramView.h
//  LLSimpleAutoLayout
//
//  Created by qingyun on 16/1/12.
//  Copyright © 2016年 lily. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface LLInstagramView : UIView

@property (nonatomic, strong) UIImageView *avatarImageView;
@property (nonatomic, strong) UILabel *nicknameLabel;
@property (nonatomic, strong) UIView *timestampIndicator;
@property (nonatomic, strong) UILabel *timestampLabel;
@property (nonatomic, strong) UIImageView *contentImageView;
@property (nonatomic, strong) UIView *likeIndicator;
@property (nonatomic, strong) UILabel *likesLabel;
@property (nonatomic, strong) UIButton *likeButton;
@property (nonatomic, strong) UIButton *commentButton;
@property (nonatomic, strong) UIButton *moreButton;

@end
