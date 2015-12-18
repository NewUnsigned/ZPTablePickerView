//
//  SLSearchCityPickView.h
//  ZPTablePickerView
//
//  Created by zp on 15/12/17.
//  Copyright © 2015年 zp. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef void(^SelectValueBlock)(NSString *country,NSString *city);

@interface ZPTablePickerView : UIView

@property (copy, nonatomic) SelectValueBlock selectBlock;

@property (copy, nonatomic) NSString *countryUrl;

@end
