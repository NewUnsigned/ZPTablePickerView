//
//  SLSearchAreaItem.h
//  ZPTablePickerView
//
//  Created by zp on 15/12/17.
//  Copyright © 2015年 zp. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface SLSearchAreaItem : NSObject
/*
*  是否展开
*/
@property (assign, nonatomic,getter=isFold) BOOL fold;

@property (copy, nonatomic) NSString *country;

/**
 *  存放city的数据模型数组
 */
@property (strong, nonatomic) NSArray *cityArray;

@property (assign, nonatomic) NSUInteger index;

-(NSComparisonResult)compareModel:(SLSearchAreaItem *)model;

@end
