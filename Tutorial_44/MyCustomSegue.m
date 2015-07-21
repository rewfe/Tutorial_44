//
//  MyCustomSegue.m
//  Tutorial_44
//
//  Created by Admin on 21.07.15.
//  Copyright (c) 2015 Admin. All rights reserved.
//

#import "MyCustomSegue.h"

@implementation MyCustomSegue
- (void)perform

{
    UIView *sourceView = ((UIViewController *)self.sourceViewController).view;
    UIView *destinationView = ((UIViewController *)self.destinationViewController).view;
    
    UIWindow *window = [[[UIApplication sharedApplication] delegate] window];
    destinationView.center = CGPointMake(sourceView.center.x,  sourceView.center.y - destinationView.center.y);
    [window insertSubview:destinationView aboveSubview:sourceView];
    
    [UIView animateWithDuration:0.4
                     animations:^{
                         
                         destinationView.center = CGPointMake(sourceView.center.x, sourceView.center.y);
                         sourceView.center = CGPointMake(sourceView.center.x, 0 + 2*destinationView.center.y);
                     }
                     completion:^(BOOL finished){
                         
                         
                         [[self sourceViewController] presentViewController:[self destinationViewController] animated:NO completion:nil];
                     }];
}
@end
