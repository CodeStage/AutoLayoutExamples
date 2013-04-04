//
//  ALAnimationViewController.m
//  Auto Layout
//
//  Created by CKO on 04.04.13.
//  Copyright (c) 2013 CodeStage. All rights reserved.
//

#import "ALAnimationViewController.h"


@interface ALAnimationViewController ()

@property (nonatomic, weak) IBOutlet UIView *animatedView;
@property (nonatomic) BOOL animationDirectionGrowing;

@property (nonatomic, weak) IBOutlet NSLayoutConstraint *widthConstraint;
@property (nonatomic, weak) IBOutlet NSLayoutConstraint *heightConstraint;

@end


@implementation ALAnimationViewController


- (IBAction)toggleAnimation:(id)sender
{
    if (self.animationDirectionGrowing)
    {
        self.animationDirectionGrowing = NO;
        [self startAnimationWithDirection:NO];
    }
    else
    {
        self.animationDirectionGrowing = YES;
        [self startAnimationWithDirection:YES];
    }
}


- (void)startAnimationWithDirection:(BOOL)growing
{
    if (growing)
    {
        self.widthConstraint.constant = 800;
        self.heightConstraint.constant = 800;
    }
    else
    {
        self.widthConstraint.constant = 44;
        self.heightConstraint.constant = 44;
    }
    
    [UIView animateWithDuration:M_2_PI
                          delay:0.0
                        options:UIViewAnimationOptionCurveEaseInOut|UIViewAnimationOptionBeginFromCurrentState
                     animations:^
     {
         [self.view layoutIfNeeded];
     }
                     completion:^(BOOL finished)
     {
         
     }];
}


@end
