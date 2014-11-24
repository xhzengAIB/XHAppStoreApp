//
//  ProductCollectionViewCell.m
//  XHAppStoreApp
//
//  Created by dw_iOS on 14-11-24.
//  Copyright (c) 2014年 广州华多网络科技有限公司 多玩事业部 iOS软件工程师 曾宪华 QQ：543413507. All rights reserved.
//

#import "ProductCollectionViewCell.h"

@interface ProductCollectionViewCell ()

@property (nonatomic, strong) IBOutlet UIImageView *productThumbnailImageView;

@property (nonatomic, strong) IBOutlet UILabel *productNameLabel;
@property (nonatomic, strong) IBOutlet UILabel *productCategoryNameLabel;
@property (nonatomic, strong) IBOutlet UILabel *productPriceLabel;

@end

@implementation ProductCollectionViewCell

- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        [self.contentView addSubview:self.productThumbnailImageView];
        [self.contentView addSubview:self.productNameLabel];
        [self.contentView addSubview:self.productCategoryNameLabel];
        [self.contentView addSubview:self.productPriceLabel];
    }
    return self;
}

#pragma mark - Propertys

- (void)setProductIteml:(id<HorizontalProductProtocol>)productIteml {
    if (_productIteml == productIteml) {
        return;
    }
    
    _productIteml = productIteml;
    
    self.productThumbnailImageView.image = [UIImage imageNamed:productIteml.productThumbnail];
    
    self.productNameLabel.text = productIteml.productName;
    self.productCategoryNameLabel.text = productIteml.productCategoryName;
    self.productPriceLabel.text = productIteml.productPrice;
}

@end
