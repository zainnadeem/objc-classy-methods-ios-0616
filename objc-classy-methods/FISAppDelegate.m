//  FISAppDelegate.m

#import "FISAppDelegate.h"

@interface FISAppDelegate ()

@end


@implementation FISAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    /**
     
     *  Write your code here.
     
     */
    
    // Code-Along I: NSString
    // A.
    NSString *katherine = @"Katherine";
    NSString *katherineHepburn = [katherine stringByAppendingString:@" Hepburn"];
    NSLog(@"%@", katherineHepburn);

    // B.
    NSString *james = @"James";
    NSString *jamesStewart = [[NSString alloc] initWithFormat:@"%@ %@", james, @"Stewart"];
    NSLog(@"%@", jamesStewart);
    
    // C.
    NSString *queen = @"Queen";
    NSString *queenElizabethII = [NSString stringWithFormat:@"%@ %@ %@", queen, @"Elizabeth", @"II"];
    NSLog(@"%@", queenElizabethII);
    
    // Code-Along II: NSArray
    // A.
    NSArray *classyThings = @[ @"monocle", @"top hat", @"martini glass" ];
    NSLog(@"%@", classyThings);
    
    // B.
    NSArray *classyPeople = [[NSArray alloc] initWithObjects:@"Katherine Hepburn", @"James Stewart", @"Queen Elizabeth II", nil];
    NSLog(@"%@", classyPeople);
    
    // C.
    NSArray *classyDrinks = [NSArray arrayWithObjects:@"Old Fashioned", @"Churchill Martini", @"Prosecco", nil];
    NSLog(@"%@", classyDrinks);
    
    // Code-Along III: NSDictionary
    // A.
    NSDictionary *classyByLiteral = @{ @"classy things" : @[ @"monocle"            ,
                                                             @"top hat"            ,
                                                             @"martini glass"      ],
                                       @"classy people" : @[ @"Katherine Hepburn"  ,
                                                             @"James Stewart"      ,
                                                             @"Queen Elizabeth II" ],
                                       @"classy drinks" : @[ @"Old Fashioned"      ,
                                                             @"Churchill Martini"  ,
                                                             @"Prosecco"           ]
                                       };
    NSLog(@"%@", classyByLiteral);
    
    // B.
    NSDictionary *classyByInit = [[NSDictionary alloc] initWithObjectsAndKeys:classyThings, @"classy things", classyPeople, @"classy people", classyDrinks, @"classy drinks", nil];
    NSLog(@"%@", classyByInit);
    
    // C.
    NSDictionary *classyByClass = [NSDictionary dictionaryWithObjects:@[classyThings, classyPeople, classyDrinks]
                                                              forKeys:@[@"classy things", @"classy people", @"classy drinks"]];
    NSLog(@"%@", classyByClass);

    
    return YES;
}

@end
