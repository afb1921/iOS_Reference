//
//  AFBAlertDialogViewController.m
//  iOS Reference
//
//  Created by John Lilly on 2/13/17.
//  Copyright © 2017 American Foundation for the Blind. All rights reserved.
//

#import "AFBAlertDialogViewController.h"

@interface AFBAlertDialogViewController ()

@end

@implementation AFBAlertDialogViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)showDialog:(id)sender {
    UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"Dialog Title" message:@"Dialog message" preferredStyle:UIAlertControllerStyleAlert];
    UIAlertAction *alertAction = [UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        //do nothing
    }];
    
    [alert addAction:alertAction];
    [self presentViewController:alert animated:YES completion:nil];
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
