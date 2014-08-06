//
//  HeatIndex.h
//  Heat Tool
// Heat app

#import <UIKit/UIKit.h>

@interface HeatIndex : NSObject
- (float)getHeatIndex:(float)temp withHumidity:(float)humidity;
@end
