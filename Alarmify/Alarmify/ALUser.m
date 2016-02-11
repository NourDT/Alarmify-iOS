//
//  ALUser.m
//  alarmify
//
//  Created by Daniel Distant on 1/29/16.
//  Copyright © 2016 Charles Kang. All rights reserved.
//

#import "ALUser.h"
#import "AppDelegate.h"
#import <Spotify/Spotify.h>

@implementation ALUser

+ (ALUser *)currentUser {
    static ALUser *user = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        user = [[self alloc] init];
    });
    return user;
}

- (NSString *)accessToken {
    return [[NSUserDefaults standardUserDefaults] objectForKey:SPOTIFY_ACCESS_TOKEN_KEY];
}

- (NSString *)username {
    return [[NSUserDefaults standardUserDefaults] objectForKey:SPOTIFY_USERNAME_KEY];
}

- (BOOL)isLoggedInToSpotify {
    // you're logged in to spotify if there's an access token in NSUserDefaults
    return [[NSUserDefaults standardUserDefaults] objectForKey:SPOTIFY_ACCESS_TOKEN_KEY] != nil;
    
}

- (void)loginToSpotify {
    
    NSURL *loginURL = [[SPTAuth defaultInstance] loginURL];
    
    //     Opening a URL in Safari close to application launch may trigger
    //     an iOS bug, so we wait a bit before doing so.
    
    [[UIApplication sharedApplication] performSelector:@selector(openURL:)
                                            withObject:loginURL afterDelay:.1];
}

@end
