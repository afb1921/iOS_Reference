//
//  AFBPickersViewController.m
//  iOS Reference
//
//  Created by John Lilly on 2/24/17.
//  Copyright © 2017 American Foundation for the Blind. All rights reserved.
//

#import "AFBPickersViewController.h"

@interface AFBPickersViewController ()
{
    NSArray *pickerData;
}
@end

@implementation AFBPickersViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    pickerData = @[@"Africa", @"Asia", @"Australia", @"Europe", @"North America", @"South America"];
    self.pickerView.delegate = self;
    self.pickerView.dataSource = self;
    [self.pickerView setAccessibilityLabel:@"Select a continent"];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView
{
    return 1;
}

- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component
{
    return pickerData.count;
}

- (NSString*)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component
{
    return pickerData[row];
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
