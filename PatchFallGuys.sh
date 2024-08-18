#!/bin/bash
set -e

if [[ -z "$1" ]]; then
  echo "Usage: $0 /path/to/FallGuys_decrypted.ipa"
  exit 1
fi

unzip "$1" Payload/FallGuys.app/{Frameworks/UnityFramework.framework/UnityFramework,Info.plist}
cp .theos/obj/{libswiftCore.dylib,StoreKit.dylib} Payload/FallGuys.app/Frameworks/
/usr/libexec/PlistBuddy -c "delete :UISupportedDevices" Payload/FallGuys.app/Info.plist

install_name_tool \
  -change /usr/lib/swift/libswiftCore.dylib @executable_path/Frameworks/libswiftCore.dylib \
  -change /System/Library/Frameworks/MarketplaceKit.framework/MarketplaceKit @executable_path/Frameworks/StoreKit.dylib \
  Payload/FallGuys.app/Frameworks/UnityFramework.framework/UnityFramework

zip -r "$1" Payload
rm -r Payload
