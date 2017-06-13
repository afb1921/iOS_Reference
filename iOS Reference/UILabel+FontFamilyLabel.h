//
//  FontFamilyLabel.h
//  iOS Reference
//
//  Created by John Lilly on 6/12/17.
//  Copyright © 2017 American Foundation for the Blind. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UILabel (FontFamilyLabel)
@property (nonatomic, assign, getter = getFontFamily, setter = setFontFamily:) NSString* fontFamily;
@end
