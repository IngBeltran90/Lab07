//
//  MunicipalityDetails.h
//  Lab05
//
//  Created by Philbert on 6/26/16.
//  Copyright © 2016 Philbert. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MunicipalityLocation.h"

@interface MunicipalityDetails : UIViewController

@property NSString *municipalityTitle;
@property NSString *municipalityDescription;
@property NSString *municipalityPhoto;

@property (strong, nonatomic) IBOutlet UIImageView *imgMunicipality;
@property (strong, nonatomic) IBOutlet UILabel *lblMunicipio;
@property (strong, nonatomic) IBOutlet UILabel *lblMunicipioInfo;
- (IBAction)btnLocation:(id)sender;
/*2nd version*/

@end
