//
//  main.m
//  PizzaRestaurant
//
//  Created by Steven Masuch on 2014-07-19.
//  Copyright (c) 2014 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "Kitchen.h"

#import "Pizza.h"
#import "Happymanager.h"
#import "Angrymanager.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        NSLog(@"Please pick your pizza size and toppings:");
        
        Kitchen *restaurantKitchen = [Kitchen new];
        
        while (TRUE) {
            // Loop forever
            
            NSLog(@"> ");
            char str[100];
            fgets (str, 100, stdin);
            
            NSString *inputString = [[NSString alloc] initWithUTF8String:str];
            inputString = [inputString stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
            
            NSLog(@"Input was %@", inputString);
            
            // Take the first word of the command as the size, and the rest as the toppings
            NSArray *commandWords = [inputString componentsSeparatedByString:@" "];
            Happymanager *friendlymanager= [[Happymanager alloc] init];
            Angrymanager *angrymanager = [[Angrymanager alloc] init];
            
            NSString *manager=  commandWords[0];
            
            if ([manager isEqualToString:@"friendly"]) {
                restaurantKitchen.delegate= friendlymanager;
            }
            
            if ([manager isEqualToString:@"angry" ]) {
                restaurantKitchen.delegate= angrymanager;
            }
            
            Pizzasize firstword = [Pizza  returnPizzeSize: commandWords[1]];
        
            
            NSMutableArray *mutableCommands = [commandWords mutableCopy];
            [mutableCommands removeObjectAtIndex:0];
            [mutableCommands removeObjectAtIndex:0];
            
            
                        
            Pizza *newpizza = [restaurantKitchen makePizzaWithSize:firstword toppings: mutableCommands];
            
            NSString *stringPizza= [newpizza  returnstringsize];
            
            NSLog(@"the pizza size is %@ and the pizza topping are %@,", stringPizza, newpizza.pizzaToppings);
        
         
        }

    }
    return 0;
}

