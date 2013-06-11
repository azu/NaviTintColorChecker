//
//  Created by azu on 12/08/03.
//


#import <Foundation/Foundation.h>

@interface UIColor (hex)

+ (UIColor *)colorWithHexString:(NSString *)hexstr;

+ (UIColor *)colorWithHexValue:(NSInteger)rgbValue;


@end