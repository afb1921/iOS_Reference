//
//  AFBStatusControlViewController.m
//  iOS Reference
//
//  Created by John Lilly on 1/30/17.
//  Copyright © 2017 American Foundation for the Blind. All rights reserved.
//

#import "AFBStatusControlViewController.h"
#import "AFBBackgroundTask.h"

@interface AFBStatusControlViewController ()

@end

@implementation AFBStatusControlViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    //set an accessibility label for the progress bar
    [self.button setAccessibilityHint:@"Double tap to start. Double tap and hold to stop"];
    [self.progressView setAccessibilityLabel:@"Correct Progress Label"];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Background Operation
-(void)increaseProgress:(id)object {
    
    [self.progressView setProgress: (self.progressView.progress + 0.1f)];
    //NSLog(@"%@", [NSString stringWithFormat:@"progress: %f", self.progressView.progress]);
}

-(void)start:(id)sender {
    [self.progressView setProgress:0.0f];
    AFBBackgroundTask *backgroundTask = [[AFBBackgroundTask alloc] initWithDelegate:self];
    [self startTask:backgroundTask];
}

-(void)startTask:(AFBBackgroundTask*) task {
    NSOperationQueue *queue = [[NSOperationQueue alloc] init];
    queue.name = @"background queue";
    queue.maxConcurrentOperationCount = 1;
    [queue addOperation:task];
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
