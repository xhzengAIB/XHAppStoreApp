//
//  HorizontalProductScrolllTableViewCell.m
//  XHAppStoreApp
//
//  Created by dw_iOS on 14-11-21.
//  Copyright (c) 2014年 广州华多网络科技有限公司 多玩事业部 iOS软件工程师 曾宪华 QQ：543413507. All rights reserved.
//

#import "HorizontalProductScrolllTableViewCell.h"

@interface HorizontalProductScrolllTableViewCell ()

@property (nonatomic, strong) UILabel *productSetNameLabel;
@property (nonatomic, strong) UIButton *lookProductSetButton;


@end

@implementation HorizontalProductScrolllTableViewCell

#pragma mark - Life Cycle

- (void)willMoveToSuperview:(UIView *)newSuperview {
    if (newSuperview) {
        [self.contentView addSubview:self.productSetNameLabel];
        [self.contentView addSubview:self.lookProductSetButton];
    }
}

- (void)layoutSubviews {
    [super layoutSubviews];
    CGRect horizontalScrollContentsViewFrameRect = CGRectMake(self.contentView.bounds.origin.x, self.contentView.bounds.origin.y + CGRectGetMaxY(self.productSetNameLabel.frame) + 10, self.contentView.bounds.size.width, self.contentCellSize.height);
    self.horizontalScrollContentsView.frame = horizontalScrollContentsViewFrameRect;
}

#pragma mark - Propertys

- (void)setProductManagerIteml:(id<HorizontalProductSetProtocol>)productManagerIteml {
    if (_productManagerIteml == productManagerIteml) {
        return;
    }
    
    _productManagerIteml = productManagerIteml;
    
    self.productSetNameLabel.text = productManagerIteml.productSetName;
}

- (UILabel *)productSetNameLabel {
    if (!_productSetNameLabel) {
        _productSetNameLabel = [[UILabel alloc] initWithFrame:CGRectMake(20, 20, CGRectGetWidth(self.contentView.bounds) * 0.5, 30)];
        _productSetNameLabel.font = [UIFont boldSystemFontOfSize:18];
        _productSetNameLabel.backgroundColor = [UIColor whiteColor];
        _productSetNameLabel.textColor = [UIColor blackColor];
    }
    return _productSetNameLabel;
}

- (UIButton *)lookProductSetButton {
    if (!_lookProductSetButton) {
        CGFloat width = 60;
        CGFloat height = 20;
        _lookProductSetButton = [[UIButton alloc] initWithFrame:CGRectMake(CGRectGetWidth(self.contentView.bounds) - width - 20, 0, width, height)];
        _lookProductSetButton.titleLabel.font = [UIFont systemFontOfSize:14];
        [_lookProductSetButton setTitleColor:[UIColor grayColor] forState:UIControlStateNormal];
        [_lookProductSetButton setTitle:@"查看全部" forState:UIControlStateNormal];
        CGPoint center = _lookProductSetButton.center;
        center.y = CGRectGetMidY(self.productSetNameLabel.frame);
        _lookProductSetButton.center = center;
    }
    return _lookProductSetButton;
}

@end
