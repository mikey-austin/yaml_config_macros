m4_divert(-1)

#
# The generic flights backend. The webhook url and number
# of threads may be overridden.
#
m4_define([FLIGHTS_BACKEND],
   [backendName: flights
    threads: PARAM($2, 40)
    otherOption: baz
    actions:
      - cancel
      - refund
    s2sTarget: flights
    transport:
      type: webhook
      url: PARAM($1, [https://default.flight.backend])])

#
# The production flights backend with prod defaults.
#
m4_define([PROD_FLIGHTS_BACKEND],
       [FLIGHTS_BACKEND(
           [https://prod.flights.backend], 100)])

m4_define([FOOD_BACKEND],
   [backendName: food
    threads: PARAM($2, 40)
    actions:
      - book
      - cancel
      - eat
      - cook
    s2sTarget: food
    transport:
      type: webhook
      url: $1])

# Put all backends *above this line*
m4_divert(0)m4_dnl
