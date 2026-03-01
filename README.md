# CookieZen CMP - Google Tag Manager Template

Consent Management Platform with **Google Consent Mode v2** support.  
Automatically blocks trackers (MutationObserver) and manages user consent with configurable per-region defaults.

## Features

- **Google Consent Mode v2** — all 7 consent types (ad_storage, analytics_storage, ad_user_data, ad_personalization, functionality_storage, personalization_storage, security_storage)
- **Per-region defaults** — configure different consent defaults for EU, US, or any ISO region
- **URL Passthrough** — preserves GCLID/DCLID via URL parameters when ad_storage is denied
- **Ads Data Redaction** — configurable (dynamic/always/never) redaction of ad click identifiers
- **MutationObserver blocking** — blocks non-Consent-Mode trackers before they execute
- **Fail-safe** — if the CMP fails to load, blocked scripts are released after timeout

## How to Add in GTM

1. In Google Tag Manager, go to **Templates** → **Search Gallery**
2. Search for **CookieZen CMP**
3. Add to workspace
4. Create a new tag using this template
5. Enter your **Site Key** from the [CookieZen dashboard](https://cookiezen.pl)
6. Set trigger to **Consent Initialization - All Pages**
7. Publish

## Configuration

| Parameter | Description | Default |
|-----------|-------------|---------|
| Site Key | Your site key from CookieZen dashboard | *(required)* |
| Wait for Update | Milliseconds to wait for consent update | 500 |
| URL Passthrough | Pass GCLID/DCLID via URL params | Enabled |
| Ads Data Redaction | Redact ad click IDs (dynamic/always/never) | Dynamic |
| Region Settings | Per-region default consent state | All denied |
| API URL | CMP API endpoint | https://cz-cdn.com |
| Debug Mode | Console logging | Disabled |

## Flow

```
GTM Template → Loader (sync, ~3KB) → Banner (async, ~30KB) → CMP.onChange → updateConsentState
```

## Documentation

Full documentation: [https://cookiezen.pl/dokumentacja](https://cookiezen.pl/dokumentacja)

## License

Apache License 2.0
