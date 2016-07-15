//
//  MunicipalityLocation.m
//  Lab05
//
//  Created by Philbert on 7/10/16.
//  Copyright © 2016 Philbert. All rights reserved.
//

#import "MunicipalityLocation.h"
@import GoogleMaps;
#import <Google/Analytics.h>


@interface MunicipalityLocation ()

@end

@implementation MunicipalityLocation{
    GMSMapView *mapView_;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    [self createMap];
}

- (void)viewWillAppear:(BOOL)animated{
    id<GAITracker> tracker = [[GAI sharedInstance] defaultTracker];
    [tracker set:kGAIScreenName value:@"Municipality Location"];
    [tracker send:[[GAIDictionaryBuilder createScreenView] build]];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)createMap {
    if([self.municipalityTitleLoc  isEqual: @"Guadalajara"]){
    // Create a GMSCameraPosition that tells the map to display the
    // coordinate -33.86,151.20 at zoom level 6.
    GMSCameraPosition *camera = [GMSCameraPosition cameraWithLatitude:20.659740
                                                            longitude:-103.351242
                                                                 zoom:17];
    mapView_ = [GMSMapView mapWithFrame:CGRectZero camera:camera];
    mapView_.myLocationEnabled = YES;
    self.view = mapView_;
    
    // Creates a marker in the center of the map.
    GMSMarker *marker = [[GMSMarker alloc] init];
    marker.position = CLLocationCoordinate2DMake(20.659740, -103.351242);
    marker.title = @"Jalisco";
    marker.snippet = @"Guadalajara";
    marker.map = mapView_;
    }
    else if([self.municipalityTitleLoc  isEqual: @"Chapala"]){
        // Create a GMSCameraPosition that tells the map to display the
        // coordinate -33.86,151.20 at zoom level 6.
        GMSCameraPosition *camera = [GMSCameraPosition cameraWithLatitude:20.305232
                                                                longitude:-103.185705
                                                                     zoom:17];
        mapView_ = [GMSMapView mapWithFrame:CGRectZero camera:camera];
        mapView_.myLocationEnabled = YES;
        self.view = mapView_;
        
        // Creates a marker in the center of the map.
        GMSMarker *marker = [[GMSMarker alloc] init];
        marker.position = CLLocationCoordinate2DMake(20.305232, -103.185705);
        marker.title = @"Jalisco";
        marker.snippet = @"Chapala";
        marker.map = mapView_;
    }
    else if([self.municipalityTitleLoc  isEqual: @"Cocula"]){
        // Create a GMSCameraPosition that tells the map to display the
        // coordinate -33.86,151.20 at zoom level 6.
        GMSCameraPosition *camera = [GMSCameraPosition cameraWithLatitude:20.364976
                                                                longitude:-103.822156
                                                                     zoom:17];
        mapView_ = [GMSMapView mapWithFrame:CGRectZero camera:camera];
        mapView_.myLocationEnabled = YES;
        self.view = mapView_;
        
        // Creates a marker in the center of the map.
        GMSMarker *marker = [[GMSMarker alloc] init];
        marker.position = CLLocationCoordinate2DMake(20.364976, -103.822156);
        marker.title = @"Jalisco";
        marker.snippet = @"Cocula";
        marker.map = mapView_;
    }
    else if([self.municipalityTitleLoc  isEqual: @"Tapalpa"]){
        // Create a GMSCameraPosition that tells the map to display the
        // coordinate -33.86,151.20 at zoom level 6.
        GMSCameraPosition *camera = [GMSCameraPosition cameraWithLatitude:19.947289
                                                                longitude:-103.760690
                                                                     zoom:17];
        mapView_ = [GMSMapView mapWithFrame:CGRectZero camera:camera];
        mapView_.myLocationEnabled = YES;
        self.view = mapView_;
        
        // Creates a marker in the center of the map.
        GMSMarker *marker = [[GMSMarker alloc] init];
        marker.position = CLLocationCoordinate2DMake(19.947289, -103.760690);
        marker.title = @"Jalisco";
        marker.snippet = @"Tapalpa";
        marker.map = mapView_;
    }
    else if([self.municipalityTitleLoc  isEqual: @"Vallarta"]){
        // Create a GMSCameraPosition that tells the map to display the
        // coordinate -33.86,151.20 at zoom level 6.
        GMSCameraPosition *camera = [GMSCameraPosition cameraWithLatitude:20.656278
                                                                longitude:-105.224871
                                                                     zoom:17];
        mapView_ = [GMSMapView mapWithFrame:CGRectZero camera:camera];
        mapView_.myLocationEnabled = YES;
        self.view = mapView_;
        
        // Creates a marker in the center of the map.
        GMSMarker *marker = [[GMSMarker alloc] init];
        marker.position = CLLocationCoordinate2DMake(20.656278, -105.224871);
        marker.title = @"Jalisco";
        marker.snippet = @"Vallarta";
        marker.map = mapView_;
    }
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/
/*2nd version*/

@end
