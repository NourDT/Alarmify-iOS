//
//  ALPlaylistsTableViewController.h
//  Alarmify
//
//  Created by Charles Kang on 2/23/16.
//  Copyright © 2016 Charles Kang. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AppDelegate.h"
#import <Spotify/Spotify.h>

@interface ALPlaylistsTableViewController : UITableViewController

@property (nonatomic) ALPlaylistsTableViewController *playlistsVC;
@property (nonatomic) NSMutableArray *playlists;

-(void)reload;


@end
