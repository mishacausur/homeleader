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
@property (nonatomic, retain) UICollectionViewFlowLayout * layout;
@end

typedef void(^Completion)(void);

@implementation MainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSCollectionLayoutSection * _Nullable(^sectionProvider)(NSInteger, id<NSCollectionLayoutEnvironment> _Nonnull) = ^NSCollectionLayoutSection * _Nullable (NSInteger sectionIndex, id<NSCollectionLayoutEnvironment> _Nonnull layoutEnvironment) {
        return nil;
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
