//
//  AFBBackgroundTask.m
//  iOS Reference
//
//  Created by John Lilly on 1/30/17.
//  Copyright © 2017 American Foundation for the Blind. All rights reserved.
//

#import "AFBBackgroundTask.h"

@implementation AFBBackgroundTask
-(id) initWithDelegate:(__autoreleasing NSObject<BackgroundDelegate> *)delegate {
    self = [super init];
    self.delegate = delegate;
    return self;
}
- (void) main {
    @autoreleasepool {
//        double counter = 0.00;
//        double duration = 10.00;
//        double startTime = [[NSDate date] timeIntervalSince1970];
//        double currentTime = startTime;
//        double endTime = startTime + duration;
//        while (currentTime < endTime) {
//            if (currentTime > startTime + counter) {
//                [self.delegate performSelectorOnMainThread:@selector(increaseProgress:) withObject:nil waitUntilDone:YES];
//                counter += 1.00;
//            }
//            currentTime = [[NSDate date] timeIntervalSince1970];
//            //NSLog(@"%@", [NSString stringWithFormat:@"Current time: %f", currentTime]);
//        }
        for (int i = 0; i < 10; i++) {
            [NSThread sleepForTimeInterval:1.0];
            [self.delegate performSelectorOnMainThread:@selector(increaseProgress:) withObject:nil waitUntilDone:YES];
        }
        
    }
}
@end
