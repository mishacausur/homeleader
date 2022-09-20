//
//  ViewController.m
//  homeleader
//
//  Created by Misha Causur on 01.09.2022.
//

#import "MainViewController.h"
#import "homeleader-Swift.h"

@interface MainViewController () <UICollectionViewDelegate, UICollectionViewDataSource>
@property (nonatomic, retain) UICollectionView * collectionView;
@property (nonatomic, retain) UICollectionViewCompositionalLayout * layout;
@end

typedef void(^Completion)(void);

@implementation MainViewController

- (__kindof UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    UICollectionViewCell * cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"CellID" forIndexPath:indexPath];
    switch (indexPath.section) {
        case 0:
            cell.backgroundColor = UIColor.blueColor;
            break;
        case 1:
            cell.backgroundColor = UIColor.redColor;
            break;
        case 2:
            cell.backgroundColor = UIColor.greenColor;
            break;
        case 3:
            cell.backgroundColor = UIColor.redColor;
            break;
        default:
            cell.backgroundColor = UIColor.systemCyanColor;
            break;
    }
    return cell;
}

- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {
    return 1;
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    switch (section) {
        case 0:
            return 10;
            break;
        case 1:
            return 10;
            break;
        case 2:
            return 3;
            break;
        case 3:
            return 10;
            break;
        default:
            return 0;
            break;
    }
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSCollectionLayoutSection * _Nullable(^sectionProvider)(NSInteger, id<NSCollectionLayoutEnvironment> _Nonnull) = ^NSCollectionLayoutSection * _Nullable (NSInteger sectionIndex, id<NSCollectionLayoutEnvironment> _Nonnull layoutEnvironment) {
        if (sectionIndex == 0) {
            NSCollectionLayoutSize * itemSize = [NSCollectionLayoutSize sizeWithWidthDimension: [NSCollectionLayoutDimension absoluteDimension: (UIScreen.mainScreen.bounds.size.width / 3)] heightDimension: [NSCollectionLayoutDimension absoluteDimension: (100)]];
            NSCollectionLayoutItem * item = [NSCollectionLayoutItem itemWithLayoutSize:itemSize];
            item.contentInsets = NSDirectionalEdgeInsetsMake(10, 10, 10, 10)
        }
        
        
    };
    UICollectionViewCompositionalLayoutConfiguration * configuration = [[UICollectionViewCompositionalLayoutConfiguration alloc] init];
    self->_layout = [[UICollectionViewCompositionalLayout alloc] initWithSectionProvider:sectionProvider configuration:configuration];
    [self.view addSubview:_collectionView];
    _collectionView = [[UICollectionView alloc] initWithFrame:CGRectZero collectionViewLayout:_layout];
    _collectionView.translatesAutoresizingMaskIntoConstraints = false;
    
    [_collectionView.topAnchor constraintEqualToAnchor:self.view.topAnchor].active = YES;
    [_collectionView.leadingAnchor constraintEqualToAnchor:self.view.leadingAnchor].active = YES;
    [_collectionView.trailingAnchor constraintEqualToAnchor:self.view.trailingAnchor].active = YES;
    [_collectionView.bottomAnchor constraintEqualToAnchor:self.view.bottomAnchor].active = YES;
    
    _collectionView.delegate = self;
    _collectionView.dataSource = self;
    [_collectionView registerClass:UICollectionView.class forCellWithReuseIdentifier:@"CellID"];
}

Completion completion = ^(void) {
    
};

- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
//    UIViewController *mainViewController = [[MainViewBridge new] makeMainViewUI];
//    [self presentViewController:mainViewController animated:YES completion: completion];
}

@end
