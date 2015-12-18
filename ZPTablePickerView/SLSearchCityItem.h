//
//  SLSearchCityItem.h
//  ZPTablePickerView
//
//  Created by zp on 15/12/17.
//  Copyright © 2015年 zp. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface SLSearchCityItem : NSObject <NSCopying>
@property (copy, nonatomic) NSString *cityName;
@property (assign, nonatomic) NSUInteger index;

-(NSComparisonResult)compareModel:(SLSearchCityItem *)model;

@end
