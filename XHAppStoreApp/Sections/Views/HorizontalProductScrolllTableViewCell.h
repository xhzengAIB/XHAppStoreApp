//
//  HorizontalProductScrolllTableViewCell.h
//  XHAppStoreApp
//
//  Created by dw_iOS on 14-11-21.
//  Copyright (c) 2014年 广州华多网络科技有限公司 多玩事业部 iOS软件工程师 曾宪华 QQ：543413507. All rights reserved.
//

#import "ASOXScrollTableViewCell.h"
#import "HorizontalProductProtocol.h"

@interface HorizontalProductScrolllTableViewCell : ASOXScrollTableViewCell

@property (nonatomic, strong) id <HorizontalProductSetProtocol> productManagerIteml;

@end
