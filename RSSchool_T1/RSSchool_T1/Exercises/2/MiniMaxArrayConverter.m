#import "MiniMaxArrayConverter.h"

@implementation MiniMaxArrayConverter

// Complete the convertFromArray function below.
- (NSArray<NSNumber*>*)convertFromArray:(NSArray<NSNumber*>*)array {
    
    NSNumber *sum = [array valueForKeyPath:@"@sum.self"];
        NSNumber *max = [array valueForKeyPath:@"@max.self"];
        NSNumber *min = [array valueForKeyPath:@"@min.self"];
        
        int finalSumMin = 0;
        int finalSumMax = 0;
        
        for (NSNumber *num in array){
            if (num.intValue == [max intValue]){
                finalSumMax = [sum intValue] - min.intValue;
            }
            if (num.intValue == [min intValue]){
                finalSumMin = [sum intValue] - max.intValue;
            }
        }
        return @[@(finalSumMin), @(finalSumMax)];
}

@end
