//
//  ALUser.h
//  alarmify
//
//  Created by Daniel Distant on 1/29/16.
//  Copyright © 2016 Charles Kang. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <Spotify/Spotify.h>
#import "ALPlaylistsViewController.h"

@class ALPlaylistsViewController;

@interface ALUser : NSObject

+ (ALUser *)user;
- (void)handle:(SPTSession *)session;

@property (nonatomic) SPTUser *spotifyUser;
@property (nonatomic) SPTSession *spotifySession;

@property (nonatomic, weak) ALPlaylistsViewController *playlistsVC;

@end
