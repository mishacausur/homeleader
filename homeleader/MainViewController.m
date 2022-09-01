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

@implementation MainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
}

- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
    UIViewController *mainViewController = [[MainViewBridge new] makeMainViewUI];
    [self presentViewController:mainViewController animated:YES completion:^{
        
    }];
}


@end
