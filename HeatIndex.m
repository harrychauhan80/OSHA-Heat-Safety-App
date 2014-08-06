//
//  HeatIndex.m
//  Heat Tool
// Heat app


#import "HeatIndex.h"

@interface HeatIndex ()

@end

@implementation HeatIndex
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (float)getHeatIndex:(float)temp withHumidity:(float)humidity {
    
    NSLog(@"[getHeatIndex] temp: %f, humidity: %f", temp, humidity);
    
    float hIndex =
    -42.379 + 2.04901523 * temp
    + 10.14333127 * humidity
    - 0.22475541 * temp * humidity
    - 6.83783 * pow(10, -3) * temp * temp
    - 5.481717 * pow(10, -2) * humidity * humidity
    + 1.22874 * pow(10, -3) * temp * temp * humidity
    + 8.5282 * pow(10, -4) * temp * humidity * humidity
    - 1.99 * pow(10, -6) * temp * temp * humidity * humidity;
    
    //hIndex = round(hIndex);
    NSLog(@"-Heat Index: %f", hIndex);
    return hIndex;
}

@end
