# Steps used to build app

## Task 1
### To build the docker & cluster 

```bash
docker build -t dipugodocker/co2app:latest .
docker run --rm -it dipugodocker/co2app:latest
kubectl apply -f .\kubDeploy.yaml
kubectl get pods
```
then i created the docker CI in github actions
which will run whenever there is a pull, push request


### Output
![](./outDocker.png)
![](./outTask_1.png)
![](./outTask_1i.png)

## Task 2
### python output depending on the that particular date

it will check for the return from the python1
if it fails it will check for todays previous day
if not then yesterday's yesterday and so on

![](./outTask_2.png)

## CI/CD
`Used the github actions`

<img width="645" alt="image" src="https://user-images.githubusercontent.com/65275144/156911286-bf796532-d54c-45cc-b812-fbc5fb655d4c.png">
