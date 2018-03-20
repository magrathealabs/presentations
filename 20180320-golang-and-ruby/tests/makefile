build_go_lib:
	go build -o go_lib.so -buildmode=c-shared go_lib.go

benchmark: build_go_lib
	ruby my_prog.rb
