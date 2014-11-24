//
//  HorizontalProductProtocol.h
//  XHAppStoreApp
//
//  Created by dw_iOS on 14-11-21.
//  Copyright (c) 2014年 广州华多网络科技有限公司 多玩事业部 iOS软件工程师 曾宪华 QQ：543413507. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol HorizontalProductSetProtocol <NSObject>

@property (nonatomic, copy) NSString *productSetName;

@property (nonatomic, strong) NSArray *products;

@end

@protocol HorizontalProductProtocol <NSObject>

@property (nonatomic, copy) NSString *productThumbnail;

@property (nonatomic, copy) NSString *productName;

@property (nonatomic, copy) NSString *productCategoryName;

@property (nonatomic, copy) NSString *productPrice;

@end
