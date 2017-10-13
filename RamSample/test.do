vlib work

vlog *.v

vsim-voptargs="+acc" work.top

log-r /



force {COCK_50} 0 0, 1 20 ns -repeat 40 ns

force {KEY[2]} 0
run 30ns

force {KEY[2]} 1

force {SW[3:0]} 10#1

force {KEY[0]} 0
run 40ns

force {KEY[0]} 1

force {KEY[1]} 0

run 40ns

force {KEY[1]} 1

run 40ns


force {KEY[3]} 0

run 40ns

force {KEY[3]} 1


#new new new
force {SW[3:0]} 10#2

force {KEY[0]} 0
run 40ns

force {KEY[0]} 1

force {KEY[1]} 0

run 40ns
force {KEY[1]} 1

run 40ns


force {KEY[3]} 0

run 40ns

force {KEY[3]} 1

#new new new
force {SW[3:0]} 10#2

force {KEY[0]} 0
run 40ns

force {KEY[0]} 1


run 80ns


