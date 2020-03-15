#import "T1Array.h"

@implementation T1Array

// Complete the following fuction
- (NSArray *)convertToHappy:(NSArray *)sadArray {
    
    NSMutableArray *happyArray = [NSMutableArray arrayWithArray:sadArray];
    
    if ([happyArray isEqual:@[]]) {
        return @[];
    } else {
        
    for (int i = 1; i < happyArray.count - 1; i++) {
        
        int num = [happyArray[i]intValue];
        int sum = [happyArray[i - 1]intValue] + [happyArray[i + 1]intValue];
        
        if (num > sum){
            [happyArray removeObjectAtIndex:i];
        }
        
    for(int i = 1; i <= happyArray.count-2; i++) {
        
        if ([happyArray[i]intValue] > [happyArray[i - 1]intValue] +
            [happyArray[i + 1]intValue]) {
            [happyArray removeObjectAtIndex:i];
        }
        }
    }
       return happyArray;
    }
}

@end
