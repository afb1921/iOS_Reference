//
//  AFBBackgroundDelegate.h
//  iOS Reference
//
//  Created by John Lilly on 1/30/17.
//  Copyright © 2017 American Foundation for the Blind. All rights reserved.
//

#import <Foundation/Foundation.h>
@interface AFBBackgroundDelegate : NSObject
@end
@protocol BackgroundDelegate <NSObject>
    - (void) increaseProgress:(id)object;

@end

