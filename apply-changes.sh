# local manual "watch" script
set -o errexit

# Sync to iOS
cp tmp/plugins/cordova-plugin-ionic/dist/* tmp/platforms/ios/www/plugins/cordova-plugin-ionic/dist/
sed -i '' 's/"use strict"/cordova.define("cordova-plugin-ionic.common", function(require, exports, module) {"use strict"/' tmp/platforms/ios/www/plugins/cordova-plugin-ionic/dist/common.js
sed -i '' 's/"use strict"/cordova.define("cordova-plugin-ionic.guards", function(require, exports, module) {"use strict"/' tmp/platforms/ios/www/plugins/cordova-plugin-ionic/dist/guards.js
echo '});' >> tmp/platforms/ios/www/plugins/cordova-plugin-ionic/dist/common.js
echo '});' >> tmp/platforms/ios/www/plugins/cordova-plugin-ionic/dist/guards.js

# Sync to Android
cp tmp/plugins/cordova-plugin-ionic/dist/* tmp/platforms/android/platform_www/plugins/cordova-plugin-ionic/dist/
sed -i '' 's/"use strict"/cordova.define("cordova-plugin-ionic.common", function(require, exports, module) {"use strict"/' tmp/platforms/android/platform_www/plugins/cordova-plugin-ionic/dist/common.js
sed -i '' 's/"use strict"/cordova.define("cordova-plugin-ionic.guards", function(require, exports, module) {"use strict"/' tmp/platforms/android/platform_www/plugins/cordova-plugin-ionic/dist/guards.js
echo '});' >> tmp/platforms/android/platform_www/plugins/cordova-plugin-ionic/dist/common.js
echo '});' >> tmp/platforms/android/platform_www/plugins/cordova-plugin-ionic/dist/guards.js
