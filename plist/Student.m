//
//  Student.m
//  plist
//
//  Created by Felix-Madhuri on 19/10/16.
//  Copyright © 2016 Felix-Madhuri. All rights reserved.
//

#import "Student.h"

@implementation Student

-(NSString *)description
{
    return [NSString stringWithFormat:@"%d  %d  %@  %@",_rollno,_phoneno,_name,_address];
}

@end
