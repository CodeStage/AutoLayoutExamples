//
//  ALTwoButtonsInCodeViewController.m
//  Auto Layout
//
//  Created by CKO on 04.04.13.
//  Copyright (c) 2013 CodeStage. All rights reserved.
//

#import "ALTwoButtonsInCodeViewController.h"


@interface ALTwoButtonsInCodeViewController ()

@end


@implementation ALTwoButtonsInCodeViewController


- (void)viewDidLoad
{
    [super viewDidLoad];
#if 0
    [self addButtonsWithConstraints];
#else
    [self addButtonsWithVisualFormat];
#endif
}


- (void)addButtonsWithConstraints
{
    UIButton *button1 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [button1 setTitle:@"A" forState:UIControlStateNormal];
    [button1 setTranslatesAutoresizingMaskIntoConstraints:NO];
    [self.view addSubview:button1];
    
    UIButton *button2 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [button2 setTitle:@"B" forState:UIControlStateNormal];
    [button2 setTranslatesAutoresizingMaskIntoConstraints:NO];
    [self.view addSubview:button2];
    
    // Linker Abstand des 1. Buttons zur Superview
    [self.view addConstraint:[NSLayoutConstraint constraintWithItem:button1
                                                          attribute:NSLayoutAttributeLeading
                                                          relatedBy:NSLayoutRelationEqual
                                                             toItem:self.view
                                                          attribute:NSLayoutAttributeLeading
                                                         multiplier:1.0
                                                           constant:20.0]];
    
    // Rechter Abstand des 1. Buttons zur Superview
    [self.view addConstraint:[NSLayoutConstraint constraintWithItem:button1
                                                          attribute:NSLayoutAttributeTrailing
                                                          relatedBy:NSLayoutRelationEqual
                                                             toItem:self.view
                                                          attribute:NSLayoutAttributeTrailing
                                                         multiplier:1.0
                                                           constant:-20.0]];
    
    // Oberer Abstand des 1. Buttons zur Superview
    [self.view addConstraint:[NSLayoutConstraint constraintWithItem:button1
                                                          attribute:NSLayoutAttributeTop
                                                          relatedBy:NSLayoutRelationEqual
                                                             toItem:self.view
                                                          attribute:NSLayoutAttributeTop
                                                         multiplier:1.0
                                                           constant:20.0]];
    
    // Unterer Abstand des 2. Buttons zur Superview
    [self.view addConstraint:[NSLayoutConstraint constraintWithItem:button2
                                                          attribute:NSLayoutAttributeBottom
                                                          relatedBy:NSLayoutRelationEqual
                                                             toItem:self.view
                                                          attribute:NSLayoutAttributeBottom
                                                         multiplier:1.0
                                                           constant:-20.0]];
    
    // Abstand zwischen den Buttons
    [self.view addConstraint:[NSLayoutConstraint constraintWithItem:button1
                                                          attribute:NSLayoutAttributeBottom
                                                          relatedBy:NSLayoutRelationEqual
                                                             toItem:button2
                                                          attribute:NSLayoutAttributeTop
                                                         multiplier:1.0
                                                           constant:-8.0]];
    
    // Gleiche Breite für beide Buttons
    [self.view addConstraint:[NSLayoutConstraint constraintWithItem:button1
                                                          attribute:NSLayoutAttributeWidth
                                                          relatedBy:NSLayoutRelationEqual
                                                             toItem:button2
                                                          attribute:NSLayoutAttributeWidth
                                                         multiplier:1.0
                                                           constant:0.0]];
    
    // Gleiche Höhe für beide Buttons
    [self.view addConstraint:[NSLayoutConstraint constraintWithItem:button1
                                                          attribute:NSLayoutAttributeHeight
                                                          relatedBy:NSLayoutRelationEqual
                                                             toItem:button2
                                                          attribute:NSLayoutAttributeHeight
                                                         multiplier:1.0
                                                           constant:0.0]];
    
}


- (void)addButtonsWithVisualFormat
{
    UIButton *button1 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [button1 setTitle:@"A" forState:UIControlStateNormal];
    [button1 setTranslatesAutoresizingMaskIntoConstraints:NO];
    [self.view addSubview:button1];
    
    UIButton *button2 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [button2 setTitle:@"B" forState:UIControlStateNormal];
    [button2 setTranslatesAutoresizingMaskIntoConstraints:NO];
    [self.view addSubview:button2];
    

    // Oberer Abstand des 1. Buttons zur Superview
    // Unterer Abstand des 2. Buttons zur Superview
    // Abstand zwischen den Buttons
    // Gleiche Breite für beide Buttons
    [self.view addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"V:|-[button1]-[button2(==button1)]-|"
                                                                      options:NSLayoutFormatAlignAllCenterX
                                                                      metrics:nil
                                                                        views:NSDictionaryOfVariableBindings(button1, button2)]];
    
    // Linker Abstand des 1. Buttons zur Superview
    // Rechter Abstand des 1. Buttons zur Superview
    [self.view addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"H:|-[button1]-|"
                                                                      options:0
                                                                      metrics:nil
                                                                        views:NSDictionaryOfVariableBindings(button1)]];
    
    // Gleiche Breite für beide Buttons
    [self.view addConstraint:[NSLayoutConstraint constraintWithItem:button1
                                                          attribute:NSLayoutAttributeWidth
                                                          relatedBy:NSLayoutRelationEqual
                                                             toItem:button2
                                                          attribute:NSLayoutAttributeWidth
                                                         multiplier:1.0
                                                           constant:0.0]];
}


@end
