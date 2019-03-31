---
app_name: my-app
backends:
  - PROD_FLIGHTS_BACKEND
  - FOOD_BACKEND([http://my.food.backend], 20)

# Some other settings
someOtherSettings:
  foo: bar
  bas: 100
