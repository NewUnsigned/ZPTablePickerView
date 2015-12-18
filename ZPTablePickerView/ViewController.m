//
//  ViewController.m
//  ZPTablePickerView
//
//  Created by zp on 15/12/17.
//  Copyright © 2015年 zp. All rights reserved.
//

#import "ViewController.h"
#import "ZPTablePickerView.h"
#import "UIView+SLAddition.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UIButton *areaButton;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor colorWithRed:232/255.0 green:232/255.0 blue:232/255.0 alpha:1];
    ZPTablePickerView *pocker = [[ZPTablePickerView alloc]initWithFrame:CGRectMake(0, 200, self.view.width_, 100)];
    [self .view addSubview:pocker];
    
    __weak typeof(self)weakSelf = self;
    pocker.selectBlock = ^(NSString *country, NSString *city){
        [weakSelf.areaButton setTitle:[NSString stringWithFormat:@"%@ %@",country,city] forState:UIControlStateNormal];
    };
    
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
