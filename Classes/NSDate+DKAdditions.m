//
// Created by Dmitry Korotchenkov on 25.07.13.
// Copyright (c) 2013 Progress Engine. All rights reserved.
//
// To change the template use AppCode | Preferences | File Templates.
//


#import "NSDate+DKAdditions.h"


@implementation NSDate (DKAdditions)

+ (NSDate *)dateFromString:(NSString *)dateString withFormat:(NSString *)format {
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    [formatter setDateFormat:format];
    return [formatter dateFromString:dateString];
}

- (BOOL)isSameDay:(NSDate *)date {
    NSCalendar *calendar = [NSCalendar currentCalendar];

    unsigned unitFlags = NSYearCalendarUnit | NSMonthCalendarUnit | NSDayCalendarUnit;
    NSDateComponents *comp1 = [calendar components:unitFlags fromDate:self];
    NSDateComponents *comp2 = [calendar components:unitFlags fromDate:date];

    return [comp1 day] == [comp2 day] &&
            [comp1 month] == [comp2 month] &&
            [comp1 year] == [comp2 year];
}

- (NSString *)stringWithFormat:(NSString *)dateFormat {
    return [self stringWithFormat:dateFormat inTimeZone:[NSTimeZone defaultTimeZone]];
}

- (NSString *)stringWithFormat:(NSString *)dateFormat inTimeZone:(NSTimeZone *)timeZone {
    return [self stringWithFormat:dateFormat locale:nil inTimeZone:timeZone];
}

- (NSString *)stringWithFormat:(NSString *)dateFormat locale:(NSLocale *)locale inTimeZone:(NSTimeZone *)timeZone {
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    if (timeZone) {
        [formatter setTimeZone:timeZone];
    }
    if (locale) {
        [formatter setLocale:locale];
    }
    [formatter setDateFormat:dateFormat];
    return [formatter stringFromDate:self];
}

- (NSUInteger)daysInMonth {
    return [[NSCalendar currentCalendar] rangeOfUnit:NSCalendarUnitDay inUnit:NSCalendarUnitMonth forDate:self].length;
}

@end