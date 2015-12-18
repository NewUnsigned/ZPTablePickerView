//
//  SLSearchReuseHeaderView.m
//  ZPTablePickerView
//
//  Created by zp on 15/12/17.
//  Copyright © 2015年 zp. All rights reserved.
//

#import "SLSearchReuseHeaderView.h"
#import "VBFPopFlatButton.h"
#import "UIView+SLAddition.h"

@interface SLSearchReuseHeaderView ()

@property (weak, nonatomic) VBFPopFlatButton *arrowButton;
@property (weak, nonatomic) UILabel *titleLabel;
@property (weak, nonatomic) UIButton *viewButton;

@end

@implementation SLSearchReuseHeaderView

- (instancetype)initWithReuseIdentifier:(NSString *)reuseIdentifier{
    if (self = [super initWithReuseIdentifier:reuseIdentifier]) {
        if (_arrowButton == nil) {
            [self commentInit];
        }
    }
    return self;
}

- (void)commentInit{
    CGRect btnFrame = CGRectMake(0, 0, 20, 20);
    VBFPopFlatButton *arrowButton = [[VBFPopFlatButton alloc]initWithFrame:btnFrame buttonType:buttonDownBasicType buttonStyle:buttonPlainStyle animateToInitialState:YES];
    arrowButton.tintColor = [UIColor whiteColor];
    arrowButton.lineThickness = 1;
    _arrowButton = arrowButton;
    [self addSubview:arrowButton];
    UIButton *viewBtn = [[UIButton alloc]init];
    _viewButton = viewBtn;
    [viewBtn addTarget:self action:@selector(viewButtonDidClicked:) forControlEvents:UIControlEventTouchUpInside];
    [self addSubview:_viewButton];
    UILabel *titleLabel = [[UILabel alloc]init];
    titleLabel.font = [UIFont systemFontOfSize:16];
    titleLabel.textColor = [UIColor whiteColor];
    titleLabel.textAlignment = NSTextAlignmentCenter;
    _titleLabel = titleLabel;
    [self addSubview:titleLabel];
}

- (void)layoutSubviews{
    [super layoutSubviews];
    _arrowButton.frame = CGRectMake(self.width_ - 50, (self.height_ - 20) * 0.5, 20, 20);
    _titleLabel.frame  = CGRectMake(0, 0, 100, self.height_);
    _viewButton.frame  = self.bounds;
}

- (void)viewButtonDidClicked:(UIButton *)btn{
    if ([self.delegate respondsToSelector:@selector(reuseView:didClickedTitleButton:)]) {
        [self.delegate reuseView:self didClickedTitleButton:_arrowButton];
    }
}

- (void)setTitle:(NSString *)title{
    _title = title;
    _titleLabel.text = title;
}

- (void)setIndex:(NSUInteger)index{
    _index = index;
    _arrowButton.tag = index;
}

- (void)setIsUp:(BOOL)isUp{
    _isUp = isUp;
    FlatButtonType type = isUp ? buttonUpBasicType : buttonDownBasicType;
    [_arrowButton animateToType:type];
}

@end
