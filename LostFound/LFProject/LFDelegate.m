//
//  Lost & Found app delegate
//
//  Copyright 2011-present Parse Inc. All rights reserved.
//

#import "LFDelegate.h"

@interface LFDelegate ()

@end

@implementation LFDelegate

#pragma mark -
#pragma mark UIApplicationDelegates

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    [Parse enableLocalDatastore];
    
    [Parse setApplicationId:@"AL7v42Pv5MskAy3bsAFGNriGNTpY6af8VwshoSnu"
                  clientKey:@"RrWnOBRZTFX9aGsWAkrXsi3wiUGcJWRaGt99xKvn"];
    UIStoryboard *storyboard = self.window.rootViewController.storyboard;
    
    /* 
       This section is here to allow users skip the log in screen if they have already done so.
       Since parse caches the sessionkey locally, users can log in once and be logged in until they log out
    */
    
    PFUser *user = [PFUser currentUser];
    if (user) {
        UIViewController *rootViewController = [storyboard instantiateViewControllerWithIdentifier:@"homeView"];
        self.window.rootViewController = rootViewController;
        [self.window makeKeyAndVisible];
    }else{
        UIViewController *rootViewController = [storyboard instantiateViewControllerWithIdentifier:@"loginView"];
        self.window.rootViewController = rootViewController;
        [self.window makeKeyAndVisible];
    }
    
    return YES;
}

- (void)applicationWillTerminate:(UIApplication *)application {
    [[NSUserDefaults standardUserDefaults] synchronize];
}

@end
