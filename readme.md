# UE4 Blueprint Quickstart
[![test-site][test_site_badge]][test_site]
[![prod-site][prod_site_badge]][prod_site]

> This quick start guide will walk you through building an Actor in the level with different Components, then turning it into a Blueprint Class you can add launching behavior to so your Character will fly around the level! Making it into a Blueprint Class also means you can create as many launchpads in your world as you want, just by dragging into the level from the Content Browser. 

Implements [UE4 Blueprint Quickstart](https://docs.unrealengine.com/4.27/en-US/ProgrammingAndScripting/Blueprints/QuickStart/)

# HTML Deployment

Use [Packaging HTML5 Projects](https://docs.unrealengine.com/en-US/Platforms/HTML5/GettingStarted/index.html) to export the assets in the `html-builds` directory from you local environment.
See Makefile for commands to deploy infrastructure & assets

# CI/CD
No CI/CD pipelines have been setup as there is currently no practical, open source solution for running Unreal Engine 4 through GitHub actions.

You deploy the infrastructure & website manually locally through the ready made commands on Makefile.

[test_site_badge]: https://img.shields.io/badge/test-green?style=flat-square&logo=amazon-aws
[test_site]: https://launch-padder-test.rdok.co.uk
[prod_site_badge]: https://img.shields.io/badge/prod-orange?style=flat-square&logo=amazon-aws
[prod_site]: https://launch-padder.rdok.co.uk

