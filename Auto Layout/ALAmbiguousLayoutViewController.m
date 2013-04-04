//
//  ALSpringsAndStrutsViewController.m
//  Auto Layout
//
//  Created by CKO on 03.04.13.
//  Copyright (c) 2013 CodeStage. All rights reserved.
//

#import "ALAmbiguousLayoutViewController.h"


@interface ALAmbiguousLayoutViewController ()

@end


@implementation ALAmbiguousLayoutViewController


- (void)viewDidLoad
{
    [super viewDidLoad];
    
    UIButton *button1 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [button1 setTitle:@"1" forState:UIControlStateNormal];
    [button1 setTranslatesAutoresizingMaskIntoConstraints:NO];
    [button1 addTarget:self action:@selector(exerciseAmbiguity:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button1];
    
    UIButton *button2 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [button2 setTitle:@"2" forState:UIControlStateNormal];
    [button2 setTranslatesAutoresizingMaskIntoConstraints:NO];
    [button2 addTarget:self action:@selector(exerciseAmbiguity:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button2];
    
    UIButton *button3 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [button3 setTitle:@"3" forState:UIControlStateNormal];
    [button3 setTranslatesAutoresizingMaskIntoConstraints:NO];
    [button3 addTarget:self action:@selector(exerciseAmbiguity:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button3];
    
    // Horizontal Layout
    [self.view addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"|-[button1]-[button2]-[button3]-|"
                                                                      options:NSLayoutFormatAlignAllBaseline
                                                                      metrics:nil
                                                                        views:NSDictionaryOfVariableBindings(button1, button2, button3)]];
    
    // Vertical Layout    
    [self.view addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"V:|-[button1]-|"
                                                                      options:NSLayoutFormatAlignAllBaseline
                                                                      metrics:nil
                                                                        views:NSDictionaryOfVariableBindings(button1)]];
    [self.view addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"V:|-[button2]-|"
                                                                      options:NSLayoutFormatAlignAllBaseline
                                                                      metrics:nil
                                                                        views:NSDictionaryOfVariableBindings(button2)]];
    [self.view addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"V:|-[button3]-|"
                                                                      options:NSLayoutFormatAlignAllBaseline
                                                                      metrics:nil
                                                                        views:NSDictionaryOfVariableBindings(button3)]];
}


- (void)exerciseAmbiguity:(UIButton *)sender
{
    // po [[UIWindow keyWindow] _autolayoutTrace]
    
    if ([sender hasAmbiguousLayout])
    {
        NSLog(@"%@ has ambiguous layout", sender);
        [sender exerciseAmbiguityInLayout];
    }
}


@end
