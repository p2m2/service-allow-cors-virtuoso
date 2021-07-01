# service-allow-cors-virtuoso

Automate CORS authorization in [Virtuoso OpenLink Software](https://virtuoso.openlinksw.com/) configuration

## Usage

### environment variable

 - `virtuoso_site`: url conductor virtuoso to reach (use container name inside a docker-compose yml. see example) 
 - `login`:  virtuoso login (`dba` if we use [tenforce image](https://hub.docker.com/r/tenforce/virtuoso/)) 
 - `passwd`: virtuoso password

### Usage

Only inside a docker-compose.yml. see [example](./example/docker-compose.yml).  


## publication
```bash
docker build . -t inraep2m2/service-allow-cors-virtuoso:latest
docker push inraep2m2/service-allow-cors-virtuoso:latest
```
