//
//  ViewController.m
//  iphone-X
//
//  Created by CCIFNMAC on 2017/10/25.
//  Copyright © 2017年 CCIFNMAC. All rights reserved.
//

#import "ViewController.h"
#import "SecondViewController.h"
#define SCREEN_WIDTH ([[UIScreen mainScreen] bounds].size.width)
#define SCREEN_HEIGHT ([[UIScreen mainScreen] bounds].size.height)
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    UIButton* bt = [[UIButton alloc]initWithFrame:CGRectMake(100, 100, 100, 30)];
    bt.backgroundColor=[UIColor grayColor];
    [self.view addSubview:bt];
    [bt setTitle:@"Second" forState:UIControlStateNormal];
    [bt addTarget:self action:@selector(toSecond) forControlEvents:UIControlEventTouchUpInside];
        
    // 1.注册通知
    
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(InfoNotificationAction:) name:@"InfoNotification" object:nil];

}

-(void)toSecond{
    SecondViewController* secondView = [[SecondViewController alloc]init];
    [self.navigationController pushViewController:secondView animated:YES];
}

- (void)InfoNotificationAction:(NSNotification *)notification{
    
    NSLog(@"%@",notification.userInfo);
    
    NSLog(@"---接收到通知---");
    
    //[[NSNotificationCenter defaultCenter] removeObserver:observer name:nil object:self];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
