//
//  SLSearchAreaCell.m
//  ZPTablePickerView
//
//  Created by zp on 15/12/17.
//  Copyright © 2015年 zp. All rights reserved.
//

#import "SLSearchAreaCell.h"
#import "UIView+SLAddition.h"

@interface SLSearchAreaCell ()

@property (weak, nonatomic) UILabel *cellTitle;
@property (weak, nonatomic) UIView *line;

@end

@implementation SLSearchAreaCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        UILabel *title = [[UILabel alloc]init];
        title.font = [UIFont systemFontOfSize:14];
        title.textColor = [UIColor whiteColor];
        [self addSubview:title];
        _cellTitle = title;
        title.textAlignment = NSTextAlignmentCenter;
        self.backgroundColor = [UIColor clearColor];
        
        UIView *line = [[UIView alloc]init];
        line.backgroundColor = [[UIColor colorWithRed:242/255.0 green:246/255.0 blue:248/255.0 alpha:1] colorWithAlphaComponent:0.3];
        _line = line;
        [self addSubview:line];
    }
    return self;
}

- (void)layoutSubviews{
    _cellTitle.frame = CGRectMake(0, 0, self.width_, self.height_);
    _line.frame = CGRectMake(0, self.height_ - 1, self.width_, 1);
}

- (void)setCityItem:(SLSearchCityItem *)cityItem{
    _cityItem = cityItem;
    _cellTitle.text = _cityItem.cityName;
}

@end
