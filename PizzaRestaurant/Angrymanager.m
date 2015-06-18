//
//  Angrymanager.m
//  PizzaRestaurant
//
//  Created by Arsalan Vakili on 2015-06-12.
//  Copyright (c) 2015 Lighthouse Labs. All rights reserved.
//

#import "Angrymanager.h"


@implementation Angrymanager

-(BOOL)kitchen:(Kitchen *)kitchen shouldMakePizzaOfSize:(Pizzasize)size andToppings:(NSArray *)toppings{

    
    
    if ( [toppings containsObject:@"anchovies" ]) {
        
        return false;
    }
    
    return TRUE;
}

-(BOOL)kitchenShouldUpgradeOrder:(Kitchen *)kitchen{
    return false;
    
}

-(void)kitchenDidMakePizza:(Pizza *)pizza{
    NSLog(@"The angry manager is making the Pizza");
}

@end;

