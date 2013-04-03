//
//  ALConstraintsInCodeViewController.m
//  Auto Layout
//
//  Created by CKO on 03.04.13.
//  Copyright (c) 2013 CodeStage. All rights reserved.
//

#import "ALConstraintsInCodeViewController.h"


@interface ALConstraintsInCodeViewController ()

@property (nonatomic, weak) IBOutlet UIButton *fixedButton;

@end


@implementation ALConstraintsInCodeViewController


- (void)viewDidLoad
{
    [super viewDidLoad];
    
    UIButton *relativeButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    relativeButton.translatesAutoresizingMaskIntoConstraints = NO;
    [self.view addSubview:relativeButton];
    

    // Y
#if 0
    [self.view addConstraint:[NSLayoutConstraint constraintWithItem:relativeButton
                                                          attribute:NSLayoutAttributeTop
                                                          relatedBy:NSLayoutRelationEqual
                                                             toItem:self.view
                                                          attribute:NSLayoutAttributeTop
                                                         multiplier:1.0
                                                           constant:20.0]];
#else
    // Y
    [self.view addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"V:|-(20)-[relativeButton]"
                                                                     options:0
                                                                     metrics:nil
                                                                       views:NSDictionaryOfVariableBindings(relativeButton)]];
#endif
    
    
    // X
    [self.view addConstraint:[NSLayoutConstraint constraintWithItem:relativeButton
                                                          attribute:NSLayoutAttributeCenterX
                                                          relatedBy:NSLayoutRelationEqual
                                                             toItem:self.fixedButton
                                                          attribute:NSLayoutAttributeCenterX
                                                         multiplier:1.0
                                                           constant:0.0]];
    
    // Höhe
    [self.view addConstraint:[NSLayoutConstraint constraintWithItem:relativeButton
                                                          attribute:NSLayoutAttributeWidth
                                                          relatedBy:NSLayoutRelationEqual
                                                             toItem:self.fixedButton
                                                          attribute:NSLayoutAttributeWidth
                                                         multiplier:1.0
                                                           constant:0.0]];
    
    // Breite
    [self.view addConstraint:[NSLayoutConstraint constraintWithItem:relativeButton
                                                          attribute:NSLayoutAttributeHeight
                                                          relatedBy:NSLayoutRelationEqual
                                                             toItem:self.fixedButton
                                                          attribute:NSLayoutAttributeHeight
                                                         multiplier:1.0
                                                           constant:0.0]];
    

    


}


@end
