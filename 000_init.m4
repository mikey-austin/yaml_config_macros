m4_divert(-1)

#
# This should be included before all other macros. We
# change the default quotes from `' to [] accordingly.
#
m4_changequote([, ])

#
# A convenience macro to return the first argument if
# it is not equal to the empty string, otherwise return
# the second argument as a default value.
#
m4_define([PARAM], [m4_ifelse($1, [], [$2], [$1])])

m4_divert(0)m4_dnl
