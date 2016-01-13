//
//  AutoLayoutPricticeVC.m
//  LLSimpleAutoLayout
//
//  Created by qingyun on 16/1/12.
//  Copyright © 2016年 lily. All rights reserved.
//

#import "AutoLayoutPricticeVC.h"
#import "Masonry.h"


@interface AutoLayoutPricticeVC ()
@property (nonatomic, strong) UIView *redView;
@property (nonatomic, strong) UIView *greenView;
@property (nonatomic, strong) UIView *yellowView;

@end

@implementation AutoLayoutPricticeVC

- (void)viewDidLoad {
    [super viewDidLoad];
    //添加视图
    [self.view addSubview:_redView];
    [self.view addSubview:_greenView];
    [self.view addSubview:_yellowView];
    //添加属性
    [self setupLayout];
    
}


#pragma mark - setters & getters
- (UIView *)redView{
    if (_redView == nil) {
        _redView = [UIView new];
    }
    //属性设置
    _redView.backgroundColor = [UIColor redColor];
    [_redView setTranslatesAutoresizingMaskIntoConstraints:NO];
    
    return _redView;
    
}

- (UIView *)greenView{
    if (_greenView == nil) {
        _greenView = [UIView new];
    }
    //属性设置
    _greenView.backgroundColor = [UIColor greenColor];
    [_greenView setTranslatesAutoresizingMaskIntoConstraints:NO];

    
    return _greenView;
    
}
- (UIView *)_yellowView{
    if (_yellowView == nil) {
        _yellowView = [UIView new];
    }
    
    //属性设置
    _yellowView.backgroundColor = [UIColor yellowColor];
    [_yellowView setTranslatesAutoresizingMaskIntoConstraints:NO];

    return _yellowView;
    
}

#pragma mark - layout

