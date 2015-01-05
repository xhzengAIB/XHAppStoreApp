//
//  ProductsRecommendedTableViewController.m
//  XHAppStoreApp
//
//  Created by dw_iOS on 14-11-21.
//  Copyright (c) 2014年 广州华多网络科技有限公司 多玩事业部 iOS软件工程师 曾宪华 QQ：543413507. All rights reserved.
//

#import "ProductsRecommendedTableViewController.h"

#import "HorizontalProductScrolllTableViewCell.h"

#import "ProductCollectionViewCell.h"

#import "XScrollDataSourceAccess.h"
#import "XScrollDataSourceMapping.h"

#import "ProductManagerItem.h"

@interface ProductsRecommendedTableViewController () <ASOXScrollTableViewCellDelegate> {
    
    HorizontalProductScrolllTableViewCell *_horizontalProductScrolllTableViewCell;
}

@property (nonatomic, strong) UIImageView *bannerImageView;

@property (nonatomic, strong) NSArray *dataSource;

@end

@implementation ProductsRecommendedTableViewController

- (void)awakeFromNib {
    self.tabBarItem = [[UITabBarItem alloc] initWithTitle:@"精品推荐" image:nil tag:0];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    XScrollDataSourceMapping *itemsByCategoryKeys = [[XScrollDataSourceMapping alloc] initWithClassName:@"ProductManagerItem" forKeys:@[@"productSetName", @"products"]];
    
    self.dataSource = [NSArray arrayWithArray:[XScrollDataSourceAccess retrieveObjectsFromPath:@"xscrolldata" ofType:@"json" atRootKeyPath:@"result" forDataSourceMapping:itemsByCategoryKeys]];
    
    [self setupBannerView:self.bannerImageView];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Propertys

- (UIImageView *)bannerImageView {
    if (!_bannerImageView) {
        _bannerImageView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, CGRectGetWidth(self.view.bounds), 140)];
        _bannerImageView.image = [UIImage imageNamed:@"Banner"];
        _bannerImageView.autoresizingMask = UIViewAutoresizingFlexibleWidth;
    }
    return _bannerImageView;
}

#pragma mark - Table view data source

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.dataSource.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    static NSString *cellIdentifier = @"CellIdentifier";
    
    _horizontalProductScrolllTableViewCell = (HorizontalProductScrolllTableViewCell *)[HorizontalProductScrolllTableViewCell tableView:tableView cellForRowInTableViewIndexPath:indexPath withReusableCellIdentifier:cellIdentifier delegate:self];
    _horizontalProductScrolllTableViewCell.contentCellClass = @"ProductCollectionViewCell";
    _horizontalProductScrolllTableViewCell.productManagerIteml = self.dataSource[indexPath.row];
    
    return _horizontalProductScrolllTableViewCell;
}

#pragma mark - Table view delegate

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    // Synchronize the height of each table row which hold the ASOXScrollTableViewCell.
    CGFloat result = _horizontalProductScrolllTableViewCell.contentCellSize.height + 20 + 30 + 10;
    
    return result;
}

#pragma mark - ASOXScrollTableViewCellDelegate

- (NSInteger)horizontalScrollContentsView:(UICollectionView *)horizontalScrollContentsView numberOfItemsInTableViewIndexPath:(NSIndexPath *)tableViewIndexPath {
    
    // Return the number of items in each category to be displayed on each ASOXScrollTableViewCell object
    ProductManagerItem *managerItem = self.dataSource[tableViewIndexPath.row];
    
    return managerItem.products.count;
}

- (UICollectionViewCell *)horizontalScrollContentsView:(UICollectionView *)horizontalScrollContentsView cellForItemAtContentIndexPath:(NSIndexPath *)contentIndexPath inTableViewIndexPath:(NSIndexPath *)tableViewIndexPath {
    
    static NSString *cellIdentifier = @"ProductCollectionViewCell";
    
    ProductCollectionViewCell *cell = (ProductCollectionViewCell *)[horizontalScrollContentsView dequeueReusableCellWithReuseIdentifier:cellIdentifier forIndexPath:contentIndexPath];
    
    ProductManagerItem *managerItem = self.dataSource[tableViewIndexPath.row];

    
    cell.productIteml = managerItem.products[contentIndexPath.row];
    
    
    return cell;
}

- (void)horizontalScrollContentsView:(UICollectionView *)horizontalScrollContentsView didSelectItemAtContentIndexPath:(NSIndexPath *)contentIndexPath inTableViewIndexPath:(NSIndexPath *)tableViewIndexPath {
    
    [horizontalScrollContentsView deselectItemAtIndexPath:contentIndexPath animated:YES]; // A custom behaviour in this example for removing highlight from the cell immediately after it had been selected
    
    NSLog(@"Section %ld Row %ld Item %ld is selected", (unsigned long)tableViewIndexPath.section, (unsigned long)tableViewIndexPath.row, (unsigned long)contentIndexPath.item);
}

@end
