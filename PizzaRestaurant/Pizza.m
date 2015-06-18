//
//  Pizza.m
//  PizzaRestaurant
//
//  Created by Arsalan Vakili on 2015-06-12.
//  Copyright (c) 2015 Lighthouse Labs. All rights reserved.
//

#import "Pizza.h"

@implementation Pizza



- (instancetype)initMakePizzeWithSize:(Pizzasize) size toppings: (NSArray *) toppings
{
    self = [super init];
    if (self) {
        self.size= size;
        self.pizzaToppings= toppings;
        
    }
    return self;
}


-(NSString*) returnstringsize {
    if (self.size == ksmall ){
        return  @"small";
    }
    else if (self.size == kmedium){
        return  @"medium";
        
    }
    else if (self.size == klarge){
        return  @"large";
    }
    else
        return  @"we do not have your size";

}

+(Pizzasize) returnPizzeSize : (NSString*) intakestring{
    if ([intakestring isEqualToString:  @"small" ] ){
        return  ksmall;
    }
    else if ([intakestring isEqualToString: @"medium"]){
        return  kmedium;
        
    }
    else if ([intakestring isEqualToString: @"large"]){
        return  klarge;
    }
    else
        return kemptyPizza;
}






@end


