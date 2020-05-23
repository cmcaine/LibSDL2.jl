.PHONY: default

default:
	julia --project=. generate_bindings.jl 2>&1|tee bindings/generation.log
