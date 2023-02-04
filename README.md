
run docker as
```bash
docker run --rm -it -p 5000:80 hello-rest-docker
```

## End points ##
/  
returns simple "Hello World Message with 200 response"

/health  
reutrns OK 200 response which can be used for infastructure health check such as AWS load balancer target group health check

/catfact  
returns a random JSON response requested from external internet. this is usefull for testing external accessibility of the infastructure


