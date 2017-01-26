//
//  AFBDetailViewController.m
//  iOS Reference
//
//  Created by John Lilly on 1/26/17.
//  Copyright © 2017 American Foundation for the Blind. All rights reserved.
//

#import "AFBDetailViewController.h"

@interface AFBDetailViewController ()

@end

@implementation AFBDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    UISplitViewController *splitView = self.navigationController.splitViewController;
    if(!splitView.isCollapsed) {
        self.navigationItem.leftBarButtonItem = splitView.displayModeButtonItem;
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
