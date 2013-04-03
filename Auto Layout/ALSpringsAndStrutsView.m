//
//  ALSpringsAndStrutsView.m
//  Auto Layout
//
//  Created by CKO on 03.04.13.
//  Copyright (c) 2013 CodeStage. All rights reserved.
//

#import "ALSpringsAndStrutsView.h"


@implementation ALSpringsAndStrutsView


+ (id)viewFromNib
{
    NSArray *nibArray = [[NSBundle mainBundle] loadNibNamed:@"ALSpringsAndStrutsView" owner:nil options:nil];
    ALSpringsAndStrutsView *view = (ALSpringsAndStrutsView *)[nibArray objectAtIndex:0];
    return view;
}


@end
