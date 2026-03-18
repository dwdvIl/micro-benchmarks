## About micro benchmarks and code comments

My machine is an Alienware M15 R1 with the Intel Core i7-9750H processor.<br>
These micro benchmarks were executed in debug mode to be fair with interpreted languages (except Julia)
<br><br>
They all follow the same structure:
- Get current time
- Initialize 2 numbers to 0
- Use one for looping, the other for increment
- Increment to maximum range of 1000000000 (within signed int32 limits)
- Print the time difference and the value at the end
