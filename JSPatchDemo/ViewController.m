//
//  ViewController.m
//  JSPatchDemo
//
//  Created by chuanglong02 on 16/9/1.
//  Copyright © 2016年 chuanglong02. All rights reserved.
//

#import "ViewController.h"
#import "secondViewController.h"
@interface ViewController ()
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
   
 
    
}
-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    secondViewController *second =[[secondViewController alloc]init];
    [self.navigationController pushViewController:second animated:YES];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}




@end
