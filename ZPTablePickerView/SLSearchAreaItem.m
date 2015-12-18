//
//  SLSearchAreaItem.m
//  ZPTablePickerView
//
//  Created by zp on 15/12/17.
//  Copyright © 2015年 zp. All rights reserved.
//

#import "SLSearchAreaItem.h"

@implementation SLSearchAreaItem
-(NSComparisonResult)compareModel:(SLSearchAreaItem *)model
{
    model.fold = NO;
    return [[NSNumber numberWithInteger:self.index] compare:[NSNumber numberWithInteger:model.index]];
}
@end
