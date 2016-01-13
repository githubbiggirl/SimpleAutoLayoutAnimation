//
//  FirstMethodLayoutVC.m
//  LLSimpleAutoLayout
//
//  Created by qingyun on 16/1/11.
//  Copyright © 2016年 lily. All rights reserved.
//

#import "FirstMethodLayoutVC.h"

@interface FirstMethodLayoutVC ()

@end

@implementation FirstMethodLayoutVC

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self setupLayout];
    // Do any additional setup after loading the view from its nib.
}

- (void)setupLayout
{
    UIView *redView = [[UIView alloc]init];
    [redView setBackgroundColor:[UIColor redColor]];
    [self.view addSubview:redView];
    
    UIView *greenView = [[UIView alloc]init];
    [greenView setBackgroundColor:[UIColor greenColor]];
    [self.view addSubview:greenView];
    
    UIView *yellowView = [[UIView alloc]init];
    [yellowView setBackgroundColor:[UIColor yellowColor]];
    [self.view addSubview:yellowView];
    
    [redView setTranslatesAutoresizingMaskIntoConstraints:NO];
    [greenView setTranslatesAutoresizingMaskIntoConstraints:NO];
    [yellowView setTranslatesAutoresizingMaskIntoConstraints:NO];
    
    //  CGRect viewFrame = CGRectMake(50.f, 100.f, 150.f, 150.f);
    
    //    NSDictionary *metrics = @{@"left":@(CGRectGetMinX(viewFrame)),
    //                              @"top":@(CGRectGetMinY(viewFrame)),
    //                              @"width":@(CGRectGetWidth(viewFrame)),
    //                              @"height":@(CGRectGetHeight(viewFrame))};
    //
    NSDictionary *views = NSDictionaryOfVariableBindings(self.view, redView, greenView, yellowView);
    
    [self.view addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"H:|-50-[redView(>=100)]-50-[greenView(>=100)]-50-|" options:0 metrics:nil views:views]];
    [self.view addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"V:|-114-[redView(>=100)]-50-[yellowView(>=300)]-50-|" options:0 metrics:nil views:views]];
    
    [self.view addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"H:|-50-[yellowView(>=250)]-50-|" options:0 metrics:nil views:views]];
    [self.view addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"V:|-114-[greenView(>=100)]-50-[yellowView(>=300)]-50-|" options:0 metrics:nil views:views]];
    
    
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
