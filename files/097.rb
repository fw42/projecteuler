#!/usr/bin/ruby
ret = 1
1.upto(783){ # 7830457 / 10000
	ret *= 2596709376 # (2^10000) % (10^10)
	ret %= (10**10)
}

ret *= (2**457) # 7830457 % 10000

puts ( 28433 * (ret % (10**10)) + 1 ) % ( 10 ** 10 )
