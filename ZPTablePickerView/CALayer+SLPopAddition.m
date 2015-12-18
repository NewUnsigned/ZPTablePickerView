//
//  CALayer+SLPopAddition.m
//  ZPTablePickerView
//
//  Created by zp on 15/12/17.
//  Copyright © 2015年 zp. All rights reserved.
//

#import "CALayer+SLPopAddition.h"
#import "POP.h"

NSString * const kSLLayerBackgroundColor        = @"backgroundColor";
NSString * const kSLLayerBounds                 = @"bounds";
NSString * const kSLLayerCornerRadius           = @"cornerRadius";
NSString * const kSLLayerBorderWidth            = @"borderWidth";
NSString * const kSLLayerBorderColor            = @"borderColor";
NSString * const kSLLayerOpacity                = @"opacity";
NSString * const kSLLayerPosition               = @"position";
NSString * const kSLLayerPositionX              = @"positionX";
NSString * const kSLLayerPositionY              = @"positionY";
NSString * const kSLLayerRotation               = @"rotation";
NSString * const kSLLayerRotationX              = @"rotationX";
NSString * const kSLLayerRotationY              = @"rotationY";
NSString * const kSLLayerScaleX                 = @"scaleX";
NSString * const kSLLayerScaleXY                = @"scaleXY";
NSString * const kSLLayerScaleY                 = @"scaleY";
NSString * const kSLLayerSize                   = @"size";
NSString * const kSLLayerSubscaleXY             = @"subscaleXY";
NSString * const kSLLayerSubtranslationX        = @"subtranslationX";
NSString * const kSLLayerSubtranslationXY       = @"subtranslationXY";
NSString * const kSLLayerSubtranslationY        = @"subtranslationY";
NSString * const kSLLayerSubtranslationZ        = @"subtranslationZ";
NSString * const kSLLayerTranslationX           = @"translationX";
NSString * const kSLLayerTranslationXY          = @"translationXY";
NSString * const kSLLayerTranslationY           = @"translationY";
NSString * const kSLLayerTranslationZ           = @"translationZ";
NSString * const kSLLayerZPosition              = @"zPosition";
NSString * const kSLLayerShadowColor            = @"shadowColor";
NSString * const kSLLayerShadowOffset           = @"shadowOffset";
NSString * const kSLLayerShadowOpacity          = @"shadowOpacity";
NSString * const kSLLayerShadowRadius           = @"shadowRadius";

@implementation CALayer (SLPopAddition)

// MARK: BASIC

- (void)sl_basicWithName:(NSString *)name to:(id)toValue duration:(CGFloat)duration key:(NSString *)key complete:(SLPopComplete)complete{
    POPBasicAnimation *basicAnimation = [POPBasicAnimation animationWithPropertyNamed:name];
    basicAnimation.toValue   = toValue;
    basicAnimation.duration = duration;
    basicAnimation.completionBlock = complete;
    [self pop_addAnimation:basicAnimation forKey:key];
}

- (void)sl_basicWithName:(NSString *)name from:(id)fromValue to:(id)toValue duration:(CGFloat)duration key:(NSString *)key complete:(SLPopComplete)complete{
    POPBasicAnimation *basicAnimation = [POPBasicAnimation animationWithPropertyNamed:name];
    basicAnimation.toValue   = toValue;
    basicAnimation.fromValue = fromValue;
    basicAnimation.duration = duration;
    basicAnimation.completionBlock = complete;
    [self pop_addAnimation:basicAnimation forKey:key];
}

// MARK: SPRING

- (void)sl_springWithName:(NSString *)propertyNamed to:(id)toValue bounce:(CGFloat)bounce speed:(CGFloat)speed key:(NSString *)key complete:(SLPopComplete)complete{
    POPSpringAnimation *springAnimation = [POPSpringAnimation animationWithPropertyNamed:propertyNamed];
    springAnimation.toValue    = toValue;
    springAnimation.springBounciness = bounce;
    springAnimation.springSpeed = speed;
    springAnimation.completionBlock = complete;
    [self pop_addAnimation:springAnimation forKey:key];
}

- (void)sl_springWithName:(NSString *)propertyNamed from:(id)fromValue to:(id)toValue bounce:(CGFloat)bounce speed:(CGFloat)speed key:(NSString *)key complete:(SLPopComplete)complete{
    POPSpringAnimation *springAnimation = [POPSpringAnimation animationWithPropertyNamed:propertyNamed];
    springAnimation.fromValue  = fromValue;
    springAnimation.toValue    = toValue;
    springAnimation.springBounciness = bounce;
    springAnimation.springSpeed = speed;
    springAnimation.completionBlock = complete;
    [self pop_addAnimation:springAnimation forKey:key];
}

- (void)sl_removeAllAnimations{
    [self pop_removeAllAnimations];
}

@end
