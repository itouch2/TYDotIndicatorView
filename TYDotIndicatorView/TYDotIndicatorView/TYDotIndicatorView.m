//
//  TYDotIndicatorView.m
//  TYDotIndicatorView
//
//  Created by Tu You on 14-1-12.
//  Copyright (c) 2014年 Tu You. All rights reserved.
//

#import "TYDotIndicatorView.h"

static const NSUInteger dotNumber = 3;
static const NSInteger dotTag = 3;
static const CGFloat dotSeparatorDistance = 12.0f;

@interface TYDotIndicatorView ()

@property (nonatomic, assign) TYDotIndicatorViewStyle dotStyle;
@property (nonatomic, assign) BOOL animating;
@property (nonatomic, assign) CGSize dotSize;
@property (nonatomic, retain) UIColor *dotColor;

@end

@implementation TYDotIndicatorView

- (id)initWithFrame:(CGRect)frame
           dotStyle:(TYDotIndicatorViewStyle)style
           dotColor:(UIColor *)dotColor
            dotSize:(CGSize)dotSize
{
    self = [super initWithFrame:frame];
    
    if (self)
    {
        _dotStyle = style;
        _dotColor = dotColor;
        _dotSize = dotSize;
        
        CGFloat xPos = CGRectGetWidth(frame) / 2 - dotSize.width - dotSeparatorDistance;
        CGFloat yPos = CGRectGetHeight(frame) / 2;
        for (int i = 0; i < dotNumber; i++)
        {
            UIImageView *dot = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, dotSize.width, dotSize.height)];
            dot.center = CGPointMake(xPos + i * (dotSeparatorDistance + dotSize.width), yPos);
            dot.image = [self createDotImage];
            dot.alpha = 1 - 0.3 * i;
            dot.tag = dotTag + i;
            [self addSubview:dot];
        }

    }
    return self;
}

- (UIImage *)createDotImage
{
    UIGraphicsBeginImageContextWithOptions(self.dotSize, NO, 0);
    [self.dotColor setFill];
    
    CGFloat cornerRadius = 0.0f;
    if (_dotStyle == TYDotIndicatorViewStyleSquare)
    {
        cornerRadius = 0.0f;
    }
    else if (_dotStyle == TYDotIndicatorViewStyleRound)
    {
        cornerRadius = 2;
    }
    else if (_dotStyle == TYDotIndicatorViewStyleCircle)
    {
        cornerRadius = self.dotSize.width / 2;
    }
    
    UIBezierPath *bezierPath = [UIBezierPath bezierPathWithRoundedRect:CGRectMake(0, 0, self.dotSize.width, self.dotSize.height) cornerRadius:cornerRadius];
    [bezierPath fill];
    
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    
    UIGraphicsEndImageContext();
    
    return image;
}

- (CAAnimation *)fadeInAnimation:(CFTimeInterval)delay
{
    CABasicAnimation *animation = [CABasicAnimation animationWithKeyPath:@"opacity"];
    animation.fromValue = @(0.3f);
    animation.toValue = @(1.0f);
    animation.duration = 0.9f;
    animation.beginTime = delay;
    animation.autoreverses = YES;
    animation.repeatCount = HUGE_VAL;
    return animation;
}

- (void)startAnimating
{
    if (_animating)
    {
        return;
    }
    
    for (int i = 0; i < dotNumber; i++)
    {
        UIView *dot = [self viewWithTag:dotTag + i];
        [dot.layer addAnimation:[self fadeInAnimation:i * 0.4] forKey:@"fadeIn"];
    }
    _animating = YES;
}

- (void)stopAnimating
{
    for (int i = 0; i < dotNumber; i++)
    {
        UIView *dot = [self viewWithTag:dotTag + i];
        [dot.layer removeAllAnimations];
    }
    _animating = NO;
}

- (BOOL)isAnimating
{
    return _animating;
}

- (void)removeFromSuperview
{
    [self stopAnimating];
    [super removeFromSuperview];
}

@end
