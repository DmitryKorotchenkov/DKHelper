//
// Created by Dmitry Korotchenkov on 25.07.13.
// Copyright (c) 2013 Progress Engine. All rights reserved.
//
// To change the template use AppCode | Preferences | File Templates.
//


#import <Foundation/Foundation.h>

@interface NSDate (DKAdditions)

- (BOOL)isSameDay:(NSDate *)date;

- (NSString *)stringWithFormat:(NSString *)dateFormat;

- (NSUInteger)daysInMonth;
@end