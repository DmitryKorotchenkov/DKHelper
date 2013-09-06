//
// Created by Dmitry Korotchenkov on 25.07.13.
// Copyright (c) 2013 Progress Engine. All rights reserved.
//
// To change the template use AppCode | Preferences | File Templates.
//


#import <Foundation/Foundation.h>

@interface NSDate (DKAdditions)

+ (NSDate *)dateFromString:(NSString *)dateString withFormat:(NSString *)format;

- (BOOL)isSameDay:(NSDate *)date;

- (NSString *)stringWithFormat:(NSString *)dateFormat;

@end