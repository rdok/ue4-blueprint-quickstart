# UE4 Blueprint Quickstart
[![test-site][test_site_badge]][test_site]
[![prod-site][prod_site_badge]][prod_site]

> This quick start guide will walk you through building an Actor in the level with different Components, then turning it into a Blueprint Class you can add launching behavior to so your Character will fly around the level! Making it into a Blueprint Class also means you can create as many launchpads in your world as you want, just by dragging into the level from the Content Browser. 

![2021-10-23 07_07_43-LaunchPad_Blueprint](https://user-images.githubusercontent.com/4212119/138550081-256621a2-410d-4d1e-8d5d-c869c323fc29.png)
![2021-10-23 07_13_06-LaunchPadder - Unreal Editor](https://user-images.githubusercontent.com/4212119/138550083-b2e3b57f-e29f-4563-8fc4-8bb647babedd.png)


Implements [UE4 Blueprint Quickstart](https://docs.unrealengine.com/4.27/en-US/ProgrammingAndScripting/Blueprints/QuickStart/)

### Deployment
> On Windows OS use [chocolatey][chocolatey] to install [Makefile][makefile_chocolatey].  
> Additional dependencies [awscli][awscli] and [awssamcli][awssamcli].  

See `Makefile`

### CI/CD
No CI/CD pipelines have been set up as there is currently no practical, open source solution for running Unreal Engine 4 through GitHub actions.

Instead, deploy the infrastructure & website manually locally through the ready made commands on Makefile.

[test_site_badge]: https://img.shields.io/badge/test-green?style=flat-square&logo=amazon-aws
[test_site]: https://launch-padder-test.rdok.co.uk
[prod_site_badge]: https://img.shields.io/badge/prod-orange?style=flat-square&logo=amazon-aws
[prod_site]: https://launch-padder.rdok.co.uk
[makefile_chocolatey]: https://community.chocolatey.org/packages/make
[chocolatey]: https://chocolatey.org/install
[awscli]: https://community.chocolatey.org/packages/awscli
[awssamcli]: https://community.chocolatey.org/packages/awssamcli