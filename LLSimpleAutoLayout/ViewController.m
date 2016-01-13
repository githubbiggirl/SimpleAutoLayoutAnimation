//
//  ViewController.m
//  LLSimpleAutoLayout
//
//  Created by qingyun on 16/1/11.
//  Copyright © 2016年 lily. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()<UITableViewDataSource, UITableViewDelegate>

@property (nonatomic, strong) NSArray *controllers;
@property (nonatomic, strong) NSArray *views;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    _controllers = @[@"LLAutoLayoutWithXibVC", @"FirstMethodLayoutVC",@"AutoLayoutPricticeVC",@"InsgramDemoVC"];
    
    _views = @[@"WithXib", @"FirstMethod",@"练习第一种",@"InsgramDemo"];
    
    UITableView *myTable =[[UITableView alloc]initWithFrame:self.view.frame style:UITableViewStylePlain];
    myTable.delegate = self;
    myTable.dataSource = self;
    [self.view addSubview:myTable];

}
#pragma mark - table view dataSource

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.controllers.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *cellIdentifier = @"MTCell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    
    if(cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellIdentifier];
    }
    
    cell.textLabel.text = _views[indexPath.row];
    return cell;
}

#pragma mark - table view delegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    
    UIViewController *controller = [NSClassFromString(_controllers[indexPath.row])new];
    [self.navigationController pushViewController:controller animated:YES];
    
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
