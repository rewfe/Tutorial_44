//
//  ViewController.m
//  Tutorial_44
//
//  Created by Admin on 18.07.15.
//  Copyright (c) 2015 Admin. All rights reserved.
//

#import "ViewController.h"
#import "SecondViewController.h"
#import "MyCustomUnwindSegue.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    
    if ([[segue identifier] isEqualToString:@"CustomSeguetoSecondView"]) {
        
        SecondViewController *destinationViewController = (SecondViewController *)segue.destinationViewController;
        
        destinationViewController.colorstring = @"purple";
    }
}

-(IBAction)unwindfromSecondView:(UIStoryboardSegue *)sender {
    
    self.view.backgroundColor = [UIColor cyanColor];
    
}

- (IBAction)returnedFromSegue:(UIStoryboardSegue *)segue {
    
    NSLog(@"Returned from second view");
    
    if ([[segue identifier] isEqualToString:@"UnwindFromSecondView"]) {
        
        self.view.backgroundColor = [UIColor orangeColor];
    }
    
    
    
}



@end
