#include <stdio.h>

// Kernel function that runs on the GPU
__global__ void cuda_hello() {
    printf("Hello World from GPU!\n");
}

int main() {
    // Launch the kernel on the GPU
    // <<<1, 1>>> specifies one block and one thread
    cuda_hello<<<1, 10>>>(); 

    // Synchronize the CPU and GPU to ensure the print statement finishes
    cudaDeviceSynchronize(); 

    printf("Hello World from CPU!\n"); // This will print first
    return 0;
}
