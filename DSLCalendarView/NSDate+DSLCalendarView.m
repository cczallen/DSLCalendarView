//
//  NSDate+DSLCalendarView.m
//  DSLCalendarViewExample
//
//  Created by Pete Callaway on 16/08/2012.
//  Copyright 2012 Pete Callaway. All rights reserved.
//

#import "NSDate+DSLCalendarView.h"


@implementation NSDate (DSLCalendarView)

- (NSDateComponents*)dslCalendarView_dayWithCalendar:(NSCalendar*)calendar {
    return [calendar components:NSCalendarCalendarUnit | NSYearCalendarUnit | NSMonthCalendarUnit | NSDayCalendarUnit | NSWeekdayCalendarUnit fromDate:self];
}

- (NSDateComponents*)dslCalendarView_monthWithCalendar:(NSCalendar*)calendar {
    return [calendar components:NSCalendarCalendarUnit | NSYearCalendarUnit | NSMonthCalendarUnit fromDate:self];
}

- (BOOL)isBeforeDay:(NSDate *)day2 {
    return ([[self cc_dateByMovingToBeginningOfDay] compare:[day2 cc_dateByMovingToBeginningOfDay]] == NSOrderedAscending);
}

- (NSDate *)cc_dateByMovingToBeginningOfDay {
    unsigned int flags = NSYearCalendarUnit | NSMonthCalendarUnit | NSDayCalendarUnit | NSHourCalendarUnit | NSMinuteCalendarUnit | NSSecondCalendarUnit;
    NSDateComponents* parts = [[NSCalendar currentCalendar] components:flags fromDate:self];
    [parts setHour:0];
    [parts setMinute:0];
    [parts setSecond:0];
    return [[NSCalendar currentCalendar] dateFromComponents:parts];
}

@end
