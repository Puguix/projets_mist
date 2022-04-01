# TAG = slti
	.text

	lui x31, 0x00000
    slti x31, x31, 0x000
    addi x31, x31, 0x010
    slti x31, x31, 0x000
    slti x31, x31, 0xffffffff


	# max_cycle 50
	# 00000000
	# 00000000
    # 00000010
    # 00000001
	# 00000000
	# pout_end