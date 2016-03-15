//
//  ProductItem.m
//  XHAppStoreApp
//
//  Created by dw_iOS on 14-11-24.
//  Copyright (c) 2014年 嗨，我是曾宪华(@xhzengAIB)，曾加入YY Inc.担任高级移动开发工程师，拍立秀App联合创始人，热衷于简洁、而富有理性的事物 QQ:543413507 主页:http://zengxianhua.com All rights reserved.
//

#import "ProductItem.h"

@implementation ProductItem
@synthesize productThumbnail;

@synthesize productName;
@synthesize productCategoryName;
@synthesize productPrice;

+ (NSArray *)mappedJSONS:(NSArray *)jsons {
    NSMutableArray *mappedObjects = [[NSMutableArray alloc] init];
    
    for (int i = 0; i < jsons.count; i ++) {
        NSDictionary *json = [jsons objectAtIndex:i];
        ProductItem *item = [[ProductItem alloc] init];
        item.productThumbnail = [json valueForKey:@"productThumbnail"];
        
        item.productName = [json valueForKey:@"productName"];
        item.productCategoryName = [json valueForKey:@"productCategoryName"];
        item.productPrice = [json valueForKey:@"productPrice"];
        [mappedObjects addObject:item];
    }
    
    return mappedObjects;
}

@end
