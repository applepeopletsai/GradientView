//
//  GradientView.m
//  GradientView
//
//  Created by Daniel on 2017/9/18.
//  Copyright © 2017年 skywind. All rights reserved.
//

#import "GradientView.h"

@interface GradientView ()
@end

@implementation GradientView

- (instancetype)initWithCoder:(NSCoder *)aDecoder {
    self = [super initWithCoder:aDecoder];
    return self;
}

- (void)layoutSubviews {
    [super layoutSubviews];
    
    CAGradientLayer *gradientLayer = [[CAGradientLayer alloc]init];
    gradientLayer.frame = self.bounds;
    
    NSMutableArray *array = [[NSMutableArray alloc]init];
    for (UIColor *color in self.colors) {
        [array addObject:(id)color.CGColor];
    }
    if (array.count == 0) {
        array = @[(id)[UIColor blackColor].CGColor].mutableCopy;
    }
    gradientLayer.colors = array;
    
    switch (self.direction) {
        case LeftToRight:
            gradientLayer.startPoint = CGPointMake(0.0, 0.0);
            gradientLayer.endPoint = CGPointMake(1.0, 0.0);
            break;
        case RightToLeft:
            gradientLayer.startPoint = CGPointMake(1.0, 0.0);
            gradientLayer.endPoint = CGPointMake(0.0, 0.0);
            break;
        case TopToBottom:
            gradientLayer.startPoint = CGPointMake(0.0, 0.0);
            gradientLayer.endPoint = CGPointMake(0.0, 1.0);
            break;
        case BottomToTop:
            gradientLayer.startPoint = CGPointMake(0.0, 1.0);
            gradientLayer.endPoint = CGPointMake(0.0, 0.0);
            break;
        case TopLeftToBottomRight:
            gradientLayer.startPoint = CGPointMake(0.0, 0.0);
            gradientLayer.endPoint = CGPointMake(1.0, 1.0);
            break;
        case TopRightToBottomLeft:
            gradientLayer.startPoint = CGPointMake(1.0, 0.0);
            gradientLayer.endPoint = CGPointMake(0.0, 1.0);
            break;
        case BottomLeftToTopRight:
            gradientLayer.startPoint = CGPointMake(0.0, 1.0);
            gradientLayer.endPoint = CGPointMake(1.0, 0.0);
            break;
        case BottomRightToTopLeft:
            gradientLayer.startPoint = CGPointMake(1.0, 1.0);
            gradientLayer.endPoint = CGPointMake(0.0, 0.0);
            break;
        default:
            gradientLayer.startPoint = CGPointMake(0.0, 0.0);
            gradientLayer.endPoint = CGPointMake(0.0, 1.0);
            break;
    }
    [self.layer addSublayer:gradientLayer];
}

@end
