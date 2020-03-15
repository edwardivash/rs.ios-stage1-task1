#import "BillCounter.h"

@implementation BillCounter

// Complete the following fuction
- (NSString*)compareResultForBill:(NSArray<NSNumber*>*)bill notIncludingElementWithIndex:(NSInteger)index withGivenSum:(NSNumber*)sum {
    
    NSMutableArray *mutableBill = [NSMutableArray arrayWithArray:bill];
    [mutableBill removeObjectAtIndex:index];
    NSInteger sumWithoutIndex = [[mutableBill valueForKeyPath:@"@sum.self"] intValue];
    
    if (sum.intValue == sumWithoutIndex / 2) {
        return @"Bon Appetit";
    }else{
        NSString *debt = [NSString stringWithFormat:@"%ld",sum.intValue - sumWithoutIndex/2];
        return debt;
    }
}

@end
