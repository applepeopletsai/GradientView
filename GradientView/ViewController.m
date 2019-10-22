//
//  ViewController.m
//  GradientView
//
//  Created by Daniel on 2017/9/18.
//  Copyright © 2017年 skywind. All rights reserved.
//

#import "ViewController.h"
#import "GradientView.h"


@interface ViewController ()
@property (weak, nonatomic) IBOutlet GradientView *gview;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // StoryBoard
    self.gview.colors = @[[UIColor redColor],[UIColor yellowColor]];
    self.gview.direction = TopLeftToBottomRight;
    
    // Code
    GradientView *view = [[GradientView alloc]initWithFrame:CGRectMake(0, 40, 100, 100)];
    view.colors = @[[UIColor groupTableViewBackgroundColor],[UIColor grayColor],[UIColor groupTableViewBackgroundColor]];
    view.direction = RightToLeft;
    [self.view addSubview:view];
}

@end
