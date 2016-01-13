//
//  InsgramDemoVC.m
//  LLSimpleAutoLayout
//
//  Created by qingyun on 16/1/12.
//  Copyright © 2016年 lily. All rights reserved.
//

#import "InsgramDemoVC.h"
#import "Masonry.h"
@interface InsgramDemoVC ()
//@property (nonatomic, strong) UIImageView *avatarImageView;
//@property (nonatomic, strong) UILabel *nicknameLabel;
//@property (nonatomic, strong) UIView *timestampImageView;
//@property (nonatomic, strong) UILabel *timestampLabel;
//@property (nonatomic, strong) UIImageView *contentImageView;
//@property (nonatomic, strong) UIView *likeIndicator;
//@property (nonatomic, strong) UILabel *likesLabel;
//@property (nonatomic, strong) UIButton *likeButton;
//@property (nonatomic, strong) UIButton *commentButton;
//@property (nonatomic, strong) UIButton *moreButton;
@end

@implementation InsgramDemoVC

- (void)viewDidLoad {
    [super viewDidLoad];


}

//- (void)setupViews
//{
//    //...
//}
//
//- (void)setupLayoutWithMasonry
//{
//    [_avatarImageView mas_makeConstraints:^(MASConstraintMaker *make) {
//        make.left.equalTo(self.view.mas_left).with.offset(10);
//        make.top.equalTo(self.view.mas_top).with.offset(20);
//        make.size.mas_equalTo(CGSizeMake(35, 35));
//    }];
//    
//    [_nicknameLabel mas_makeConstraints:^(MASConstraintMaker *make) {
//        make.left.mas_equalTo(_avatarImageView.mas_right).with.offset(10);
//        //固有尺寸
//        
//        
//        
//    }];
//   
//    [_timestampImageView mas_makeConstraints:^(MASConstraintMaker *make) {
//        make.right.equalTo(self.timestampLabel.mas_left).with.offset(-10);
//        make.size.mas_equalTo(CGSizeMake(10, 10));
//    }];
//    
//    [_timestampLabel mas_makeConstraints:^(MASConstraintMaker *make) {
//        make.right.mas_equalTo(self.view.mas_right).with.offset(-10);
//        make.centerY.mas_equalTo(self.avatarImageView.mas_centerY).with.offset(0);
//        
//    }];
//    
//    [_contentImageView mas_makeConstraints:^(MASConstraintMaker *make) {
//        make.top.mas_equalTo(self.avatarImageView.mas_bottom).with.offset(10);
//        make.left.mas_equalTo(self.view.mas_right).with.offset(0);
//        make.width.mas_equalTo(self.view.mas_width);
//        make.height.mas_equalTo(self.view.mas_width);
//        
//    }];
//    
//    [_likeIndicator mas_makeConstraints:^(MASConstraintMaker *make) {
//        make.left.mas_equalTo(self.avatarImageView.mas_left);
//        make.top.mas_equalTo(self.contentImageView.mas_bottom).with.offset(10);
//        make.size.mas_equalTo(CGSizeMake(20, 20));
//        
//    }];
//    
//    [_likesLabel mas_makeConstraints:^(MASConstraintMaker *make) {
//        make.top.mas_equalTo(self.likeIndicator.mas_top);
//        make.left.mas_equalTo(self.likeIndicator.mas_right).with.offset(10);
//    }];
//}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
