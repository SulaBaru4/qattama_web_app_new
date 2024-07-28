'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {"assets/AssetManifest.bin": "9a32a331625cfd7f3e3dd98de9974470",
"assets/AssetManifest.bin.json": "a0b5d571c7622fb0639e36e64a713076",
"assets/AssetManifest.json": "7ab03da8ebb30cd2cc10655cf0bc38b8",
"assets/assets/images/art3.png": "d4a61acf87e59db8f548079146e8ef9c",
"assets/assets/images/Artboard2.png": "6a2723ea2da721fc81c3ad1f270c2703",
"assets/assets/images/bar/ayran.jpg": "475407b72e71e2353f11afae64d3fe36",
"assets/assets/images/bar/hotbar/blacktea.png": "fd238bbba65c10bba23121c34b386b08",
"assets/assets/images/bar/hotbar/greentea.png": "b4e668e02cccc13d5da477a51e558ce0",
"assets/assets/images/bar/hotbar/milktea.png": "b0224729a00d4c2ff3f053ec97c05d7e",
"assets/assets/images/bar/traditionalbar/chalap.png": "cfbe465722d64a2fda2c250dde6f1d06",
"assets/assets/images/bar/traditionalbar/kymyz.png": "beb65ad9ba248858bc3479c33d031b7e",
"assets/assets/images/bar/traditionalbar/maksym.png": "4e2f81ac24e8a04e38cb6e4a0a028e6c",
"assets/assets/images/food/mainfood/manti.png": "836d9311f906d6a9256919e876e2f6e2",
"assets/assets/images/food/soups/pelmeni.png": "4a744293faf4568bd4b2d895e34484da",
"assets/assets/images/instagram1.png": "cd31e5a430b8033d5e0df0501daaf44b",
"assets/assets/images/kattama.jpeg": "6d9cfdc20aba5b465c19a24ea182761b",
"assets/assets/images/kymyz.jpg": "71f7460e8ff33822e71454edc0beb25a",
"assets/assets/images/linkedin1.png": "3302b97fdb54eee6d86c08dbc15402ba",
"assets/assets/images/logo.png": "f411b1d98ac4d3467f368584ad953823",
"assets/assets/images/snacks/kaymak.jpg": "6c63bc8fcc5e7e130d05130a671a65e9",
"assets/assets/images/snacks/suzma.jpg": "7936cd3a339d4b2c79b82c92400f994b",
"assets/assets/images/snacks/traditionalsnacks/kurut.png": "30b90290f9bfd6d5c2adc5c34b75b89b",
"assets/assets/images/tea.jpg": "47bfd7a6263792afbeeea2fe6cc421c8",
"assets/assets/images/twogis1.png": "bdd6e87c5bdfc4faabfa574c9c03c67c",
"assets/assets/images/whatsapp1.png": "0407d2735988612695118daffce333bd",
"assets/FontManifest.json": "3c3b00ed4beb332c002b5f21b8df2ab2",
"assets/fonts/Gothic.ttf": "c277b2c27239a1c8de888444341d1c62",
"assets/fonts/MaterialIcons-Regular.otf": "725be360053f34991a6918da049fe6a8",
"assets/NOTICES": "44d0c5f434558a009dca75de3aaaea32",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "e986ebe42ef785b27164c36a9abc7818",
"assets/shaders/ink_sparkle.frag": "ecc85a2e95f5e9f53123dcaf8cb9b6ce",
"canvaskit/canvaskit.js": "5fda3f1af7d6433d53b24083e2219fa0",
"canvaskit/canvaskit.js.symbols": "07c19b69fa5f53224712e8471c00344d",
"canvaskit/canvaskit.wasm": "f312edac4fb4c74852dc1a4f069ab100",
"canvaskit/chromium/canvaskit.js": "87325e67bf77a9b483250e1fb1b54677",
"canvaskit/chromium/canvaskit.js.symbols": "100d192729121969872b80009e47a5b7",
"canvaskit/chromium/canvaskit.wasm": "f9074e52c7e9c770f1130c6ed9e2677f",
"canvaskit/skwasm.js": "f17a293d422e2c0b3a04962e68236cc2",
"canvaskit/skwasm.js.symbols": "ab140650f4d351b74f4e6bca3e8dd0e0",
"canvaskit/skwasm.wasm": "7fe5c39ff8466de52fbb0c66473abbe3",
"canvaskit/skwasm.worker.js": "bfb704a6c714a75da9ef320991e88b03",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"flutter.js": "383e55f7f3cce5be08fcf1f3881f585c",
"flutter_bootstrap.js": "06afbdb8a2cf4ff1939bad93c02a0430",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"icons/Icon-maskable-192.png": "c457ef57daa1d16f64b27b786ec2ea3c",
"icons/Icon-maskable-512.png": "301a7604d45b3e739efc881eb04896ea",
"index.html": "472ef5a49e7942b64445d13bc869fe75",
"/": "472ef5a49e7942b64445d13bc869fe75",
"main.dart.js": "9e4a4e86452091d3e8b24f5330f682bb",
"manifest.json": "934ed34ccf5d61f78789521bcad3e5d7",
"version.json": "3d5ea7b06998fc5d3e82c1af143f2ef2"};
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
