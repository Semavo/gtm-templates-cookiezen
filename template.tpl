___TERMS_OF_SERVICE___

By creating or modifying this file you agree to Google Tag Manager's Community
Template Gallery Developer Terms of Service available at
https://developers.google.com/tag-manager/gallery-tos (or such other URL as
Google may provide), as modified from time to time.


___INFO___

{
  "type": "TAG",
  "id": "cookiezen_cmp",
  "version": 1,
  "securityGroups": [],
  "displayName": "CookieZen CMP - Consent Management Platform",
  "brand": {
    "id": "brand_cookiezen",
    "displayName": "CookieZen",
    "thumbnail": "data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAACAAAAAgCAYAAABzenr0AAAACXBIWXMAAAsTAAALEwEAmpwYAAAAAXNSR0IArs4c6QAAAARnQU1BAACxjwv8YQUAAAKLSURBVHgBxVfLcRNBFOxZ+aYD4gaIKkZOADuDJQJMBnYEQAS2MkARyI4AE4E3A0QCeA4rF1UcWB+4ANqh30pyaccz+5HW5a5SSbvz6Z438/qNgEeGqmp8prWOgOOaCbIcMP/4+WnMDB0LiHtQV2iOjFNeLpBf/DAmaTIgQrcYAPZYRA/1/lQiWDegawEbWAqpE7FX1dhjSC2sQUMoKO280iJioPVhZkzmH9MRXuj9UwV75mvjIsY3xnjbOtmCKnIBI/M+3LYDGNpBH9Ep1/ihri8Fvkk9mbF1BCRF+1BffeQkG7vvFsCBb57WAoR4qEdXK3/QPvLUs98Rote++SqzwCUmKcONONQnRC6wyJ9iGwFNiImM5O/SCvfjYXuCNgLEQEg8rSEm7OQ3cBbK8zrsBchl1Z9RWGuQOOGqxmlDz28soK4A0VQueXInuxJ7BWyE3QN1zio3ZpUz6BAlAfR+OWza6bM6YNcJHgDOFqj4fpfCwVpfNFoLGGotTqU3G7nfX24ekLwkgAdL506jBRJsCfF+Z66sUkDuSbkoMKgJ0rZXMh9ZXukD1ZCMkmpZ1+8uAn+BWQ+uOvWWX5/QnHRt23KeWKqBvh4ZbkgSSuHSfYBV7hecVYfqeIA4ruhmFpzLFVEqxzz1E3eUpTE91/oIAWJmz3TlnDGq4TW5UgRk2/7wkqE8dZ6Yif/zNN8qRK/4W8J8gJZwI3rvSvaSq7Lt/oy4FOeKf0xs4aA4ssutKbXPzfeToIC1iJzhCkQiBInQydwxLrk9obw9Zm6uR+sH75VMQpQXRmIvUO8FbLcfOenh3Oua9pvzQm8+NLoVLyOCWBUZEvFmk9/yteHzrC5DxAsGTmaZjivqTvgPJ7j2hemjsvUAAAAASUVORK5CYII\u003d"
  },
  "description": "Consent Management Platform with Google Consent Mode v2. Automatically blocks trackers and manages user consent with configurable per-region defaults.",
  "containerContexts": [
    "WEB"
  ],
  "categories": [
    "TAG_MANAGEMENT",
    "PERSONALIZATION"
  ]
}


___TEMPLATE_PARAMETERS___

