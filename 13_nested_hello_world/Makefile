nested_Hello_World:
	# lcudadevrt 是动态并行需要的库，relocatable-device-code 表示生成可重新定位的代码
	nvcc -arch=native  nested_Hello_World.cu -o nested_Hello_World -lcudadevrt --relocatable-device-code true
clean:
	rm nested_Hello_World
