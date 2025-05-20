'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {"assets/AssetManifest.bin": "c69d1fd2157d0f640426a1ff59dd3e4e",
"assets/AssetManifest.bin.json": "1aa2761c4ace8d198f22e5ab3d410f02",
"assets/AssetManifest.json": "7e8fb71351361666ee425bee00bf9f19",
"assets/assets/adventures/buffalo.jpg": "33aa0f81f1ee89593af5013372e76410",
"assets/assets/adventures/huacachina.jpg": "62b3d2d65346e2628e4aad6451bae97a",
"assets/assets/adventures/marcahuasi_stone_forest.jpeg": "1fd09f9e86f65aa231d06645a7f6739a",
"assets/assets/adventures/miraFlores.jpg": "74037c70b18018b0678395d29da259ff",
"assets/assets/adventures/paragliding_costa_verde.jpeg": "782a9011594f1aef49bc15563047bd93",
"assets/assets/adventures/parque_de_las_aguas.jpeg": "3659333f296a6c2bc17fa090922dac2f",
"assets/assets/adventures/penguin_Ballestas_island.jpeg": "29c1f094ff4771c323fdddb85147af33",
"assets/assets/foods/estadio_fc.png": "f1e632ac6fd0ddcb9ac201bf27d73754",
"assets/assets/foods/estadio_fc_signature.png": "b6c247d388c78c3beb53e2680b1a9e27",
"assets/assets/foods/kjolle.png": "fc56c02e0962668102e77b8f04312f0e",
"assets/assets/foods/kjolle_signature.png": "978b388ab4de076111994d85e3264426",
"assets/assets/foods/lamar.png": "77fb9f95d2b14f9613ddff40c86ccb38",
"assets/assets/foods/lamar_signature.png": "e833b49a525efdfb4527c037cab864b8",
"assets/assets/foods/la_rosa.png": "f64646d4abe39831ff557f2d4481dafa",
"assets/assets/foods/la_rosa_signature.png": "08d5eb6020fe4ab5de7878fa136bc19b",
"assets/assets/foods/Maido.png": "4773e1f4800ce0f67f96334d3f62229f",
"assets/assets/foods/maido_signature.png": "19c673d85506770702e9ceffdcef94ed",
"assets/assets/foods/panchita.png": "83984d2a169de91a3e49654b09665812",
"assets/assets/foods/panchita_signature.png": "00d7a7650496604a008d600ccd1b772c",
"assets/assets/foods/rafael.png": "0808bba020215b7037b3cf9b4b3a09f2",
"assets/assets/foods/raphael_signature.png": "f82735f4eefb07ade55ed6a59266a33c",
"assets/assets/historical/hermosa_fotografia.jpeg": "5eec08915bab999baa4c454de7eddbb7",
"assets/assets/historical/lima_main_square.jpeg": "a7222483b57dd6aaf0dca8c6d82f95a1",
"assets/assets/historical/metropolitan_cathedral.jpeg": "627040e24c9341af522c78e74cd4eb82",
"assets/assets/historical/national_mueseum_lima.jpeg": "29210c6e4ee71f3a9f4a01cba460abaf",
"assets/assets/historical/old_town.jpeg": "dff088d656fbacd4fc95426a24bcf09c",
"assets/assets/historical/temple_of_pachacamac.jpeg": "7237b36eea8557c6544f7626aad9e96b",
"assets/assets/homepage/Adventures.jpg": "de36076f9f043dc9c5ffccd6063905af",
"assets/assets/homepage/Foods.jpg": "e393803d0bbf9775b6f6d4183b23e392",
"assets/assets/homepage/HistoricalPlaces.jpg": "eb2b82b3076deab9b2be8259f7863c90",
"assets/assets/homepage/NightLife.jpg": "08ed5df1855d0516d3502b9767d1c112",
"assets/assets/homepage/san_martin_square.jpg": "3cd9873852ef2dca943a9461d5bbebc1",
"assets/assets/night_life/barranco_night_life.png": "8ca49024d7814aae2f3ff44abfe783c5",
"assets/assets/night_life/del_carajo_night_club.png": "d49596e1d20c8ca4faba8cd7b626f9d6",
"assets/assets/night_life/lima_mall_cliff.png": "b315ca9887f6a38a0cb59b6e488ea3b9",
"assets/assets/night_life/lima_pub_crawl.png": "211b15285ffcf9e6d311aaaf2e676b18",
"assets/assets/night_life/magic_water_park.png": "8b163bd83770b4c401c842c7040f1b1c",
"assets/assets/night_life/parrot_shadow_bar.png": "106734a889018d3963315e2d31a280ff",
"assets/assets/share_preview.jpg": "3cd9873852ef2dca943a9461d5bbebc1",
"assets/FontManifest.json": "dc3d03800ccca4601324923c0b1d6d57",
"assets/fonts/MaterialIcons-Regular.otf": "c0ad29d56cfe3890223c02da3c6e0448",
"assets/NOTICES": "2d6180d2d439f9faa4f748b741106ae7",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "33b7d9392238c04c131b6ce224e13711",
"assets/shaders/ink_sparkle.frag": "ecc85a2e95f5e9f53123dcaf8cb9b6ce",
"canvaskit/canvaskit.js": "86e461cf471c1640fd2b461ece4589df",
"canvaskit/canvaskit.js.symbols": "68eb703b9a609baef8ee0e413b442f33",
"canvaskit/canvaskit.wasm": "efeeba7dcc952dae57870d4df3111fad",
"canvaskit/chromium/canvaskit.js": "34beda9f39eb7d992d46125ca868dc61",
"canvaskit/chromium/canvaskit.js.symbols": "5a23598a2a8efd18ec3b60de5d28af8f",
"canvaskit/chromium/canvaskit.wasm": "64a386c87532ae52ae041d18a32a3635",
"canvaskit/skwasm.js": "f2ad9363618c5f62e813740099a80e63",
"canvaskit/skwasm.js.symbols": "80806576fa1056b43dd6d0b445b4b6f7",
"canvaskit/skwasm.wasm": "f0dfd99007f989368db17c9abeed5a49",
"canvaskit/skwasm_st.js": "d1326ceef381ad382ab492ba5d96f04d",
"canvaskit/skwasm_st.js.symbols": "c7e7aac7cd8b612defd62b43e3050bdd",
"canvaskit/skwasm_st.wasm": "56c3973560dfcbf28ce47cebe40f3206",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"flutter.js": "76f08d47ff9f5715220992f993002504",
"flutter_bootstrap.js": "63d1cdc6ebd81dfc101133c7fcd074fc",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"icons/Icon-maskable-192.png": "c457ef57daa1d16f64b27b786ec2ea3c",
"icons/Icon-maskable-512.png": "301a7604d45b3e739efc881eb04896ea",
"icon_app.png": "59158e67b5f3eeb6dfa93e18b3b6ea0e",
"index.html": "ffb898f1454b5f9dc1c8c129de6a04ed",
"/": "ffb898f1454b5f9dc1c8c129de6a04ed",
"main.dart.js": "65f9a2fd2574ca147049af7dfb37f2cf",
"manifest.json": "f43475029597ef7c9ebed921d5c547b6",
"version.json": "cc2fcf4660b1e9d2f522dc149fb90c37"};
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
