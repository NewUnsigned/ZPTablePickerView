//
//  SLSearchCityItem.m
//  ZPTablePickerView
//
//  Created by zp on 15/12/17.
//  Copyright © 2015年 zp. All rights reserved.
//

#import "SLSearchCityItem.h"

@implementation SLSearchCityItem

- (id)copyWithZone:(NSZone *)zone{
    SLSearchCityItem *item = [[SLSearchCityItem alloc]init];
    item.cityName = self.cityName;
    item.index    = self.index;
    return item;
}

-(NSComparisonResult)compareModel:(SLSearchCityItem *)model
{
    return [[NSNumber numberWithInteger:self.index] compare:[NSNumber numberWithInteger:model.index]];
}

@end
