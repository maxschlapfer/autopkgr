//
//  LGLANrevImporterIntegrationView.m
//  AutoPkgr
//
//  Created by Elliot Jordan on 2/23/2016.
//  Copyright 2016 Elliot Jordan.
//
//  Licensed under the Apache License, Version 2.0 (the "License");
//  you may not use this file except in compliance with the License.
//  You may obtain a copy of the License at
//
//      http://www.apache.org/licenses/LICENSE-2.0
//
//  Unless required by applicable law or agreed to in writing, software
//  distributed under the License is distributed on an "AS IS" BASIS,
//  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
//  See the License for the specific language governing permissions and
//  limitations under the License.
//

#import "LGLANrevImporterIntegrationView.h"
#import "LGLANrevImporterIntegration.h"

@interface LGLANrevImporterIntegrationView ()
@property (weak) IBOutlet NSButton *enableExternalUploadBT;

@end

@implementation LGLANrevImporterIntegrationView

- (void)awakeFromNib {
    _enableExternalUploadBT.state = [LGLANrevImporterDefaults new].AllowURLSDPackageImport;
}

- (IBAction)enableExternalSDPackageUpload:(NSButton *)sender
{
    [LGLANrevImporterDefaults new].AllowURLSDPackageImport = sender.state;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do view setup here.
}

@end
