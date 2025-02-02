[![NorESM](docs/img/NORESM-logo.png "the Norwegian Earth System Model")](https://www.noresm.org/)
[![EMERALD](docs/img/Emerald_darktext_whiteBG_small.png "EMERALD project")](https://www.mn.uio.no/geo/english/research/projects/emerald/)
[![LATICE](docs/img/UiO_LATICE_logo_black_small.png "Land-ATmosphere Interactions in Cold Environments research group")](https://www.mn.uio.no/geo/english/research/groups/latice/)


# NorESM Land Sites Platform (NorESM-LSP) for site-level simulation over land with CLM-FATES

#### DOI:

#### Essential resources: 
- [NorESM land sites platform documentation and user guide](https://noresmhub.github.io/noresm-land-sites-platform/)

## Overview and documentation
The platform aims to facilitate site-level simulations over land using [NorESM](https://github.com/NorESMhub/NorESM) and its land component [CTSM](https://github.com/ESCOMP/CTSM) with the developing vegetation demographic module [FATES](https://github.com/NGEET/fates). It provides **optimized model setup, input data and reproducible workflows for running the model and analyzing model output over sites** with meteorological, ecological and hydrological observations in Norway with minimal techincal obstacles.

The platform aims to lower the threshold for beginners to use CTSM-FATES, and **promote the usage of site-level observations to test, validate and improve the models**.

For more information on the platform, please see our [technical documentation](https://noresmhub.github.io/noresm-land-sites-platform/).

## [User guide](https://noresmhub.github.io/noresm-land-sites-platform/user_guide)
  - Our [main user guide](https://noresmhub.github.io/noresm-land-sites-platform/user_guide) uses a graphical user interface, jupyter notebooks and a docker container to run the newest platform versions. 
  - An older version is also available on Galaxy: a graphic user interface for running site-level simulation on the cloud computing platform [GALAXY](https://galaxyproject.org/) as a tool (CTSM/FATES-EMERALD), with a dedicated [tutorial](https://training.galaxyproject.org/training-material/topics/climate/tutorials/fates/tutorial.html). Please contact [Anne Fouilloux](https://github.com/annefou) for the development of GALAXY tools related to the platform.

### Quick first-time installation steps:

**Attention!** Clone the repo with the following command (especially important for Windows users):

`git clone https://github.com/NorESMhub/noresm-land-sites-platform.git --config core.autocrlf=input`

Then run the following from the project root:

`docker-compose up`

After you see a message containing `Uvicorn running on http://0.0.0.0:8000 (Press CTRL+C to quit)` in `api` docker logs, you can access the API at `http://localhost:8000/api/v1/docs` and the UI at `http://localhost:8080`. You can access the Jupyter server at `http://localhost:8888/lab` and Panoply through `http://localhost:5800`.

> ### Note if you are on Linux, 
> 
> you can run the following command to set the user and id in in a `.env` in the project root:
>
> ```echo "HOST_USER=$(whoami)\nHOST_UID=$(id -u)\nHOST_GID=$(id -g)" > .env```
>
> Doing this makes all the new files and folders created by the app to belong to your local user. Otherwise, all new objects will be owned by the `root` user.


## Code development team
* [Kaveh Karimi](https://github.com/ka7eh)
* [Hui Tang](https://github.com/huitang-earth)
* [Lasse Torben Keetz](https://github.com/lasseke)
* [Stefanie Falk](https://github.com/ziu1986)
* [Emiliano Gelati](https://github.com/emiliano-gelati)
* [Elin Aas](https://github.com/ecaas)
* [Anne Fouilloux](https://github.com/annefou)
* [Yeliz Yilmaz](https://github.com/yelizy)
* [Eva Lieungh](https://github.com/evalieungh)
* [Peter Horvath](https://github.com/peterhor)
* [Kjetil Aas](https://github.com/kjetilaas)
* [Sunniva Indrehus](https://github.com/sunnivin)
* [Devaraju Narayanappa](https://github.com/devarajun)

## Data contributors
* [Sonya Geange](https://github.com/srg101)
* [Inge Althuizen](https://github.com/ingealthuizen)

## Supporting projects
* [EMERALD](https://www.mn.uio.no/geo/english/research/projects/emerald/)
* [LATICE](https://www.mn.uio.no/geo/english/research/groups/latice/)
* [SeedClim](https://www.uib.no/en/rg/EECRG/55395/seedclim)
* [LandPress](https://www.uib.no/en/rg/EECRG/95156/landpress)
* [THREE-D](https://www.uib.no/en/rg/EECRG/126712/three-d)
* [INES](https://www.ines.noresm.org/)
* [EOSC-Nordic](https://www.eosc-nordic.eu/)
