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
    
    
}

Completion completion = ^(void) {
    
};

- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
//    UIViewController *mainViewController = [[MainViewBridge new] makeMainViewUI];
//    [self presentViewController:mainViewController animated:YES completion: completion];
}

@end
