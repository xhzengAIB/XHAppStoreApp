//
//  BaseBannerTableViewController.m
//  XHAppStoreApp
//
//  Created by dw_iOS on 14-11-24.
//  Copyright (c) 2014年 广州华多网络科技有限公司 多玩事业部 iOS软件工程师 曾宪华 QQ：543413507. All rights reserved.
//

#import "BaseBannerTableViewController.h"

@interface BaseBannerTableViewController ()

@property (nonatomic, weak) UIView *bannerView;

@end

@implementation BaseBannerTableViewController

- (void)setupBannerView:(UIView *)bannerView {
    if (self.bannerView) {
        [self.bannerView removeFromSuperview];
        self.bannerView = nil;
    }
    [self.tableView addSubview:bannerView];
    self.bannerView = bannerView;
}

#pragma mark - Life Cycle

- (void)viewDidLayoutSubviews {
    [super viewDidLayoutSubviews];
    if ([self respondsToSelector:@selector(topLayoutGuide)]) {
        UIEdgeInsets currentInsets = self.tableView.contentInset;
        if (currentInsets.top != CGRectGetHeight(self.bannerView.bounds) + self.topLayoutGuide.length) {
            self.tableView.contentInset = (UIEdgeInsets) {
                .top = CGRectGetHeight(self.bannerView.bounds) + self.topLayoutGuide.length,
                .bottom = currentInsets.bottom,
                .left = currentInsets.left,
                .right = currentInsets.right
            };
            [self.tableView setContentOffset:CGPointMake(0, -self.tableView.contentInset.top)];
        }
    }
}

#pragma mark - UIScrollView Delegate

- (void)scrollViewDidScroll:(UIScrollView *)scrollView {
    CGFloat max = CGRectGetHeight(self.bannerView.bounds);
    if ([self respondsToSelector:@selector(topLayoutGuide)]) {
        max += self.topLayoutGuide.length;
    }
    CGPoint offset = scrollView.contentOffset;
    if (-offset.y > max) {
        // 开始固定位置
        // 意思需要改变frame
        CGRect bannerFrame = self.bannerView.frame;
        CGFloat originY = offset.y;
        if ([self respondsToSelector:@selector(topLayoutGuide)]) {
            originY += self.topLayoutGuide.length;
        }
        bannerFrame.origin.y = originY;
        self.bannerView.frame = bannerFrame;
    }
}

@end
