//
//  SecondViewController.m
//  iphone-X
//
//  Created by CCIFNMAC on 2017/11/9.
//  Copyright © 2017年 CCIFNMAC. All rights reserved.
//

#import "SecondViewController.h"

@interface SecondViewController ()

@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    UIButton* bt = [[UIButton alloc]initWithFrame:CGRectMake(100, 100, 100, 30)];
    [self.view addSubview:bt];
    [bt setTitle:@"back" forState:UIControlStateNormal];
    [bt addTarget:self action:@selector(back) forControlEvents:UIControlEventTouchUpInside];
}

-(void)back{
    NSDictionary *dict =[[NSDictionary alloc] initWithObjectsAndKeys:@"小明",@"name",@"111401",@"number", nil];
    NSNotification *notification =[NSNotification notificationWithName:@"InfoNotification" object:nil userInfo:dict];
    [[NSNotificationCenter defaultCenter] postNotification:notification];    
    [self.navigationController popViewControllerAnimated:YES];
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
