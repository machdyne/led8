count:
	mkdir -p output
	yosys -q -p "synth_ice40 -top count -json output/count.json" \
		rtl/count.v rtl/led8pwm.v
	nextpnr-ice40 --hx4k --package bg121 --pcf boards/riegel.pcf \
		--asc output/count.txt --json output/count.json \
		--pcf-allow-unconstrained --opt-timing
	icepack output/count.txt output/count.bin

clean:
	rm -f output/*

.PHONY: count clean
