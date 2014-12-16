//
//  NSDate+DSLCalendarView.h
//  DSLCalendarViewExample
//
//  Created by Pete Callaway on 16/08/2012.
//  Copyright 2012 Pete Callaway. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface NSDate (DSLCalendarView)

- (NSDateComponents*)dslCalendarView_dayWithCalendar:(NSCalendar*)calendar;
- (NSDateComponents*)dslCalendarView_monthWithCalendar:(NSCalendar*)calendar;


- (BOOL)isBeforeDay:(NSDate *)day2;
//  NSDateAdditions.m
//  SymbioCalendar
- (NSDate *)cc_dateByMovingToBeginningOfDay;

@end
