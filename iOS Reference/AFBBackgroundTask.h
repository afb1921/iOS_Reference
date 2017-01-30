//
//  AFBBackgroundTask.h
//  iOS Reference
//
//  Created by John Lilly on 1/30/17.
//  Copyright © 2017 American Foundation for the Blind. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AFBBackgroundDelegate.h"
@interface AFBBackgroundTask : NSOperation
    -(id)initWithDelegate:(NSObject<BackgroundDelegate>*) delegate;
@property (nonatomic, assign) NSObject<BackgroundDelegate> *delegate;
@end