[
  {
    "type": "TEXT",
    "name": "siteKey",
    "displayName": "Site Key",
    "simpleValueType": true,
    "valueValidators": [
      {
        "type": "NON_EMPTY"
      }
    ],
    "help": "Klucz strony z panelu CookieZen (np. site_abc123)"
  },
  {
    "type": "GROUP",
    "name": "consentModeSettings",
    "displayName": "Consent Mode Settings",
    "groupStyle": "ZIPPY_OPEN",
    "subParams": [
      {
        "type": "TEXT",
        "name": "waitForUpdate",
        "displayName": "Wait for Update (ms)",
        "simpleValueType": true,
        "defaultValue": "500",
        "help": "Czas oczekiwania na aktualizację zgód (domyślnie 500ms). Zalecane zwiększenie do 1000-2000ms jeśli strona ładuje się wolno."
      },
      {
        "type": "CHECKBOX",
        "name": "urlPassthrough",
        "checkboxText": "Włącz URL Passthrough (GCLID/DCLID)",
        "simpleValueType": true,
        "defaultValue": true,
        "help": "Przekazuje identyfikatory kliknięć reklamowych (GCLID/DCLID) przez parametry URL gdy ad_storage jest denied. Zalecane dla zachowania atrybucji konwersji."
      },
      {
        "type": "SELECT",
        "name": "adsDataRedaction",
        "displayName": "Ads Data Redaction",
        "macrosInSelect": false,
        "selectItems": [
          {
            "value": "dynamic",
            "displayValue": "Dynamiczny (wg zgody marketing)"
          },
          {
            "value": "always",
            "displayValue": "Zawsze włączony"
          },
          {
            "value": "never",
            "displayValue": "Wyłączony"
          }
        ],
        "simpleValueType": true,
        "defaultValue": "dynamic",
        "help": "Redakcja identyfikatorów kliknięć reklamowych. Dynamiczny: włączony gdy brak zgody na marketing, wyłączony gdy zgoda jest. Zawsze: zawsze redaktuje. Wyłączony: nigdy nie redaktuje."
      },
      {
        "type": "SIMPLE_TABLE",
        "name": "regionSettings",
        "displayName": "Default Consent State (per region)",
        "simpleTableColumns": [
          {
            "defaultValue": "",
            "displayName": "Region (kody ISO, puste \u003d globalny)",
            "name": "region",
            "type": "TEXT"
          },
          {
            "defaultValue": "denied",
            "displayName": "Marketing",
            "name": "consentMarketing",
            "type": "SELECT",
            "selectItems": [
              {
                "value": "denied",
                "displayValue": "denied"
              },
              {
                "value": "granted",
                "displayValue": "granted"
              }
            ]
          },
          {
            "defaultValue": "denied",
            "displayName": "Analytics",
            "name": "consentAnalytics",
            "type": "SELECT",
            "selectItems": [
              {
                "value": "denied",
                "displayValue": "denied"
              },
              {
                "value": "granted",
                "displayValue": "granted"
              }
            ]
          },
          {
            "defaultValue": "denied",
            "displayName": "Preferences",
            "name": "consentPreferences",
            "type": "SELECT",
            "selectItems": [
              {
                "value": "denied",
                "displayValue": "denied"
              },
              {
                "value": "granted",
                "displayValue": "granted"
              }
            ]
          }
        ],
        "help": "Domyślne stany zgód per region. Puste pole Region \u003d globalny default. Kody ISO oddzielone przecinkami (np. PL, DE, FR). Marketing \u003d ad_storage + ad_user_data + ad_personalization. Analytics \u003d analytics_storage. Preferences \u003d functionality_storage + personalization_storage.",
        "newRowButtonText": "Dodaj region"
      }
    ]
  },
  {
    "type": "GROUP",
    "name": "advancedSettings",
    "displayName": "Ustawienia zaawansowane",
    "groupStyle": "ZIPPY_CLOSED",
    "subParams": [
      {
        "type": "TEXT",
        "name": "apiUrl",
        "displayName": "API URL (opcjonalne)",
        "simpleValueType": true,
        "defaultValue": "https://cz-cdn.com",
        "help": "Domyślnie https://cz-cdn.com. Zmień tylko dla self-hosted. UWAGA: Zmiana URL wymaga ręcznej edycji uprawnień \u0027Inject Script\u0027 w edytorze szablonu GTM."
      },
      {
        "type": "CHECKBOX",
        "name": "debugMode",
        "checkboxText": "Włącz tryb debug",
        "simpleValueType": true,
        "defaultValue": false,
        "help": "Wyświetla logi w konsoli przeglądarki"
      }
    ]
  }
]


