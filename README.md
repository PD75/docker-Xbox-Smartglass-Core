# Hass.io Add-on: Xbox One

Xbox One support for Home Assistant

## About

This add-on is a packaged version of the [Xbox One SmartGlass RESTful server](https://github.com/OpenXbox/xbox-smartglass-rest-python).

## Why do I need this

Xbox One smartglass python implementation is written with [gevent](http://www.gevent.org) coroutines.
Home assistant uses [asyncio](https://docs.python.org/3/library/asyncio.html) for concurrency.

To bridge that gap, the REST server comes into play.

*In an ideal world, a nice person would come along and port the smartglass python libs to asyncio.*

## Installation

The installation of this add-on is pretty straightforward and not different in
comparison to installing any other Hass.io add-on.

1. [Add](https://www.home-assistant.io/hassio/installing_third_party_addons/) the following URL to your Hass.io instance: `https://github.com/OpenXbox/xboxone-home-assistant`
2. Install the "Xbox One" add-on.
3. Start the "Xbox One" add-on.
4. Proceed with installing & setting up the custom component: [Read here](https://github.com/OpenXbox/xboxone-home-assistant/blob/master/info.md).

## Authors & Contributors

The original setup of this repository is by [Jason Hunter](https://github.com/hunterjm).

Huge shoutout to [Team OpenXbox](https://github.com/openxbox) for reverse engineering the SmartGlass protocol and providing the libraries and server used.

Special thanks to the contributions of [tuxuser](https://github.com/tuxuser) for answering late night questions and doing almost all of the heavy lifting on this.

Further thanks to [jmhill1287](https://github.com/jmhill1287) and [Eric LeBlanc](https://github.com/ericleb010) for forking and supporting this library for a few months.
