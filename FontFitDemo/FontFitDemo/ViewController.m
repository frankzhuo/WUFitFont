//
//  ViewController.m
//  FontFitDemo
//
//  Created by wuqh on 16/6/3.
//  Copyright © 2016年 吴启晗. All rights reserved.
//

#import "ViewController.h"
#import "UIFont+Fit.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    UILabel *fitLabel = [[UILabel alloc] init];
    fitLabel.center = CGPointMake(50, 100);
    [self.view addSubview:fitLabel];
    fitLabel.font = [UIFont systemFontWithSize:14];
    fitLabel.text = @"systemFontWithSize";
    [fitLabel sizeToFit];
    [self.view addSubview:fitLabel];
    
    UILabel *normalLabel = [[UILabel alloc] init];
    normalLabel.center = CGPointMake(50, 50);
    [self.view addSubview:normalLabel];
    normalLabel.font = [UIFont systemFontOfSize:14];
    normalLabel.text = @"systemFontOfSize";
    [normalLabel sizeToFit];
    [self.view addSubview:normalLabel];
    
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
