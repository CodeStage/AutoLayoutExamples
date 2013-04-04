//
//  ALIntrinsicSizeViewController.m
//  Auto Layout
//
//  Created by CKO on 04.04.13.
//  Copyright (c) 2013 CodeStage. All rights reserved.
//

#import "ALIntrinsicSizeViewController.h"


@interface ALIntrinsicSizeViewController ()

@property (nonatomic, weak) IBOutlet NSLayoutConstraint *widthConstraint1;
@property (nonatomic, weak) IBOutlet NSLayoutConstraint *widthConstraint2;
@property (nonatomic, weak) IBOutlet NSLayoutConstraint *widthConstraint3;

@end


@implementation ALIntrinsicSizeViewController


- (IBAction)valueChanged:(UISlider *)sender
{
    self.widthConstraint1.constant = sender.value;
    self.widthConstraint2.constant = sender.value;
    self.widthConstraint3.constant = sender.value;
}


@end