___SANDBOXED_JS_FOR_WEB_TEMPLATE___

const log = require('logToConsole');
const setDefaultConsentState = require('setDefaultConsentState');
const updateConsentState = require('updateConsentState');
const gtagSet = require('gtagSet');
const injectScript = require('injectScript');
const copyFromWindow = require('copyFromWindow');
const setInWindow = require('setInWindow');
const makeInteger = require('makeInteger');
const encodeUriComponent = require('encodeUriComponent');
const decodeUriComponent = require('decodeUriComponent');
const queryPermission = require('queryPermission');
const getCookieValues = require('getCookieValues');
const JSON = require('JSON');

const siteKey = data.siteKey;
const apiUrl = data.apiUrl || 'https://cz-cdn.com';
const waitForUpdate = data.waitForUpdate ? makeInteger(data.waitForUpdate) : 500;
const debugMode = data.debugMode || false;
const regionSettings = data.regionSettings || [];
const urlPassthrough = data.urlPassthrough !== false;
const adsDataRedaction = data.adsDataRedaction || 'dynamic';

function debugLog(message, obj) {
  if (debugMode) {
    if (obj) {
      log('[CookieZen CMP]', message, obj);
    } else {
      log('[CookieZen CMP]', message);
    }
  }
}

// GCM v2: all 7 consent types
function mapCategoriesToGCM(categories) {
  var gcm = {
    'ad_storage': 'denied',
    'analytics_storage': 'denied',
    'ad_user_data': 'denied',
    'ad_personalization': 'denied',
    'functionality_storage': 'denied',
    'personalization_storage': 'denied',
    'security_storage': 'granted'
  };

  if (categories) {
    if (categories.preferences) {
      gcm.functionality_storage = 'granted';
      gcm.personalization_storage = 'granted';
    }
    if (categories.analytics) {
      gcm.analytics_storage = 'granted';
    }
    if (categories.marketing) {
      gcm.ad_storage = 'granted';
      gcm.ad_user_data = 'granted';
      gcm.ad_personalization = 'granted';
    }
  }

  return gcm;
}

function trimStr(s) {
  var start = 0;
  var end = s.length - 1;
  while (start <= end && s.charAt(start) === ' ') start++;
  while (end >= start && s.charAt(end) === ' ') end--;
  return start > end ? '' : s.substring(start, end + 1);
}

function getRegionArr(regionStr) {
  if (!regionStr) return [];
  var parts = regionStr.split(',');
  var result = [];
  for (var i = 0; i < parts.length; i++) {
    var trimmed = trimStr(parts[i]);
    if (trimmed) result.push(trimmed);
  }
  return result;
}

// === 1. DEFAULT CONSENT STATE (per region) ===
debugLog('Setting default consent state');

var hasGlobalDefault = false;

for (var i = 0; i < regionSettings.length; i++) {
  var row = regionSettings[i];
  var consentObj = {
    'ad_storage': row.consentMarketing || 'denied',
    'analytics_storage': row.consentAnalytics || 'denied',
    'ad_user_data': row.consentMarketing || 'denied',
    'ad_personalization': row.consentMarketing || 'denied',
    'functionality_storage': row.consentPreferences || 'denied',
    'personalization_storage': row.consentPreferences || 'denied',
    'security_storage': 'granted'
  };

  var regionArr = getRegionArr(row.region);
  if (regionArr.length > 0) {
    consentObj.region = regionArr;
  } else {
    hasGlobalDefault = true;
  }

  if (waitForUpdate > 0) {
    consentObj.wait_for_update = waitForUpdate;
  }

  setDefaultConsentState(consentObj);
  debugLog('Default consent set for region:', consentObj);
}

