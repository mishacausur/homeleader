//
//  ViewController.m
//  homeleader
//
//  Created by Misha Causur on 01.09.2022.
//

#import "MainViewController.h"
#import "homeleader-Swift.h"

@interface MainViewController ()

@end
typedef void(^Completion)(void);

@implementation MainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
}

Completion completion = ^(void) {
    
};

- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
    UIViewController *mainViewController = [[MainViewBridge new] makeMainViewUI];
    [self presentViewController:mainViewController animated:YES completion: completion];
}

@end
