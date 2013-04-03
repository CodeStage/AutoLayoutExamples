//
//  ALSpringsAndStrutsViewController.m
//  Auto Layout
//
//  Created by CKO on 03.04.13.
//  Copyright (c) 2013 CodeStage. All rights reserved.
//

#import "ALSpringsAndStrutsViewController.h"
#import "ALSpringsAndStrutsView.h"


@interface ALSpringsAndStrutsViewController ()

@property (nonatomic, strong) ALSpringsAndStrutsView *springsAndStrutsView;

@end


@implementation ALSpringsAndStrutsViewController


- (id)init
{
    return [super init];
}


- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self)
    {

    }
    return self;
}


- (id)initWithCoder:(NSCoder *)aDecoder
{
    self = [super initWithCoder:aDecoder];
    if (self)
    {
        
    }
    return self;
}


- (void)loadView
{
    [super loadView];
    
    self.springsAndStrutsView = [ALSpringsAndStrutsView viewFromNib];
}


- (void)viewDidLoad
{
    [super viewDidLoad];
    
	[self.view addSubview:self.springsAndStrutsView];
    
//    self.springsAndStrutsView.translatesAutoresizingMaskIntoConstraints = YES;
    self.springsAndStrutsView.frame = self.view.bounds;
}


@end