// Fallback: if no global default row exists, set all-denied global
if (!hasGlobalDefault) {
  var fallbackConsent = {
    'ad_storage': 'denied',
    'analytics_storage': 'denied',
    'ad_user_data': 'denied',
    'ad_personalization': 'denied',
    'functionality_storage': 'denied',
    'personalization_storage': 'denied',
    'security_storage': 'granted'
  };
  if (waitForUpdate > 0) {
    fallbackConsent.wait_for_update = waitForUpdate;
  }
  setDefaultConsentState(fallbackConsent);
  debugLog('Fallback global default consent set');
}

setInWindow('__cmp_default_set', true, true);

// === 2. PRIVACY SETTINGS (url_passthrough, ads_data_redaction) ===
gtagSet('url_passthrough', urlPassthrough);

if (adsDataRedaction === 'always') {
  gtagSet('ads_data_redaction', true);
} else if (adsDataRedaction === 'never') {
  gtagSet('ads_data_redaction', false);
} else {
  // dynamic: start with true (privacy-conservative), bridge callback will update based on marketing consent
  gtagSet('ads_data_redaction', true);
}

setInWindow('__cmp_url_passthrough_set', true, true);
debugLog('Privacy settings configured', {urlPassthrough: urlPassthrough, adsDataRedaction: adsDataRedaction});

var lastConsentState = null;

// === 2.5. RETURNING USER: INSTANT CONSENT RESTORE ===
// Read stored consent directly from cookie — no need to wait for Loader/Banner async loading.
// This makes updateConsentState fire synchronously during Consent Initialization (fastest possible).
if (queryPermission('get_cookies', 'cmp_consent')) {
  var cookieValues = getCookieValues('cmp_consent');
  if (cookieValues && cookieValues.length > 0 && cookieValues[0]) {
    var decoded = decodeUriComponent(cookieValues[0]);
    var stored = decoded ? JSON.parse(decoded) : null;
    if (stored && stored.finalized && stored.categories &&
        (stored.categories.marketing || stored.categories.analytics || stored.categories.preferences)) {
      var gcmRestore = mapCategoriesToGCM(stored.categories);
      updateConsentState(gcmRestore);

      lastConsentState = gcmRestore.ad_storage + gcmRestore.analytics_storage +
                         gcmRestore.ad_user_data + gcmRestore.ad_personalization +
                         gcmRestore.functionality_storage + gcmRestore.personalization_storage +
                         gcmRestore.security_storage;

      if (adsDataRedaction === 'dynamic') {
        gtagSet('ads_data_redaction', !stored.categories.marketing);
      }
      debugLog('Returning user: consent restored from cookie', gcmRestore);
    }
  }
}

// === 3. BRIDGE CALLBACK (before injectScript) ===
// GTM sandbox has no setTimeout — polling CMP.onChange is impossible.
// Instead: set a global callback that Banner picks up after loading and registering CMP API.

setInWindow('__cmp_onChange_callback', function(categories) {
  var gcmUpdate = mapCategoriesToGCM(categories);

  var stateKey = gcmUpdate.ad_storage + gcmUpdate.analytics_storage +
                 gcmUpdate.ad_user_data + gcmUpdate.ad_personalization +
                 gcmUpdate.functionality_storage + gcmUpdate.personalization_storage +
                 gcmUpdate.security_storage;

  if (stateKey !== lastConsentState) {
    updateConsentState(gcmUpdate);
    lastConsentState = stateKey;
    debugLog('Consent updated via bridge:', gcmUpdate);

    if (adsDataRedaction === 'dynamic') {
      gtagSet('ads_data_redaction', !categories.marketing);
    }
  } else {
    debugLog('Consent unchanged, skipping update');
  }
}, true);

// === 4. LOAD LOADER (not Banner directly) ===
var loaderUrl = apiUrl + '/api/cmp/loader?site_key=' + encodeUriComponent(siteKey);
debugLog('Loading CMP Loader:', loaderUrl);

