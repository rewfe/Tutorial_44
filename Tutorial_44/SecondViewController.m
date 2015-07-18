//
//  SecondViewController.m
//  Tutorial_44
//
//  Created by Admin on 18.07.15.
//  Copyright (c) 2015 Admin. All rights reserved.
//

#import "SecondViewController.h"

@interface SecondViewController ()

@end

@implementation SecondViewController

@synthesize colorstring;

- (void)viewDidLoad {
    [super viewDidLoad];
    if ([colorstring isEqualToString:@"purple"]) {
        self.view.backgroundColor = [UIColor purpleColor];
    }
    // Do any additional setup after loading the view.
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
