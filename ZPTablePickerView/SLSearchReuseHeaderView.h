//
//  SLSearchReuseHeaderView.h
//  ZPTablePickerView
//
//  Created by zp on 15/12/17.
//  Copyright © 2015年 zp. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol SLSearchReuseHeaderViewDelegate;

@interface SLSearchReuseHeaderView : UITableViewHeaderFooterView
@property (copy, nonatomic) NSString *title;
@property (assign, nonatomic) BOOL isUp;
@property (assign, nonatomic) NSUInteger index;
@property (weak, nonatomic) id<SLSearchReuseHeaderViewDelegate> delegate;

@end

@protocol SLSearchReuseHeaderViewDelegate <NSObject>

- (void)reuseView:(SLSearchReuseHeaderView *)view didClickedTitleButton:(UIButton *)btn;

@end