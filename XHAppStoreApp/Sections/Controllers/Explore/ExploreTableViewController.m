//
//  ExploreTableViewController.m
//  XHAppStoreApp
//
//  Created by dw_iOS on 14-11-21.
//  Copyright (c) 2014年 广州华多网络科技有限公司 多玩事业部 iOS软件工程师 曾宪华 QQ：543413507. All rights reserved.
//

#import "ExploreTableViewController.h"

@interface ExploreTableViewController ()

@property (nonatomic, strong) UIImageView *bannerImageView;

@end

@implementation ExploreTableViewController

- (void)awakeFromNib {
    self.tabBarItem = [[UITabBarItem alloc] initWithTitle:@"探索" image:nil tag:2];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self setupBannerView:self.bannerImageView];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Propertys

- (UIImageView *)bannerImageView {
    if (!_bannerImageView) {
        _bannerImageView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, CGRectGetWidth(self.view.bounds), 200)];
        _bannerImageView.image = [UIImage imageNamed:@"Banner_Expolor"];
        _bannerImageView.autoresizingMask = UIViewAutoresizingFlexibleWidth;
    }
    return _bannerImageView;
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    // Return the number of rows in the section.
    return 20;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *cellIdentifier = @"CellIdentifier";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier forIndexPath:indexPath];
    
    // Configure the cell...
    cell.textLabel.text = @"测试";
    
    return cell;
}

#pragma mark - Table view delegate

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 60;
}

@end
