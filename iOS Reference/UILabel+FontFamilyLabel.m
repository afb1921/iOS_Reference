//
//  FontFamilyLabel.m
//  iOS Reference
//
//  Created by John Lilly on 6/12/17.
//  Copyright © 2017 American Foundation for the Blind. All rights reserved.
//

#import "UILabel+FontFamilyLabel.h"

@implementation UILabel (FontFamilyLabel)

- (NSString*) getFontFamily {
    NSString* fFamily = [self.font.fontDescriptor objectForKey:UIFontDescriptorFamilyAttribute];
    return fFamily;

}

- (void)setFontFamily: (NSString *) fontFamily {
    NSDictionary* weight = [self.font.fontDescriptor objectForKey:UIFontDescriptorTraitsAttribute];
    NSDictionary* attributes = @{UIFontWeightTrait: weight};
    UIFontDescriptor* descriptor = [[UIFontDescriptor alloc]
                                    initWithFontAttributes:@{UIFontDescriptorNameAttribute:
                                                                 self.font.fontName,
                                                             UIFontDescriptorSizeAttribute: [NSNumber numberWithDouble:self.font.pointSize],
                                                             UIFontDescriptorFamilyAttribute: fontFamily}];
    descriptor = [descriptor fontDescriptorWithFamily:fontFamily];
    descriptor = [descriptor fontDescriptorByAddingAttributes:attributes];
    self.font = [UIFont fontWithDescriptor:descriptor size:self.font.pointSize];
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