- (void)setupLayout
{
    //redView
//    NSLayoutConstraint *redViewLeft = [NSLayoutConstraint constraintWithItem:self.redView attribute:NSLayoutAttributeLeading relatedBy:NSLayoutRelationEqual toItem:self.view attribute:NSLayoutAttributeLeading multiplier:1 constant:30];
//    NSLayoutConstraint *redViewTop = [NSLayoutConstraint constraintWithItem:self.redView attribute:NSLayoutAttributeTop relatedBy:NSLayoutRelationEqual toItem:self.view attribute:NSLayoutAttributeTop multiplier:1 constant:30];
//    NSLayoutConstraint *redViewRight = [NSLayoutConstraint constraintWithItem:self.redView attribute:NSLayoutAttributeRight relatedBy:NSLayoutRelationEqual toItem:self.greenView attribute:NSLayoutAttributeRight multiplier:1 constant:-30];
//    NSLayoutConstraint *redViewBottom = [NSLayoutConstraint constraintWithItem:self.redView attribute:NSLayoutAttributeBottom relatedBy:NSLayoutRelationEqual toItem:self.yellowView attribute:NSLayoutAttributeTop multiplier:1 constant:-30];
//
    NSLayoutConstraint *redViewLeft = [NSLayoutConstraint constraintWithItem:self.redView attribute:NSLayoutAttributeLeading relatedBy:NSLayoutRelationEqual toItem:self.view attribute:NSLayoutAttributeLeading multiplier:1 constant:30];
    NSLayoutConstraint *redViewTop = [NSLayoutConstraint constraintWithItem:self.redView attribute:NSLayoutAttributeTop relatedBy:NSLayoutRelationEqual toItem:self.view attribute:NSLayoutAttributeTop multiplier:1 constant:30];
    NSLayoutConstraint *redViewRight = [NSLayoutConstraint constraintWithItem:self.redView attribute:NSLayoutAttributeTrailing relatedBy:NSLayoutRelationEqual toItem:self.greenView attribute:NSLayoutAttributeLeading multiplier:1 constant:-30];
    NSLayoutConstraint *redViewBottom = [NSLayoutConstraint constraintWithItem:self.redView attribute:NSLayoutAttributeBottom relatedBy:NSLayoutRelationEqual toItem:self.yellowView attribute:NSLayoutAttributeTop multiplier:1 constant:-30];

    
    //greenView
    NSLayoutConstraint *greenViewRight = [NSLayoutConstraint constraintWithItem:self.greenView attribute:NSLayoutAttributeTrailing relatedBy:NSLayoutRelationEqual toItem:self.view attribute:NSLayoutAttributeTrailing multiplier:1 constant:-30];
    NSLayoutConstraint *greenViewCenterY = [NSLayoutConstraint constraintWithItem:self.greenView  attribute:NSLayoutAttributeCenterY relatedBy:NSLayoutRelationEqual toItem:self.redView attribute:NSLayoutAttributeCenterY multiplier:1 constant:0];
    NSLayoutConstraint *greenViewWidth = [NSLayoutConstraint constraintWithItem:self.greenView attribute:NSLayoutAttributeWidth relatedBy:NSLayoutRelationEqual toItem:self.redView attribute:NSLayoutAttributeWidth multiplier:1 constant:0];
    
    NSLayoutConstraint *greenViewHeight = [NSLayoutConstraint constraintWithItem:self.greenView attribute:NSLayoutAttributeHeight relatedBy:NSLayoutRelationEqual toItem:self.redView attribute:NSLayoutAttributeHeight multiplier:1 constant:0];

    
    //yellowView
    NSLayoutConstraint *yellowViewLeft = [NSLayoutConstraint constraintWithItem:self.yellowView attribute:NSLayoutAttributeLeading relatedBy:NSLayoutRelationEqual toItem:self.redView attribute:NSLayoutAttributeLeading multiplier:1 constant:0];
    NSLayoutConstraint *yellowViewRight = [NSLayoutConstraint constraintWithItem:self.yellowView attribute:NSLayoutAttributeTrailing relatedBy:NSLayoutRelationEqual toItem:self.greenView attribute:NSLayoutAttributeTrailing multiplier:1 constant:0];
    NSLayoutConstraint *yellowViewBottom= [NSLayoutConstraint constraintWithItem:self.yellowView attribute:NSLayoutAttributeBottom relatedBy:NSLayoutRelationEqual toItem:self.view attribute:NSLayoutAttributeBottom multiplier:1 constant:-30];
    NSLayoutConstraint *yellowViewHeight = [NSLayoutConstraint constraintWithItem:self.yellowView attribute:NSLayoutAttributeHeight relatedBy:NSLayoutRelationEqual toItem:self.redView attribute:NSLayoutAttributeHeight multiplier:1 constant:0];
    
    [self.view addConstraints:@[redViewBottom,redViewLeft,redViewRight,redViewTop,greenViewCenterY,greenViewHeight,greenViewRight,greenViewWidth,yellowViewBottom,yellowViewHeight,yellowViewLeft,yellowViewRight]];

}

- (void)setupLayoutWithVFL {
    NSDictionary *views = NSDictionaryOfVariableBindings(self.view, _redView, _greenView, _yellowView);
    NSNumber *margin = @30;
    NSDictionary *metrics = NSDictionaryOfVariableBindings(margin);
    [self.view addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"H:|-margin-[_redView(_greenView)]-margin-[_greenView]-margin-|" options:NSLayoutFormatAlignAllTop|NSLayoutFormatAlignAllBottom metrics:metrics views:views]];
    [self.view addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"H:|-margin-[_yellowView]-margin-|" options:0 metrics:metrics views:views]];
    [self.view addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"V:|-margin-[_redView(_blueView)]-margin-[_yellowView]-margin-|" options:0 metrics:metrics views:views]];
}

- (void)setupLayoutWithMasonry {
    [_redView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self.view).with.offset(30);
        make.top.equalTo(self.view).with.offset(30);
        make.right.equalTo(_greenView.mas_left).with.offset(-30);
        make.bottom.equalTo(_yellowView.mas_top).with.offset(-30);
    }];
    
    [_greenView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.right.equalTo(self.view).with.offset(-30);
        make.centerY.equalTo(_redView);
        make.size.equalTo(_redView);
    }];
    
    [_yellowView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(_redView);
        make.right.equalTo(_greenView);
        make.bottom.equalTo(self.view).with.offset(-30);
        make.height.equalTo(_redView);
    }];
}


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
