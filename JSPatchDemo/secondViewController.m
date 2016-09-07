//
//  secondViewController.m
//  JSPatchDemo
//
//  Created by chuanglong02 on 16/9/1.
//  Copyright © 2016年 chuanglong02. All rights reserved.
//

#import "secondViewController.h"

@interface secondViewController ()
@property(strong,nonatomic) NSMutableArray *hots;

@end

@implementation secondViewController
-(void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    self.title = @"我的";
    [self test];
    NSLog(@"%@",self.hots);
}
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor =[UIColor redColor];
}
- (void)test
{
    [self.hots addObject:@"1"];
    [self.hots addObject:@"2"];
    
    [self.hots addObject:@"3"];
    NSLog(@"%@",self.hots[5]);
    
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSMutableArray *)hots {
    if(_hots == nil) {
        _hots = [[NSMutableArray alloc] init];
    }
    return _hots;
}


@end
