with open("input.txt") as f:
    nums = list(map(int, f.readlines()))

    # Part 1
    num_increase = 0
    for i in range(len(nums) - 1):
        if nums[i] < nums[i+1]:
            num_increase += 1

    print(num_increases)

    # Part 2
    num_window_increases = 0
    for i in range(len(nums) - 3):
        win1 = nums[i] + nums[i+1] + nums[i+2]
        win2 = nums[i+1] + nums[i+2] + nums[i+3]

        if win1 < win2:
            num_win_increase += 1

    print(num_win_increase)
