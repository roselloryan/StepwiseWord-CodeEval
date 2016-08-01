//
//  main.m
//  StepwiseWord

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        NSString *line = @"cat dog hello";
        
        NSArray *wordsArray = [line componentsSeparatedByString:@" "];
        
        NSString *longestWord = [[NSString alloc]init];
        
        NSMutableString *solutionString = [[[NSString alloc]init] mutableCopy];
        
        
        for (NSString *word in wordsArray) {
            
            if (word.length > longestWord.length) {
                longestWord = word;
            }
        }
//        NSLog(@"%@", longestWord);
        
        NSInteger i = 0;
        for (i = 0; i < longestWord.length; i ++) {
            
            NSMutableString *letterString = [[NSString stringWithFormat:@"%c", [longestWord characterAtIndex: i]] mutableCopy];
            
            NSUInteger k = 0;
            for (k = 0; k < i; k++) {
                [letterString insertString:@"*" atIndex: 0];
            }
            
            if (i != 0) {
                NSString *space = @" ";
                [solutionString appendString: space];
            }
            
            [solutionString appendString:letterString];
            
        }
        
        NSLog(@"solutionString: %@", solutionString);
        
        
    }
    return 0;
}
