'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {"assets/AssetManifest.bin": "8833cb0cf5682951d73b6175cc35e27b",
"assets/AssetManifest.bin.json": "a2ff1cb305fdcf4f36720a724dbaaa08",
"assets/AssetManifest.json": "1a76c9f83a2ba08ab887b6f3de896a8b",
"assets/assets/images/chat_home.jpg": "3a707409ba4e635ce0debbfcbcda461c",
"assets/assets/images/chat_images/categores.png": "3ab9d2c9095af6ee2b9df21f1d12e37f",
"assets/assets/images/chat_images/category_item.png": "464254b3225c4f8fac461f43fcef70c3",
"assets/assets/images/chat_images/chat.png": "398e59a32fefb3c5c020276574d9d2b5",
"assets/assets/images/chat_images/create_group.png": "f052f299f50d45e4b9988b5e5425c92f",
"assets/assets/images/chat_images/drawer.png": "6c84027fafd0e92e997577a395f15a21",
"assets/assets/images/chat_images/exit_group.png": "6c24094900170134c88abb0e8d71e307",
"assets/assets/images/chat_images/group_info.png": "95ead7f367721d4fdee84774aff66b97",
"assets/assets/images/chat_images/home.png": "6ab15887778569ae4a2132fd258b69c6",
"assets/assets/images/chat_images/logout.png": "376a234206e437c579719b151de288d3",
"assets/assets/images/chat_images/profile.png": "9a909892f631fd142f2ff8a4f1708f64",
"assets/assets/images/chat_images/regester.png": "817465995912a47bec5745a9cee654bb",
"assets/assets/images/chat_images/regester2.png": "8bfb7a8079150d7ff4fd495700cde58d",
"assets/assets/images/chat_images/search.png": "ce52dd159766d446c300df32e7643fbf",
"assets/assets/images/chat_images/sugesting_groups.png": "3dfc6643fa8083be25c74e543b1be6bf",
"assets/assets/images/field_collect_logo.png": "d219ea176c9bb4045a9764efa55c3667",
"assets/assets/images/fleild_collect_images/forms_page.jpg": "1cc4a26ecb178bee9457b31520ff8f73",
"assets/assets/images/fleild_collect_images/form_one.jpg": "eca8666141e6ade84c8fc4cd006663e4",
"assets/assets/images/fleild_collect_images/form_three.jpg": "b04b29f1a29b7795c01fb8f90ddbf365",
"assets/assets/images/fleild_collect_images/form_two.jpg": "339f3c6f4ecec2273763d54b66ebe23c",
"assets/assets/images/fleild_collect_images/home_page.jpg": "a6c3c5074c6cdbe48979e7ee83c46d30",
"assets/assets/images/fleild_collect_images/my_account_page.jpg": "364f1e97193502a845fc3cc3032edbd2",
"assets/assets/images/fleild_collect_images/send_forms_page.jpg": "bcd9edd52def98081d940e541e498d02",
"assets/assets/images/fleild_collect_images/settings_page.jpg": "2e8874bc272a4c2d20fea3e0c15fec27",
"assets/assets/images/fleild_collect_images/splash_page.jpg": "10323331660b1e716609b94da8aac9e8",
"assets/assets/images/flight_images/booking_page.png": "69258ba25ed4349a9ffd3430a5efa42b",
"assets/assets/images/flight_images/check_in_page.png": "373c41cacb4adf25d574cf01d2758fd5",
"assets/assets/images/flight_images/drower.png": "92d9b3e4d651541dfdacdd875020b539",
"assets/assets/images/flight_images/enter_date_page.png": "fb3032048b600e92a6adeeca70ce044a",
"assets/assets/images/flight_images/enter_traveller_page.png": "86867d7dd56b487d0f7337f833546983",
"assets/assets/images/flight_images/flight_status_page.png": "ce0607022895e563d1f4ae6f11a04c5f",
"assets/assets/images/flight_images/home_page.png": "85fc010fb20769800680047bb7474f8d",
"assets/assets/images/flight_images/my_trips_page.png": "38cc92d6a5a0317df796e4a4d4688fae",
"assets/assets/images/flight_images/onbording_one.png": "fe620a492b832ef8e5b01471399c45eb",
"assets/assets/images/flight_images/onbording_three.png": "c25286ce00fb470946652f81a42f5fa7",
"assets/assets/images/flight_images/onbording_two.png": "b1833e742cd3830d3c09d366c7a3ba5b",
"assets/assets/images/flight_images/profile_page.png": "f97a62741b33ea57c4f1b41f46d2f4ea",
"assets/assets/images/flight_images/search_result_page.png": "36982f19809a8f9348dffc8e990aaf9c",
"assets/assets/images/flight_images/settings_page.png": "3b7bc2a19f0a41acf15d363a4896c55e",
"assets/assets/images/flight_images/splash_page.png": "766906aee872289e6ed7a0bd0934eab7",
"assets/assets/images/flight_logo.png": "4b209ee0228b46be3e7e81463cbc802c",
"assets/assets/images/forms_images/home.png": "d5745df709e663eeffbfec5b081730fb",
"assets/assets/images/forms_images/logout.png": "6ec9c6f8831c2948543acd6dce677e55",
"assets/assets/images/forms_images/prize.png": "8f77ecbb18b1cc53edb57374df52de32",
"assets/assets/images/forms_images/questions.png": "36d7a336c553a994f8694956ef6be27f",
"assets/assets/images/forms_images/rigester1.png": "c7022e6ec9a7746109d03f3e06262128",
"assets/assets/images/forms_images/rigester2.png": "a53788241855ac8466b1a193f44bcdc0",
"assets/assets/images/forms_images/rigester3.png": "35092ad2f788edc07c42bb1fa253347e",
"assets/assets/images/home_electron.jpg": "5136bc361deb53c473e18471e4caaa8c",
"assets/assets/images/home_map.png": "bf544ef1a4c30a04eadb2d67d2f90ef3",
"assets/assets/images/home_page_news.png": "b2c18dfc837ad7bbe2c8a51d55a279b0",
"assets/assets/images/home_page_notes.png": "b127c6c07ad2eaeaa3346854c4bacc97",
"assets/assets/images/home_travel.jpg": "b76808bca951e78d2d98941a9c9863cd",
"assets/assets/images/logo_chat.jpg": "5a05ef708a10b612daaa443e152f3750",
"assets/assets/images/logo_forms.png": "beff77b94030ef1e74fe9802a5088e6a",
"assets/assets/images/logo_news.png": "3e0773abccecb7dedc76cea79dd4759c",
"assets/assets/images/logo_note.png": "0e517cd39e166579001220bf69cb54f3",
"assets/assets/images/logo_ride.jpeg": "51b747284d6320b5afba2726a9e4c7a2",
"assets/assets/images/news_images/account.png": "9a6ff341a1cadf48b7b62ad1369c85fb",
"assets/assets/images/news_images/home_page.png": "b2c18dfc837ad7bbe2c8a51d55a279b0",
"assets/assets/images/news_images/login_page.png": "18bd7e0fedb24c8e15f553c9fba11f72",
"assets/assets/images/news_images/Saved_Page.png": "1dd9795b71d7333ec2c323774f1bf889",
"assets/assets/images/news_images/Search_Page.png": "d4f864e61ec3785c24611a6f8713fa65",
"assets/assets/images/news_images/Splash_Screen.png": "5737a5dff8f0c671424fd9ea4f5503e3",
"assets/assets/images/note_images/Editor.png": "8ec09b3a95cac0aba298284aae4cc607",
"assets/assets/images/note_images/Editor_1.png": "d054d3a394732c9887fee1d8792cdb11",
"assets/assets/images/note_images/Editor_2.png": "c102ef1a885bd167feb22f1b8431ef12",
"assets/assets/images/note_images/Home_Screen.png": "b127c6c07ad2eaeaa3346854c4bacc97",
"assets/assets/images/note_images/Home_Screen_1.png": "a7bf0a33d34b058e284ccccabb518cea",
"assets/assets/images/note_images/Home_Screen_Empty.png": "4a09acc89fefed926baaef02b28cd313",
"assets/assets/images/note_images/Searching_Note.png": "f1fd13e62ff98800c224056c351e59a2",
"assets/assets/images/phone_cover.png": "f49acabaca6cdebd6085ea2914a6b4ab",
"assets/assets/images/ride_images/avalible_bikespng.png": "cf911a4317c3e14667dce53ac022c461",
"assets/assets/images/ride_images/bike_detials.png": "32e39ddc89878847cd17e29445437def",
"assets/assets/images/ride_images/complited.png": "298922b3cd9ca662e4e9f9b22b6f28bd",
"assets/assets/images/ride_images/confirm.png": "d15f0e10cc6c11b3a81e3185447bda78",
"assets/assets/images/ride_images/current.png": "0c4754a16721dc140d78d841c9dbeaaa",
"assets/assets/images/ride_images/edit.png": "941d4ed61ca3cb8f7d316dcfe9d7ee9b",
"assets/assets/images/ride_images/map.png": "4830213d2c2c1cc65e924cf4425a0a74",
"assets/assets/images/ride_images/map1.png": "bf544ef1a4c30a04eadb2d67d2f90ef3",
"assets/assets/images/ride_images/profile.png": "afede350e35a8d0d9f64d9e3d4abdbee",
"assets/assets/images/ride_images/set_password.png": "1c11b6735f5ec9d865353b64d340cb81",
"assets/assets/images/ride_images/signIn.png": "246618e6c8624970c2e2c65d9df9803f",
"assets/assets/images/ride_images/signUp.png": "111a54d5914d73e1b9a9b7b2eb66eeab",
"assets/assets/images/ride_images/thinks.png": "6f817a526d4803ab8303a5c9b5631875",
"assets/assets/images/ride_images/Untitled.png": "77e9ec0df90aac7149d0f5b89029a342",
"assets/assets/images/ride_images/upload_Id.png": "d093dbed7157986382759d4c9cdfd495",
"assets/assets/images/ride_images/walet.png": "bb25c7eb9489f4975f2e80c0b371b49e",
"assets/assets/images/untitled_design.png": "daaa0e1512b6c3ba53bdc591671eef8c",
"assets/assets/images/welcome_ride.png": "ce89262da091e718f02f64e1165aebc7",
"assets/FontManifest.json": "dc3d03800ccca4601324923c0b1d6d57",
"assets/fonts/MaterialIcons-Regular.otf": "f27232cf03f7793adaf20efa650286d6",
"assets/NOTICES": "29ff3ace8b56114731abad0e6fc2758c",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "33b7d9392238c04c131b6ce224e13711",
"assets/shaders/ink_sparkle.frag": "ecc85a2e95f5e9f53123dcaf8cb9b6ce",
"canvaskit/canvaskit.js": "140ccb7d34d0a55065fbd422b843add6",
"canvaskit/canvaskit.js.symbols": "58832fbed59e00d2190aa295c4d70360",
"canvaskit/canvaskit.wasm": "07b9f5853202304d3b0749d9306573cc",
"canvaskit/chromium/canvaskit.js": "5e27aae346eee469027c80af0751d53d",
"canvaskit/chromium/canvaskit.js.symbols": "193deaca1a1424049326d4a91ad1d88d",
"canvaskit/chromium/canvaskit.wasm": "24c77e750a7fa6d474198905249ff506",
"canvaskit/skwasm.js": "1ef3ea3a0fec4569e5d531da25f34095",
"canvaskit/skwasm.js.symbols": "0088242d10d7e7d6d2649d1fe1bda7c1",
"canvaskit/skwasm.wasm": "264db41426307cfc7fa44b95a7772109",
"canvaskit/skwasm_heavy.js": "413f5b2b2d9345f37de148e2544f584f",
"canvaskit/skwasm_heavy.js.symbols": "3c01ec03b5de6d62c34e17014d1decd3",
"canvaskit/skwasm_heavy.wasm": "8034ad26ba2485dab2fd49bdd786837b",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"flutter.js": "888483df48293866f9f41d3d9274a779",
"flutter_bootstrap.js": "ce6e124ff211e628cedbaa33995f0117",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"icons/Icon-maskable-192.png": "c457ef57daa1d16f64b27b786ec2ea3c",
"icons/Icon-maskable-512.png": "301a7604d45b3e739efc881eb04896ea",
"index.html": "8131f9c6d8958553c6d85b0dc4e1f10b",
"/": "8131f9c6d8958553c6d85b0dc4e1f10b",
"main.dart.js": "f97110142bfefbcdba3e309967583d80",
"manifest.json": "e74af8957b5899dc6da961caee768ec9",
"untitled_design.png": "0240dab139fe01b6eabea16045879f5a",
"version.json": "009c9e65172e010890f7f65fde438006"};
// The application shell files that are downloaded before a service worker can
// start.
const CORE = ["main.dart.js",
"index.html",
"flutter_bootstrap.js",
"assets/AssetManifest.bin.json",
"assets/FontManifest.json"];