if (queryPermission('inject_script', loaderUrl)) {
  injectScript(loaderUrl, function() {
    debugLog('CMP Loader loaded successfully');
    var cmp = copyFromWindow('CMP');
    if (cmp && cmp.botMode) {
      debugLog('Bot mode detected, tag complete');
    }
    data.gtmOnSuccess();
  }, function() {
    log('[CookieZen CMP] ERROR: Failed to load CMP Loader');
    data.gtmOnFailure();
  }, loaderUrl);
} else {
  log('[CookieZen CMP] ERROR: inject_script permission denied for ' + loaderUrl);
  data.gtmOnFailure();
}


___WEB_PERMISSIONS___

[
  {
    "instance": {
      "key": {
        "publicId": "logging",
        "versionId": "1"
      },
      "param": [
        {
          "key": "environments",
          "value": {
            "type": 1,
            "string": "all"
          }
        }
      ]
    },
    "clientAnnotations": {
      "isEditedByUser": true
    },
    "isRequired": true
  },
  {
    "instance": {
      "key": {
        "publicId": "access_consent",
        "versionId": "1"
      },
      "param": [
        {
          "key": "consentTypes",
          "value": {
            "type": 2,
            "listItem": [
              {
                "type": 3,
                "mapKey": [
                  {
                    "type": 1,
                    "string": "consentType"
                  },
                  {
                    "type": 1,
                    "string": "read"
                  },
                  {
                    "type": 1,
                    "string": "write"
                  }
                ],
                "mapValue": [
                  {
                    "type": 1,
                    "string": "ad_storage"
                  },
                  {
                    "type": 8,
                    "boolean": true
                  },
                  {
                    "type": 8,
                    "boolean": true
                  }
                ]
              },
              {
                "type": 3,
                "mapKey": [
                  {
                    "type": 1,
                    "string": "consentType"
                  },
                  {
                    "type": 1,
                    "string": "read"
                  },
                  {
                    "type": 1,
                    "string": "write"
                  }
                ],
                "mapValue": [
                  {
                    "type": 1,
                    "string": "analytics_storage"
                  },
                  {
                    "type": 8,
                    "boolean": true
                  },
                  {
                    "type": 8,
                    "boolean": true
                  }
                ]
              },
              {
                "type": 3,
                "mapKey": [
                  {
                    "type": 1,
                    "string": "consentType"
                  },
                  {
                    "type": 1,
                    "string": "read"
                  },
                  {
                    "type": 1,
                    "string": "write"
                  }
                ],
                "mapValue": [
                  {
                    "type": 1,
                    "string": "ad_user_data"
                  },
                  {
                    "type": 8,
                    "boolean": true
                  },
                  {
                    "type": 8,
                    "boolean": true
                  }
                ]
              },
              {
                "type": 3,
                "mapKey": [
                  {
                    "type": 1,
                    "string": "consentType"
                  },
                  {
                    "type": 1,
                    "string": "read"
                  },
                  {
                    "type": 1,
                    "string": "write"
                  }
                ],
                "mapValue": [
                  {
                    "type": 1,
                    "string": "ad_personalization"
                  },
                  {
                    "type": 8,
                    "boolean": true
                  },
                  {
                    "type": 8,
                    "boolean": true
                  }
                ]
              },
              {
                "type": 3,
                "mapKey": [
                  {
                    "type": 1,
                    "string": "consentType"
                  },
                  {
                    "type": 1,
                    "string": "read"
                  },
                  {
                    "type": 1,
                    "string": "write"
                  }
                ],
                "mapValue": [
                  {
                    "type": 1,
                    "string": "functionality_storage"
                  },
                  {
                    "type": 8,
                    "boolean": true
                  },
                  {
                    "type": 8,
                    "boolean": true
                  }
                ]
              },
              {
                "type": 3,
                "mapKey": [
                  {
                    "type": 1,
                    "string": "consentType"
                  },
                  {
                    "type": 1,
                    "string": "read"
                  },
                  {
                    "type": 1,
                    "string": "write"
                  }
                ],
                "mapValue": [
                  {
                    "type": 1,
                    "string": "personalization_storage"
                  },
                  {
                    "type": 8,
                    "boolean": true
                  },
                  {
                    "type": 8,
                    "boolean": true
                  }
                ]
              },
              {
                "type": 3,
                "mapKey": [
                  {
                    "type": 1,
                    "string": "consentType"
                  },
                  {
                    "type": 1,
                    "string": "read"
                  },
                  {
                    "type": 1,
                    "string": "write"
                  }
                ],
                "mapValue": [
                  {
                    "type": 1,
                    "string": "security_storage"
                  },
                  {
                    "type": 8,
                    "boolean": true
                  },
                  {
                    "type": 8,
                    "boolean": true
                  }
                ]
              }
            ]
          }
        }
      ]
    },
    "clientAnnotations": {
      "isEditedByUser": true
    },
    "isRequired": true
  },
  {
    "instance": {
      "key": {
        "publicId": "inject_script",
        "versionId": "1"
      },
      "param": [
        {
          "key": "urls",
          "value": {
            "type": 2,
            "listItem": [
              {
                "type": 1,
                "string": "https://cz-cdn.com/*"
              }
            ]
          }
        }
      ]
    },
    "clientAnnotations": {
      "isEditedByUser": true
    },
    "isRequired": true
  },
  {
    "instance": {
      "key": {
        "publicId": "access_globals",
        "versionId": "1"
      },
      "param": [
        {
          "key": "keys",
          "value": {
            "type": 2,
            "listItem": [
              {
                "type": 3,
                "mapKey": [
                  {
                    "type": 1,
                    "string": "key"
                  },
                  {
                    "type": 1,
                    "string": "read"
                  },
                  {
                    "type": 1,
                    "string": "write"
                  },
                  {
                    "type": 1,
                    "string": "execute"
                  }
                ],
                "mapValue": [
                  {
                    "type": 1,
                    "string": "CMP"
                  },
                  {
                    "type": 8,
                    "boolean": true
                  },
                  {
                    "type": 8,
                    "boolean": false
                  },
                  {
                    "type": 8,
                    "boolean": true
                  }
                ]
              },
              {
                "type": 3,
                "mapKey": [
                  {
                    "type": 1,
                    "string": "key"
                  },
                  {
                    "type": 1,
                    "string": "read"
                  },
                  {
                    "type": 1,
                    "string": "write"
                  },
                  {
                    "type": 1,
                    "string": "execute"
                  }
                ],
                "mapValue": [
                  {
                    "type": 1,
                    "string": "CMP.onChange"
                  },
                  {
                    "type": 8,
                    "boolean": true
                  },
                  {
                    "type": 8,
                    "boolean": false
                  },
                  {
                    "type": 8,
                    "boolean": true
                  }
                ]
              },
              {
                "type": 3,
                "mapKey": [
                  {
                    "type": 1,
                    "string": "key"
                  },
                  {
                    "type": 1,
                    "string": "read"
                  },
                  {
                    "type": 1,
                    "string": "write"
                  },
                  {
                    "type": 1,
                    "string": "execute"
                  }
                ],
                "mapValue": [
                  {
                    "type": 1,
                    "string": "CMP.getConsent"
                  },
                  {
                    "type": 8,
                    "boolean": true
                  },
                  {
                    "type": 8,
                    "boolean": false
                  },
                  {
                    "type": 8,
                    "boolean": true
                  }
                ]
              },
              {
                "type": 3,
                "mapKey": [
                  {
                    "type": 1,
                    "string": "key"
                  },
                  {
                    "type": 1,
                    "string": "read"
                  },
                  {
                    "type": 1,
                    "string": "write"
                  },
                  {
                    "type": 1,
                    "string": "execute"
                  }
                ],
                "mapValue": [
                  {
                    "type": 1,
                    "string": "__cmp_default_set"
                  },
                  {
                    "type": 8,
                    "boolean": true
                  },
                  {
                    "type": 8,
                    "boolean": true
                  },
                  {
                    "type": 8,
                    "boolean": false
                  }
                ]
              },
              {
                "type": 3,
                "mapKey": [
                  {
                    "type": 1,
                    "string": "key"
                  },
                  {
                    "type": 1,
                    "string": "read"
                  },
                  {
                    "type": 1,
                    "string": "write"
                  },
                  {
                    "type": 1,
                    "string": "execute"
                  }
                ],
                "mapValue": [
                  {
                    "type": 1,
                    "string": "__cmp_url_passthrough_set"
                  },
                  {
                    "type": 8,
                    "boolean": true
                  },
                  {
                    "type": 8,
                    "boolean": true
                  },
                  {
                    "type": 8,
                    "boolean": false
                  }
                ]
              },
              {
                "type": 3,
                "mapKey": [
                  {
                    "type": 1,
                    "string": "key"
                  },
                  {
                    "type": 1,
                    "string": "read"
                  },
                  {
                    "type": 1,
                    "string": "write"
                  },
                  {
                    "type": 1,
                    "string": "execute"
                  }
                ],
                "mapValue": [
                  {
                    "type": 1,
                    "string": "__cmp_onChange_callback"
                  },
                  {
                    "type": 8,
                    "boolean": true
                  },
                  {
                    "type": 8,
                    "boolean": true
                  },
                  {
                    "type": 8,
                    "boolean": false
                  }
                ]
              }
            ]
          }
        }
      ]
    },
    "clientAnnotations": {
      "isEditedByUser": true
    },
    "isRequired": true
  },
  {
    "instance": {
      "key": {
        "publicId": "write_data_layer",
        "versionId": "1"
      },
      "param": [
        {
          "key": "keyPatterns",
          "value": {
            "type": 2,
            "listItem": [
              {
                "type": 1,
                "string": "url_passthrough"
              },
              {
                "type": 1,
                "string": "ads_data_redaction"
              }
            ]
          }
        }
      ]
    },
    "clientAnnotations": {
      "isEditedByUser": true
    },
    "isRequired": true
  },
  {
    "instance": {
      "key": {
        "publicId": "get_cookies",
        "versionId": "1"
      },
      "param": [
        {
          "key": "cookieAccess",
          "value": {
            "type": 1,
            "string": "specific"
          }
        },
        {
          "key": "cookieNames",
          "value": {
            "type": 2,
            "listItem": [
              {
                "type": 1,
                "string": "cmp_consent"
              }
            ]
          }
        }
      ]
    },
    "clientAnnotations": {
      "isEditedByUser": true
    },
    "isRequired": true
  }
]


___TESTS___

scenarios: []


___NOTES___

CookieZen CMP - Google Tag Manager Community Template

This template:
1. Sets per-region default consent state (all 7 GCM v2 types) BEFORE any tags fire
2. Configures url_passthrough and ads_data_redaction
3. Loads the CMP Loader (MutationObserver blocking, fail-safe, heartbeat)
4. Registers a bridge callback for CMP.onChange (no setTimeout in GTM sandbox)
5. Updates consent state in GTM when user interacts with the banner

Configuration:
- Site Key: Your site key from CookieZen dashboard (e.g. site_abc123)

Consent Mode Settings:
- Wait for Update: Milliseconds to wait for consent update (default 500ms)
- URL Passthrough: Pass GCLID/DCLID via URL params when ad_storage is denied
- Ads Data Redaction: Redact ad click identifiers (dynamic/always/never)
- Region Settings: Per-region default consent (empty region = global default)

Advanced:
- API URL: Default https://cz-cdn.com (change only for self-hosted)
- Debug Mode: Enables console logging

Flow: GTM → Loader → Banner → CMP.onChange → updateConsentState
Trigger: Consent Initialization - All Pages


