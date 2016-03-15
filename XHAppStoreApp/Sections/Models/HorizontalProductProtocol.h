//
//  HorizontalProductProtocol.h
//  XHAppStoreApp
//
//  Created by dw_iOS on 14-11-21.
//  Copyright (c) 2014年 嗨，我是曾宪华(@xhzengAIB)，曾加入YY Inc.担任高级移动开发工程师，拍立秀App联合创始人，热衷于简洁、而富有理性的事物 QQ:543413507 主页:http://zengxianhua.com All rights reserved.
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
