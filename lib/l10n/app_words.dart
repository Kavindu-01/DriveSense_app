class AppWords {
  final String language;
  const AppWords(this.language);
  bool get isSinhala => language == 'si';
  String call(String key, [Map<String, Object> values = const {}]) {
    final pair = phrases[key];
    var text = pair == null ? key : pair[isSinhala ? 1 : 0];
    for (final entry in values.entries) {
      text = text.replaceAll('{${entry.key}}', entry.value.toString());
    }
    return text;
  }

  static const phrases = <String, List<String>>{
    'topSpeed': ["Top speed", "වැඩිම වේගය"],
    'averageSpeed': ["Average speed", "සාමාන්‍ය වේගය"],
    'minimumSpeed': ["Lowest moving speed", "අඩුම ගමන් වේගය"],
    'motionForce': ["Movement force", "හදිසි චලනය"],
    'eyesAvailable': ["Eye checks on", "ඇස් පරීක්ෂා කරනවා"],
    'eyesUnavailable': ["Eye checks unavailable", "ඇස් පරීක්ෂා කරන්න බැහැ"],
    'patternsOn': ["Driving patterns on", "ගමන් රටාව බලනවා"],
    'patternsLimited': ["Driving checks limited", "ගමන් පරීක්ෂා සීමිතයි"],
    'fallbackDrivingBody': [
      "Eye checks pause when the phone is covered or your face stays out of view. Driving-pattern and break reminders continue when reliable movement or location readings are available. They cannot confirm that you are sleepy.",
      "ෆෝන් එක වැහිලා හෝ මුහුණ පෙනෙන්නේ නැත්නම් ඇස් පරීක්ෂාවට විරාමයක් දෙනවා. ගමනේ වෙනස්කම් බලලා විවේකයක් ගන්න මතක් කරනවා. ඒකෙන් නිදිමත තියෙන බව ස්ථිරව කියන්න බැහැ.",
    ],
    'cameraCovered': [
      "Eye checks paused — phone covered",
      "ෆෝන් එක වැහිලා — ඇස් පරීක්ෂාව නවත්තලා",
    ],
    'cameraFacePaused': [
      "Face not visible — eye checks resting",
      "මුහුණ පේන්නේ නැහැ — ඇස් පරීක්ෂාවට විරාමයක්",
    ],
    'speedEstimatedHint': [
      "Speed is estimated from location changes. Weak readings are excluded; speed can be unavailable indoors or under cover.",
      "වේගය ස්ථාන වෙනස්වීම් අනුව ඇස්තමේන්තු කරනවා. විශ්වාස නැති දත්ත ගන්නේ නැහැ. ගොඩනැගිලි ඇතුළේ හෝ ආවරණ යට වේගය නොපෙනෙන්න පුළුවන්.",
    ],
    'speedQualityHint': [
      "Weak or old GPS readings are excluded. Movement force removes gravity, so a still phone should be close to 0 g.",
      "පරණ හෝ විශ්වාස නැති GPS දත්ත ගන්නේ නැහැ. චලන අගයෙන් ගුරුත්වාකර්ෂණය ඉවත් කරන නිසා ෆෝන් එක නිශ්චලව තියෙද්දී 0 g ආසන්නව පෙන්වයි.",
    ],
    'tripSpeedHint': [
      "Minimum excludes stops and speeds below 3 km/h. Average uses recorded distance over the full trip, including stops. GPS gaps can leave distance and speed statistics incomplete. A dash means no usable reading was saved.",
      "අඩුම වේගයට නැවතුම් සහ පැයට කි.මී. 3ට අඩු වේග ගන්නේ නැහැ. සාමාන්‍ය වේගය මුළු ගමන් කාලයෙන් ගණන් කරනවා; නැවතුම් ඒකට ඇතුළත්. GPS නැති වුණ තැන්වල දත්ත අඩු වෙන්න පුළුවන්. ඉරක් පේන්නේ භාවිත කළ හැකි අගයක් නැති විටයි.",
    ],
    'sensorCoverage': ["Your phone’s checks", "ෆෝන් එකේ වැඩ කරන පරීක්ෂා"],
    'sensorCoverageHint': [
      "Motion sensors support impact checks and help separate phone handling from driving. GPS supplies speed and turning changes; camera supplies eye and head cues. Missing sensors reduce coverage. Motion alone cannot measure eye closure, sleep or a lane change.",
      "චලන සංවේදකවලින් ගැටීම් සහ ෆෝන් එක අතට ගන්න වෙනස්කම් බලනවා. GPS එකෙන් වේගය හා හැරීම් බලනවා. කැමරාවෙන් ඇස් සහ හිසේ චලනය බලනවා. සංවේදකයක් නැත්නම් සමහර පරීක්ෂා සීමා වෙනවා. චලනයෙන් විතරක් ඇස් වැහිලාද, නිදිමතද කියලා තහවුරු කරන්න බැහැ.",
    ],
    'sensorHelp': [
      "What happens if a sensor is missing?",
      "ෆෝන් එකේ සංවේදකයක් නැත්නම් මොකද වෙන්නේ?",
    ],
    'sensorListening': [
      "Available · readings received",
      "තියෙනවා · දත්ත ලැබුණා",
    ],
    'sensorWaiting': [
      "Available · waiting for a reading",
      "තියෙනවා · දත්ත ලැබෙනකල් ඉන්නවා",
    ],
    'sensorStartHint': [
      "Turn on checks to see which sensors your phone provides.",
      "ෆෝන් එකේ සංවේදක බලන්න ආරක්ෂක පරීක්ෂා පටන් ගන්න.",
    ],
    'sensor_accelerometer': [
      "Movement / impact sensor",
      "චලන හා ගැටීම් සංවේදකය",
    ],
    'sensor_linearAcceleration': [
      "Gravity-free movement",
      "ගුරුත්වාකර්ෂණය ඉවත් කළ චලනය",
    ],
    'sensor_gravity': ["Gravity sensor", "ගුරුත්වාකර්ෂණ සංවේදකය"],
    'sensor_gyroscope': ["Rotation sensor", "භ්‍රමණ සංවේදකය"],
    'sensor_rotation': ["Phone orientation", "ෆෝන් එක හැරී ඇති දිශාව"],
    'sensor_magnetometer': [
      "Magnetic direction sensor",
      "දිශාව සොයන චුම්බක සංවේදකය",
    ],
    'sensor_proximity': ["Cover / proximity sensor", "ආවරණය හඳුනාගන්න සංවේදකය"],
    'sensor_light': ["Light sensor", "ආලෝක සංවේදකය"],
    'fallback_accelerometer': [
      "Unavailable · GPS and sound can support reduced crash checks. Impact force cannot be measured.",
      "නැහැ · GPS හා හඬ දත්තෙන් සීමිත අනතුරු පරීක්ෂා කරනවා. ගැටීමේ බලය මනින්න බැහැ.",
    ],
    'fallback_linearAcceleration': [
      "Unavailable · subtract gravity from the movement sensor instead.",
      "නැහැ · චලන සංවේදකයේ දත්තෙන් ගුරුත්වාකර්ෂණය ඉවත් කරනවා.",
    ],
    'fallback_gravity': [
      "Unavailable · use a filtered movement estimate.",
      "නැහැ · චලන දත්ත පෙරහන් කරලා ගුරුත්වාකර්ෂණය ඇස්තමේන්තු කරනවා.",
    ],
    'fallback_gyroscope': [
      "Unavailable · use GPS heading and phone-orientation changes where available.",
      "නැහැ · GPS දිශාව හා ෆෝන් එකේ පිහිටීමෙන් හැරීම් බලනවා.",
    ],
    'fallback_rotation': [
      "Unavailable · use movement and magnetic readings where available.",
      "නැහැ · ලැබෙන චලන හා චුම්බක දත්ත භාවිත කරනවා.",
    ],
    'fallback_magnetometer': [
      "Unavailable · use rotation sensing or GPS direction.",
      "නැහැ · භ්‍රමණ සංවේදකය හෝ GPS දිශාව භාවිත කරනවා.",
    ],
    'fallback_proximity': [
      "Unavailable · rest eye checks after repeated missing-face results; check again occasionally.",
      "නැහැ · මුහුණ දිගටම නොපෙනුණොත් ඇස් පරීක්ෂාවට විරාමයක් දීලා ඉඳහිට නැවත බලනවා.",
    ],
    'fallback_light': [
      "Unavailable · use face visibility and cover sensing; darkness alone never means a pocket.",
      "නැහැ · මුහුණ පෙනෙනවාද සහ ෆෝන් එක වැහිලාද කියලා බලනවා. අඳුර නිසා විතරක් සාක්කුවේ කියලා හිතන්නේ නැහැ.",
    ],
    'warningDrivingBreak': [
      "Repeated driving changes were noticed. Stop safely for a break.",
      "ගමනේ හදිසි වෙනස්කම් කිහිපයක් දැක්කා. පරිස්සමට නවත්තලා විවේකයක් ගන්න.",
    ],
    'warningTimeBreak': [
      "You have been driving for a while. Stop safely for a break.",
      "දැන් ගොඩක් වෙලා වාහනය පදවලා. පරිස්සමට නවත්තලා විවේකයක් ගන්න.",
    ],
    'eventBreak': ["Break reminder", "විවේකයක් ගන්න මතක් කිරීම"],
    'noRoute': ['No route was saved', 'මේ ගමනේ මාර්ගය සටහන් වෙලා නැහැ'],
    'loading': ['Getting ready…', 'සූදානම් වෙමින්…'],
    'chooseLanguage': ['Choose your language', 'ඔබේ භාෂාව තෝරන්න'],
    'chooseHint': [
      "You can change this later in Settings.",
      "මේක පස්සේ සැකසුම්වලින් වෙනස් කරන්න පුළුවන්.",
    ],
    'continue': ['Continue', 'ඉදිරියට'],
    'welcome': ["A calmer, safer drive", "පරිස්සමට ගමන යන්න"],
    'welcomeBody': [
      "DriveSense checks for signs of tiredness and possible crashes. Your trips stay on this phone.",
      "DriveSense නිදිමත සහ අනතුරක ලකුණු බලනවා. ගමන් විස්තර ෆෝන් එකේම තියෙනවා.",
    ],
    'vehicleQuestion': ["What do you drive?", "ඔයා පදවන්නේ මොකක්ද?"],
    'motorcycle': ["Motorcycle", "බයික් එකක්"],
    'threeWheeler': ["Three-wheeler", "ත්‍රීවීල් එකක්"],
    'setupPermissions': [
      "Allow the safety checks",
      "ආරක්ෂක පරීක්ෂාවලට අවසර දෙන්න",
    ],
    'setupPermissionsBody': [
      "Location records trips. The camera checks your eyes. The microphone checks sudden impact sounds. No photos, video or audio recordings are saved.",
      "GPS එකෙන් ගමන සටහන් කරනවා. කැමරාවෙන් ඇස් හා හිසේ චලනය බලනවා. මයික් එකෙන් ගැටීම් හඬ බලනවා. ඡායාරූප, වීඩියෝ හෝ හඬ පටිගත කරලා තියාගන්නේ නැහැ.",
    ],
    'allowAndCheck': ['Allow & check camera', 'අවසර දී කැමරාව බලන්න'],
    'skipCamera': [
      "Continue without camera for now",
      "දැනට කැමරාව නැතුව ඉදිරියට යන්න",
    ],
    'drive': ['Drive', 'ගමන'],
    'trips': ['Trips', 'ගමන්'],
    'map': ['Map', 'සිතියම'],
    'settings': ['Settings', 'සැකසුම්'],
    'goodToGo': ['Ready for your next trip', 'ඊළඟ ගමනට සූදානම්'],
    'duringTrip': ["Your trip is being recorded", "ගමන සටහන් කරනවා"],
    'checksOff': ["Safety checks are off", "ආරක්ෂක පරීක්ෂා නවත්වලා"],
    'autoHint': [
      "Trips start automatically while safety checks are on.",
      "පරීක්ෂා ක්‍රියාත්මක වෙද්දී ගමන පටන් ගත්තම ඉබේම සටහන් වෙනවා.",
    ],
    'startHint': [
      "Turn checks on before you set off.",
      "ගමන යන්න කලින් ආරක්ෂක පරීක්ෂා පටන් ගන්න.",
    ],
    'speed': ["Current speed", "දැන් යන වේගය"],
    'speedUnavailable': [
      "Waiting for your location",
      "වේගය බලන්න GPS දත්ත ලැබෙනකල් ඉන්නවා",
    ],
    'distance': ['Distance', 'දුර'],
    'time': ['Trip time', 'ගමන් කාලය'],
    'startChecks': ["Turn on safety checks", "ආරක්ෂක පරීක්ෂා පටන් ගන්න"],
    'stopChecks': ["Turn off safety checks", "ආරක්ෂක පරීක්ෂා නවත්වන්න"],
    'startTrip': ['Start a trip', 'ගමනක් අරඹන්න'],
    'endTrip': ['Finish this trip', 'මේ ගමන අවසන් කරන්න'],
    'moreDetails': ["More about this drive", "ගමන ගැන තව බලන්න"],
    'phoneBattery': ["Phone battery", "ෆෝන් එකේ බැටරිය"],
    'charging': ['Charging', 'චාජ් වෙමින්'],
    'notCharging': ["On battery", "චාජරයට සම්බන්ධ නැහැ"],
    'locationReady': ["Location found", "GPS දත්ත ලැබෙනවා"],
    'locationNeeded': [
      "Turn on location for speed and trips",
      "වේගය හා ගමන් බලන්න GPS ක්‍රියාත්මක කරන්න",
    ],
    'soundReady': ["Sound checks are on", "ගැටීම් හඬ පරීක්ෂාව වැඩ කරනවා"],
    'soundUnavailable': [
      "Sound checks are unavailable",
      "ගැටීම් හඬ පරීක්ෂාව වැඩ කරන්නේ නැහැ",
    ],
    'movementReady': ["Movement checks are on", "චලන පරීක්ෂා වැඩ කරනවා"],
    'movementUnavailable': [
      "Movement checks are unavailable",
      "චලන දත්ත ලැබෙන්නේ නැහැ",
    ],
    'cameraCheck': ["Check your camera", "කැමරාව බලන්න"],
    'cameraCheckBody': [
      "Check that your eyes can be seen before driving.",
      "ගමනට කලින් ඇස් කැමරාවට පැහැදිලිව පේනවද බලන්න.",
    ],
    'emergency': ['Emergency help', 'හදිසි උදව්'],
    'help': ['Help & support', 'උදව් හා සහාය'],
    'cameraStarting': ["Opening your camera…", "කැමරාව පටන් ගන්නවා…"],
    'cameraAnalysisWait': [
      'Camera is on. Eye checks are reconnecting…',
      'කැමරාව ක්‍රියාත්මකයි. ඇස් පරීක්ෂාව නැවත සම්බන්ධ කරමින්…',
    ],
    'cameraReady': ["Your eyes can be checked", "ඇස් පැහැදිලිව පේනවා"],
    'faceMissing': ["We can’t see your face", "මුහුණ පේන්නේ නැහැ"],
    'eyesHidden': [
      "Your eyes aren’t clear enough",
      "ඇස් පැහැදිලිව පේන්නේ නැහැ",
    ],
    'cameraFailed': ["The camera couldn’t start", "කැමරාව පටන් ගන්න බැරි වුණා"],
    'cameraRetryBody': [
      "We’re reconnecting the camera. Tap Retry if it does not recover.",
      "කැමරාව නැවත සම්බන්ධ කරනවා. වැඩ කළේ නැත්නම් නැවත උත්සාහ කරන්න.",
    ],
    'cameraPermission': [
      "Allow camera access to check your eyes",
      "ඇස් බලන්න කැමරා අවසරය දෙන්න",
    ],
    'cameraHot': [
      "Camera paused while your phone cools",
      "ෆෝන් එක සිසිල් වෙනකල් කැමරාව නවත්තලා",
    ],
    'cameraOff': ['Camera checks are off', 'කැමරා පරීක්ෂා නවතා ඇත'],
    'cameraIdle': [
      "Camera starts when your trip begins",
      "ගමන පටන් ගත්තම කැමරාව වැඩ කරනවා",
    ],
    'cameraRest': [
      "Next camera check in {seconds}s",
      "ඊළඟ කැමරා පරීක්ෂාව තත්පර {seconds}කින්",
    ],
    'cameraCurrent': ["Checking for signs of tiredness", "නිදිමත ලකුණු බලනවා"],
    'cameraSlow': ['The camera is catching up', 'කැමරාව සූදානම් වෙමින් පවතී'],
    'cameraAdvice': [
      "Face the camera in a bright place. Adjust glasses to reduce reflections.",
      "ආලෝකය තියෙන තැනක කැමරාවට මුහුණ දෙන්න. කණ්ණාඩියේ දිලිසීම අඩු කරගන්න.",
    ],
    'cameraPrivacy': [
      'This check stays live while this screen is open. Short checks during driving save battery. Nothing is recorded.',
      'මේ තිරය විවෘත විට කැමරාව දිගටම ක්‍රියාත්මකයි. ගමනේදී කෙටි පරීක්ෂාවලින් බැටරිය ඉතිරි කරයි. කිසිවක් පටිගත නොකරයි.',
    ],
    'cameraSafeTest': [
      'Only test closing your eyes when safely stopped.',
      'ඇස් වැසීම පරීක්ෂා කරන්න ආරක්ෂිතව නවතා ඇති විට පමණයි.',
    ],
    'retry': ['Try again', 'නැවත උත්සාහ කරන්න'],
    'finishSetup': ['Finish setup', 'සැකසීම අවසන් කරන්න'],
    'continueForNow': ['Continue for now', 'දැනට ඉදිරියට යන්න'],
    'back': ['Back', 'ආපසු'],
    'close': ['Close', 'වසන්න'],
    'done': ['Done', 'හරි'],
    'cancel': ['Cancel', 'අවලංගු කරන්න'],
    'save': ['Save', 'සුරකින්න'],
    'saved': ["Saved on this phone", "ෆෝන් එකේ සුරැකුණා"],
    'somethingStopped': [
      "Some checks need attention",
      "සමහර පරීක්ෂා වැඩ කරන්නේ නැහැ",
    ],
    'recovering': [
      "We’re trying to restore them. Open Help if this continues.",
      "ඒවා නැවත පටන් ගන්න උත්සාහ කරනවා. දිගටම මෙහෙම නම් උදව් කොටස බලන්න.",
    ],
    'operationFailed': [
      'That didn’t work. Please try again.',
      'එය කළ නොහැකි විය. නැවත උත්සාහ කරන්න.',
    ],
    'androidOnly': [
      'Safety checks need the Android app.',
      'ආරක්ෂක පරීක්ෂා සඳහා Android යෙදුම අවශ්‍යයි.',
    ],
    'profile': ['Your details', 'ඔබේ තොරතුරු'],
    'profileHint': [
      "Used in emergency messages. Stored only on this phone.",
      "හදිසි පණිවිඩවලට මේ තොරතුරු ගන්නවා. ෆෝන් එකේ විතරයි තියෙන්නේ.",
    ],
    'name': ['Your name', 'ඔබේ නම'],
    'phone': ['Your phone number', 'ඔබේ දුරකථන අංකය'],
    'plate': ['Vehicle number', 'වාහන අංකය'],
    'contact': ['Emergency contact number', 'හදිසියකදී අමතන අංකය'],
    'vehicle': ['Vehicle', 'වාහනය'],
    'driverPosition': [
      'Your position in the camera image',
      'කැමරා රූපයේ ඔබ සිටින පැත්ත',
    ],
    'left': ['Left', 'වම'],
    'center': ['Centre', 'මැද'],
    'right': ['Right', 'දකුණ'],
    'language': ['App language', 'යෙදුමේ භාෂාව'],
    'smsLanguage': ['Message language', 'පණිවිඩ භාෂාව'],
    'voiceEnglish': [
      "Spoken warnings stay in English.",
      "හඬින් දෙන දැනුම්දීම් ඉංග්‍රීසියෙන් ඇහෙයි.",
    ],
    'autoArm': [
      "Resume checks when I open DriveSense",
      "DriveSense ඇරියම පරීක්ෂා නැවත පටන් ගන්න",
    ],
    'autoArmHint': [
      'Android may ask you to reopen the app after stopping it.',
      'යෙදුම නැවැත්වූ පසු නැවත විවෘත කිරීමට Android ඉල්ලා සිටිය හැකියි.',
    ],
    'cameraSwitch': [
      "Check tiredness with the camera",
      "කැමරාවෙන් නිදිමත ලකුණු බලන්න",
    ],
    'permissions': ['Phone permissions', 'දුරකථන අවසර'],
    'permissionsHint': [
      'Allow location, camera, microphone and notifications.',
      'ස්ථානය, කැමරාව, මයික්‍රෆෝනය සහ දැනුම්දීම් සඳහා අවසර දෙන්න.',
    ],
    'phoneSettings': ['Open phone settings', 'දුරකථන සැකසුම් විවෘත කරන්න'],
    'alarmTest': ['Check sound & vibration', 'හඬ හා කම්පනය පරීක්ෂා කරන්න'],
    'alarmHint': [
      "Check your phone’s alarm volume too.",
      "ෆෝන් එකේ ඇලාරම් හඬත් ඇහෙන තරමට තියෙනවද බලන්න.",
    ],
    'speechVolume': ['Spoken warning volume', 'හඬ දැනුම්දීම් මට්ටම'],
    'emergencySettings': ['Calls & messages', 'ඇමතුම් හා පණිවිඩ'],
    'practiceDispatch': [
      'Allow test messages & calls',
      'පරීක්ෂණ පණිවිඩ හා ඇමතුම් ඉඩ දෙන්න',
    ],
    'practiceHint': [
      'An unanswered alert may SMS your saved contact and personal test number, then call the test number. Charges may apply.',
      'ප්‍රතිචාර නොදුන් ඇඟවීමකින් සුරැකි අංකයට හා පරීක්ෂණ අංකයට SMS යවා පරීක්ෂණ අංකයට ඇමතුමක් ඉල්ලිය හැකියි. ගාස්තු අය විය හැකියි.',
    ],
    'testNumber': ['Personal test number', 'පුද්ගලික පරීක්ෂණ අංකය'],
    'countdownSetting': [
      'Time to respond: {seconds}s',
      'ප්‍රතිචාරයට කාලය: තත්පර {seconds}',
    ],
    'phoneNumberError': [
      'Enter a complete phone number.',
      'සම්පූර්ණ දුරකථන අංකයක් යොදන්න.',
    ],
    'economy': ['Estimated km per litre', 'ලීටරයට කි.මී. ඇස්තමේන්තුව'],
    'economyError': [
      'Enter a number between 1 and 150.',
      '1 සිට 150 දක්වා අංකයක් යොදන්න.',
    ],
    'areYouSafe': ['Are you safe?', 'ඔබ ආරක්ෂිතද?'],
    'respondSeconds': [
      'Please respond within {seconds}s',
      'තත්පර {seconds}ක් ඇතුළත ප්‍රතිචාර දක්වන්න',
    ],
    'imSafe': ['I am safe — cancel alert', 'මම ආරක්ෂිතයි — ඇඟවීම අවලංගු කරන්න'],
    'alertOffHint': [
      'Messages and calls are off. This will not contact anyone.',
      'පණිවිඩ හා ඇමතුම් නවතා ඇත. මෙයින් කිසිවකු අමතන්නේ නැහැ.',
    ],
    'alertOnHint': [
      'An unanswered alert may contact the configured test numbers.',
      'ප්‍රතිචාර නොදුන්නොත් සැකසූ පරීක්ෂණ අංක අමතනු ලැබිය හැකියි.',
    ],
    'startAlert': ['Start emergency alert', 'හදිසි ඇඟවීම අරඹන්න'],
    'confirmAlert': ['Start an alert?', 'ඇඟවීමක් අරඹන්නද?'],
    'confirmAlertBody': [
      'This starts a countdown. Cancel if you are safe.',
      'මෙය ගණන් කිරීමක් අරඹයි. ආරක්ෂිත නම් අවලංගු කරන්න.',
    ],
    'practiceAlert': [
      'Practise cancelling an alert',
      'ඇඟවීම අවලංගු කිරීම පුහුණු වන්න',
    ],
    'noPublicCalls': [
      'This phone-test build does not automatically contact 119.',
      'මේ දුරකථන පරීක්ෂණ නිකුතුව ස්වයංක්‍රීයව 119 අමතන්නේ නැහැ.',
    ],
    'callTest': ['Open the test number', 'පරීක්ෂණ අංකය විවෘත කරන්න'],
    'callPermissions': [
      'Allow calls & messages',
      'ඇමතුම් හා පණිවිඩ අවසර දෙන්න',
    ],
    'tripHistory': ['Your journeys', 'ඔබේ ගමන්'],
    'tripHistoryHint': [
      "Saved only on this phone.",
      "මේ ෆෝන් එකේ විතරයි තියෙන්නේ.",
    ],
    'noTrips': ['Your first journey starts here', 'ඔබේ පළමු ගමන මෙතැනින්'],
    'noTripsBody': [
      "Turn on checks and take a trip. Your route and summary will appear here.",
      "පරීක්ෂා පටන් අරන් ගමනක් යන්න. ගමන් විස්තර මෙතන පෙනෙයි.",
    ],
    'completed': ['Completed', 'අවසන්'],
    'interrupted': [
      'In progress or interrupted',
      'ක්‍රියාත්මක හෝ අතරමග නැවතුණු',
    ],
    'tripSummary': ["Trip summary", "ගමන් විස්තර"],
    'drivingScore': ['Driving score', 'රිය පැදවීමේ ලකුණු'],
    'scoreHint': [
      'An estimate from recorded events. Missing checks can hide risks.',
      'සටහන් වූ සිදුවීම් මත ඇස්තමේන්තුවකි. පරීක්ෂා නොවූ විට අවදානම් මඟහැරිය හැකියි.',
    ],
    'drivingEvents': ['Driving changes', 'රිය පැදවීමේ වෙනස්කම්'],
    'tiredEvents': ['Tiredness warnings', 'නිදිමත ඇඟවීම්'],
    'eyeCoverage': [
      'Eyes observed for {seconds}s of this trip',
      'මේ ගමනේ තත්පර {seconds}ක් ඇස් නිරීක්ෂණය විය',
    ],
    'fuelEstimate': ['Estimated fuel', 'ඉන්ධන ඇස්තමේන්තුව'],
    'fuelHint': [
      'Based on your saved estimate, not measured fuel.',
      'සුරැකි ඇස්තමේන්තුව මතයි. සැබෑ ඉන්ධන මිනුමක් නොවේ.',
    ],
    'carbonEstimate': ['Estimated petrol CO₂', 'පෙට්‍රල් CO₂ ඇස්තමේන්තුව'],
    'mapTitle': ['Around your route', 'ඔබේ මාර්ගය අවට'],
    'mapHint': [
      'Map pictures need internet. Trips are still saved without it.',
      'සිතියම් රූප සඳහා අන්තර්ජාලය අවශ්‍යයි. එය නැතිවත් ගමන් සුරකියි.',
    ],
    'zones': ['Danger-zone alerts', 'අනතුරු බහුල ස්ථාන'],
    'noZones': [
      'No danger zones loaded yet',
      'තවම අනතුරු බහුල ස්ථාන එක් කර නැහැ',
    ],
    'noZonesHint': [
      'Add verified location data for nearby warnings.',
      'අසල ඇඟවීම් සඳහා තහවුරු කළ ස්ථාන දත්ත එක් කරන්න.',
    ],
    'zoneCount': ['{count} locations available', 'ස්ථාන {count}ක් ඇත'],
    'zoneHint': [
      'Warnings within 100 m, with an earlier reminder at higher speeds.',
      'මීටර් 100ක් ඇතුළත ඇඟවීමක් ලැබේ. වැඩි වේගයකදී ඊට පෙර මතක් කරයි.',
    ],
    'importZones': ['Add location file', 'ස්ථාන ගොනුව එක් කරන්න'],
    'imported': ['Locations added', 'ස්ථාන එක් කළා'],
    'importError': [
      'We couldn’t read that file. Check its format and try again.',
      'ගොනුව කියවිය නොහැකියි. ආකෘතිය බලා නැවත උත්සාහ කරන්න.',
    ],
    'source': ['Source', 'මූලාශ්‍රය'],
    'period': ['Recorded period', 'සටහන් කාලය'],
    'unknownPeriod': ['Period not provided', 'කාලය සඳහන් නැහැ'],
    'sourceInfo': ['Location details', 'ස්ථාන තොරතුරු'],
    'helpTitle': ["How can we help?", "මොනවද දැනගන්න ඕනේ?"],
    'helpCamera': [
      'The camera won’t show my face',
      'කැමරාවට මගේ මුහුණ පෙනෙන්නේ නැහැ',
    ],
    'helpCameraBody': [
      "Use good light and reduce reflections on glasses. Tap Retry if no picture appears. Covered phones pause eye checks; missing faces lead to occasional checks. Driving patterns cannot confirm sleep.",
      "හොඳ ආලෝකයක් තියෙන තැනක මුහුණ කැමරාවට පේන්න තියාගන්න. කණ්ණාඩියේ දිලිසීම අඩු කරගන්න. රූපය පේන්නේ නැත්නම් නැවත උත්සාහ කරන්න. සාක්කුවේ හෝ මුහුණ නොපෙනෙන විට ඇස් පරීක්ෂාවට විරාමයක් දෙනවා.",
    ],
    'helpAutomatic': [
      'Why must I reopen the app?',
      'යෙදුම නැවත විවෘත කළ යුත්තේ ඇයි?',
    ],
    'helpAutomaticBody': [
      'Android can stop background camera and microphone access. Reopen DriveSense to resume checks. Trips start automatically while checks stay on.',
      'Android පසුබිම් කැමරා හා මයික්‍රෆෝන ප්‍රවේශය නැවැත්විය හැකියි. නැවත පරීක්ෂා ඇරඹීමට DriveSense විවෘත කරන්න. පරීක්ෂා ක්‍රියාත්මක නම් ගමන් ස්වයංක්‍රීයව අරඹයි.',
    ],
    'helpEmergency': [
      'How do emergency alerts work?',
      'හදිසි ඇඟවීම් ක්‍රියා කරන්නේ කෙසේද?',
    ],
    'helpEmergencyBody': [
      'Supporting checks can start a countdown after a possible crash. “I am safe” cancels it. Test calls and messages happen only if enabled. The phone may block calls. Recorded location speech cannot be played into a normal phone call.',
      'අනතුරක ලකුණු හා අනෙකුත් පරීක්ෂා මත ප්‍රතිචාර කාලයක් අරඹයි. “මම ආරක්ෂිතයි” එය අවලංගු කරයි. ඉඩ දී තිබේ නම් පමණක් පරීක්ෂණ ඇමතුම් හා පණිවිඩ යවයි. දුරකථනය ඇමතුම් අවහිර කළ හැකියි. සාමාන්‍ය ඇමතුමකට පටිගත කළ ස්ථාන හඬ එක් කළ නොහැකියි.',
    ],
    'privacy': ['Your privacy', 'ඔබේ පෞද්ගලිකත්වය'],
    'privacyBody': [
      'No photos, video or audio recordings. Trips and warnings stay here. Maps request pictures online. Shared reports may contain locations and phone details.',
      'ඡායාරූප, වීඩියෝ හෝ හඬ පටිගත කිරීම් නැහැ. ගමන් හා ඇඟවීම් මෙහි පවතී. සිතියම් රූප අන්තර්ජාලයෙන් ගනී. බෙදාගන්නා වාර්තාවල ස්ථාන හා දුරකථන තොරතුරු තිබිය හැකියි.',
    ],
    'shareReport': ['Share a report', 'වාර්තාවක් බෙදාගන්න'],
    'shareHint': [
      'Includes phone information, recent trip locations and error details. Choose who receives it.',
      'දුරකථන තොරතුරු, මෑත ගමන් ස්ථාන හා දෝෂ විස්තර ඇතුළත් වේ. ලැබෙන්නේ කාටදැයි ඔබ තෝරන්න.',
    ],
    'share': ['Share', 'බෙදාගන්න'],
    'deleteHistory': ['Delete saved trips', 'සුරැකි ගමන් මකන්න'],
    'deleteHint': [
      'Turn off checks first. This cannot be undone.',
      'පළමුව පරීක්ෂා නවත්වන්න. මෙය නැවත ලබාගත නොහැකියි.',
    ],
    'deleteConfirm': ['Delete trips and warnings?', 'ගමන් හා ඇඟවීම් මකන්නද?'],
    'delete': ['Delete', 'මකන්න'],
    'version': ["DriveSense 1.3.0", "DriveSense 1.3.0"],
    'warningEye': [
      "Your eyes stayed closed. Stop safely and rest.",
      "ඇස් වැහිලා තිබුණා. පරිස්සමට නවත්තලා විවේකයක් ගන්න.",
    ],
    'warningNod': [
      "Your head keeps dropping. Take a break.",
      "හිස නැවත නැවත පහළට වැටෙනවා. විවේකයක් ගන්න.",
    ],
    'warningFatigue': [
      "You may be getting tired. Stop safely for a break.",
      "නිදිමත එනවා වගේ. පරිස්සමට නවත්තලා විවේකයක් ගන්න.",
    ],
    'warningEyesHidden': [
      "We can’t see your eyes clearly. Adjust the phone when safe.",
      "ඇස් පැහැදිලිව පේන්නේ නැහැ. පරිස්සම් වෙලාවක ෆෝන් එක සකසන්න.",
    ],
    'warningMotion': [
      "A sudden driving change was noticed. Stay alert.",
      "ගමනේ හදිසි වෙනසක් දැක්කා. අවධානයෙන් යන්න.",
    ],
    'warningZone': [
      "A danger zone is within 100 m. Take care.",
      "මීටර් 100ක් ඇතුළත අනතුරු බහුල තැනක් තියෙනවා. පරිස්සමෙන් යන්න.",
    ],
    'warningZoneEarly': [
      "A danger zone is ahead. Take care.",
      "ඉස්සරහ අනතුරු බහුල තැනක් තියෙනවා. පරිස්සමෙන් යන්න.",
    ],
    'warningAlarm': ['Sound and vibration check', 'හඬ හා කම්පන පරීක්ෂාව'],
    'warningDispatch': [
      'An alert was attempted. Open Help for details.',
      'ඇඟවීමක් යැවීමට උත්සාහ කළා. විස්තර සඳහා උදව් බලන්න.',
    ],
    'eventTrip': ['Trip update', 'ගමන් තොරතුරක්'],
    'eventBraking': ['Sudden braking', 'හදිසි තිරිංග'],
    'eventMotion': ['Driving change', 'රිය පැදවීමේ වෙනසක්'],
    'eventFatigue': ['Tiredness warning', 'නිදිමත ඇඟවීමක්'],
    'eventYawn': ['Possible yawn', 'ඈනුමක ලකුණක්'],
    'eventLooking': ['Looked away', 'වෙනත් පැත්තක් බැලීම'],
    'eventZone': ['Danger zone nearby', 'අසල අනතුරු බහුල ස්ථානයක්'],
    'eventAlert': ['Emergency alert update', 'හදිසි ඇඟවීම් තොරතුරක්'],
    'eventOther': ['Safety check update', 'ආරක්ෂක පරීක්ෂා තොරතුරක්'],
    'recentEvents': ['Recent notices', 'මෑත දැනුම්දීම්'],
    'earlyEstimate': [
      'An estimate, not a guarantee of safety.',
      'ඇස්තමේන්තුවකි. ආරක්ෂාව සහතික කිරීමක් නොවේ.',
    ],
    'automatic': ['Automatic trips', 'ස්වයංක්‍රීය ගමන්'],
    'alertWaiting': ['Waiting for your response', 'ඔබේ ප්‍රතිචාරය බලා සිටියි'],
    'alertCancelled': [
      'Alert cancelled. Checks continue.',
      'ඇඟවීම අවලංගු කළා. පරීක්ෂා දිගටම ක්‍රියාත්මකයි.',
    ],
    'alertDisabled': [
      'No messages sent — sending is off.',
      'පණිවිඩ යැවීම නවතා ඇති නිසා යැව්වේ නැහැ.',
    ],
    'alertAttempted': [
      'Contact attempts are recorded in Help.',
      'ඇමතීමට කළ උත්සාහ උදව් තුළ සටහන් වී ඇත.',
    ],
  };
  String warning(String value) => call(switch (value) {
    'Eyes closed. Stop safely and rest' => 'warningEye',
    'Repeated head nodding. Take a break' => 'warningNod',
    'Possible fatigue. Stop safely for a break' => 'warningFatigue',
    'We cannot see your eyes clearly. Check your phone position when safe' =>
      'warningEyesHidden',
    'Driving irregularity. Stay alert' => 'warningMotion',
    'Repeated driving changes. Stop safely for a break' =>
      'warningDrivingBreak',
    'You have been driving for a while. Stop safely for a break' =>
      'warningTimeBreak',
    'Crash hotspot within one hundred metres. Take care' => 'warningZone',
    'Approaching a known crash hotspot' => 'warningZoneEarly',
    'Readiness check. DriveSense alarm is working' => 'warningAlarm',
    'Emergency test dispatch attempted. Check status' => 'warningDispatch',
    _ => 'areYouSafe',
  });
  String event(String type) => call(switch (type) {
    'trip' => 'eventTrip',
    'braking' => 'eventBraking',
    'motion' => 'eventMotion',
    'fatigue' => 'eventFatigue',
    'break_reminder' => 'eventBreak',
    'yawn' => 'eventYawn',
    'looking_away' => 'eventLooking',
    'hotspot' => 'eventZone',
    'sos_countdown' ||
    'test_countdown' ||
    'sos_cancelled' ||
    'dispatch' => 'eventAlert',
    _ => 'eventOther',
  });
}
