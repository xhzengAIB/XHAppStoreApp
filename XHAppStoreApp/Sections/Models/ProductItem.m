//
//  ProductItem.m
//  XHAppStoreApp
//
//  Created by dw_iOS on 14-11-24.
//  Copyright (c) 2014年 广州华多网络科技有限公司 多玩事业部 iOS软件工程师 曾宪华 QQ：543413507. All rights reserved.
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