// During install, the TEMP cache is populated with the application shell files.
self.addEventListener("install", (event) => {
  self.skipWaiting();
  return event.waitUntil(
    caches.open(TEMP).then((cache) => {
      return cache.addAll(
        CORE.map((value) => new Request(value, {'cache': 'reload'})));
    })
  );
});
// During activate, the cache is populated with the temp files downloaded in
// install. If this service worker is upgrading from one with a saved
// MANIFEST, then use this to retain unchanged resource files.
self.addEventListener("activate", function(event) {
  return event.waitUntil(async function() {
    try {
      var contentCache = await caches.open(CACHE_NAME);
      var tempCache = await caches.open(TEMP);
      var manifestCache = await caches.open(MANIFEST);
      var manifest = await manifestCache.match('manifest');
      // When there is no prior manifest, clear the entire cache.
      if (!manifest) {
        await caches.delete(CACHE_NAME);
        contentCache = await caches.open(CACHE_NAME);
        for (var request of await tempCache.keys()) {
          var response = await tempCache.match(request);
          await contentCache.put(request, response);
        }
        await caches.delete(TEMP);
        // Save the manifest to make future upgrades efficient.
        await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
        // Claim client to enable caching on first launch
        self.clients.claim();
        return;
      }
      var oldManifest = await manifest.json();
      var origin = self.location.origin;
      for (var request of await contentCache.keys()) {
        var key = request.url.substring(origin.length + 1);
        if (key == "") {
          key = "/";
        }
        // If a resource from the old manifest is not in the new cache, or if
        // the MD5 sum has changed, delete it. Otherwise the resource is left
        // in the cache and can be reused by the new service worker.
        if (!RESOURCES[key] || RESOURCES[key] != oldManifest[key]) {
          await contentCache.delete(request);
        }
      }
      // Populate the cache with the app shell TEMP files, potentially overwriting
      // cache files preserved above.
      for (var request of await tempCache.keys()) {
        var response = await tempCache.match(request);
        await contentCache.put(request, response);
      }
      await caches.delete(TEMP);
      // Save the manifest to make future upgrades efficient.
      await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
      // Claim client to enable caching on first launch
      self.clients.claim();
      return;
    } catch (err) {
      // On an unhandled exception the state of the cache cannot be guaranteed.
      console.error('Failed to upgrade service worker: ' + err);
      await caches.delete(CACHE_NAME);
      await caches.delete(TEMP);
      await caches.delete(MANIFEST);
    }
  }());
});
// The fetch handler redirects requests for RESOURCE files to the service
// worker cache.
self.addEventListener("fetch", (event) => {
  if (event.request.method !== 'GET') {
    return;
  }
  var origin = self.location.origin;
  var key = event.request.url.substring(origin.length + 1);
  // Redirect URLs to the index.html
  if (key.indexOf('?v=') != -1) {
    key = key.split('?v=')[0];
  }
  if (event.request.url == origin || event.request.url.startsWith(origin + '/#') || key == '') {
    key = '/';
  }
  // If the URL is not the RESOURCE list then return to signal that the
  // browser should take over.
  if (!RESOURCES[key]) {
    return;
  }
  // If the URL is the index.html, perform an online-first request.
  if (key == '/') {
    return onlineFirst(event);
  }
  event.respondWith(caches.open(CACHE_NAME)
    .then((cache) =>  {
      return cache.match(event.request).then((response) => {
        // Either respond with the cached resource, or perform a fetch and
        // lazily populate the cache only if the resource was successfully fetched.
        return response || fetch(event.request).then((response) => {
          if (response && Boolean(response.ok)) {
            cache.put(event.request, response.clone());
          }
          return response;
        });
      })
    })
  );
});
self.addEventListener('message', (event) => {
  // SkipWaiting can be used to immediately activate a waiting service worker.
  // This will also require a page refresh triggered by the main worker.
  if (event.data === 'skipWaiting') {
    self.skipWaiting();
    return;
  }
  if (event.data === 'downloadOffline') {
    downloadOffline();
    return;
  }
});
// Download offline will check the RESOURCES for all files not in the cache
// and populate them.
async function downloadOffline() {
  var resources = [];
  var contentCache = await caches.open(CACHE_NAME);
  var currentContent = {};
  for (var request of await contentCache.keys()) {
    var key = request.url.substring(origin.length + 1);
    if (key == "") {
      key = "/";
    }
    currentContent[key] = true;
  }
  for (var resourceKey of Object.keys(RESOURCES)) {
    if (!currentContent[resourceKey]) {
      resources.push(resourceKey);
    }
  }
  return contentCache.addAll(resources);
}
// Attempt to download the resource online before falling back to
// the offline cache.
function onlineFirst(event) {
  return event.respondWith(
    fetch(event.request).then((response) => {
      return caches.open(CACHE_NAME).then((cache) => {
        cache.put(event.request, response.clone());
        return response;
      });
    }).catch((error) => {
      return caches.open(CACHE_NAME).then((cache) => {
        return cache.match(event.request).then((response) => {
          if (response != null) {
            return response;
          }
          throw error;
        });
      });
    })
  );
}
