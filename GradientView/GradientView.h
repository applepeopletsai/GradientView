//
//  GradientView.h
//  GradientView
//
//  Created by Daniel on 2017/9/18.
//  Copyright © 2017年 skywind. All rights reserved.
//

#import <UIKit/UIKit.h>
typedef enum : NSUInteger {
    LeftToRight,
    RightToLeft,
    TopToBottom,
    BottomToTop,
    TopLeftToBottomRight,
    TopRightToBottomLeft,
    BottomLeftToTopRight,
    BottomRightToTopLeft
} GradientLayerDirection;

@interface GradientView : UIView
@property (strong, nonatomic) NSArray <UIColor *>*colors;
@property (assign ,nonatomic) GradientLayerDirection direction;
@end
