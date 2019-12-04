//
// Verilog description for cell ProjectWrapper, 
// Mon Nov 25 19:21:25 2019
//
// LeonardoSpectrum Level 3, 2008b.3 
//


module ProjectWrapper ( A, B, clk, WE, reset, StartTest, RegOut, Pass, Complete
                         ) ;

    input [15:0]A ;
    input [15:0]B ;
    input clk ;
    input WE ;
    input reset ;
    input StartTest ;
    output [31:0]RegOut ;
    output Pass ;
    output Complete ;

    wire CounterOut_31, CounterOut_30, CounterOut_29, nx935, CounterOut_28, 
         CounterOut_27, nx939, CounterOut_26, CounterOut_25, nx943, 
         CounterOut_24, CounterOut_23, nx947, CounterOut_22, CounterOut_21, 
         nx951, CounterOut_20, CounterOut_19, nx955, CounterOut_18, 
         CounterOut_17, nx959, CounterOut_16, CounterOut_15, nx963, 
         CounterOut_14, CounterOut_13, nx965, CounterOut_12, CounterOut_11, 
         nx967, CounterOut_10, CounterOut_9, nx971, CounterOut_8, CounterOut_7, 
         nx975, CounterOut_6, CounterOut_5, nx979, CounterOut_4, CounterOut_3, 
         nx983, CounterOut_2, nx985, CounterOut_1, nx987, CounterOut_0, nx30, 
         nx44, nx58, nx72, nx86, nx100, nx114, nx128, nx142, nx156, nx170, nx184, 
         nx198, nx212, nx226, nx240, nx254, nx268, nx282, nx296, nx310, nx324, 
         nx338, nx352, nx366, nx380, nx394, nx408, nx422, nx432, nx466, nx484, 
         nx496, nx504, nx514, MISR_out_29, MAC0_adderB_28, LFSROUT_17, 
         LFSROUT_18, LFSROUT_19, LFSROUT_20, LFSROUT_21, LFSROUT_22, LFSROUT_23, 
         LFSROUT_24, LFSROUT_25, LFSROUT_26, LFSROUT_27, LFSROUT_28, LFSROUT_29, 
         LFSROUT_30, LFSROUT_31, LFSROUT_0, LFSROUT_1, LFSROUT_2, LFSROUT_3, 
         LFSROUT_4, LFSROUT_5, LFSROUT_6, LFSROUT_7, LFSROUT_8, LFSROUT_9, 
         LFSROUT_10, LFSROUT_11, LFSROUT_12, LFSROUT_13, LFSROUT_14, LFSROUT_15, 
         LFSROUT_16, nx616, nx622, nx644, nx660, nx672, MAC0_MultA_0, nx686, 
         MAC0_MultB_0, nx698, nx704, nx714, nx732, nx740, nx748, nx758, nx768, 
         nx770, nx780, nx788, nx796, nx804, nx814, nx824, nx826, nx828, nx830, 
         nx840, nx848, nx856, nx864, nx872, nx882, nx892, nx894, nx896, nx898, 
         nx900, nx902, nx912, nx920, nx928, nx936, nx944, nx952, nx962, nx972, 
         nx974, nx976, nx978, nx980, nx982, nx984, nx986, nx996, nx1004, nx1012, 
         nx1020, nx1028, nx1036, nx1044, nx1054, nx1064, nx1066, nx1068, nx1070, 
         nx1072, nx1074, nx1076, nx1078, nx1080, nx1082, nx1092, nx1100, nx1108, 
         nx1116, nx1124, nx1132, nx1140, nx1148, nx1158, nx1168, nx1170, nx1172, 
         nx1174, nx1176, nx1178, nx1180, nx1182, nx1184, nx1186, nx1188, nx1190, 
         nx1200, nx1208, nx1216, nx1224, nx1232, nx1240, nx1248, nx1256, nx1264, 
         nx1274, nx1284, nx1286, nx1288, nx1290, nx1292, nx1294, nx1296, nx1298, 
         nx1300, nx1302, nx1304, nx1306, nx1308, nx1310, nx1320, nx1328, nx1336, 
         nx1344, nx1352, nx1360, nx1368, nx1376, nx1384, nx1392, nx1402, nx1412, 
         nx1414, nx1416, nx1418, nx1420, nx1422, nx1424, nx1426, nx1428, nx1430, 
         nx1432, nx1434, nx1436, nx1438, nx1440, nx1442, nx1452, nx1460, nx1468, 
         nx1476, nx1484, nx1492, nx1500, nx1508, nx1516, nx1524, nx1532, nx1542, 
         nx1552, nx1554, nx1556, nx1558, nx1560, nx1562, nx1564, nx1566, nx1568, 
         nx1570, nx1572, nx1574, nx1576, nx1578, nx1580, nx1582, nx1584, nx1586, 
         nx1596, nx1604, nx1612, nx1620, nx1628, nx1636, nx1644, nx1652, nx1660, 
         nx1668, nx1676, nx1684, nx1694, nx1704, nx1706, nx1708, nx1710, nx1712, 
         nx1714, nx1716, nx1718, nx1720, nx1722, nx1724, nx1726, nx1728, nx1730, 
         nx1732, nx1734, nx1736, nx1738, nx1740, nx1742, nx1752, nx1760, nx1768, 
         nx1776, nx1784, nx1792, nx1800, nx1808, nx1816, nx1824, nx1832, nx1840, 
         nx1848, nx1858, nx1868, nx1870, nx1872, nx1874, nx1876, nx1878, nx1880, 
         nx1882, nx1884, nx1886, nx1888, nx1890, nx1892, nx1894, nx1896, nx1898, 
         nx1900, nx1902, nx1904, nx1906, nx1908, nx1910, nx1920, nx1928, nx1936, 
         nx1944, nx1952, nx1960, nx1968, nx1976, nx1984, nx1992, nx2000, nx2008, 
         nx2016, nx2024, nx2034, nx2044, nx2046, nx2048, nx2050, nx2052, nx2054, 
         nx2056, nx2058, nx2060, nx2062, nx2064, nx2066, nx2068, nx2070, nx2072, 
         nx2074, nx2076, nx2078, nx2080, nx2082, nx2084, nx2086, nx2088, nx2090, 
         nx2100, nx2108, nx2116, nx2124, nx2132, nx2140, nx2148, nx2156, nx2164, 
         nx2172, nx2180, nx2188, nx2196, nx2204, nx2212, nx2222, nx2232, nx2234, 
         nx2236, nx2238, nx2240, nx2242, nx2244, nx2246, nx2248, nx2250, nx2252, 
         nx2254, nx2256, nx2258, nx2260, nx2262, nx2264, nx2266, nx2268, nx2270, 
         nx2272, nx2274, nx2276, nx2278, nx2280, nx2282, nx2292, nx2300, nx2412, 
         nx2414, nx2484, nx2492, nx2500, nx2508, nx2516, nx2524, nx2532, nx2540, 
         nx2548, nx2556, nx2564, nx2572, nx2580, nx2588, nx2594, nx2596, nx2602, 
         nx2604, nx2610, nx2612, nx2618, nx2620, nx2626, nx2628, nx2634, nx2636, 
         nx2642, nx2644, nx2650, nx2658, nx2674, nx2682, nx2690, nx2706, nx2714, 
         nx2722, nx2738, nx2746, nx2754, nx2756, nx2758, nx2760, nx2770, nx2772, 
         nx2774, nx2776, nx2786, nx2788, nx2790, nx2792, nx2802, nx2804, nx2818, 
         nx2826, nx2850, nx2858, nx2882, nx2890, nx2914, nx2916, nx2930, nx2932, 
         nx2946, nx2948, nx2958, nx2974, nx2982, nx2990, nx2998, nx3006, nx3014, 
         nx3022, nx3038, nx3046, nx3048, nx3058, nx3060, nx3066, nx3068, nx3070, 
         nx3072, nx3078, nx3080, nx3094, nx3102, nx3118, nx3126, nx3134, nx3142, 
         nx3158, nx3166, nx3178, nx3180, nx3190, nx3192, nx3194, nx3196, nx3198, 
         nx3200, nx3210, nx3212, nx3218, nx3226, nx3234, nx3242, nx3250, nx3258, 
         nx3266, nx3274, nx3282, nx3290, nx3292, nx3294, nx3296, nx3302, nx3304, 
         nx3306, nx3308, nx3310, nx3312, nx3314, nx3316, nx3322, nx3324, nx3338, 
         nx3346, nx3354, nx3362, nx3370, nx3378, nx3402, nx3404, nx3406, nx3408, 
         nx3410, nx3412, nx3414, nx3416, nx3418, nx3420, nx3430, nx3478, nx3486, 
         nx3488, nx3518, nx3526, nx3534, nx3542, nx3550, nx3558, nx3570, nx3572, 
         nx3578, nx3580, nx3586, nx3588, nx3594, nx3602, nx3618, nx3626, nx3634, 
         nx3636, nx3638, nx3640, nx3650, nx3652, nx3666, nx3674, nx3698, nx3700, 
         nx3710, nx3726, nx3734, nx3736, nx3746, MAC0_adderB_27, nx3752, 
         MAC0_adderB_26, nx3758, MAC0_adderB_25, nx3764, MAC0_adderB_24, nx3770, 
         MAC0_adderB_23, nx3776, MAC0_adderB_22, nx3782, MAC0_adderB_21, nx3788, 
         MAC0_adderB_20, nx3794, MAC0_adderB_19, nx3800, MAC0_adderB_18, nx3806, 
         MAC0_adderB_17, nx3812, MAC0_adderB_16, nx3818, MAC0_adderB_15, nx3824, 
         nx3830, MAC0_adderB_14, nx3836, nx3842, MAC0_adderB_13, nx3848, nx3854, 
         MAC0_adderB_12, nx3860, nx3866, MAC0_adderB_11, nx3872, nx3878, 
         MAC0_adderB_10, nx3884, nx3890, MAC0_adderB_9, nx3896, nx3902, 
         MAC0_adderB_8, nx3908, nx3914, MAC0_adderB_7, nx3920, nx3926, 
         MAC0_adderB_6, nx3932, nx3938, MAC0_adderB_5, nx3950, MAC0_adderB_4, 
         nx3962, MAC0_adderB_3, nx3974, MAC0_adderB_2, nx3986, MAC0_adderB_1, 
         nx4000, MAC0_adderB_0, nx989, nx991, nx4040, nx993, nx4046, nx4056, 
         nx995, nx4062, nx4072, nx997, nx4078, nx4088, nx998, nx4094, nx4104, 
         nx999, nx4110, nx4120, nx1000, nx4126, nx4136, nx1001, nx4142, nx4152, 
         nx1003, nx4158, nx4168, nx1005, nx4174, nx4184, nx1007, nx4190, nx4200, 
         nx1009, nx4206, nx4216, nx1011, nx4222, nx4232, nx1013, nx4238, nx4248, 
         nx1015, nx4254, nx4264, nx1017, nx4270, nx4280, nx1019, nx4286, nx4296, 
         nx1021, nx4302, nx4312, nx1023, nx4318, nx4328, nx1025, nx4334, nx4344, 
         nx1027, nx4350, nx4360, nx1029, nx4366, nx4376, nx1031, nx4382, nx4392, 
         nx1033, nx4398, nx4408, nx1035, nx4414, nx4424, nx1037, nx4430, nx4440, 
         nx1039, nx4446, nx4456, nx1041, nx4462, nx4472, MAC0_adderB_29, nx4478, 
         nx4486, nx4498, nx4500, nx4502, nx4508, nx4510, MISR_out_30, nx4522, 
         MAC0_adderB_30, nx4536, nx4538, nx4540, nx4546, nx4548, MISR_out_31, 
         MAC0_adderB_31, nx4566, nx4574, MISR_out_0, MISR_out_1, MISR_out_2, 
         MISR_out_3, MISR_out_4, MISR_out_5, MISR_out_6, MISR_out_7, MISR_out_8, 
         MISR_out_9, MISR_out_10, MISR_out_11, MISR_out_12, MISR_out_13, 
         MISR_out_14, MISR_out_15, MISR_out_16, MISR_out_17, MISR_out_18, 
         MISR_out_19, MISR_out_20, MISR_out_21, MISR_out_22, MISR_out_23, 
         MISR_out_24, MISR_out_25, MISR_out_26, MISR_out_27, MISR_out_28, nx4580, 
         nx4586, nx4592, nx4600, nx4608, nx4614, nx4620, nx4626, nx4632, nx4640, 
         nx4646, nx4652, nx4658, nx4664, nx4670, nx4676, nx4682, nx4688, nx4694, 
         nx4700, nx4706, nx4712, nx4718, nx4724, nx4730, nx4736, nx4742, nx4748, 
         nx4754, nx4760, nx4766, nx4772, nx4784, nx4800, nx4838, nx4848, nx4860, 
         nx4870, nx4876, nx4878, nx1049, nx1059, nx1069, nx1079, nx1089, nx1099, 
         nx1109, nx1119, nx1129, nx1139, nx1149, nx1159, nx1169, nx1179, nx1189, 
         nx1199, nx1209, nx1219, nx1229, nx1239, nx1249, nx1259, nx1269, nx1279, 
         nx1289, nx1299, nx1309, nx1319, nx1329, nx1339, nx1349, nx1359, nx1369, 
         nx1379, nx1389, nx1399, nx1409, nx1419, nx1429, nx1439, nx1449, nx1459, 
         nx1469, nx1479, nx1489, nx1499, nx1509, nx1519, nx1529, nx1539, nx1549, 
         nx1559, nx1569, nx1579, nx1589, nx1599, nx1609, nx1619, nx1629, nx1639, 
         nx1649, nx1659, nx1669, nx1679, nx1689, nx1699, nx1709, nx1719, nx1729, 
         nx1739, nx1749, nx1759, nx1769, nx1779, nx1789, nx1799, nx1809, nx1819, 
         nx1829, nx1839, nx1849, nx1859, nx1869, nx1879, nx1889, nx1899, nx1909, 
         nx1919, nx1929, nx1939, nx1949, nx1959, nx1969, nx1979, nx1989, nx1999, 
         nx2009, nx2019, nx2029, nx2039, nx2049, nx2059, nx2069, nx2079, nx2089, 
         nx2099, nx2109, nx2119, nx2129, nx2139, nx2149, nx2159, nx2169, nx2179, 
         nx2189, nx2199, nx2209, nx2219, nx2229, nx2239, nx2249, nx2259, nx2269, 
         nx2279, nx2289, nx2299, nx2309, nx2319, nx2335, nx2339, nx2347, nx2349, 
         nx2353, nx2359, nx2361, nx2379, nx2389, nx2397, nx2407, nx2413, nx2415, 
         nx2427, nx2433, nx2437, nx2447, nx2453, nx2455, nx2457, nx2467, nx2473, 
         nx2475, nx2485, nx2491, nx2493, nx2497, nx2507, nx2513, nx2515, nx2525, 
         nx2531, nx2533, nx2535, nx2545, nx2551, nx2553, nx2563, nx2569, nx2571, 
         nx2573, nx2583, nx2589, nx2591, nx2601, nx2607, nx2609, nx2611, nx2621, 
         nx2627, nx2629, nx2639, nx2645, nx2655, nx2671, nx2679, nx2687, nx2695, 
         nx2703, nx2711, nx2719, nx2727, nx2735, nx2743, nx2751, nx2759, nx2767, 
         nx2775, nx2783, nx2791, nx2799, nx2807, nx2815, nx2823, nx2831, nx2839, 
         nx2847, nx2855, nx2863, nx2871, nx2879, nx2887, nx2901, nx3115, nx3117, 
         nx3125, nx3131, nx3135, nx3137, nx3143, nx3145, nx3153, nx3159, nx3161, 
         nx3163, nx3165, nx3167, nx3173, nx3179, nx3189, nx3195, nx3197, nx3201, 
         nx3207, nx3209, nx3211, nx3213, nx3219, nx3225, nx3235, nx3241, nx3243, 
         nx3247, nx3251, nx3255, nx3261, nx3263, nx3265, nx3267, nx3273, nx3279, 
         nx3289, nx3295, nx3297, nx3301, nx3305, nx3309, nx3313, nx3319, nx3325, 
         nx3331, nx3333, nx3335, nx3341, nx3347, nx3357, nx3363, nx3365, nx3369, 
         nx3373, nx3377, nx3381, nx3387, nx3391, nx3397, nx3403, nx3409, nx3411, 
         nx3413, nx3419, nx3425, nx3435, nx3441, nx3443, nx3449, nx3453, nx3457, 
         nx3461, nx3467, nx3471, nx3477, nx3481, nx3487, nx3493, nx3499, nx3501, 
         nx3503, nx3509, nx3515, nx3525, nx3531, nx3533, nx3539, nx3543, nx3547, 
         nx3551, nx3557, nx3561, nx3567, nx3571, nx3577, nx3581, nx3587, nx3593, 
         nx3599, nx3601, nx3603, nx3609, nx3615, nx3625, nx3631, nx3633, nx3639, 
         nx3643, nx3647, nx3651, nx3657, nx3661, nx3667, nx3671, nx3677, nx3681, 
         nx3687, nx3691, nx3697, nx3703, nx3709, nx3711, nx3713, nx3719, nx3725, 
         nx3735, nx3741, nx3743, nx3749, nx3753, nx3756, nx3759, nx3763, nx3767, 
         nx3771, nx3774, nx3779, nx3783, nx3787, nx3791, nx3795, nx3798, nx3803, 
         nx3807, nx3811, nx3813, nx3815, nx3819, nx3823, nx3833, nx3837, nx3839, 
         nx3845, nx3849, nx3853, nx3857, nx3861, nx3865, nx3870, nx3873, nx3879, 
         nx3882, nx3887, nx3891, nx3895, nx3899, nx3905, nx3909, nx3915, nx3919, 
         nx3925, nx3927, nx3929, nx3933, nx3939, nx3947, nx3953, nx3955, nx3961, 
         nx3965, nx3969, nx3973, nx3978, nx3981, nx3987, nx3990, nx3995, nx3999, 
         nx4004, nx4007, nx4011, nx4015, nx4019, nx4023, nx4027, nx4031, nx4037, 
         nx4043, nx4047, nx4049, nx4051, nx4057, nx4061, nx4071, nx4076, nx4079, 
         nx4085, nx4089, nx4092, nx4095, nx4101, nx4105, nx4109, nx4113, nx4119, 
         nx4123, nx4127, nx4131, nx4137, nx4140, nx4145, nx4149, nx4155, nx4159, 
         nx4165, nx4169, nx4173, nx4179, nx4185, nx4187, nx4189, nx4195, nx4201, 
         nx4209, nx4215, nx4217, nx4221, nx4225, nx4229, nx4233, nx4237, nx4241, 
         nx4247, nx4251, nx4255, nx4259, nx4265, nx4268, nx4273, nx4277, nx4283, 
         nx4287, nx4293, nx4297, nx4301, nx4305, nx4311, nx4315, nx4319, nx4325, 
         nx4331, nx4333, nx4335, nx4341, nx4347, nx4357, nx4363, nx4365, nx4371, 
         nx4375, nx4379, nx4383, nx4389, nx4393, nx4397, nx4401, nx4407, nx4411, 
         nx4415, nx4419, nx4425, nx4428, nx4433, nx4437, nx4443, nx4447, nx4453, 
         nx4457, nx4461, nx4465, nx4471, nx4475, nx4481, nx4487, nx4493, nx4495, 
         nx4497, nx4503, nx4507, nx4516, nx4519, nx4521, nx4523, nx4525, nx4527, 
         nx4529, nx4531, nx4535, nx4537, nx4539, nx4541, nx4544, nx4547, nx4549, 
         nx4551, nx4554, nx4557, nx4559, nx4561, nx4565, nx4567, nx4569, nx4571, 
         nx4575, nx4577, nx4579, nx4581, nx4584, nx4587, nx4589, nx4591, nx4595, 
         nx4597, nx4599, nx4601, nx4604, nx4607, nx4609, nx4611, nx4615, nx4617, 
         nx4619, nx4621, nx4624, nx4627, nx4629, nx4631, nx4635, nx4637, nx4639, 
         nx4641, nx4644, nx4647, nx4649, nx4651, nx4656, nx4665, nx4674, nx4677, 
         nx4681, nx4683, nx4685, nx4689, nx4693, nx4695, nx4697, nx4701, nx4705, 
         nx4707, nx4709, nx4713, nx4717, nx4719, nx4721, nx4725, nx4729, nx4731, 
         nx4733, nx4737, nx4741, nx4743, nx4745, nx4749, nx4753, nx4755, nx4757, 
         nx4763, nx4771, nx4775, nx4779, nx4781, nx4783, nx4785, nx4787, nx4789, 
         nx4791, nx4793, nx4797, nx4801, nx4805, nx4809, nx4815, nx4817, nx4819, 
         nx4821, nx4823, nx4825, nx4827, nx4829, nx4833, nx4837, nx4841, nx4845, 
         nx4851, nx4853, nx4855, nx4857, nx4859, nx4861, nx4863, nx4865, nx4869, 
         nx4873, nx4877, nx4881, nx4884, nx4889, nx4896, nx4899, nx4901, nx4903, 
         nx4906, nx4911, nx4915, nx4917, nx4919, nx4921, nx4923, nx4925, nx4927, 
         nx4929, nx4932, nx4934, nx4936, nx4939, nx4944, nx4948, nx4950, nx4952, 
         nx4954, nx4956, nx4958, nx4960, nx4962, nx4965, nx4967, nx4969, nx4972, 
         nx4977, nx4981, nx4983, nx4985, nx4987, nx4989, nx4991, nx4993, nx4999, 
         nx5007, nx5009, nx5011, nx5013, nx5015, nx5017, nx5019, nx5022, nx5025, 
         nx5029, nx5031, nx5033, nx5037, nx5040, nx5043, nx5047, nx5049, nx5051, 
         nx5053, nx5057, nx5061, nx5063, nx5065, nx5067, nx5069, nx5071, nx5073, 
         nx5076, nx5079, nx5085, nx5093, nx5096, nx5100, nx5102, nx5104, nx5106, 
         nx5108, nx5110, nx5112, nx5115, nx5118, nx5121, nx5124, nx5127, nx5131, 
         nx5135, nx5139, nx5141, nx5143, nx5145, nx5147, nx5149, nx5151, nx5154, 
         nx5157, nx5161, nx5163, nx5165, nx5170, nx5177, nx5180, nx5184, nx5186, 
         nx5188, nx5190, nx5194, nx5197, nx5200, nx5203, nx5207, nx5210, nx5214, 
         nx5218, nx5222, nx5224, nx5226, nx5230, nx5233, nx5236, nx5239, nx5244, 
         nx5251, nx5254, nx5256, nx5258, nx5261, nx5266, nx5269, nx5272, nx5275, 
         nx5279, nx5282, nx5286, nx5289, nx5293, nx5297, nx5301, nx5303, nx5305, 
         nx5307, nx5309, nx5311, nx5313, nx5319, nx5327, nx5329, nx5331, nx5333, 
         nx5335, nx5337, nx5339, nx5341, nx5344, nx5346, nx5348, nx5350, nx5353, 
         nx5355, nx5357, nx5359, nx5362, nx5364, nx5366, nx5368, nx5371, nx5373, 
         nx5375, nx5378, nx5383, nx5389, nx5397, nx5400, nx5404, nx5406, nx5408, 
         nx5412, nx5416, nx5418, nx5420, nx5424, nx5428, nx5430, nx5432, nx5437, 
         nx5444, nx5447, nx5451, nx5453, nx5455, nx5457, nx5459, nx5461, nx5463, 
         nx5465, nx5468, nx5471, nx5474, nx5477, nx5480, nx5485, nx5492, nx5495, 
         nx5497, nx5499, nx5502, nx5507, nx5511, nx5513, nx5515, nx5517, nx5519, 
         nx5521, nx5523, nx5529, nx5537, nx5539, nx5541, nx5543, nx5545, nx5547, 
         nx5549, nx5552, nx5555, nx5561, nx5569, nx5572, nx5576, nx5578, nx5580, 
         nx5584, nx5592, nx5595, nx5602, nx5605, nx5608, nx5620, nx5623, nx5626, 
         nx5633, nx5638, nx5643, nx5648, nx5653, nx5678, nx5683, nx5688, nx5693, 
         nx5698, nx5703, nx5708, nx5713, nx5718, nx5723, nx5728, nx5733, nx5738, 
         nx5743, nx5753, nx5758, nx5763, nx5773, nx5778, nx5780, nx5782, nx5784, 
         nx5786, nx5788, nx5800, nx5802, nx5804, nx5806, nx5808, nx5810, nx5812, 
         nx5814, nx5816, nx5818, nx5820, nx5822, nx5824, nx5844, nx5848, nx5850, 
         nx5852, nx5854, nx5856, nx5860, nx5862, nx5864, nx5866, nx5868, nx5870, 
         nx5872, nx5874, nx5876, nx5878, nx5880, nx5882, nx5884, nx5886, nx5888, 
         nx5890, nx5892, nx5894, nx5896, nx5898, nx5900, nx5902, nx5904, nx5906, 
         nx5908, nx5910, nx5912, nx5914, nx5916, nx5918, nx5920, nx5922, nx5924, 
         nx5926, nx5928, nx5930, nx5932, nx5934, nx5936, nx5938, nx5940, nx5942, 
         nx5944, nx5946, nx5948, nx5950, nx5952, nx5954, nx5956, nx5958, nx5960, 
         nx5962, nx5964, nx5966, nx5968, nx5970, nx5972, nx5974, nx5980, nx5982, 
         nx5984, nx5986, nx5988, nx5990, nx5992, nx5994, nx5996, nx5998, nx6000, 
         nx6002, nx6004, nx6006, nx6008, nx6010, nx6012, nx6014, nx6016, nx6018, 
         nx6020, nx6022, nx6024, nx6026, nx6028, nx6030, nx6032, nx6034, nx6036, 
         nx6038, nx6040, nx6042, nx6044, nx6046, nx6048, nx6050, nx6052, nx6054, 
         nx6056, nx6058, nx6060, nx6062, nx6064, nx6066, nx6068, nx6070, nx6072, 
         nx6074, nx6076, nx6078, nx6080, nx6082, nx6084, nx6086, nx6088, nx6090, 
         nx6092, nx6094, nx6096, nx6098, nx6100, nx6102, nx6104, nx6106, nx6108, 
         nx6110, nx6112, nx6114, nx6116, nx6118, nx6120, nx6122, nx6124, nx6126, 
         nx6128, nx6130, nx6132, nx6134, nx6136, nx6138, nx6140;
    wire [141:0] \$dummy ;




    dffr TEST0_reg_complete_v (.Q (Complete), .QB (\$dummy [0]), .D (nx514), .CLK (
         clk), .R (nx5804)) ;
    or02 ix515 (.Y (nx514), .A0 (nx2335), .A1 (Complete)) ;
    nor04 ix2336 (.Y (nx2335), .A0 (nx504), .A1 (nx496), .A2 (nx484), .A3 (nx466
          )) ;
    dffr COUNT0_REG0_reg_Y_0 (.Q (CounterOut_0), .QB (nx2339), .D (nx1049), .CLK (
         clk), .R (nx5800)) ;
    dffr TEST0_reg_TestEN (.Q (\$dummy [1]), .QB (nx2347), .D (StartTest), .CLK (
         clk), .R (nx5800)) ;
    oai21 ix1060 (.Y (nx1059), .A0 (nx2353), .A1 (nx5998), .B0 (nx2359)) ;
    oai21 ix2354 (.Y (nx2353), .A0 (CounterOut_0), .A1 (CounterOut_1), .B0 (
          nx987)) ;
    dffr COUNT0_REG0_reg_Y_1 (.Q (CounterOut_1), .QB (nx2349), .D (nx1059), .CLK (
         clk), .R (nx5800)) ;
    nand02 ix2360 (.Y (nx2359), .A0 (CounterOut_1), .A1 (nx5998)) ;
    dffr COUNT0_REG0_reg_Y_2 (.Q (CounterOut_2), .QB (nx2361), .D (nx1069), .CLK (
         clk), .R (nx5800)) ;
    dffr COUNT0_REG0_reg_Y_3 (.Q (CounterOut_3), .QB (\$dummy [2]), .D (nx1079)
         , .CLK (clk), .R (nx5800)) ;
    xnor2 ix45 (.Y (nx44), .A0 (nx985), .A1 (CounterOut_3)) ;
    dffr COUNT0_REG0_reg_Y_4 (.Q (CounterOut_4), .QB (nx2379), .D (nx1089), .CLK (
         clk), .R (nx5800)) ;
    aoi21 ix59 (.Y (nx58), .A0 (nx983), .A1 (nx2379), .B0 (nx2389)) ;
    dffr COUNT0_REG0_reg_Y_5 (.Q (CounterOut_5), .QB (nx2397), .D (nx1099), .CLK (
         clk), .R (nx5800)) ;
    dffr COUNT0_REG0_reg_Y_6 (.Q (CounterOut_6), .QB (nx2407), .D (nx1109), .CLK (
         clk), .R (nx5800)) ;
    nand02 ix81 (.Y (nx979), .A0 (nx2389), .A1 (CounterOut_5)) ;
    dffr COUNT0_REG0_reg_Y_7 (.Q (CounterOut_7), .QB (nx2415), .D (nx1119), .CLK (
         clk), .R (nx5800)) ;
    nand04 ix485 (.Y (nx484), .A0 (CounterOut_8), .A1 (CounterOut_9), .A2 (
           nx2437), .A3 (nx2457)) ;
    dffr COUNT0_REG0_reg_Y_8 (.Q (CounterOut_8), .QB (nx2427), .D (nx1129), .CLK (
         clk), .R (nx5800)) ;
    nand02 ix109 (.Y (nx975), .A0 (nx2413), .A1 (CounterOut_7)) ;
    dffr COUNT0_REG0_reg_Y_9 (.Q (CounterOut_9), .QB (\$dummy [3]), .D (nx1139)
         , .CLK (clk), .R (nx5800)) ;
    dffr COUNT0_REG0_reg_Y_10 (.Q (CounterOut_10), .QB (nx2447), .D (nx1149), .CLK (
         clk), .R (nx5800)) ;
    nand02 ix137 (.Y (nx971), .A0 (nx2433), .A1 (CounterOut_9)) ;
    dffr COUNT0_REG0_reg_Y_11 (.Q (CounterOut_11), .QB (nx2455), .D (nx1159), .CLK (
         clk), .R (nx5800)) ;
    dffr COUNT0_REG0_reg_Y_12 (.Q (CounterOut_12), .QB (nx2467), .D (nx1169), .CLK (
         clk), .R (nx5800)) ;
    nand02 ix165 (.Y (nx967), .A0 (nx2453), .A1 (CounterOut_11)) ;
    dffr COUNT0_REG0_reg_Y_13 (.Q (CounterOut_13), .QB (nx2475), .D (nx1179), .CLK (
         clk), .R (nx5800)) ;
    dffr COUNT0_REG0_reg_Y_14 (.Q (CounterOut_14), .QB (nx2485), .D (nx1189), .CLK (
         clk), .R (nx5802)) ;
    nand02 ix193 (.Y (nx965), .A0 (nx2473), .A1 (CounterOut_13)) ;
    dffr COUNT0_REG0_reg_Y_15 (.Q (CounterOut_15), .QB (nx2493), .D (nx1199), .CLK (
         clk), .R (nx5802)) ;
    nand04 ix467 (.Y (nx466), .A0 (nx2497), .A1 (nx2535), .A2 (nx2573), .A3 (
           nx2611)) ;
    dffr COUNT0_REG0_reg_Y_16 (.Q (CounterOut_16), .QB (nx2507), .D (nx1209), .CLK (
         clk), .R (nx5802)) ;
    nand02 ix221 (.Y (nx963), .A0 (nx2491), .A1 (CounterOut_15)) ;
    dffr COUNT0_REG0_reg_Y_17 (.Q (CounterOut_17), .QB (nx2515), .D (nx1219), .CLK (
         clk), .R (nx5802)) ;
    dffr COUNT0_REG0_reg_Y_18 (.Q (CounterOut_18), .QB (nx2525), .D (nx1229), .CLK (
         clk), .R (nx5802)) ;
    nand02 ix249 (.Y (nx959), .A0 (nx2513), .A1 (CounterOut_17)) ;
    dffr COUNT0_REG0_reg_Y_19 (.Q (CounterOut_19), .QB (nx2533), .D (nx1239), .CLK (
         clk), .R (nx5802)) ;
    dffr COUNT0_REG0_reg_Y_20 (.Q (CounterOut_20), .QB (nx2545), .D (nx1249), .CLK (
         clk), .R (nx5802)) ;
    nand02 ix277 (.Y (nx955), .A0 (nx2531), .A1 (CounterOut_19)) ;
    dffr COUNT0_REG0_reg_Y_21 (.Q (CounterOut_21), .QB (nx2553), .D (nx1259), .CLK (
         clk), .R (nx5802)) ;
    dffr COUNT0_REG0_reg_Y_22 (.Q (CounterOut_22), .QB (nx2563), .D (nx1269), .CLK (
         clk), .R (nx5802)) ;
    nand02 ix305 (.Y (nx951), .A0 (nx2551), .A1 (CounterOut_21)) ;
    dffr COUNT0_REG0_reg_Y_23 (.Q (CounterOut_23), .QB (nx2571), .D (nx1279), .CLK (
         clk), .R (nx5802)) ;
    dffr COUNT0_REG0_reg_Y_24 (.Q (CounterOut_24), .QB (nx2583), .D (nx1289), .CLK (
         clk), .R (nx5802)) ;
    nand02 ix333 (.Y (nx947), .A0 (nx2569), .A1 (CounterOut_23)) ;
    dffr COUNT0_REG0_reg_Y_25 (.Q (CounterOut_25), .QB (nx2591), .D (nx1299), .CLK (
         clk), .R (nx5802)) ;
    dffr COUNT0_REG0_reg_Y_26 (.Q (CounterOut_26), .QB (nx2601), .D (nx1309), .CLK (
         clk), .R (nx5802)) ;
    nand02 ix361 (.Y (nx943), .A0 (nx2589), .A1 (CounterOut_25)) ;
    dffr COUNT0_REG0_reg_Y_27 (.Q (CounterOut_27), .QB (nx2609), .D (nx1319), .CLK (
         clk), .R (nx5802)) ;
    dffr COUNT0_REG0_reg_Y_28 (.Q (CounterOut_28), .QB (nx2621), .D (nx1329), .CLK (
         clk), .R (nx5802)) ;
    nand02 ix389 (.Y (nx939), .A0 (nx2607), .A1 (CounterOut_27)) ;
    dffr COUNT0_REG0_reg_Y_29 (.Q (CounterOut_29), .QB (nx2629), .D (nx1339), .CLK (
         clk), .R (nx5804)) ;
    dffr COUNT0_REG0_reg_Y_30 (.Q (CounterOut_30), .QB (nx2639), .D (nx1349), .CLK (
         clk), .R (nx5804)) ;
    nand02 ix417 (.Y (nx935), .A0 (nx2627), .A1 (CounterOut_29)) ;
    dffr COUNT0_REG0_reg_Y_31 (.Q (CounterOut_31), .QB (\$dummy [4]), .D (nx1359
         ), .CLK (clk), .R (nx5804)) ;
    xor2 ix433 (.Y (nx432), .A0 (CounterOut_31), .A1 (nx2645)) ;
    dffr TEST0_reg_pass_v (.Q (Pass), .QB (\$dummy [5]), .D (nx4878), .CLK (clk)
         , .R (nx5824)) ;
    or02 ix4879 (.Y (nx4878), .A0 (nx4876), .A1 (Pass)) ;
    nor04 ix4877 (.Y (nx4876), .A0 (nx2655), .A1 (nx5784), .A2 (nx5786), .A3 (
          nx5788)) ;
    nand04 ix2656 (.Y (nx2655), .A0 (nx4784), .A1 (nx5773), .A2 (MISR_out_27), .A3 (
           nx4800)) ;
    dffr MAC0_BigBoyReg_reg_Y_29 (.Q (RegOut[29]), .QB (\$dummy [6]), .D (nx1979
         ), .CLK (clk), .R (nx5820)) ;
    mux21 ix1980 (.Y (nx1979), .A0 (RegOut[29]), .A1 (nx4510), .S0 (WE)) ;
    aoi22 ix2672 (.Y (nx2671), .A0 (RegOut[28]), .A1 (nx4456), .B0 (
          MAC0_adderB_28), .B1 (nx5561)) ;
    dffr MAC0_BigBoyReg_reg_Y_28 (.Q (RegOut[28]), .QB (\$dummy [7]), .D (nx1969
         ), .CLK (clk), .R (nx5820)) ;
    mux21 ix1970 (.Y (nx1969), .A0 (RegOut[28]), .A1 (nx1041), .S0 (WE)) ;
    aoi22 ix2680 (.Y (nx2679), .A0 (RegOut[27]), .A1 (nx4440), .B0 (
          MAC0_adderB_27), .B1 (nx5529)) ;
    dffr MAC0_BigBoyReg_reg_Y_27 (.Q (RegOut[27]), .QB (\$dummy [8]), .D (nx1959
         ), .CLK (clk), .R (nx5820)) ;
    mux21 ix1960 (.Y (nx1959), .A0 (RegOut[27]), .A1 (nx1039), .S0 (WE)) ;
    aoi22 ix2688 (.Y (nx2687), .A0 (RegOut[26]), .A1 (nx4424), .B0 (
          MAC0_adderB_26), .B1 (nx5485)) ;
    dffr MAC0_BigBoyReg_reg_Y_26 (.Q (RegOut[26]), .QB (\$dummy [9]), .D (nx1949
         ), .CLK (clk), .R (nx5820)) ;
    mux21 ix1950 (.Y (nx1949), .A0 (RegOut[26]), .A1 (nx1037), .S0 (WE)) ;
    aoi22 ix2696 (.Y (nx2695), .A0 (RegOut[25]), .A1 (nx4408), .B0 (
          MAC0_adderB_25), .B1 (nx5437)) ;
    dffr MAC0_BigBoyReg_reg_Y_25 (.Q (RegOut[25]), .QB (\$dummy [10]), .D (
         nx1939), .CLK (clk), .R (nx5818)) ;
    mux21 ix1940 (.Y (nx1939), .A0 (RegOut[25]), .A1 (nx1035), .S0 (WE)) ;
    aoi22 ix2704 (.Y (nx2703), .A0 (RegOut[24]), .A1 (nx4392), .B0 (
          MAC0_adderB_24), .B1 (nx5389)) ;
    dffr MAC0_BigBoyReg_reg_Y_24 (.Q (RegOut[24]), .QB (\$dummy [11]), .D (
         nx1929), .CLK (clk), .R (nx5818)) ;
    mux21 ix1930 (.Y (nx1929), .A0 (RegOut[24]), .A1 (nx1033), .S0 (WE)) ;
    aoi22 ix2712 (.Y (nx2711), .A0 (RegOut[23]), .A1 (nx4376), .B0 (
          MAC0_adderB_23), .B1 (nx5319)) ;
    dffr MAC0_BigBoyReg_reg_Y_23 (.Q (RegOut[23]), .QB (\$dummy [12]), .D (
         nx1919), .CLK (clk), .R (nx5818)) ;
    mux21 ix1920 (.Y (nx1919), .A0 (RegOut[23]), .A1 (nx1031), .S0 (WE)) ;
    aoi22 ix2720 (.Y (nx2719), .A0 (RegOut[22]), .A1 (nx4360), .B0 (
          MAC0_adderB_22), .B1 (nx5244)) ;
    dffr MAC0_BigBoyReg_reg_Y_22 (.Q (RegOut[22]), .QB (\$dummy [13]), .D (
         nx1909), .CLK (clk), .R (nx5818)) ;
    mux21 ix1910 (.Y (nx1909), .A0 (RegOut[22]), .A1 (nx1029), .S0 (WE)) ;
    aoi22 ix2728 (.Y (nx2727), .A0 (RegOut[21]), .A1 (nx4344), .B0 (
          MAC0_adderB_21), .B1 (nx5170)) ;
    dffr MAC0_BigBoyReg_reg_Y_21 (.Q (RegOut[21]), .QB (\$dummy [14]), .D (
         nx1899), .CLK (clk), .R (nx5818)) ;
    mux21 ix1900 (.Y (nx1899), .A0 (RegOut[21]), .A1 (nx1027), .S0 (WE)) ;
    aoi22 ix2736 (.Y (nx2735), .A0 (RegOut[20]), .A1 (nx4328), .B0 (
          MAC0_adderB_20), .B1 (nx5085)) ;
    dffr MAC0_BigBoyReg_reg_Y_20 (.Q (RegOut[20]), .QB (\$dummy [15]), .D (
         nx1889), .CLK (clk), .R (nx5818)) ;
    mux21 ix1890 (.Y (nx1889), .A0 (RegOut[20]), .A1 (nx1025), .S0 (WE)) ;
    aoi22 ix2744 (.Y (nx2743), .A0 (RegOut[19]), .A1 (nx4312), .B0 (
          MAC0_adderB_19), .B1 (nx4999)) ;
    dffr MAC0_BigBoyReg_reg_Y_19 (.Q (RegOut[19]), .QB (\$dummy [16]), .D (
         nx1879), .CLK (clk), .R (nx5818)) ;
    mux21 ix1880 (.Y (nx1879), .A0 (RegOut[19]), .A1 (nx1023), .S0 (WE)) ;
    aoi22 ix2752 (.Y (nx2751), .A0 (RegOut[18]), .A1 (nx4296), .B0 (
          MAC0_adderB_18), .B1 (nx4889)) ;
    dffr MAC0_BigBoyReg_reg_Y_18 (.Q (RegOut[18]), .QB (\$dummy [17]), .D (
         nx1869), .CLK (clk), .R (nx5818)) ;
    mux21 ix1870 (.Y (nx1869), .A0 (RegOut[18]), .A1 (nx1021), .S0 (WE)) ;
    aoi22 ix2760 (.Y (nx2759), .A0 (RegOut[17]), .A1 (nx4280), .B0 (
          MAC0_adderB_17), .B1 (nx4763)) ;
    dffr MAC0_BigBoyReg_reg_Y_17 (.Q (RegOut[17]), .QB (\$dummy [18]), .D (
         nx1859), .CLK (clk), .R (nx5816)) ;
    mux21 ix1860 (.Y (nx1859), .A0 (RegOut[17]), .A1 (nx1019), .S0 (WE)) ;
    aoi22 ix2768 (.Y (nx2767), .A0 (RegOut[16]), .A1 (nx4264), .B0 (
          MAC0_adderB_16), .B1 (nx4665)) ;
    dffr MAC0_BigBoyReg_reg_Y_16 (.Q (RegOut[16]), .QB (\$dummy [19]), .D (
         nx1849), .CLK (clk), .R (nx5816)) ;
    mux21 ix1850 (.Y (nx1849), .A0 (RegOut[16]), .A1 (nx1017), .S0 (WE)) ;
    aoi22 ix2776 (.Y (nx2775), .A0 (RegOut[15]), .A1 (nx4248), .B0 (
          MAC0_adderB_15), .B1 (nx4507)) ;
    dffr MAC0_BigBoyReg_reg_Y_15 (.Q (RegOut[15]), .QB (\$dummy [20]), .D (
         nx1839), .CLK (clk), .R (nx5816)) ;
    mux21 ix1840 (.Y (nx1839), .A0 (RegOut[15]), .A1 (nx1015), .S0 (WE)) ;
    aoi22 ix2784 (.Y (nx2783), .A0 (RegOut[14]), .A1 (nx4232), .B0 (
          MAC0_adderB_14), .B1 (nx4347)) ;
    dffr MAC0_BigBoyReg_reg_Y_14 (.Q (RegOut[14]), .QB (\$dummy [21]), .D (
         nx1829), .CLK (clk), .R (nx5816)) ;
    mux21 ix1830 (.Y (nx1829), .A0 (RegOut[14]), .A1 (nx1013), .S0 (WE)) ;
    aoi22 ix2792 (.Y (nx2791), .A0 (RegOut[13]), .A1 (nx4216), .B0 (
          MAC0_adderB_13), .B1 (nx4201)) ;
    dffr MAC0_BigBoyReg_reg_Y_13 (.Q (RegOut[13]), .QB (\$dummy [22]), .D (
         nx1819), .CLK (clk), .R (nx5816)) ;
    mux21 ix1820 (.Y (nx1819), .A0 (RegOut[13]), .A1 (nx1011), .S0 (WE)) ;
    aoi22 ix2800 (.Y (nx2799), .A0 (RegOut[12]), .A1 (nx4200), .B0 (
          MAC0_adderB_12), .B1 (nx4061)) ;
    dffr MAC0_BigBoyReg_reg_Y_12 (.Q (RegOut[12]), .QB (\$dummy [23]), .D (
         nx1809), .CLK (clk), .R (nx5814)) ;
    mux21 ix1810 (.Y (nx1809), .A0 (RegOut[12]), .A1 (nx1009), .S0 (WE)) ;
    aoi22 ix2808 (.Y (nx2807), .A0 (RegOut[11]), .A1 (nx4184), .B0 (
          MAC0_adderB_11), .B1 (nx3939)) ;
    dffr MAC0_BigBoyReg_reg_Y_11 (.Q (RegOut[11]), .QB (\$dummy [24]), .D (
         nx1799), .CLK (clk), .R (nx5814)) ;
    mux21 ix1800 (.Y (nx1799), .A0 (RegOut[11]), .A1 (nx1007), .S0 (WE)) ;
    aoi22 ix2816 (.Y (nx2815), .A0 (RegOut[10]), .A1 (nx4168), .B0 (
          MAC0_adderB_10), .B1 (nx3823)) ;
    dffr MAC0_BigBoyReg_reg_Y_10 (.Q (RegOut[10]), .QB (\$dummy [25]), .D (
         nx1789), .CLK (clk), .R (nx5814)) ;
    mux21 ix1790 (.Y (nx1789), .A0 (RegOut[10]), .A1 (nx1005), .S0 (WE)) ;
    aoi22 ix2824 (.Y (nx2823), .A0 (RegOut[9]), .A1 (nx4152), .B0 (MAC0_adderB_9
          ), .B1 (nx3725)) ;
    dffr MAC0_BigBoyReg_reg_Y_9 (.Q (RegOut[9]), .QB (\$dummy [26]), .D (nx1779)
         , .CLK (clk), .R (nx5814)) ;
    mux21 ix1780 (.Y (nx1779), .A0 (RegOut[9]), .A1 (nx1003), .S0 (WE)) ;
    aoi22 ix2832 (.Y (nx2831), .A0 (RegOut[8]), .A1 (nx4136), .B0 (MAC0_adderB_8
          ), .B1 (nx3615)) ;
    dffr MAC0_BigBoyReg_reg_Y_8 (.Q (RegOut[8]), .QB (\$dummy [27]), .D (nx1769)
         , .CLK (clk), .R (nx5812)) ;
    mux21 ix1770 (.Y (nx1769), .A0 (RegOut[8]), .A1 (nx1001), .S0 (WE)) ;
    aoi22 ix2840 (.Y (nx2839), .A0 (RegOut[7]), .A1 (nx4120), .B0 (MAC0_adderB_7
          ), .B1 (nx3515)) ;
    dffr MAC0_BigBoyReg_reg_Y_7 (.Q (RegOut[7]), .QB (\$dummy [28]), .D (nx1759)
         , .CLK (clk), .R (nx5812)) ;
    mux21 ix1760 (.Y (nx1759), .A0 (RegOut[7]), .A1 (nx1000), .S0 (WE)) ;
    aoi22 ix2848 (.Y (nx2847), .A0 (RegOut[6]), .A1 (nx4104), .B0 (MAC0_adderB_6
          ), .B1 (nx3425)) ;
    dffr MAC0_BigBoyReg_reg_Y_6 (.Q (RegOut[6]), .QB (\$dummy [29]), .D (nx1749)
         , .CLK (clk), .R (nx5812)) ;
    mux21 ix1750 (.Y (nx1749), .A0 (RegOut[6]), .A1 (nx999), .S0 (WE)) ;
    aoi22 ix2856 (.Y (nx2855), .A0 (RegOut[5]), .A1 (nx4088), .B0 (MAC0_adderB_5
          ), .B1 (nx3347)) ;
    dffr MAC0_BigBoyReg_reg_Y_5 (.Q (RegOut[5]), .QB (\$dummy [30]), .D (nx1739)
         , .CLK (clk), .R (nx5810)) ;
    mux21 ix1740 (.Y (nx1739), .A0 (RegOut[5]), .A1 (nx998), .S0 (WE)) ;
    aoi22 ix2864 (.Y (nx2863), .A0 (RegOut[4]), .A1 (nx4072), .B0 (MAC0_adderB_4
          ), .B1 (nx3279)) ;
    dffr MAC0_BigBoyReg_reg_Y_4 (.Q (RegOut[4]), .QB (\$dummy [31]), .D (nx1729)
         , .CLK (clk), .R (nx5810)) ;
    mux21 ix1730 (.Y (nx1729), .A0 (RegOut[4]), .A1 (nx997), .S0 (WE)) ;
    aoi22 ix2872 (.Y (nx2871), .A0 (RegOut[3]), .A1 (nx4056), .B0 (MAC0_adderB_3
          ), .B1 (nx3225)) ;
    dffr MAC0_BigBoyReg_reg_Y_3 (.Q (RegOut[3]), .QB (\$dummy [32]), .D (nx1719)
         , .CLK (clk), .R (nx5810)) ;
    mux21 ix1720 (.Y (nx1719), .A0 (RegOut[3]), .A1 (nx995), .S0 (WE)) ;
    aoi22 ix2880 (.Y (nx2879), .A0 (RegOut[2]), .A1 (nx4040), .B0 (MAC0_adderB_2
          ), .B1 (nx3179)) ;
    dffr MAC0_BigBoyReg_reg_Y_2 (.Q (RegOut[2]), .QB (\$dummy [33]), .D (nx1709)
         , .CLK (clk), .R (nx5810)) ;
    mux21 ix1710 (.Y (nx1709), .A0 (RegOut[2]), .A1 (nx993), .S0 (WE)) ;
    aoi32 ix2888 (.Y (nx2887), .A0 (RegOut[1]), .A1 (RegOut[0]), .A2 (
          MAC0_adderB_0), .B0 (MAC0_adderB_1), .B1 (nx3143)) ;
    dffr MAC0_BigBoyReg_reg_Y_1 (.Q (RegOut[1]), .QB (\$dummy [34]), .D (nx1699)
         , .CLK (clk), .R (nx5808)) ;
    mux21 ix1700 (.Y (nx1699), .A0 (RegOut[1]), .A1 (nx991), .S0 (WE)) ;
    nand02 ix4023 (.Y (nx989), .A0 (RegOut[0]), .A1 (MAC0_adderB_0)) ;
    dffr MAC0_BigBoyReg_reg_Y_0 (.Q (RegOut[0]), .QB (\$dummy [35]), .D (nx1689)
         , .CLK (clk), .R (nx5808)) ;
    oai21 ix1690 (.Y (nx1689), .A0 (nx2901), .A1 (nx3115), .B0 (nx3117)) ;
    oai21 ix2902 (.Y (nx2901), .A0 (RegOut[0]), .A1 (MAC0_adderB_0), .B0 (nx989)
          ) ;
    dffr MAC0_RegMultOut_reg_Y_0 (.Q (MAC0_adderB_0), .QB (\$dummy [36]), .D (
         nx704), .CLK (clk), .R (nx5808)) ;
    dffr MAC0_RegMultInA_reg_Y_0 (.Q (MAC0_MultA_0), .QB (\$dummy [37]), .D (
         nx686), .CLK (clk), .R (nx5808)) ;
    dffr LFSR0_reg_internal_reg_16 (.Q (LFSROUT_16), .QB (\$dummy [38]), .D (
         nx1369), .CLK (clk), .R (nx5808)) ;
    dffr LFSR0_reg_internal_reg_17 (.Q (LFSROUT_17), .QB (\$dummy [39]), .D (
         nx1679), .CLK (clk), .R (nx5808)) ;
    dffs LFSR0_reg_internal_reg_18 (.Q (LFSROUT_18), .QB (\$dummy [40]), .D (
         nx1669), .CLK (clk), .S (nx5808)) ;
    dffr LFSR0_reg_internal_reg_19 (.Q (LFSROUT_19), .QB (\$dummy [41]), .D (
         nx1659), .CLK (clk), .R (nx5808)) ;
    dffs LFSR0_reg_internal_reg_20 (.Q (LFSROUT_20), .QB (\$dummy [42]), .D (
         nx1649), .CLK (clk), .S (nx5808)) ;
    dffs LFSR0_reg_internal_reg_21 (.Q (LFSROUT_21), .QB (\$dummy [43]), .D (
         nx1639), .CLK (clk), .S (nx5808)) ;
    dffr LFSR0_reg_internal_reg_22 (.Q (LFSROUT_22), .QB (\$dummy [44]), .D (
         nx1629), .CLK (clk), .R (nx5806)) ;
    dffr LFSR0_reg_internal_reg_23 (.Q (LFSROUT_23), .QB (\$dummy [45]), .D (
         nx1619), .CLK (clk), .R (nx5806)) ;
    dffr LFSR0_reg_internal_reg_24 (.Q (LFSROUT_24), .QB (\$dummy [46]), .D (
         nx1609), .CLK (clk), .R (nx5806)) ;
    dffs LFSR0_reg_internal_reg_25 (.Q (LFSROUT_25), .QB (\$dummy [47]), .D (
         nx1599), .CLK (clk), .S (nx5806)) ;
    dffr LFSR0_reg_internal_reg_26 (.Q (LFSROUT_26), .QB (\$dummy [48]), .D (
         nx1589), .CLK (clk), .R (nx5806)) ;
    dffr LFSR0_reg_internal_reg_27 (.Q (LFSROUT_27), .QB (\$dummy [49]), .D (
         nx1579), .CLK (clk), .R (nx5806)) ;
    dffs LFSR0_reg_internal_reg_28 (.Q (LFSROUT_28), .QB (\$dummy [50]), .D (
         nx1569), .CLK (clk), .S (nx5806)) ;
    dffr LFSR0_reg_internal_reg_29 (.Q (LFSROUT_29), .QB (\$dummy [51]), .D (
         nx1559), .CLK (clk), .R (nx5806)) ;
    dffr LFSR0_reg_internal_reg_30 (.Q (LFSROUT_30), .QB (\$dummy [52]), .D (
         nx1549), .CLK (clk), .R (nx5806)) ;
    dffr LFSR0_reg_internal_reg_31 (.Q (LFSROUT_31), .QB (\$dummy [53]), .D (
         nx1539), .CLK (clk), .R (nx5806)) ;
    dffr LFSR0_reg_internal_reg_0 (.Q (LFSROUT_0), .QB (\$dummy [54]), .D (
         nx1529), .CLK (clk), .R (nx5806)) ;
    dffr LFSR0_reg_internal_reg_1 (.Q (LFSROUT_1), .QB (\$dummy [55]), .D (
         nx1519), .CLK (clk), .R (nx5806)) ;
    dffr LFSR0_reg_internal_reg_2 (.Q (LFSROUT_2), .QB (\$dummy [56]), .D (
         nx1509), .CLK (clk), .R (nx5806)) ;
    dffs LFSR0_reg_internal_reg_3 (.Q (LFSROUT_3), .QB (\$dummy [57]), .D (
         nx1499), .CLK (clk), .S (nx5806)) ;
    dffs LFSR0_reg_internal_reg_4 (.Q (LFSROUT_4), .QB (\$dummy [58]), .D (
         nx1489), .CLK (clk), .S (nx5806)) ;
    dffs LFSR0_reg_internal_reg_5 (.Q (LFSROUT_5), .QB (\$dummy [59]), .D (
         nx1479), .CLK (clk), .S (nx5804)) ;
    dffs LFSR0_reg_internal_reg_6 (.Q (LFSROUT_6), .QB (\$dummy [60]), .D (
         nx1469), .CLK (clk), .S (nx5804)) ;
    dffr LFSR0_reg_internal_reg_7 (.Q (LFSROUT_7), .QB (\$dummy [61]), .D (
         nx1459), .CLK (clk), .R (nx5804)) ;
    dffr LFSR0_reg_internal_reg_8 (.Q (LFSROUT_8), .QB (\$dummy [62]), .D (
         nx1449), .CLK (clk), .R (nx5804)) ;
    dffs LFSR0_reg_internal_reg_9 (.Q (LFSROUT_9), .QB (\$dummy [63]), .D (
         nx1439), .CLK (clk), .S (nx5804)) ;
    dffs LFSR0_reg_internal_reg_10 (.Q (LFSROUT_10), .QB (\$dummy [64]), .D (
         nx1429), .CLK (clk), .S (nx5804)) ;
    dffr LFSR0_reg_internal_reg_11 (.Q (LFSROUT_11), .QB (\$dummy [65]), .D (
         nx1419), .CLK (clk), .R (nx5804)) ;
    dffs LFSR0_reg_internal_reg_12 (.Q (LFSROUT_12), .QB (\$dummy [66]), .D (
         nx1409), .CLK (clk), .S (nx5804)) ;
    dffr LFSR0_reg_internal_reg_13 (.Q (LFSROUT_13), .QB (\$dummy [67]), .D (
         nx1399), .CLK (clk), .R (nx5804)) ;
    dffs LFSR0_reg_internal_reg_14 (.Q (LFSROUT_14), .QB (\$dummy [68]), .D (
         nx1389), .CLK (clk), .S (nx5804)) ;
    dffr LFSR0_reg_internal_reg_15 (.Q (LFSROUT_15), .QB (\$dummy [69]), .D (
         nx1379), .CLK (clk), .R (nx5804)) ;
    dffr MAC0_RegMultInB_reg_Y_0 (.Q (MAC0_MultB_0), .QB (\$dummy [70]), .D (
         nx698), .CLK (clk), .R (nx5808)) ;
    inv01 ix3116 (.Y (nx3115), .A (WE)) ;
    nand02 ix3118 (.Y (nx3117), .A0 (RegOut[0]), .A1 (nx3115)) ;
    dffr MAC0_RegMultOut_reg_Y_1 (.Q (MAC0_adderB_1), .QB (\$dummy [71]), .D (
         nx4000), .CLK (clk), .R (nx5808)) ;
    nor02ii ix4001 (.Y (nx4000), .A0 (nx3125), .A1 (nx3137)) ;
    aoi22 ix3126 (.Y (nx3125), .A0 (nx5852), .A1 (nx5848), .B0 (nx5844), .B1 (
          nx5856)) ;
    dffr MAC0_RegMultInB_reg_Y_1 (.Q (\$dummy [72]), .QB (nx3131), .D (nx672), .CLK (
         clk), .R (nx5808)) ;
    dffr MAC0_RegMultInA_reg_Y_1 (.Q (\$dummy [73]), .QB (nx3135), .D (nx660), .CLK (
         clk), .R (nx5808)) ;
    xnor2 ix3144 (.Y (nx3143), .A0 (nx989), .A1 (nx3145)) ;
    xnor2 ix3146 (.Y (nx3145), .A0 (MAC0_adderB_1), .A1 (RegOut[1])) ;
    dffr MAC0_RegMultOut_reg_Y_2 (.Q (MAC0_adderB_2), .QB (\$dummy [74]), .D (
         nx3986), .CLK (clk), .R (nx5810)) ;
    aoi21 ix3987 (.Y (nx3986), .A0 (nx3153), .A1 (nx3161), .B0 (nx740)) ;
    dffr MAC0_RegMultInA_reg_Y_2 (.Q (\$dummy [75]), .QB (nx3159), .D (nx732), .CLK (
         clk), .R (nx5808)) ;
    xnor2 ix3162 (.Y (nx3161), .A0 (nx3137), .A1 (nx3163)) ;
    xnor2 ix3164 (.Y (nx3163), .A0 (nx3165), .A1 (nx3167)) ;
    nand02 ix3168 (.Y (nx3167), .A0 (nx5852), .A1 (nx5860)) ;
    dffr MAC0_RegMultInB_reg_Y_2 (.Q (\$dummy [76]), .QB (nx3173), .D (nx714), .CLK (
         clk), .R (nx5810)) ;
    nor03 ix741 (.Y (nx740), .A0 (nx3161), .A1 (nx6026), .A2 (nx5972)) ;
    xnor2 ix3180 (.Y (nx3179), .A0 (nx2887), .A1 (nx4046)) ;
    xnor2 ix4047 (.Y (nx4046), .A0 (MAC0_adderB_2), .A1 (RegOut[2])) ;
    dffr MAC0_RegMultOut_reg_Y_3 (.Q (MAC0_adderB_3), .QB (\$dummy [77]), .D (
         nx3974), .CLK (clk), .R (nx5810)) ;
    aoi21 ix3975 (.Y (nx3974), .A0 (nx3189), .A1 (nx3197), .B0 (nx788)) ;
    dffr MAC0_RegMultInA_reg_Y_3 (.Q (\$dummy [78]), .QB (nx3195), .D (nx780), .CLK (
         clk), .R (nx5810)) ;
    xnor2 ix3198 (.Y (nx3197), .A0 (nx740), .A1 (nx770)) ;
    xnor2 ix771 (.Y (nx770), .A0 (nx3201), .A1 (nx768)) ;
    xnor2 ix769 (.Y (nx768), .A0 (nx748), .A1 (nx3209)) ;
    aoi21 ix749 (.Y (nx748), .A0 (nx3167), .A1 (nx3207), .B0 (nx3165)) ;
    nand02 ix3208 (.Y (nx3207), .A0 (nx5852), .A1 (nx5856)) ;
    xnor2 ix3210 (.Y (nx3209), .A0 (nx3211), .A1 (nx3213)) ;
    nand02 ix3214 (.Y (nx3213), .A0 (nx5852), .A1 (nx5868)) ;
    dffr MAC0_RegMultInB_reg_Y_3 (.Q (\$dummy [79]), .QB (nx3219), .D (nx758), .CLK (
         clk), .R (nx5810)) ;
    nor03 ix789 (.Y (nx788), .A0 (nx3197), .A1 (nx6034), .A2 (nx5972)) ;
    xnor2 ix3226 (.Y (nx3225), .A0 (nx2879), .A1 (nx4062)) ;
    xnor2 ix4063 (.Y (nx4062), .A0 (MAC0_adderB_3), .A1 (RegOut[3])) ;
    dffr MAC0_RegMultOut_reg_Y_4 (.Q (MAC0_adderB_4), .QB (\$dummy [80]), .D (
         nx3962), .CLK (clk), .R (nx5810)) ;
    aoi21 ix3963 (.Y (nx3962), .A0 (nx3235), .A1 (nx3243), .B0 (nx848)) ;
    dffr MAC0_RegMultInA_reg_Y_4 (.Q (\$dummy [81]), .QB (nx3241), .D (nx840), .CLK (
         clk), .R (nx5810)) ;
    xnor2 ix3244 (.Y (nx3243), .A0 (nx788), .A1 (nx830)) ;
    xnor2 ix831 (.Y (nx830), .A0 (nx3247), .A1 (nx828)) ;
    xnor2 ix829 (.Y (nx828), .A0 (nx3251), .A1 (nx826)) ;
    aoi32 ix3252 (.Y (nx3251), .A0 (nx5864), .A1 (nx5848), .A2 (nx768), .B0 (
          nx740), .B1 (nx770)) ;
    xnor2 ix827 (.Y (nx826), .A0 (nx3255), .A1 (nx824)) ;
    xnor2 ix825 (.Y (nx824), .A0 (nx804), .A1 (nx3263)) ;
    oai32 ix805 (.Y (nx804), .A0 (nx6020), .A1 (nx6030), .A2 (nx3213), .B0 (
          nx3261), .B1 (nx3209)) ;
    xnor2 ix3264 (.Y (nx3263), .A0 (nx3265), .A1 (nx3267)) ;
    nand02 ix3268 (.Y (nx3267), .A0 (nx5852), .A1 (nx5876)) ;
    dffr MAC0_RegMultInB_reg_Y_4 (.Q (\$dummy [82]), .QB (nx3273), .D (nx814), .CLK (
         clk), .R (nx5810)) ;
    nor03 ix849 (.Y (nx848), .A0 (nx3243), .A1 (nx6042), .A2 (nx5972)) ;
    xnor2 ix3280 (.Y (nx3279), .A0 (nx2871), .A1 (nx4078)) ;
    xnor2 ix4079 (.Y (nx4078), .A0 (MAC0_adderB_4), .A1 (RegOut[4])) ;
    dffr MAC0_RegMultOut_reg_Y_5 (.Q (MAC0_adderB_5), .QB (\$dummy [83]), .D (
         nx3950), .CLK (clk), .R (nx5810)) ;
    aoi21 ix3951 (.Y (nx3950), .A0 (nx3289), .A1 (nx3297), .B0 (nx920)) ;
    dffr MAC0_RegMultInA_reg_Y_5 (.Q (\$dummy [84]), .QB (nx3295), .D (nx912), .CLK (
         clk), .R (nx5810)) ;
    xnor2 ix3298 (.Y (nx3297), .A0 (nx848), .A1 (nx902)) ;
    xnor2 ix903 (.Y (nx902), .A0 (nx3301), .A1 (nx900)) ;
    xnor2 ix901 (.Y (nx900), .A0 (nx3305), .A1 (nx898)) ;
    aoi32 ix3306 (.Y (nx3305), .A0 (nx5872), .A1 (nx5848), .A2 (nx828), .B0 (
          nx788), .B1 (nx830)) ;
    xnor2 ix899 (.Y (nx898), .A0 (nx3309), .A1 (nx896)) ;
    xnor2 ix897 (.Y (nx896), .A0 (nx3313), .A1 (nx894)) ;
    aoi32 ix3314 (.Y (nx3313), .A0 (nx5864), .A1 (nx5860), .A2 (nx824), .B0 (
          nx796), .B1 (nx826)) ;
    xnor2 ix895 (.Y (nx894), .A0 (nx3319), .A1 (nx892)) ;
    xnor2 ix893 (.Y (nx892), .A0 (nx872), .A1 (nx3331)) ;
    oai32 ix873 (.Y (nx872), .A0 (nx6020), .A1 (nx6038), .A2 (nx3267), .B0 (
          nx3325), .B1 (nx3263)) ;
    xnor2 ix3332 (.Y (nx3331), .A0 (nx3333), .A1 (nx3335)) ;
    nand02 ix3336 (.Y (nx3335), .A0 (nx5852), .A1 (nx5884)) ;
    dffr MAC0_RegMultInB_reg_Y_5 (.Q (\$dummy [85]), .QB (nx3341), .D (nx882), .CLK (
         clk), .R (nx5810)) ;
    nor03 ix921 (.Y (nx920), .A0 (nx3297), .A1 (nx6050), .A2 (nx5972)) ;
    xnor2 ix3348 (.Y (nx3347), .A0 (nx2863), .A1 (nx4094)) ;
    xnor2 ix4095 (.Y (nx4094), .A0 (MAC0_adderB_5), .A1 (RegOut[5])) ;
    dffr MAC0_RegMultOut_reg_Y_6 (.Q (MAC0_adderB_6), .QB (\$dummy [86]), .D (
         nx3938), .CLK (clk), .R (nx5812)) ;
    mux21 ix3939 (.Y (nx3938), .A0 (nx3357), .A1 (nx3932), .S0 (nx3365)) ;
    dffr MAC0_RegMultInA_reg_Y_6 (.Q (\$dummy [87]), .QB (nx3363), .D (nx996), .CLK (
         clk), .R (nx5812)) ;
    xnor2 ix3366 (.Y (nx3365), .A0 (nx920), .A1 (nx986)) ;
    xnor2 ix987 (.Y (nx986), .A0 (nx3369), .A1 (nx984)) ;
    xnor2 ix985 (.Y (nx984), .A0 (nx3373), .A1 (nx982)) ;
    aoi32 ix3374 (.Y (nx3373), .A0 (nx5880), .A1 (nx5848), .A2 (nx900), .B0 (
          nx848), .B1 (nx902)) ;
    xnor2 ix983 (.Y (nx982), .A0 (nx3377), .A1 (nx980)) ;
    xnor2 ix981 (.Y (nx980), .A0 (nx3381), .A1 (nx978)) ;
    aoi32 ix3382 (.Y (nx3381), .A0 (nx5872), .A1 (nx5860), .A2 (nx896), .B0 (
          nx856), .B1 (nx898)) ;
    xnor2 ix979 (.Y (nx978), .A0 (nx3387), .A1 (nx976)) ;
    xnor2 ix977 (.Y (nx976), .A0 (nx3391), .A1 (nx974)) ;
    aoi32 ix3392 (.Y (nx3391), .A0 (nx5864), .A1 (nx5868), .A2 (nx892), .B0 (
          nx864), .B1 (nx894)) ;
    xnor2 ix975 (.Y (nx974), .A0 (nx3397), .A1 (nx972)) ;
    xnor2 ix973 (.Y (nx972), .A0 (nx952), .A1 (nx3409)) ;
    oai32 ix953 (.Y (nx952), .A0 (nx6020), .A1 (nx6046), .A2 (nx3335), .B0 (
          nx3403), .B1 (nx3331)) ;
    xnor2 ix3410 (.Y (nx3409), .A0 (nx3411), .A1 (nx3413)) ;
    nand02 ix3414 (.Y (nx3413), .A0 (nx5852), .A1 (nx5892)) ;
    dffr MAC0_RegMultInB_reg_Y_6 (.Q (\$dummy [88]), .QB (nx3419), .D (nx962), .CLK (
         clk), .R (nx5812)) ;
    xnor2 ix3426 (.Y (nx3425), .A0 (nx2855), .A1 (nx4110)) ;
    xnor2 ix4111 (.Y (nx4110), .A0 (MAC0_adderB_6), .A1 (RegOut[6])) ;
    dffr MAC0_RegMultOut_reg_Y_7 (.Q (MAC0_adderB_7), .QB (\$dummy [89]), .D (
         nx3926), .CLK (clk), .R (nx5812)) ;
    mux21 ix3927 (.Y (nx3926), .A0 (nx3435), .A1 (nx3920), .S0 (nx3443)) ;
    dffr MAC0_RegMultInA_reg_Y_7 (.Q (\$dummy [90]), .QB (nx3441), .D (nx1092), 
         .CLK (clk), .R (nx5812)) ;
    xnor2 ix3444 (.Y (nx3443), .A0 (nx1004), .A1 (nx1082)) ;
    nor03 ix1005 (.Y (nx1004), .A0 (nx3365), .A1 (nx6058), .A2 (nx5972)) ;
    xnor2 ix1083 (.Y (nx1082), .A0 (nx3449), .A1 (nx1080)) ;
    xnor2 ix1081 (.Y (nx1080), .A0 (nx3453), .A1 (nx1078)) ;
    aoi32 ix3454 (.Y (nx3453), .A0 (nx5888), .A1 (nx5848), .A2 (nx984), .B0 (
          nx920), .B1 (nx986)) ;
    xnor2 ix1079 (.Y (nx1078), .A0 (nx3457), .A1 (nx1076)) ;
    xnor2 ix1077 (.Y (nx1076), .A0 (nx3461), .A1 (nx1074)) ;
    aoi32 ix3462 (.Y (nx3461), .A0 (nx5880), .A1 (nx5860), .A2 (nx980), .B0 (
          nx928), .B1 (nx982)) ;
    xnor2 ix1075 (.Y (nx1074), .A0 (nx3467), .A1 (nx1072)) ;
    xnor2 ix1073 (.Y (nx1072), .A0 (nx3471), .A1 (nx1070)) ;
    aoi32 ix3472 (.Y (nx3471), .A0 (nx5872), .A1 (nx5868), .A2 (nx976), .B0 (
          nx936), .B1 (nx978)) ;
    xnor2 ix1071 (.Y (nx1070), .A0 (nx3477), .A1 (nx1068)) ;
    xnor2 ix1069 (.Y (nx1068), .A0 (nx3481), .A1 (nx1066)) ;
    aoi32 ix3482 (.Y (nx3481), .A0 (nx5864), .A1 (nx5876), .A2 (nx972), .B0 (
          nx944), .B1 (nx974)) ;
    xnor2 ix1067 (.Y (nx1066), .A0 (nx3487), .A1 (nx1064)) ;
    xnor2 ix1065 (.Y (nx1064), .A0 (nx1044), .A1 (nx3499)) ;
    oai32 ix1045 (.Y (nx1044), .A0 (nx6020), .A1 (nx6054), .A2 (nx3413), .B0 (
          nx3493), .B1 (nx3409)) ;
    xnor2 ix3500 (.Y (nx3499), .A0 (nx3501), .A1 (nx3503)) ;
    nand02 ix3504 (.Y (nx3503), .A0 (nx5852), .A1 (nx5900)) ;
    dffr MAC0_RegMultInB_reg_Y_7 (.Q (\$dummy [91]), .QB (nx3509), .D (nx1054), 
         .CLK (clk), .R (nx5812)) ;
    xnor2 ix3516 (.Y (nx3515), .A0 (nx2847), .A1 (nx4126)) ;
    xnor2 ix4127 (.Y (nx4126), .A0 (MAC0_adderB_7), .A1 (RegOut[7])) ;
    dffr MAC0_RegMultOut_reg_Y_8 (.Q (MAC0_adderB_8), .QB (\$dummy [92]), .D (
         nx3914), .CLK (clk), .R (nx5812)) ;
    mux21 ix3915 (.Y (nx3914), .A0 (nx3525), .A1 (nx3908), .S0 (nx3533)) ;
    dffr MAC0_RegMultInA_reg_Y_8 (.Q (\$dummy [93]), .QB (nx3531), .D (nx1200), 
         .CLK (clk), .R (nx5812)) ;
    xnor2 ix3534 (.Y (nx3533), .A0 (nx1100), .A1 (nx1190)) ;
    nor03 ix1101 (.Y (nx1100), .A0 (nx3443), .A1 (nx6066), .A2 (nx5972)) ;
    xnor2 ix1191 (.Y (nx1190), .A0 (nx3539), .A1 (nx1188)) ;
    xnor2 ix1189 (.Y (nx1188), .A0 (nx3543), .A1 (nx1186)) ;
    aoi32 ix3544 (.Y (nx3543), .A0 (nx5896), .A1 (nx5848), .A2 (nx1080), .B0 (
          nx1004), .B1 (nx1082)) ;
    xnor2 ix1187 (.Y (nx1186), .A0 (nx3547), .A1 (nx1184)) ;
    xnor2 ix1185 (.Y (nx1184), .A0 (nx3551), .A1 (nx1182)) ;
    aoi32 ix3552 (.Y (nx3551), .A0 (nx5888), .A1 (nx5860), .A2 (nx1076), .B0 (
          nx1012), .B1 (nx1078)) ;
    xnor2 ix1183 (.Y (nx1182), .A0 (nx3557), .A1 (nx1180)) ;
    xnor2 ix1181 (.Y (nx1180), .A0 (nx3561), .A1 (nx1178)) ;
    aoi32 ix3562 (.Y (nx3561), .A0 (nx5880), .A1 (nx5868), .A2 (nx1072), .B0 (
          nx1020), .B1 (nx1074)) ;
    xnor2 ix1179 (.Y (nx1178), .A0 (nx3567), .A1 (nx1176)) ;
    xnor2 ix1177 (.Y (nx1176), .A0 (nx3571), .A1 (nx1174)) ;
    aoi32 ix3572 (.Y (nx3571), .A0 (nx5872), .A1 (nx5876), .A2 (nx1068), .B0 (
          nx1028), .B1 (nx1070)) ;
    xnor2 ix1175 (.Y (nx1174), .A0 (nx3577), .A1 (nx1172)) ;
    xnor2 ix1173 (.Y (nx1172), .A0 (nx3581), .A1 (nx1170)) ;
    aoi32 ix3582 (.Y (nx3581), .A0 (nx5864), .A1 (nx5884), .A2 (nx1064), .B0 (
          nx1036), .B1 (nx1066)) ;
    xnor2 ix1171 (.Y (nx1170), .A0 (nx3587), .A1 (nx1168)) ;
    xnor2 ix1169 (.Y (nx1168), .A0 (nx1148), .A1 (nx3599)) ;
    oai32 ix1149 (.Y (nx1148), .A0 (nx6020), .A1 (nx6062), .A2 (nx3503), .B0 (
          nx3593), .B1 (nx3499)) ;
    xnor2 ix3600 (.Y (nx3599), .A0 (nx3601), .A1 (nx3603)) ;
    nand02 ix3604 (.Y (nx3603), .A0 (nx5852), .A1 (nx5908)) ;
    dffr MAC0_RegMultInB_reg_Y_8 (.Q (\$dummy [94]), .QB (nx3609), .D (nx1158), 
         .CLK (clk), .R (nx5812)) ;
    xnor2 ix3616 (.Y (nx3615), .A0 (nx2839), .A1 (nx4142)) ;
    xnor2 ix4143 (.Y (nx4142), .A0 (MAC0_adderB_8), .A1 (RegOut[8])) ;
    dffr MAC0_RegMultOut_reg_Y_9 (.Q (MAC0_adderB_9), .QB (\$dummy [95]), .D (
         nx3902), .CLK (clk), .R (nx5812)) ;
    mux21 ix3903 (.Y (nx3902), .A0 (nx3625), .A1 (nx3896), .S0 (nx3633)) ;
    dffr MAC0_RegMultInA_reg_Y_9 (.Q (\$dummy [96]), .QB (nx3631), .D (nx1320), 
         .CLK (clk), .R (nx5812)) ;
    xnor2 ix3634 (.Y (nx3633), .A0 (nx1208), .A1 (nx1310)) ;
    nor03 ix1209 (.Y (nx1208), .A0 (nx3533), .A1 (nx6074), .A2 (nx5972)) ;
    xnor2 ix1311 (.Y (nx1310), .A0 (nx3639), .A1 (nx1308)) ;
    xnor2 ix1309 (.Y (nx1308), .A0 (nx3643), .A1 (nx1306)) ;
    aoi32 ix3644 (.Y (nx3643), .A0 (nx5904), .A1 (nx5850), .A2 (nx1188), .B0 (
          nx1100), .B1 (nx1190)) ;
    xnor2 ix1307 (.Y (nx1306), .A0 (nx3647), .A1 (nx1304)) ;
    xnor2 ix1305 (.Y (nx1304), .A0 (nx3651), .A1 (nx1302)) ;
    aoi32 ix3652 (.Y (nx3651), .A0 (nx5896), .A1 (nx5860), .A2 (nx1184), .B0 (
          nx1108), .B1 (nx1186)) ;
    xnor2 ix1303 (.Y (nx1302), .A0 (nx3657), .A1 (nx1300)) ;
    xnor2 ix1301 (.Y (nx1300), .A0 (nx3661), .A1 (nx1298)) ;
    aoi32 ix3662 (.Y (nx3661), .A0 (nx5888), .A1 (nx5868), .A2 (nx1180), .B0 (
          nx1116), .B1 (nx1182)) ;
    xnor2 ix1299 (.Y (nx1298), .A0 (nx3667), .A1 (nx1296)) ;
    xnor2 ix1297 (.Y (nx1296), .A0 (nx3671), .A1 (nx1294)) ;
    aoi32 ix3672 (.Y (nx3671), .A0 (nx5880), .A1 (nx5876), .A2 (nx1176), .B0 (
          nx1124), .B1 (nx1178)) ;
    xnor2 ix1295 (.Y (nx1294), .A0 (nx3677), .A1 (nx1292)) ;
    xnor2 ix1293 (.Y (nx1292), .A0 (nx3681), .A1 (nx1290)) ;
    aoi32 ix3682 (.Y (nx3681), .A0 (nx5872), .A1 (nx5884), .A2 (nx1172), .B0 (
          nx1132), .B1 (nx1174)) ;
    xnor2 ix1291 (.Y (nx1290), .A0 (nx3687), .A1 (nx1288)) ;
    xnor2 ix1289 (.Y (nx1288), .A0 (nx3691), .A1 (nx1286)) ;
    aoi32 ix3692 (.Y (nx3691), .A0 (nx5864), .A1 (nx5892), .A2 (nx1168), .B0 (
          nx1140), .B1 (nx1170)) ;
    xnor2 ix1287 (.Y (nx1286), .A0 (nx3697), .A1 (nx1284)) ;
    xnor2 ix1285 (.Y (nx1284), .A0 (nx1264), .A1 (nx3709)) ;
    oai32 ix1265 (.Y (nx1264), .A0 (nx6020), .A1 (nx6070), .A2 (nx3603), .B0 (
          nx3703), .B1 (nx3599)) ;
    xnor2 ix3710 (.Y (nx3709), .A0 (nx3711), .A1 (nx3713)) ;
    nand02 ix3714 (.Y (nx3713), .A0 (nx5852), .A1 (nx5916)) ;
    dffr MAC0_RegMultInB_reg_Y_9 (.Q (\$dummy [97]), .QB (nx3719), .D (nx1274), 
         .CLK (clk), .R (nx5812)) ;
    xnor2 ix3726 (.Y (nx3725), .A0 (nx2831), .A1 (nx4158)) ;
    xnor2 ix4159 (.Y (nx4158), .A0 (MAC0_adderB_9), .A1 (RegOut[9])) ;
    dffr MAC0_RegMultOut_reg_Y_10 (.Q (MAC0_adderB_10), .QB (\$dummy [98]), .D (
         nx3890), .CLK (clk), .R (nx5814)) ;
    mux21 ix3891 (.Y (nx3890), .A0 (nx3735), .A1 (nx3884), .S0 (nx3743)) ;
    dffr MAC0_RegMultInA_reg_Y_10 (.Q (\$dummy [99]), .QB (nx3741), .D (nx1452)
         , .CLK (clk), .R (nx5814)) ;
    xnor2 ix3744 (.Y (nx3743), .A0 (nx1328), .A1 (nx1442)) ;
    nor03 ix1329 (.Y (nx1328), .A0 (nx3633), .A1 (nx6082), .A2 (nx5972)) ;
    xnor2 ix1443 (.Y (nx1442), .A0 (nx3749), .A1 (nx1440)) ;
    xnor2 ix1441 (.Y (nx1440), .A0 (nx3753), .A1 (nx1438)) ;
    aoi32 ix3754 (.Y (nx3753), .A0 (nx5912), .A1 (nx5850), .A2 (nx1308), .B0 (
          nx1208), .B1 (nx1310)) ;
    xnor2 ix1439 (.Y (nx1438), .A0 (nx3756), .A1 (nx1436)) ;
    xnor2 ix1437 (.Y (nx1436), .A0 (nx3759), .A1 (nx1434)) ;
    aoi32 ix3760 (.Y (nx3759), .A0 (nx5904), .A1 (nx5860), .A2 (nx1304), .B0 (
          nx1216), .B1 (nx1306)) ;
    xnor2 ix1435 (.Y (nx1434), .A0 (nx3763), .A1 (nx1432)) ;
    xnor2 ix1433 (.Y (nx1432), .A0 (nx3767), .A1 (nx1430)) ;
    aoi32 ix3768 (.Y (nx3767), .A0 (nx5896), .A1 (nx5868), .A2 (nx1300), .B0 (
          nx1224), .B1 (nx1302)) ;
    xnor2 ix1431 (.Y (nx1430), .A0 (nx3771), .A1 (nx1428)) ;
    xnor2 ix1429 (.Y (nx1428), .A0 (nx3774), .A1 (nx1426)) ;
    aoi32 ix3775 (.Y (nx3774), .A0 (nx5888), .A1 (nx5876), .A2 (nx1296), .B0 (
          nx1232), .B1 (nx1298)) ;
    xnor2 ix1427 (.Y (nx1426), .A0 (nx3779), .A1 (nx1424)) ;
    xnor2 ix1425 (.Y (nx1424), .A0 (nx3783), .A1 (nx1422)) ;
    aoi32 ix3784 (.Y (nx3783), .A0 (nx5880), .A1 (nx5884), .A2 (nx1292), .B0 (
          nx1240), .B1 (nx1294)) ;
    xnor2 ix1423 (.Y (nx1422), .A0 (nx3787), .A1 (nx1420)) ;
    xnor2 ix1421 (.Y (nx1420), .A0 (nx3791), .A1 (nx1418)) ;
    aoi32 ix3792 (.Y (nx3791), .A0 (nx5872), .A1 (nx5892), .A2 (nx1288), .B0 (
          nx1248), .B1 (nx1290)) ;
    xnor2 ix1419 (.Y (nx1418), .A0 (nx3795), .A1 (nx1416)) ;
    xnor2 ix1417 (.Y (nx1416), .A0 (nx3798), .A1 (nx1414)) ;
    aoi32 ix3799 (.Y (nx3798), .A0 (nx5864), .A1 (nx5900), .A2 (nx1284), .B0 (
          nx1256), .B1 (nx1286)) ;
    xnor2 ix1415 (.Y (nx1414), .A0 (nx3803), .A1 (nx1412)) ;
    xnor2 ix1413 (.Y (nx1412), .A0 (nx1392), .A1 (nx3811)) ;
    oai32 ix1393 (.Y (nx1392), .A0 (nx6020), .A1 (nx6078), .A2 (nx3713), .B0 (
          nx3807), .B1 (nx3709)) ;
    xnor2 ix3812 (.Y (nx3811), .A0 (nx3813), .A1 (nx3815)) ;
    nand02 ix3816 (.Y (nx3815), .A0 (nx5852), .A1 (nx5924)) ;
    dffr MAC0_RegMultInB_reg_Y_10 (.Q (\$dummy [100]), .QB (nx3819), .D (nx1402)
         , .CLK (clk), .R (nx5814)) ;
    xnor2 ix3824 (.Y (nx3823), .A0 (nx2823), .A1 (nx4174)) ;
    xnor2 ix4175 (.Y (nx4174), .A0 (MAC0_adderB_10), .A1 (RegOut[10])) ;
    dffr MAC0_RegMultOut_reg_Y_11 (.Q (MAC0_adderB_11), .QB (\$dummy [101]), .D (
         nx3878), .CLK (clk), .R (nx5814)) ;
    mux21 ix3879 (.Y (nx3878), .A0 (nx3833), .A1 (nx3872), .S0 (nx3839)) ;
    dffr MAC0_RegMultInA_reg_Y_11 (.Q (\$dummy [102]), .QB (nx3837), .D (nx1596)
         , .CLK (clk), .R (nx5814)) ;
    xnor2 ix3840 (.Y (nx3839), .A0 (nx1460), .A1 (nx1586)) ;
    nor03 ix1461 (.Y (nx1460), .A0 (nx3743), .A1 (nx6090), .A2 (nx5972)) ;
    xnor2 ix1587 (.Y (nx1586), .A0 (nx3845), .A1 (nx1584)) ;
    xnor2 ix1585 (.Y (nx1584), .A0 (nx3849), .A1 (nx1582)) ;
    aoi32 ix3850 (.Y (nx3849), .A0 (nx5920), .A1 (nx5850), .A2 (nx1440), .B0 (
          nx1328), .B1 (nx1442)) ;
    xnor2 ix1583 (.Y (nx1582), .A0 (nx3853), .A1 (nx1580)) ;
    xnor2 ix1581 (.Y (nx1580), .A0 (nx3857), .A1 (nx1578)) ;
    aoi32 ix3858 (.Y (nx3857), .A0 (nx5912), .A1 (nx5862), .A2 (nx1436), .B0 (
          nx1336), .B1 (nx1438)) ;
    xnor2 ix1579 (.Y (nx1578), .A0 (nx3861), .A1 (nx1576)) ;
    xnor2 ix1577 (.Y (nx1576), .A0 (nx3865), .A1 (nx1574)) ;
    aoi32 ix3866 (.Y (nx3865), .A0 (nx5904), .A1 (nx5868), .A2 (nx1432), .B0 (
          nx1344), .B1 (nx1434)) ;
    xnor2 ix1575 (.Y (nx1574), .A0 (nx3870), .A1 (nx1572)) ;
    xnor2 ix1573 (.Y (nx1572), .A0 (nx3873), .A1 (nx1570)) ;
    aoi32 ix3874 (.Y (nx3873), .A0 (nx5896), .A1 (nx5876), .A2 (nx1428), .B0 (
          nx1352), .B1 (nx1430)) ;
    xnor2 ix1571 (.Y (nx1570), .A0 (nx3879), .A1 (nx1568)) ;
    xnor2 ix1569 (.Y (nx1568), .A0 (nx3882), .A1 (nx1566)) ;
    aoi32 ix3883 (.Y (nx3882), .A0 (nx5888), .A1 (nx5884), .A2 (nx1424), .B0 (
          nx1360), .B1 (nx1426)) ;
    xnor2 ix1567 (.Y (nx1566), .A0 (nx3887), .A1 (nx1564)) ;
    xnor2 ix1565 (.Y (nx1564), .A0 (nx3891), .A1 (nx1562)) ;
    aoi32 ix3892 (.Y (nx3891), .A0 (nx5880), .A1 (nx5892), .A2 (nx1420), .B0 (
          nx1368), .B1 (nx1422)) ;
    xnor2 ix1563 (.Y (nx1562), .A0 (nx3895), .A1 (nx1560)) ;
    xnor2 ix1561 (.Y (nx1560), .A0 (nx3899), .A1 (nx1558)) ;
    aoi32 ix3900 (.Y (nx3899), .A0 (nx5872), .A1 (nx5900), .A2 (nx1416), .B0 (
          nx1376), .B1 (nx1418)) ;
    xnor2 ix1559 (.Y (nx1558), .A0 (nx3905), .A1 (nx1556)) ;
    xnor2 ix1557 (.Y (nx1556), .A0 (nx3909), .A1 (nx1554)) ;
    aoi32 ix3910 (.Y (nx3909), .A0 (nx5866), .A1 (nx5908), .A2 (nx1412), .B0 (
          nx1384), .B1 (nx1414)) ;
    xnor2 ix1555 (.Y (nx1554), .A0 (nx3915), .A1 (nx1552)) ;
    xnor2 ix1553 (.Y (nx1552), .A0 (nx1532), .A1 (nx3925)) ;
    oai32 ix1533 (.Y (nx1532), .A0 (nx6020), .A1 (nx6086), .A2 (nx3815), .B0 (
          nx3919), .B1 (nx3811)) ;
    xnor2 ix3926 (.Y (nx3925), .A0 (nx3927), .A1 (nx3929)) ;
    nand02 ix3930 (.Y (nx3929), .A0 (nx5852), .A1 (nx5932)) ;
    dffr MAC0_RegMultInB_reg_Y_11 (.Q (\$dummy [103]), .QB (nx3933), .D (nx1542)
         , .CLK (clk), .R (nx5814)) ;
    xnor2 ix3940 (.Y (nx3939), .A0 (nx2815), .A1 (nx4190)) ;
    xnor2 ix4191 (.Y (nx4190), .A0 (MAC0_adderB_11), .A1 (RegOut[11])) ;
    dffr MAC0_RegMultOut_reg_Y_12 (.Q (MAC0_adderB_12), .QB (\$dummy [104]), .D (
         nx3866), .CLK (clk), .R (nx5814)) ;
    mux21 ix3867 (.Y (nx3866), .A0 (nx3947), .A1 (nx3860), .S0 (nx3955)) ;
    dffr MAC0_RegMultInA_reg_Y_12 (.Q (\$dummy [105]), .QB (nx3953), .D (nx1752)
         , .CLK (clk), .R (nx5814)) ;
    xnor2 ix3956 (.Y (nx3955), .A0 (nx1604), .A1 (nx1742)) ;
    nor03 ix1605 (.Y (nx1604), .A0 (nx3839), .A1 (nx6098), .A2 (nx6140)) ;
    xnor2 ix1743 (.Y (nx1742), .A0 (nx3961), .A1 (nx1740)) ;
    xnor2 ix1741 (.Y (nx1740), .A0 (nx3965), .A1 (nx1738)) ;
    aoi32 ix3966 (.Y (nx3965), .A0 (nx5928), .A1 (nx5850), .A2 (nx1584), .B0 (
          nx1460), .B1 (nx1586)) ;
    xnor2 ix1739 (.Y (nx1738), .A0 (nx3969), .A1 (nx1736)) ;
    xnor2 ix1737 (.Y (nx1736), .A0 (nx3973), .A1 (nx1734)) ;
    aoi32 ix3974 (.Y (nx3973), .A0 (nx5920), .A1 (nx5862), .A2 (nx1580), .B0 (
          nx1468), .B1 (nx1582)) ;
    xnor2 ix1735 (.Y (nx1734), .A0 (nx3978), .A1 (nx1732)) ;
    xnor2 ix1733 (.Y (nx1732), .A0 (nx3981), .A1 (nx1730)) ;
    aoi32 ix3982 (.Y (nx3981), .A0 (nx5912), .A1 (nx5870), .A2 (nx1576), .B0 (
          nx1476), .B1 (nx1578)) ;
    xnor2 ix1731 (.Y (nx1730), .A0 (nx3987), .A1 (nx1728)) ;
    xnor2 ix1729 (.Y (nx1728), .A0 (nx3990), .A1 (nx1726)) ;
    aoi32 ix3991 (.Y (nx3990), .A0 (nx5904), .A1 (nx5876), .A2 (nx1572), .B0 (
          nx1484), .B1 (nx1574)) ;
    xnor2 ix1727 (.Y (nx1726), .A0 (nx3995), .A1 (nx1724)) ;
    xnor2 ix1725 (.Y (nx1724), .A0 (nx3999), .A1 (nx1722)) ;
    aoi32 ix4000 (.Y (nx3999), .A0 (nx5896), .A1 (nx5884), .A2 (nx1568), .B0 (
          nx1492), .B1 (nx1570)) ;
    xnor2 ix1723 (.Y (nx1722), .A0 (nx4004), .A1 (nx1720)) ;
    xnor2 ix1721 (.Y (nx1720), .A0 (nx4007), .A1 (nx1718)) ;
    aoi32 ix4008 (.Y (nx4007), .A0 (nx5888), .A1 (nx5892), .A2 (nx1564), .B0 (
          nx1500), .B1 (nx1566)) ;
    xnor2 ix1719 (.Y (nx1718), .A0 (nx4011), .A1 (nx1716)) ;
    xnor2 ix1717 (.Y (nx1716), .A0 (nx4015), .A1 (nx1714)) ;
    aoi32 ix4016 (.Y (nx4015), .A0 (nx5880), .A1 (nx5900), .A2 (nx1560), .B0 (
          nx1508), .B1 (nx1562)) ;
    xnor2 ix1715 (.Y (nx1714), .A0 (nx4019), .A1 (nx1712)) ;
    xnor2 ix1713 (.Y (nx1712), .A0 (nx4023), .A1 (nx1710)) ;
    aoi32 ix4024 (.Y (nx4023), .A0 (nx5874), .A1 (nx5908), .A2 (nx1556), .B0 (
          nx1516), .B1 (nx1558)) ;
    xnor2 ix1711 (.Y (nx1710), .A0 (nx4027), .A1 (nx1708)) ;
    xnor2 ix1709 (.Y (nx1708), .A0 (nx4031), .A1 (nx1706)) ;
    aoi32 ix4032 (.Y (nx4031), .A0 (nx5866), .A1 (nx5916), .A2 (nx1552), .B0 (
          nx1524), .B1 (nx1554)) ;
    xnor2 ix1707 (.Y (nx1706), .A0 (nx4037), .A1 (nx1704)) ;
    xnor2 ix1705 (.Y (nx1704), .A0 (nx1684), .A1 (nx4047)) ;
    oai32 ix1685 (.Y (nx1684), .A0 (nx6020), .A1 (nx6094), .A2 (nx3929), .B0 (
          nx4043), .B1 (nx3925)) ;
    xnor2 ix4048 (.Y (nx4047), .A0 (nx4049), .A1 (nx4051)) ;
    nand02 ix4052 (.Y (nx4051), .A0 (nx5852), .A1 (nx5940)) ;
    dffr MAC0_RegMultInB_reg_Y_12 (.Q (\$dummy [106]), .QB (nx4057), .D (nx1694)
         , .CLK (clk), .R (nx5814)) ;
    xnor2 ix4062 (.Y (nx4061), .A0 (nx2807), .A1 (nx4206)) ;
    xnor2 ix4207 (.Y (nx4206), .A0 (MAC0_adderB_12), .A1 (RegOut[12])) ;
    dffr MAC0_RegMultOut_reg_Y_13 (.Q (MAC0_adderB_13), .QB (\$dummy [107]), .D (
         nx3854), .CLK (clk), .R (nx5816)) ;
    mux21 ix3855 (.Y (nx3854), .A0 (nx4071), .A1 (nx3848), .S0 (nx4079)) ;
    dffr MAC0_RegMultInA_reg_Y_13 (.Q (\$dummy [108]), .QB (nx4076), .D (nx1920)
         , .CLK (clk), .R (nx5814)) ;
    xnor2 ix4080 (.Y (nx4079), .A0 (nx1760), .A1 (nx1910)) ;
    nor03 ix1761 (.Y (nx1760), .A0 (nx3955), .A1 (nx6106), .A2 (nx6140)) ;
    xnor2 ix1911 (.Y (nx1910), .A0 (nx4085), .A1 (nx1908)) ;
    xnor2 ix1909 (.Y (nx1908), .A0 (nx4089), .A1 (nx1906)) ;
    aoi32 ix4090 (.Y (nx4089), .A0 (nx5936), .A1 (nx5850), .A2 (nx1740), .B0 (
          nx1604), .B1 (nx1742)) ;
    xnor2 ix1907 (.Y (nx1906), .A0 (nx4092), .A1 (nx1904)) ;
    xnor2 ix1905 (.Y (nx1904), .A0 (nx4095), .A1 (nx1902)) ;
    aoi32 ix4096 (.Y (nx4095), .A0 (nx5928), .A1 (nx5862), .A2 (nx1736), .B0 (
          nx1612), .B1 (nx1738)) ;
    xnor2 ix1903 (.Y (nx1902), .A0 (nx4101), .A1 (nx1900)) ;
    xnor2 ix1901 (.Y (nx1900), .A0 (nx4105), .A1 (nx1898)) ;
    aoi32 ix4106 (.Y (nx4105), .A0 (nx5920), .A1 (nx5870), .A2 (nx1732), .B0 (
          nx1620), .B1 (nx1734)) ;
    xnor2 ix1899 (.Y (nx1898), .A0 (nx4109), .A1 (nx1896)) ;
    xnor2 ix1897 (.Y (nx1896), .A0 (nx4113), .A1 (nx1894)) ;
    aoi32 ix4114 (.Y (nx4113), .A0 (nx5912), .A1 (nx5878), .A2 (nx1728), .B0 (
          nx1628), .B1 (nx1730)) ;
    xnor2 ix1895 (.Y (nx1894), .A0 (nx4119), .A1 (nx1892)) ;
    xnor2 ix1893 (.Y (nx1892), .A0 (nx4123), .A1 (nx1890)) ;
    aoi32 ix4124 (.Y (nx4123), .A0 (nx5904), .A1 (nx5884), .A2 (nx1724), .B0 (
          nx1636), .B1 (nx1726)) ;
    xnor2 ix1891 (.Y (nx1890), .A0 (nx4127), .A1 (nx1888)) ;
    xnor2 ix1889 (.Y (nx1888), .A0 (nx4131), .A1 (nx1886)) ;
    aoi32 ix4132 (.Y (nx4131), .A0 (nx5896), .A1 (nx5892), .A2 (nx1720), .B0 (
          nx1644), .B1 (nx1722)) ;
    xnor2 ix1887 (.Y (nx1886), .A0 (nx4137), .A1 (nx1884)) ;
    xnor2 ix1885 (.Y (nx1884), .A0 (nx4140), .A1 (nx1882)) ;
    aoi32 ix4141 (.Y (nx4140), .A0 (nx5888), .A1 (nx5900), .A2 (nx1716), .B0 (
          nx1652), .B1 (nx1718)) ;
    xnor2 ix1883 (.Y (nx1882), .A0 (nx4145), .A1 (nx1880)) ;
    xnor2 ix1881 (.Y (nx1880), .A0 (nx4149), .A1 (nx1878)) ;
    aoi32 ix4150 (.Y (nx4149), .A0 (nx5882), .A1 (nx5908), .A2 (nx1712), .B0 (
          nx1660), .B1 (nx1714)) ;
    xnor2 ix1879 (.Y (nx1878), .A0 (nx4155), .A1 (nx1876)) ;
    xnor2 ix1877 (.Y (nx1876), .A0 (nx4159), .A1 (nx1874)) ;
    aoi32 ix4160 (.Y (nx4159), .A0 (nx5874), .A1 (nx5916), .A2 (nx1708), .B0 (
          nx1668), .B1 (nx1710)) ;
    xnor2 ix1875 (.Y (nx1874), .A0 (nx4165), .A1 (nx1872)) ;
    xnor2 ix1873 (.Y (nx1872), .A0 (nx4169), .A1 (nx1870)) ;
    aoi32 ix4170 (.Y (nx4169), .A0 (nx5866), .A1 (nx5924), .A2 (nx1704), .B0 (
          nx1676), .B1 (nx1706)) ;
    xnor2 ix1871 (.Y (nx1870), .A0 (nx4173), .A1 (nx1868)) ;
    xnor2 ix1869 (.Y (nx1868), .A0 (nx1848), .A1 (nx4185)) ;
    oai32 ix1849 (.Y (nx1848), .A0 (nx6020), .A1 (nx6102), .A2 (nx4051), .B0 (
          nx4179), .B1 (nx4047)) ;
    xnor2 ix4186 (.Y (nx4185), .A0 (nx4187), .A1 (nx4189)) ;
    nand02 ix4190 (.Y (nx4189), .A0 (nx5852), .A1 (nx5948)) ;
    dffr MAC0_RegMultInB_reg_Y_13 (.Q (\$dummy [109]), .QB (nx4195), .D (nx1858)
         , .CLK (clk), .R (nx5814)) ;
    xnor2 ix4202 (.Y (nx4201), .A0 (nx2799), .A1 (nx4222)) ;
    xnor2 ix4223 (.Y (nx4222), .A0 (MAC0_adderB_13), .A1 (RegOut[13])) ;
    dffr MAC0_RegMultOut_reg_Y_14 (.Q (MAC0_adderB_14), .QB (\$dummy [110]), .D (
         nx3842), .CLK (clk), .R (nx5816)) ;
    mux21 ix3843 (.Y (nx3842), .A0 (nx4209), .A1 (nx3836), .S0 (nx4217)) ;
    dffr MAC0_RegMultInA_reg_Y_14 (.Q (\$dummy [111]), .QB (nx4215), .D (nx2100)
         , .CLK (clk), .R (nx5816)) ;
    xnor2 ix4218 (.Y (nx4217), .A0 (nx1928), .A1 (nx2090)) ;
    nor03 ix1929 (.Y (nx1928), .A0 (nx4079), .A1 (nx6114), .A2 (nx6140)) ;
    xnor2 ix2091 (.Y (nx2090), .A0 (nx4221), .A1 (nx2088)) ;
    xnor2 ix2089 (.Y (nx2088), .A0 (nx4225), .A1 (nx2086)) ;
    aoi32 ix4226 (.Y (nx4225), .A0 (nx5944), .A1 (nx5850), .A2 (nx1908), .B0 (
          nx1760), .B1 (nx1910)) ;
    xnor2 ix2087 (.Y (nx2086), .A0 (nx4229), .A1 (nx2084)) ;
    xnor2 ix2085 (.Y (nx2084), .A0 (nx4233), .A1 (nx2082)) ;
    aoi32 ix4234 (.Y (nx4233), .A0 (nx5936), .A1 (nx5862), .A2 (nx1904), .B0 (
          nx1768), .B1 (nx1906)) ;
    xnor2 ix2083 (.Y (nx2082), .A0 (nx4237), .A1 (nx2080)) ;
    xnor2 ix2081 (.Y (nx2080), .A0 (nx4241), .A1 (nx2078)) ;
    aoi32 ix4242 (.Y (nx4241), .A0 (nx5928), .A1 (nx5870), .A2 (nx1900), .B0 (
          nx1776), .B1 (nx1902)) ;
    xnor2 ix2079 (.Y (nx2078), .A0 (nx4247), .A1 (nx2076)) ;
    xnor2 ix2077 (.Y (nx2076), .A0 (nx4251), .A1 (nx2074)) ;
    aoi32 ix4252 (.Y (nx4251), .A0 (nx5920), .A1 (nx5878), .A2 (nx1896), .B0 (
          nx1784), .B1 (nx1898)) ;
    xnor2 ix2075 (.Y (nx2074), .A0 (nx4255), .A1 (nx2072)) ;
    xnor2 ix2073 (.Y (nx2072), .A0 (nx4259), .A1 (nx2070)) ;
    aoi32 ix4260 (.Y (nx4259), .A0 (nx5912), .A1 (nx5886), .A2 (nx1892), .B0 (
          nx1792), .B1 (nx1894)) ;
    xnor2 ix2071 (.Y (nx2070), .A0 (nx4265), .A1 (nx2068)) ;
    xnor2 ix2069 (.Y (nx2068), .A0 (nx4268), .A1 (nx2066)) ;
    aoi32 ix4269 (.Y (nx4268), .A0 (nx5904), .A1 (nx5892), .A2 (nx1888), .B0 (
          nx1800), .B1 (nx1890)) ;
    xnor2 ix2067 (.Y (nx2066), .A0 (nx4273), .A1 (nx2064)) ;
    xnor2 ix2065 (.Y (nx2064), .A0 (nx4277), .A1 (nx2062)) ;
    aoi32 ix4278 (.Y (nx4277), .A0 (nx5896), .A1 (nx5900), .A2 (nx1884), .B0 (
          nx1808), .B1 (nx1886)) ;
    xnor2 ix2063 (.Y (nx2062), .A0 (nx4283), .A1 (nx2060)) ;
    xnor2 ix2061 (.Y (nx2060), .A0 (nx4287), .A1 (nx2058)) ;
    aoi32 ix4288 (.Y (nx4287), .A0 (nx5890), .A1 (nx5908), .A2 (nx1880), .B0 (
          nx1816), .B1 (nx1882)) ;
    xnor2 ix2059 (.Y (nx2058), .A0 (nx4293), .A1 (nx2056)) ;
    xnor2 ix2057 (.Y (nx2056), .A0 (nx4297), .A1 (nx2054)) ;
    aoi32 ix4298 (.Y (nx4297), .A0 (nx5882), .A1 (nx5916), .A2 (nx1876), .B0 (
          nx1824), .B1 (nx1878)) ;
    xnor2 ix2055 (.Y (nx2054), .A0 (nx4301), .A1 (nx2052)) ;
    xnor2 ix2053 (.Y (nx2052), .A0 (nx4305), .A1 (nx2050)) ;
    aoi32 ix4306 (.Y (nx4305), .A0 (nx5874), .A1 (nx5924), .A2 (nx1872), .B0 (
          nx1832), .B1 (nx1874)) ;
    xnor2 ix2051 (.Y (nx2050), .A0 (nx4311), .A1 (nx2048)) ;
    xnor2 ix2049 (.Y (nx2048), .A0 (nx4315), .A1 (nx2046)) ;
    aoi32 ix4316 (.Y (nx4315), .A0 (nx5866), .A1 (nx5932), .A2 (nx1868), .B0 (
          nx1840), .B1 (nx1870)) ;
    xnor2 ix2047 (.Y (nx2046), .A0 (nx4319), .A1 (nx2044)) ;
    xnor2 ix2045 (.Y (nx2044), .A0 (nx2024), .A1 (nx4331)) ;
    oai32 ix2025 (.Y (nx2024), .A0 (nx6020), .A1 (nx6110), .A2 (nx4189), .B0 (
          nx4325), .B1 (nx4185)) ;
    xnor2 ix4332 (.Y (nx4331), .A0 (nx4333), .A1 (nx4335)) ;
    nand02 ix4336 (.Y (nx4335), .A0 (nx5854), .A1 (nx5956)) ;
    dffr MAC0_RegMultInB_reg_Y_14 (.Q (\$dummy [112]), .QB (nx4341), .D (nx2034)
         , .CLK (clk), .R (nx5816)) ;
    xnor2 ix4348 (.Y (nx4347), .A0 (nx2791), .A1 (nx4238)) ;
    xnor2 ix4239 (.Y (nx4238), .A0 (MAC0_adderB_14), .A1 (RegOut[14])) ;
    dffr MAC0_RegMultOut_reg_Y_15 (.Q (MAC0_adderB_15), .QB (\$dummy [113]), .D (
         nx3830), .CLK (clk), .R (nx5816)) ;
    mux21 ix3831 (.Y (nx3830), .A0 (nx4357), .A1 (nx3824), .S0 (nx4365)) ;
    dffr MAC0_RegMultInA_reg_Y_15 (.Q (\$dummy [114]), .QB (nx4363), .D (nx2292)
         , .CLK (clk), .R (nx5816)) ;
    xnor2 ix4366 (.Y (nx4365), .A0 (nx2108), .A1 (nx2282)) ;
    nor03 ix2109 (.Y (nx2108), .A0 (nx4217), .A1 (nx6122), .A2 (nx6140)) ;
    xnor2 ix2283 (.Y (nx2282), .A0 (nx4371), .A1 (nx2280)) ;
    xnor2 ix2281 (.Y (nx2280), .A0 (nx4375), .A1 (nx2278)) ;
    aoi32 ix4376 (.Y (nx4375), .A0 (nx5952), .A1 (nx5850), .A2 (nx2088), .B0 (
          nx1928), .B1 (nx2090)) ;
    xnor2 ix2279 (.Y (nx2278), .A0 (nx4379), .A1 (nx2276)) ;
    xnor2 ix2277 (.Y (nx2276), .A0 (nx4383), .A1 (nx2274)) ;
    aoi32 ix4384 (.Y (nx4383), .A0 (nx5944), .A1 (nx5862), .A2 (nx2084), .B0 (
          nx1936), .B1 (nx2086)) ;
    xnor2 ix2275 (.Y (nx2274), .A0 (nx4389), .A1 (nx2272)) ;
    xnor2 ix2273 (.Y (nx2272), .A0 (nx4393), .A1 (nx2270)) ;
    aoi32 ix4394 (.Y (nx4393), .A0 (nx5936), .A1 (nx5870), .A2 (nx2080), .B0 (
          nx1944), .B1 (nx2082)) ;
    xnor2 ix2271 (.Y (nx2270), .A0 (nx4397), .A1 (nx2268)) ;
    xnor2 ix2269 (.Y (nx2268), .A0 (nx4401), .A1 (nx2266)) ;
    aoi32 ix4402 (.Y (nx4401), .A0 (nx5928), .A1 (nx5878), .A2 (nx2076), .B0 (
          nx1952), .B1 (nx2078)) ;
    xnor2 ix2267 (.Y (nx2266), .A0 (nx4407), .A1 (nx2264)) ;
    xnor2 ix2265 (.Y (nx2264), .A0 (nx4411), .A1 (nx2262)) ;
    aoi32 ix4412 (.Y (nx4411), .A0 (nx5920), .A1 (nx5886), .A2 (nx2072), .B0 (
          nx1960), .B1 (nx2074)) ;
    xnor2 ix2263 (.Y (nx2262), .A0 (nx4415), .A1 (nx2260)) ;
    xnor2 ix2261 (.Y (nx2260), .A0 (nx4419), .A1 (nx2258)) ;
    aoi32 ix4420 (.Y (nx4419), .A0 (nx5912), .A1 (nx5894), .A2 (nx2068), .B0 (
          nx1968), .B1 (nx2070)) ;
    xnor2 ix2259 (.Y (nx2258), .A0 (nx4425), .A1 (nx2256)) ;
    xnor2 ix2257 (.Y (nx2256), .A0 (nx4428), .A1 (nx2254)) ;
    aoi32 ix4429 (.Y (nx4428), .A0 (nx5904), .A1 (nx5900), .A2 (nx2064), .B0 (
          nx1976), .B1 (nx2066)) ;
    xnor2 ix2255 (.Y (nx2254), .A0 (nx4433), .A1 (nx2252)) ;
    xnor2 ix2253 (.Y (nx2252), .A0 (nx4437), .A1 (nx2250)) ;
    aoi32 ix4438 (.Y (nx4437), .A0 (nx5898), .A1 (nx5908), .A2 (nx2060), .B0 (
          nx1984), .B1 (nx2062)) ;
    xnor2 ix2251 (.Y (nx2250), .A0 (nx4443), .A1 (nx2248)) ;
    xnor2 ix2249 (.Y (nx2248), .A0 (nx4447), .A1 (nx2246)) ;
    aoi32 ix4448 (.Y (nx4447), .A0 (nx5890), .A1 (nx5916), .A2 (nx2056), .B0 (
          nx1992), .B1 (nx2058)) ;
    xnor2 ix2247 (.Y (nx2246), .A0 (nx4453), .A1 (nx2244)) ;
    xnor2 ix2245 (.Y (nx2244), .A0 (nx4457), .A1 (nx2242)) ;
    aoi32 ix4458 (.Y (nx4457), .A0 (nx5882), .A1 (nx5924), .A2 (nx2052), .B0 (
          nx2000), .B1 (nx2054)) ;
    xnor2 ix2243 (.Y (nx2242), .A0 (nx4461), .A1 (nx2240)) ;
    xnor2 ix2241 (.Y (nx2240), .A0 (nx4465), .A1 (nx2238)) ;
    aoi32 ix4466 (.Y (nx4465), .A0 (nx5874), .A1 (nx5932), .A2 (nx2048), .B0 (
          nx2008), .B1 (nx2050)) ;
    xnor2 ix2239 (.Y (nx2238), .A0 (nx4471), .A1 (nx2236)) ;
    xnor2 ix2237 (.Y (nx2236), .A0 (nx4475), .A1 (nx2234)) ;
    aoi32 ix4476 (.Y (nx4475), .A0 (nx5866), .A1 (nx5940), .A2 (nx2044), .B0 (
          nx2016), .B1 (nx2046)) ;
    xnor2 ix2235 (.Y (nx2234), .A0 (nx4481), .A1 (nx2232)) ;
    xnor2 ix2233 (.Y (nx2232), .A0 (nx2212), .A1 (nx4493)) ;
    oai32 ix2213 (.Y (nx2212), .A0 (nx6020), .A1 (nx6118), .A2 (nx4335), .B0 (
          nx4487), .B1 (nx4331)) ;
    xnor2 ix4494 (.Y (nx4493), .A0 (nx4495), .A1 (nx4497)) ;
    nand02 ix4498 (.Y (nx4497), .A0 (nx5854), .A1 (nx5964)) ;
    dffr MAC0_RegMultInB_reg_Y_15 (.Q (\$dummy [115]), .QB (nx4503), .D (nx2222)
         , .CLK (clk), .R (nx5816)) ;
    xnor2 ix4508 (.Y (nx4507), .A0 (nx2783), .A1 (nx4254)) ;
    xnor2 ix4255 (.Y (nx4254), .A0 (MAC0_adderB_15), .A1 (RegOut[15])) ;
    dffr MAC0_RegMultOut_reg_Y_16 (.Q (MAC0_adderB_16), .QB (\$dummy [116]), .D (
         nx3818), .CLK (clk), .R (nx5816)) ;
    xnor2 ix3819 (.Y (nx3818), .A0 (nx2300), .A1 (nx4516)) ;
    nor03 ix2301 (.Y (nx2300), .A0 (nx4365), .A1 (nx6132), .A2 (nx6140)) ;
    xnor2 ix4518 (.Y (nx4516), .A0 (nx4519), .A1 (nx4521)) ;
    xnor2 ix4522 (.Y (nx4521), .A0 (nx4523), .A1 (nx4525)) ;
    aoi32 ix4524 (.Y (nx4523), .A0 (nx5960), .A1 (nx5850), .A2 (nx2280), .B0 (
          nx2108), .B1 (nx2282)) ;
    xnor2 ix4526 (.Y (nx4525), .A0 (nx4527), .A1 (nx4529)) ;
    xnor2 ix4530 (.Y (nx4529), .A0 (nx4531), .A1 (nx4535)) ;
    aoi32 ix4532 (.Y (nx4531), .A0 (nx5952), .A1 (nx5862), .A2 (nx2276), .B0 (
          nx2116), .B1 (nx2278)) ;
    xnor2 ix4536 (.Y (nx4535), .A0 (nx4537), .A1 (nx4539)) ;
    xnor2 ix4540 (.Y (nx4539), .A0 (nx4541), .A1 (nx4544)) ;
    aoi32 ix4542 (.Y (nx4541), .A0 (nx5944), .A1 (nx5870), .A2 (nx2272), .B0 (
          nx2124), .B1 (nx2274)) ;
    xnor2 ix4545 (.Y (nx4544), .A0 (nx4547), .A1 (nx4549)) ;
    xnor2 ix4550 (.Y (nx4549), .A0 (nx4551), .A1 (nx4554)) ;
    aoi32 ix4552 (.Y (nx4551), .A0 (nx5936), .A1 (nx5878), .A2 (nx2268), .B0 (
          nx2132), .B1 (nx2270)) ;
    xnor2 ix4556 (.Y (nx4554), .A0 (nx4557), .A1 (nx4559)) ;
    xnor2 ix4560 (.Y (nx4559), .A0 (nx4561), .A1 (nx4565)) ;
    aoi32 ix4562 (.Y (nx4561), .A0 (nx5928), .A1 (nx5886), .A2 (nx2264), .B0 (
          nx2140), .B1 (nx2266)) ;
    xnor2 ix4566 (.Y (nx4565), .A0 (nx4567), .A1 (nx4569)) ;
    xnor2 ix4570 (.Y (nx4569), .A0 (nx4571), .A1 (nx4575)) ;
    aoi32 ix4572 (.Y (nx4571), .A0 (nx5920), .A1 (nx5894), .A2 (nx2260), .B0 (
          nx2148), .B1 (nx2262)) ;
    xnor2 ix4576 (.Y (nx4575), .A0 (nx4577), .A1 (nx4579)) ;
    xnor2 ix4580 (.Y (nx4579), .A0 (nx4581), .A1 (nx4584)) ;
    aoi32 ix4582 (.Y (nx4581), .A0 (nx5912), .A1 (nx5902), .A2 (nx2256), .B0 (
          nx2156), .B1 (nx2258)) ;
    xnor2 ix4585 (.Y (nx4584), .A0 (nx4587), .A1 (nx4589)) ;
    xnor2 ix4590 (.Y (nx4589), .A0 (nx4591), .A1 (nx4595)) ;
    aoi32 ix4592 (.Y (nx4591), .A0 (nx5906), .A1 (nx5908), .A2 (nx2252), .B0 (
          nx2164), .B1 (nx2254)) ;
    xnor2 ix4596 (.Y (nx4595), .A0 (nx4597), .A1 (nx4599)) ;
    xnor2 ix4600 (.Y (nx4599), .A0 (nx4601), .A1 (nx4604)) ;
    aoi32 ix4602 (.Y (nx4601), .A0 (nx5898), .A1 (nx5916), .A2 (nx2248), .B0 (
          nx2172), .B1 (nx2250)) ;
    xnor2 ix4605 (.Y (nx4604), .A0 (nx4607), .A1 (nx4609)) ;
    xnor2 ix4610 (.Y (nx4609), .A0 (nx4611), .A1 (nx4615)) ;
    aoi32 ix4612 (.Y (nx4611), .A0 (nx5890), .A1 (nx5924), .A2 (nx2244), .B0 (
          nx2180), .B1 (nx2246)) ;
    xnor2 ix4616 (.Y (nx4615), .A0 (nx4617), .A1 (nx4619)) ;
    xnor2 ix4620 (.Y (nx4619), .A0 (nx4621), .A1 (nx4624)) ;
    aoi32 ix4622 (.Y (nx4621), .A0 (nx5882), .A1 (nx5932), .A2 (nx2240), .B0 (
          nx2188), .B1 (nx2242)) ;
    xnor2 ix4625 (.Y (nx4624), .A0 (nx4627), .A1 (nx4629)) ;
    xnor2 ix4630 (.Y (nx4629), .A0 (nx4631), .A1 (nx4635)) ;
    aoi32 ix4632 (.Y (nx4631), .A0 (nx5874), .A1 (nx5940), .A2 (nx2236), .B0 (
          nx2196), .B1 (nx2238)) ;
    xnor2 ix4636 (.Y (nx4635), .A0 (nx4637), .A1 (nx4639)) ;
    xnor2 ix4640 (.Y (nx4639), .A0 (nx4641), .A1 (nx4644)) ;
    aoi32 ix4642 (.Y (nx4641), .A0 (nx5866), .A1 (nx5948), .A2 (nx2232), .B0 (
          nx2204), .B1 (nx2234)) ;
    xnor2 ix4645 (.Y (nx4644), .A0 (nx4647), .A1 (nx4649)) ;
    mux21 ix4650 (.Y (nx4649), .A0 (nx4651), .A1 (nx2414), .S0 (nx2412)) ;
    nor02 ix2415 (.Y (nx2414), .A0 (nx6020), .A1 (nx6136)) ;
    oai32 ix2413 (.Y (nx2412), .A0 (nx6020), .A1 (nx6128), .A2 (nx4497), .B0 (
          nx4656), .B1 (nx4493)) ;
    xnor2 ix4666 (.Y (nx4665), .A0 (nx2775), .A1 (nx4270)) ;
    xnor2 ix4271 (.Y (nx4270), .A0 (MAC0_adderB_16), .A1 (RegOut[16])) ;
    dffr MAC0_RegMultOut_reg_Y_17 (.Q (MAC0_adderB_17), .QB (\$dummy [117]), .D (
         nx3812), .CLK (clk), .R (nx5816)) ;
    xor2 ix3813 (.Y (nx3812), .A0 (nx2484), .A1 (nx2644)) ;
    oai32 ix2485 (.Y (nx2484), .A0 (nx6132), .A1 (nx6016), .A2 (nx4521), .B0 (
          nx4674), .B1 (nx4516)) ;
    xnor2 ix2645 (.Y (nx2644), .A0 (nx4677), .A1 (nx2642)) ;
    xnor2 ix2643 (.Y (nx2642), .A0 (nx2492), .A1 (nx4681)) ;
    oai32 ix2493 (.Y (nx2492), .A0 (nx6122), .A1 (nx6030), .A2 (nx4529), .B0 (
          nx4523), .B1 (nx4525)) ;
    xnor2 ix4682 (.Y (nx4681), .A0 (nx4683), .A1 (nx4685)) ;
    xnor2 ix4686 (.Y (nx4685), .A0 (nx2500), .A1 (nx2636)) ;
    oai32 ix2501 (.Y (nx2500), .A0 (nx6114), .A1 (nx6038), .A2 (nx4539), .B0 (
          nx4531), .B1 (nx4535)) ;
    xnor2 ix2637 (.Y (nx2636), .A0 (nx4689), .A1 (nx2634)) ;
    xnor2 ix2635 (.Y (nx2634), .A0 (nx2508), .A1 (nx4693)) ;
    oai32 ix2509 (.Y (nx2508), .A0 (nx6106), .A1 (nx6046), .A2 (nx4549), .B0 (
          nx4541), .B1 (nx4544)) ;
    xnor2 ix4694 (.Y (nx4693), .A0 (nx4695), .A1 (nx4697)) ;
    xnor2 ix4698 (.Y (nx4697), .A0 (nx2516), .A1 (nx2628)) ;
    oai32 ix2517 (.Y (nx2516), .A0 (nx6098), .A1 (nx6054), .A2 (nx4559), .B0 (
          nx4551), .B1 (nx4554)) ;
    xnor2 ix2629 (.Y (nx2628), .A0 (nx4701), .A1 (nx2626)) ;
    xnor2 ix2627 (.Y (nx2626), .A0 (nx2524), .A1 (nx4705)) ;
    oai32 ix2525 (.Y (nx2524), .A0 (nx6090), .A1 (nx6062), .A2 (nx4569), .B0 (
          nx4561), .B1 (nx4565)) ;
    xnor2 ix4706 (.Y (nx4705), .A0 (nx4707), .A1 (nx4709)) ;
    xnor2 ix4710 (.Y (nx4709), .A0 (nx2532), .A1 (nx2620)) ;
    oai32 ix2533 (.Y (nx2532), .A0 (nx6082), .A1 (nx6070), .A2 (nx4579), .B0 (
          nx4571), .B1 (nx4575)) ;
    xnor2 ix2621 (.Y (nx2620), .A0 (nx4713), .A1 (nx2618)) ;
    xnor2 ix2619 (.Y (nx2618), .A0 (nx2540), .A1 (nx4717)) ;
    oai32 ix2541 (.Y (nx2540), .A0 (nx6074), .A1 (nx6078), .A2 (nx4589), .B0 (
          nx4581), .B1 (nx4584)) ;
    xnor2 ix4718 (.Y (nx4717), .A0 (nx4719), .A1 (nx4721)) ;
    xnor2 ix4722 (.Y (nx4721), .A0 (nx2548), .A1 (nx2612)) ;
    oai32 ix2549 (.Y (nx2548), .A0 (nx6066), .A1 (nx6086), .A2 (nx4599), .B0 (
          nx4591), .B1 (nx4595)) ;
    xnor2 ix2613 (.Y (nx2612), .A0 (nx4725), .A1 (nx2610)) ;
    xnor2 ix2611 (.Y (nx2610), .A0 (nx2556), .A1 (nx4729)) ;
    oai32 ix2557 (.Y (nx2556), .A0 (nx6058), .A1 (nx6094), .A2 (nx4609), .B0 (
          nx4601), .B1 (nx4604)) ;
    xnor2 ix4730 (.Y (nx4729), .A0 (nx4731), .A1 (nx4733)) ;
    xnor2 ix4734 (.Y (nx4733), .A0 (nx2564), .A1 (nx2604)) ;
    oai32 ix2565 (.Y (nx2564), .A0 (nx6050), .A1 (nx6102), .A2 (nx4619), .B0 (
          nx4611), .B1 (nx4615)) ;
    xnor2 ix2605 (.Y (nx2604), .A0 (nx4737), .A1 (nx2602)) ;
    xnor2 ix2603 (.Y (nx2602), .A0 (nx2572), .A1 (nx4741)) ;
    oai32 ix2573 (.Y (nx2572), .A0 (nx6042), .A1 (nx6110), .A2 (nx4629), .B0 (
          nx4621), .B1 (nx4624)) ;
    xnor2 ix4742 (.Y (nx4741), .A0 (nx4743), .A1 (nx4745)) ;
    xnor2 ix4746 (.Y (nx4745), .A0 (nx2580), .A1 (nx2596)) ;
    oai32 ix2581 (.Y (nx2580), .A0 (nx6034), .A1 (nx6118), .A2 (nx4639), .B0 (
          nx4631), .B1 (nx4635)) ;
    xnor2 ix2597 (.Y (nx2596), .A0 (nx4749), .A1 (nx2594)) ;
    xnor2 ix2595 (.Y (nx2594), .A0 (nx2588), .A1 (nx4753)) ;
    oai32 ix2589 (.Y (nx2588), .A0 (nx6026), .A1 (nx6128), .A2 (nx4649), .B0 (
          nx4641), .B1 (nx4644)) ;
    xnor2 ix4754 (.Y (nx4753), .A0 (nx4755), .A1 (nx4757)) ;
    xnor2 ix4764 (.Y (nx4763), .A0 (nx2767), .A1 (nx4286)) ;
    xnor2 ix4287 (.Y (nx4286), .A0 (MAC0_adderB_17), .A1 (RegOut[17])) ;
    dffr MAC0_RegMultOut_reg_Y_18 (.Q (MAC0_adderB_18), .QB (\$dummy [118]), .D (
         nx3806), .CLK (clk), .R (nx5816)) ;
    xnor2 ix3807 (.Y (nx3806), .A0 (nx4771), .A1 (nx2804)) ;
    aoi32 ix4772 (.Y (nx4771), .A0 (nx5968), .A1 (nx5862), .A2 (nx2642), .B0 (
          nx2484), .B1 (nx2644)) ;
    xnor2 ix2805 (.Y (nx2804), .A0 (nx4775), .A1 (nx2802)) ;
    xnor2 ix2803 (.Y (nx2802), .A0 (nx2658), .A1 (nx4781)) ;
    oai32 ix2659 (.Y (nx2658), .A0 (nx6122), .A1 (nx6038), .A2 (nx4685), .B0 (
          nx4779), .B1 (nx4681)) ;
    inv01 ix4780 (.Y (nx4779), .A (nx2492)) ;
    xnor2 ix4782 (.Y (nx4781), .A0 (nx4783), .A1 (nx4785)) ;
    xnor2 ix4786 (.Y (nx4785), .A0 (nx4787), .A1 (nx4789)) ;
    aoi32 ix4788 (.Y (nx4787), .A0 (nx5952), .A1 (nx5878), .A2 (nx2634), .B0 (
          nx2500), .B1 (nx2636)) ;
    xnor2 ix4790 (.Y (nx4789), .A0 (nx4791), .A1 (nx4793)) ;
    xnor2 ix4794 (.Y (nx4793), .A0 (nx2674), .A1 (nx2792)) ;
    oai32 ix2675 (.Y (nx2674), .A0 (nx6106), .A1 (nx6054), .A2 (nx4697), .B0 (
          nx4797), .B1 (nx4693)) ;
    inv01 ix4798 (.Y (nx4797), .A (nx2508)) ;
    xnor2 ix2793 (.Y (nx2792), .A0 (nx4801), .A1 (nx2790)) ;
    xnor2 ix2791 (.Y (nx2790), .A0 (nx4805), .A1 (nx2788)) ;
    aoi32 ix4806 (.Y (nx4805), .A0 (nx5936), .A1 (nx5894), .A2 (nx2626), .B0 (
          nx2516), .B1 (nx2628)) ;
    xnor2 ix2789 (.Y (nx2788), .A0 (nx4809), .A1 (nx2786)) ;
    xnor2 ix2787 (.Y (nx2786), .A0 (nx2690), .A1 (nx4817)) ;
    oai32 ix2691 (.Y (nx2690), .A0 (nx6090), .A1 (nx6070), .A2 (nx4709), .B0 (
          nx4815), .B1 (nx4705)) ;
    inv01 ix4816 (.Y (nx4815), .A (nx2524)) ;
    xnor2 ix4818 (.Y (nx4817), .A0 (nx4819), .A1 (nx4821)) ;
    xnor2 ix4822 (.Y (nx4821), .A0 (nx4823), .A1 (nx4825)) ;
    aoi32 ix4824 (.Y (nx4823), .A0 (nx5922), .A1 (nx5910), .A2 (nx2618), .B0 (
          nx2532), .B1 (nx2620)) ;
    xnor2 ix4826 (.Y (nx4825), .A0 (nx4827), .A1 (nx4829)) ;
    xnor2 ix4830 (.Y (nx4829), .A0 (nx2706), .A1 (nx2776)) ;
    oai32 ix2707 (.Y (nx2706), .A0 (nx6074), .A1 (nx6086), .A2 (nx4721), .B0 (
          nx4833), .B1 (nx4717)) ;
    inv01 ix4834 (.Y (nx4833), .A (nx2540)) ;
    xnor2 ix2777 (.Y (nx2776), .A0 (nx4837), .A1 (nx2774)) ;
    xnor2 ix2775 (.Y (nx2774), .A0 (nx4841), .A1 (nx2772)) ;
    aoi32 ix4842 (.Y (nx4841), .A0 (nx5906), .A1 (nx5924), .A2 (nx2610), .B0 (
          nx2548), .B1 (nx2612)) ;
    xnor2 ix2773 (.Y (nx2772), .A0 (nx4845), .A1 (nx2770)) ;
    xnor2 ix2771 (.Y (nx2770), .A0 (nx2722), .A1 (nx4853)) ;
    oai32 ix2723 (.Y (nx2722), .A0 (nx6058), .A1 (nx6102), .A2 (nx4733), .B0 (
          nx4851), .B1 (nx4729)) ;
    inv01 ix4852 (.Y (nx4851), .A (nx2556)) ;
    xnor2 ix4854 (.Y (nx4853), .A0 (nx4855), .A1 (nx4857)) ;
    xnor2 ix4858 (.Y (nx4857), .A0 (nx4859), .A1 (nx4861)) ;
    aoi32 ix4860 (.Y (nx4859), .A0 (nx5890), .A1 (nx5940), .A2 (nx2602), .B0 (
          nx2564), .B1 (nx2604)) ;
    xnor2 ix4862 (.Y (nx4861), .A0 (nx4863), .A1 (nx4865)) ;
    xnor2 ix4866 (.Y (nx4865), .A0 (nx2738), .A1 (nx2760)) ;
    oai32 ix2739 (.Y (nx2738), .A0 (nx6042), .A1 (nx6118), .A2 (nx4745), .B0 (
          nx4869), .B1 (nx4741)) ;
    inv01 ix4870 (.Y (nx4869), .A (nx2572)) ;
    xnor2 ix2761 (.Y (nx2760), .A0 (nx4873), .A1 (nx2758)) ;
    xnor2 ix2759 (.Y (nx2758), .A0 (nx4877), .A1 (nx2756)) ;
    aoi32 ix4878 (.Y (nx4877), .A0 (nx5874), .A1 (nx5956), .A2 (nx2594), .B0 (
          nx2580), .B1 (nx2596)) ;
    xnor2 ix2757 (.Y (nx2756), .A0 (nx4881), .A1 (nx2754)) ;
    oai32 ix2755 (.Y (nx2754), .A0 (nx6026), .A1 (nx6136), .A2 (nx4757), .B0 (
          nx4884), .B1 (nx4753)) ;
    inv01 ix4885 (.Y (nx4884), .A (nx2588)) ;
    xnor2 ix4890 (.Y (nx4889), .A0 (nx2759), .A1 (nx4302)) ;
    xnor2 ix4303 (.Y (nx4302), .A0 (MAC0_adderB_18), .A1 (RegOut[18])) ;
    dffr MAC0_RegMultOut_reg_Y_19 (.Q (MAC0_adderB_19), .QB (\$dummy [119]), .D (
         nx3800), .CLK (clk), .R (nx5818)) ;
    xor2 ix3801 (.Y (nx3800), .A0 (nx4896), .A1 (nx4899)) ;
    aoi32 ix4897 (.Y (nx4896), .A0 (nx5968), .A1 (nx5870), .A2 (nx2802), .B0 (
          nx2650), .B1 (nx2804)) ;
    xnor2 ix4900 (.Y (nx4899), .A0 (nx4901), .A1 (nx4903)) ;
    xnor2 ix4904 (.Y (nx4903), .A0 (nx2818), .A1 (nx2948)) ;
    oai32 ix2819 (.Y (nx2818), .A0 (nx6122), .A1 (nx6046), .A2 (nx4785), .B0 (
          nx4906), .B1 (nx4781)) ;
    xnor2 ix2949 (.Y (nx2948), .A0 (nx4911), .A1 (nx2946)) ;
    xnor2 ix2947 (.Y (nx2946), .A0 (nx2826), .A1 (nx4915)) ;
    oai32 ix2827 (.Y (nx2826), .A0 (nx6114), .A1 (nx6054), .A2 (nx4793), .B0 (
          nx4787), .B1 (nx4789)) ;
    xnor2 ix4916 (.Y (nx4915), .A0 (nx4917), .A1 (nx4919)) ;
    xnor2 ix4920 (.Y (nx4919), .A0 (nx4921), .A1 (nx4923)) ;
    aoi32 ix4922 (.Y (nx4921), .A0 (nx5944), .A1 (nx5894), .A2 (nx2790), .B0 (
          nx2674), .B1 (nx2792)) ;
    xnor2 ix4924 (.Y (nx4923), .A0 (nx4925), .A1 (nx4927)) ;
    xnor2 ix4928 (.Y (nx4927), .A0 (nx4929), .A1 (nx4932)) ;
    aoi32 ix4930 (.Y (nx4929), .A0 (nx5936), .A1 (nx5902), .A2 (nx2786), .B0 (
          nx2682), .B1 (nx2788)) ;
    xnor2 ix4933 (.Y (nx4932), .A0 (nx4934), .A1 (nx4936)) ;
    xnor2 ix4937 (.Y (nx4936), .A0 (nx2850), .A1 (nx2932)) ;
    oai32 ix2851 (.Y (nx2850), .A0 (nx6090), .A1 (nx6078), .A2 (nx4821), .B0 (
          nx4939), .B1 (nx4817)) ;
    xnor2 ix2933 (.Y (nx2932), .A0 (nx4944), .A1 (nx2930)) ;
    xnor2 ix2931 (.Y (nx2930), .A0 (nx2858), .A1 (nx4948)) ;
    oai32 ix2859 (.Y (nx2858), .A0 (nx6082), .A1 (nx6086), .A2 (nx4829), .B0 (
          nx4823), .B1 (nx4825)) ;
    xnor2 ix4949 (.Y (nx4948), .A0 (nx4950), .A1 (nx4952)) ;
    xnor2 ix4953 (.Y (nx4952), .A0 (nx4954), .A1 (nx4956)) ;
    aoi32 ix4955 (.Y (nx4954), .A0 (nx5914), .A1 (nx5926), .A2 (nx2774), .B0 (
          nx2706), .B1 (nx2776)) ;
    xnor2 ix4957 (.Y (nx4956), .A0 (nx4958), .A1 (nx4960)) ;
    xnor2 ix4961 (.Y (nx4960), .A0 (nx4962), .A1 (nx4965)) ;
    aoi32 ix4963 (.Y (nx4962), .A0 (nx5906), .A1 (nx5932), .A2 (nx2770), .B0 (
          nx2714), .B1 (nx2772)) ;
    xnor2 ix4966 (.Y (nx4965), .A0 (nx4967), .A1 (nx4969)) ;
    xnor2 ix4970 (.Y (nx4969), .A0 (nx2882), .A1 (nx2916)) ;
    oai32 ix2883 (.Y (nx2882), .A0 (nx6058), .A1 (nx6110), .A2 (nx4857), .B0 (
          nx4972), .B1 (nx4853)) ;
    xnor2 ix2917 (.Y (nx2916), .A0 (nx4977), .A1 (nx2914)) ;
    xnor2 ix2915 (.Y (nx2914), .A0 (nx2890), .A1 (nx4981)) ;
    oai32 ix2891 (.Y (nx2890), .A0 (nx6050), .A1 (nx6118), .A2 (nx4865), .B0 (
          nx4859), .B1 (nx4861)) ;
    xnor2 ix4982 (.Y (nx4981), .A0 (nx4983), .A1 (nx4985)) ;
    xnor2 ix4986 (.Y (nx4985), .A0 (nx4987), .A1 (nx4989)) ;
    aoi32 ix4988 (.Y (nx4987), .A0 (nx5882), .A1 (nx5956), .A2 (nx2758), .B0 (
          nx2738), .B1 (nx2760)) ;
    xnor2 ix4990 (.Y (nx4989), .A0 (nx4991), .A1 (nx4993)) ;
    aoi32 ix4994 (.Y (nx4993), .A0 (nx5874), .A1 (nx5964), .A2 (nx2754), .B0 (
          nx2746), .B1 (nx2756)) ;
    xnor2 ix5000 (.Y (nx4999), .A0 (nx2751), .A1 (nx4318)) ;
    xnor2 ix4319 (.Y (nx4318), .A0 (MAC0_adderB_19), .A1 (RegOut[19])) ;
    dffr MAC0_RegMultOut_reg_Y_20 (.Q (MAC0_adderB_20), .QB (\$dummy [120]), .D (
         nx3794), .CLK (clk), .R (nx5818)) ;
    xnor2 ix3795 (.Y (nx3794), .A0 (nx2958), .A1 (nx5007)) ;
    oai32 ix2959 (.Y (nx2958), .A0 (nx6132), .A1 (nx6046), .A2 (nx4903), .B0 (
          nx4896), .B1 (nx4899)) ;
    xnor2 ix5008 (.Y (nx5007), .A0 (nx5009), .A1 (nx5011)) ;
    xnor2 ix5012 (.Y (nx5011), .A0 (nx5013), .A1 (nx5015)) ;
    aoi32 ix5014 (.Y (nx5013), .A0 (nx5960), .A1 (nx5886), .A2 (nx2946), .B0 (
          nx2818), .B1 (nx2948)) ;
    xnor2 ix5016 (.Y (nx5015), .A0 (nx5017), .A1 (nx5019)) ;
    xnor2 ix5020 (.Y (nx5019), .A0 (nx2974), .A1 (nx3080)) ;
    oai32 ix2975 (.Y (nx2974), .A0 (nx6114), .A1 (nx6062), .A2 (nx4919), .B0 (
          nx5022), .B1 (nx4915)) ;
    inv01 ix5023 (.Y (nx5022), .A (nx2826)) ;
    xnor2 ix3081 (.Y (nx3080), .A0 (nx5025), .A1 (nx3078)) ;
    xnor2 ix3079 (.Y (nx3078), .A0 (nx2982), .A1 (nx5029)) ;
    oai32 ix2983 (.Y (nx2982), .A0 (nx6106), .A1 (nx6070), .A2 (nx4927), .B0 (
          nx4921), .B1 (nx4923)) ;
    xnor2 ix5030 (.Y (nx5029), .A0 (nx5031), .A1 (nx5033)) ;
    xnor2 ix5034 (.Y (nx5033), .A0 (nx2990), .A1 (nx3072)) ;
    oai32 ix2991 (.Y (nx2990), .A0 (nx6098), .A1 (nx6078), .A2 (nx4936), .B0 (
          nx4929), .B1 (nx4932)) ;
    xnor2 ix3073 (.Y (nx3072), .A0 (nx5037), .A1 (nx3070)) ;
    xnor2 ix3071 (.Y (nx3070), .A0 (nx5040), .A1 (nx3068)) ;
    aoi32 ix5041 (.Y (nx5040), .A0 (nx5930), .A1 (nx5918), .A2 (nx2930), .B0 (
          nx2850), .B1 (nx2932)) ;
    xnor2 ix3069 (.Y (nx3068), .A0 (nx5043), .A1 (nx3066)) ;
    xnor2 ix3067 (.Y (nx3066), .A0 (nx3006), .A1 (nx5049)) ;
    oai32 ix3007 (.Y (nx3006), .A0 (nx6082), .A1 (nx6094), .A2 (nx4952), .B0 (
          nx5047), .B1 (nx4948)) ;
    inv01 ix5048 (.Y (nx5047), .A (nx2858)) ;
    xnor2 ix5050 (.Y (nx5049), .A0 (nx5051), .A1 (nx5053)) ;
    xnor2 ix5054 (.Y (nx5053), .A0 (nx3014), .A1 (nx3060)) ;
    oai32 ix3015 (.Y (nx3014), .A0 (nx6074), .A1 (nx6102), .A2 (nx4960), .B0 (
          nx4954), .B1 (nx4956)) ;
    xnor2 ix3061 (.Y (nx3060), .A0 (nx5057), .A1 (nx3058)) ;
    xnor2 ix3059 (.Y (nx3058), .A0 (nx3022), .A1 (nx5061)) ;
    oai32 ix3023 (.Y (nx3022), .A0 (nx6066), .A1 (nx6110), .A2 (nx4969), .B0 (
          nx4962), .B1 (nx4965)) ;
    xnor2 ix5062 (.Y (nx5061), .A0 (nx5063), .A1 (nx5065)) ;
    xnor2 ix5066 (.Y (nx5065), .A0 (nx5067), .A1 (nx5069)) ;
    aoi32 ix5068 (.Y (nx5067), .A0 (nx5898), .A1 (nx5948), .A2 (nx2914), .B0 (
          nx2882), .B1 (nx2916)) ;
    xnor2 ix5070 (.Y (nx5069), .A0 (nx5071), .A1 (nx5073)) ;
    xnor2 ix5074 (.Y (nx5073), .A0 (nx3038), .A1 (nx3048)) ;
    oai32 ix3039 (.Y (nx3038), .A0 (nx6050), .A1 (nx6128), .A2 (nx4985), .B0 (
          nx5076), .B1 (nx4981)) ;
    inv01 ix5077 (.Y (nx5076), .A (nx2890)) ;
    xnor2 ix3049 (.Y (nx3048), .A0 (nx5079), .A1 (nx3046)) ;
    oai32 ix3047 (.Y (nx3046), .A0 (nx6042), .A1 (nx6136), .A2 (nx4993), .B0 (
          nx4987), .B1 (nx4989)) ;
    xnor2 ix5086 (.Y (nx5085), .A0 (nx2743), .A1 (nx4334)) ;
    xnor2 ix4335 (.Y (nx4334), .A0 (MAC0_adderB_20), .A1 (RegOut[20])) ;
    dffr MAC0_RegMultOut_reg_Y_21 (.Q (MAC0_adderB_21), .QB (\$dummy [121]), .D (
         nx3788), .CLK (clk), .R (nx5818)) ;
    xor2 ix3789 (.Y (nx3788), .A0 (nx3094), .A1 (nx3212)) ;
    oai32 ix3095 (.Y (nx3094), .A0 (nx6132), .A1 (nx6054), .A2 (nx5011), .B0 (
          nx5093), .B1 (nx5007)) ;
    inv01 ix5094 (.Y (nx5093), .A (nx2958)) ;
    xnor2 ix3213 (.Y (nx3212), .A0 (nx5096), .A1 (nx3210)) ;
    xnor2 ix3211 (.Y (nx3210), .A0 (nx3102), .A1 (nx5100)) ;
    oai32 ix3103 (.Y (nx3102), .A0 (nx6122), .A1 (nx6062), .A2 (nx5019), .B0 (
          nx5013), .B1 (nx5015)) ;
    xnor2 ix5101 (.Y (nx5100), .A0 (nx5102), .A1 (nx5104)) ;
    xnor2 ix5105 (.Y (nx5104), .A0 (nx5106), .A1 (nx5108)) ;
    aoi32 ix5107 (.Y (nx5106), .A0 (nx5952), .A1 (nx5902), .A2 (nx3078), .B0 (
          nx2974), .B1 (nx3080)) ;
    xnor2 ix5109 (.Y (nx5108), .A0 (nx5110), .A1 (nx5112)) ;
    xnor2 ix5113 (.Y (nx5112), .A0 (nx3118), .A1 (nx3200)) ;
    oai32 ix3119 (.Y (nx3118), .A0 (nx6106), .A1 (nx6078), .A2 (nx5033), .B0 (
          nx5115), .B1 (nx5029)) ;
    inv01 ix5116 (.Y (nx5115), .A (nx2982)) ;
    xnor2 ix3201 (.Y (nx3200), .A0 (nx5118), .A1 (nx3198)) ;
    xnor2 ix3199 (.Y (nx3198), .A0 (nx5121), .A1 (nx3196)) ;
    aoi32 ix5122 (.Y (nx5121), .A0 (nx5938), .A1 (nx5918), .A2 (nx3070), .B0 (
          nx2990), .B1 (nx3072)) ;
    xnor2 ix3197 (.Y (nx3196), .A0 (nx5124), .A1 (nx3194)) ;
    xnor2 ix3195 (.Y (nx3194), .A0 (nx5127), .A1 (nx3192)) ;
    aoi32 ix5128 (.Y (nx5127), .A0 (nx5930), .A1 (nx5926), .A2 (nx3066), .B0 (
          nx2998), .B1 (nx3068)) ;
    xnor2 ix3193 (.Y (nx3192), .A0 (nx5131), .A1 (nx3190)) ;
    xnor2 ix3191 (.Y (nx3190), .A0 (nx3142), .A1 (nx5139)) ;
    oai32 ix3143 (.Y (nx3142), .A0 (nx6082), .A1 (nx6102), .A2 (nx5053), .B0 (
          nx5135), .B1 (nx5049)) ;
    xnor2 ix5140 (.Y (nx5139), .A0 (nx5141), .A1 (nx5143)) ;
    xnor2 ix5144 (.Y (nx5143), .A0 (nx5145), .A1 (nx5147)) ;
    aoi32 ix5146 (.Y (nx5145), .A0 (nx5914), .A1 (nx5940), .A2 (nx3058), .B0 (
          nx3014), .B1 (nx3060)) ;
    xnor2 ix5148 (.Y (nx5147), .A0 (nx5149), .A1 (nx5151)) ;
    xnor2 ix5152 (.Y (nx5151), .A0 (nx3158), .A1 (nx3180)) ;
    oai32 ix3159 (.Y (nx3158), .A0 (nx6066), .A1 (nx6118), .A2 (nx5065), .B0 (
          nx5154), .B1 (nx5061)) ;
    inv01 ix5155 (.Y (nx5154), .A (nx3022)) ;
    xnor2 ix3181 (.Y (nx3180), .A0 (nx5157), .A1 (nx3178)) ;
    xnor2 ix3179 (.Y (nx3178), .A0 (nx3166), .A1 (nx5161)) ;
    oai32 ix3167 (.Y (nx3166), .A0 (nx6058), .A1 (nx6128), .A2 (nx5073), .B0 (
          nx5067), .B1 (nx5069)) ;
    xnor2 ix5162 (.Y (nx5161), .A0 (nx5163), .A1 (nx5165)) ;
    aoi32 ix5166 (.Y (nx5165), .A0 (nx5890), .A1 (nx5964), .A2 (nx3046), .B0 (
          nx3038), .B1 (nx3048)) ;
    xnor2 ix5171 (.Y (nx5170), .A0 (nx2735), .A1 (nx4350)) ;
    xnor2 ix4351 (.Y (nx4350), .A0 (MAC0_adderB_21), .A1 (RegOut[21])) ;
    dffr MAC0_RegMultOut_reg_Y_22 (.Q (MAC0_adderB_22), .QB (\$dummy [122]), .D (
         nx3782), .CLK (clk), .R (nx5818)) ;
    xnor2 ix3783 (.Y (nx3782), .A0 (nx5177), .A1 (nx3324)) ;
    aoi32 ix5178 (.Y (nx5177), .A0 (nx5968), .A1 (nx5894), .A2 (nx3210), .B0 (
          nx3094), .B1 (nx3212)) ;
    xnor2 ix3325 (.Y (nx3324), .A0 (nx5180), .A1 (nx3322)) ;
    xnor2 ix3323 (.Y (nx3322), .A0 (nx3226), .A1 (nx5186)) ;
    oai32 ix3227 (.Y (nx3226), .A0 (nx6122), .A1 (nx6070), .A2 (nx5104), .B0 (
          nx5184), .B1 (nx5100)) ;
    inv01 ix5185 (.Y (nx5184), .A (nx3102)) ;
    xnor2 ix5187 (.Y (nx5186), .A0 (nx5188), .A1 (nx5190)) ;
    xnor2 ix5191 (.Y (nx5190), .A0 (nx3234), .A1 (nx3316)) ;
    oai32 ix3235 (.Y (nx3234), .A0 (nx6114), .A1 (nx6078), .A2 (nx5112), .B0 (
          nx5106), .B1 (nx5108)) ;
    xnor2 ix3317 (.Y (nx3316), .A0 (nx5194), .A1 (nx3314)) ;
    xnor2 ix3315 (.Y (nx3314), .A0 (nx5197), .A1 (nx3312)) ;
    aoi32 ix5198 (.Y (nx5197), .A0 (nx5944), .A1 (nx5918), .A2 (nx3198), .B0 (
          nx3118), .B1 (nx3200)) ;
    xnor2 ix3313 (.Y (nx3312), .A0 (nx5200), .A1 (nx3310)) ;
    xnor2 ix3311 (.Y (nx3310), .A0 (nx5203), .A1 (nx3308)) ;
    aoi32 ix5204 (.Y (nx5203), .A0 (nx5938), .A1 (nx5926), .A2 (nx3194), .B0 (
          nx3126), .B1 (nx3196)) ;
    xnor2 ix3309 (.Y (nx3308), .A0 (nx5207), .A1 (nx3306)) ;
    xnor2 ix3307 (.Y (nx3306), .A0 (nx5210), .A1 (nx3304)) ;
    aoi32 ix5211 (.Y (nx5210), .A0 (nx5930), .A1 (nx5934), .A2 (nx3190), .B0 (
          nx3134), .B1 (nx3192)) ;
    xnor2 ix3305 (.Y (nx3304), .A0 (nx5214), .A1 (nx3302)) ;
    xnor2 ix3303 (.Y (nx3302), .A0 (nx3266), .A1 (nx5222)) ;
    oai32 ix3267 (.Y (nx3266), .A0 (nx6082), .A1 (nx6110), .A2 (nx5143), .B0 (
          nx5218), .B1 (nx5139)) ;
    xnor2 ix5223 (.Y (nx5222), .A0 (nx5224), .A1 (nx5226)) ;
    xnor2 ix5227 (.Y (nx5226), .A0 (nx3274), .A1 (nx3296)) ;
    oai32 ix3275 (.Y (nx3274), .A0 (nx6074), .A1 (nx6118), .A2 (nx5151), .B0 (
          nx5145), .B1 (nx5147)) ;
    xnor2 ix3297 (.Y (nx3296), .A0 (nx5230), .A1 (nx3294)) ;
    xnor2 ix3295 (.Y (nx3294), .A0 (nx5233), .A1 (nx3292)) ;
    aoi32 ix5234 (.Y (nx5233), .A0 (nx5906), .A1 (nx5956), .A2 (nx3178), .B0 (
          nx3158), .B1 (nx3180)) ;
    xnor2 ix3293 (.Y (nx3292), .A0 (nx5236), .A1 (nx3290)) ;
    oai32 ix3291 (.Y (nx3290), .A0 (nx6058), .A1 (nx6136), .A2 (nx5165), .B0 (
          nx5239), .B1 (nx5161)) ;
    inv01 ix5240 (.Y (nx5239), .A (nx3166)) ;
    xnor2 ix5245 (.Y (nx5244), .A0 (nx2727), .A1 (nx4366)) ;
    xnor2 ix4367 (.Y (nx4366), .A0 (MAC0_adderB_22), .A1 (RegOut[22])) ;
    dffr MAC0_RegMultOut_reg_Y_23 (.Q (MAC0_adderB_23), .QB (\$dummy [123]), .D (
         nx3776), .CLK (clk), .R (nx5818)) ;
    xor2 ix3777 (.Y (nx3776), .A0 (nx5251), .A1 (nx5254)) ;
    aoi32 ix5252 (.Y (nx5251), .A0 (nx5968), .A1 (nx5902), .A2 (nx3322), .B0 (
          nx3218), .B1 (nx3324)) ;
    xnor2 ix5255 (.Y (nx5254), .A0 (nx5256), .A1 (nx5258)) ;
    xnor2 ix5259 (.Y (nx5258), .A0 (nx3338), .A1 (nx3420)) ;
    oai32 ix3339 (.Y (nx3338), .A0 (nx6122), .A1 (nx6078), .A2 (nx5190), .B0 (
          nx5261), .B1 (nx5186)) ;
    xnor2 ix3421 (.Y (nx3420), .A0 (nx5266), .A1 (nx3418)) ;
    xnor2 ix3419 (.Y (nx3418), .A0 (nx5269), .A1 (nx3416)) ;
    aoi32 ix5270 (.Y (nx5269), .A0 (nx5952), .A1 (nx5918), .A2 (nx3314), .B0 (
          nx3234), .B1 (nx3316)) ;
    xnor2 ix3417 (.Y (nx3416), .A0 (nx5272), .A1 (nx3414)) ;
    xnor2 ix3415 (.Y (nx3414), .A0 (nx5275), .A1 (nx3412)) ;
    aoi32 ix5276 (.Y (nx5275), .A0 (nx5946), .A1 (nx5926), .A2 (nx3310), .B0 (
          nx3242), .B1 (nx3312)) ;
    xnor2 ix3413 (.Y (nx3412), .A0 (nx5279), .A1 (nx3410)) ;
    xnor2 ix3411 (.Y (nx3410), .A0 (nx5282), .A1 (nx3408)) ;
    aoi32 ix5283 (.Y (nx5282), .A0 (nx5938), .A1 (nx5934), .A2 (nx3306), .B0 (
          nx3250), .B1 (nx3308)) ;
    xnor2 ix3409 (.Y (nx3408), .A0 (nx5286), .A1 (nx3406)) ;
    xnor2 ix3407 (.Y (nx3406), .A0 (nx5289), .A1 (nx3404)) ;
    aoi32 ix5290 (.Y (nx5289), .A0 (nx5930), .A1 (nx5942), .A2 (nx3302), .B0 (
          nx3258), .B1 (nx3304)) ;
    xnor2 ix3405 (.Y (nx3404), .A0 (nx5293), .A1 (nx3402)) ;
    xnor2 ix3403 (.Y (nx3402), .A0 (nx3378), .A1 (nx5301)) ;
    oai32 ix3379 (.Y (nx3378), .A0 (nx6082), .A1 (nx6118), .A2 (nx5226), .B0 (
          nx5297), .B1 (nx5222)) ;
    xnor2 ix5302 (.Y (nx5301), .A0 (nx5303), .A1 (nx5305)) ;
    xnor2 ix5306 (.Y (nx5305), .A0 (nx5307), .A1 (nx5309)) ;
    aoi32 ix5308 (.Y (nx5307), .A0 (nx5914), .A1 (nx5956), .A2 (nx3294), .B0 (
          nx3274), .B1 (nx3296)) ;
    xnor2 ix5310 (.Y (nx5309), .A0 (nx5311), .A1 (nx5313)) ;
    aoi32 ix5314 (.Y (nx5313), .A0 (nx5906), .A1 (nx5964), .A2 (nx3290), .B0 (
          nx3282), .B1 (nx3292)) ;
    xnor2 ix5320 (.Y (nx5319), .A0 (nx2719), .A1 (nx4382)) ;
    xnor2 ix4383 (.Y (nx4382), .A0 (MAC0_adderB_23), .A1 (RegOut[23])) ;
    dffr MAC0_RegMultOut_reg_Y_24 (.Q (MAC0_adderB_24), .QB (\$dummy [124]), .D (
         nx3770), .CLK (clk), .R (nx5818)) ;
    xnor2 ix3771 (.Y (nx3770), .A0 (nx3430), .A1 (nx5327)) ;
    oai32 ix3431 (.Y (nx3430), .A0 (nx6132), .A1 (nx6078), .A2 (nx5258), .B0 (
          nx5251), .B1 (nx5254)) ;
    xnor2 ix5328 (.Y (nx5327), .A0 (nx5329), .A1 (nx5331)) ;
    xnor2 ix5332 (.Y (nx5331), .A0 (nx5333), .A1 (nx5335)) ;
    aoi32 ix5334 (.Y (nx5333), .A0 (nx5960), .A1 (nx5918), .A2 (nx3418), .B0 (
          nx3338), .B1 (nx3420)) ;
    xnor2 ix5336 (.Y (nx5335), .A0 (nx5337), .A1 (nx5339)) ;
    xnor2 ix5340 (.Y (nx5339), .A0 (nx5341), .A1 (nx5344)) ;
    aoi32 ix5342 (.Y (nx5341), .A0 (nx5954), .A1 (nx5926), .A2 (nx3414), .B0 (
          nx3346), .B1 (nx3416)) ;
    xnor2 ix5345 (.Y (nx5344), .A0 (nx5346), .A1 (nx5348)) ;
    xnor2 ix5349 (.Y (nx5348), .A0 (nx5350), .A1 (nx5353)) ;
    aoi32 ix5351 (.Y (nx5350), .A0 (nx5946), .A1 (nx5934), .A2 (nx3410), .B0 (
          nx3354), .B1 (nx3412)) ;
    xnor2 ix5354 (.Y (nx5353), .A0 (nx5355), .A1 (nx5357)) ;
    xnor2 ix5358 (.Y (nx5357), .A0 (nx5359), .A1 (nx5362)) ;
    aoi32 ix5360 (.Y (nx5359), .A0 (nx5938), .A1 (nx5942), .A2 (nx3406), .B0 (
          nx3362), .B1 (nx3408)) ;
    xnor2 ix5363 (.Y (nx5362), .A0 (nx5364), .A1 (nx5366)) ;
    xnor2 ix5367 (.Y (nx5366), .A0 (nx5368), .A1 (nx5371)) ;
    aoi32 ix5369 (.Y (nx5368), .A0 (nx5930), .A1 (nx5948), .A2 (nx3402), .B0 (
          nx3370), .B1 (nx3404)) ;
    xnor2 ix5372 (.Y (nx5371), .A0 (nx5373), .A1 (nx5375)) ;
    xnor2 ix5376 (.Y (nx5375), .A0 (nx3478), .A1 (nx3488)) ;
    oai32 ix3479 (.Y (nx3478), .A0 (nx6082), .A1 (nx6128), .A2 (nx5305), .B0 (
          nx5378), .B1 (nx5301)) ;
    xnor2 ix3489 (.Y (nx3488), .A0 (nx5383), .A1 (nx3486)) ;
    oai32 ix3487 (.Y (nx3486), .A0 (nx6074), .A1 (nx6136), .A2 (nx5313), .B0 (
          nx5307), .B1 (nx5309)) ;
    xnor2 ix5390 (.Y (nx5389), .A0 (nx2711), .A1 (nx4398)) ;
    xnor2 ix4399 (.Y (nx4398), .A0 (MAC0_adderB_24), .A1 (RegOut[24])) ;
    dffr MAC0_RegMultOut_reg_Y_25 (.Q (MAC0_adderB_25), .QB (\$dummy [125]), .D (
         nx3764), .CLK (clk), .R (nx5818)) ;
    xor2 ix3765 (.Y (nx3764), .A0 (nx3518), .A1 (nx3588)) ;
    oai32 ix3519 (.Y (nx3518), .A0 (nx6132), .A1 (nx6086), .A2 (nx5331), .B0 (
          nx5397), .B1 (nx5327)) ;
    inv01 ix5398 (.Y (nx5397), .A (nx3430)) ;
    xnor2 ix3589 (.Y (nx3588), .A0 (nx5400), .A1 (nx3586)) ;
    xnor2 ix3587 (.Y (nx3586), .A0 (nx3526), .A1 (nx5404)) ;
    oai32 ix3527 (.Y (nx3526), .A0 (nx6122), .A1 (nx6094), .A2 (nx5339), .B0 (
          nx5333), .B1 (nx5335)) ;
    xnor2 ix5405 (.Y (nx5404), .A0 (nx5406), .A1 (nx5408)) ;
    xnor2 ix5409 (.Y (nx5408), .A0 (nx3534), .A1 (nx3580)) ;
    oai32 ix3535 (.Y (nx3534), .A0 (nx6114), .A1 (nx6102), .A2 (nx5348), .B0 (
          nx5341), .B1 (nx5344)) ;
    xnor2 ix3581 (.Y (nx3580), .A0 (nx5412), .A1 (nx3578)) ;
    xnor2 ix3579 (.Y (nx3578), .A0 (nx3542), .A1 (nx5416)) ;
    oai32 ix3543 (.Y (nx3542), .A0 (nx6106), .A1 (nx6110), .A2 (nx5357), .B0 (
          nx5350), .B1 (nx5353)) ;
    xnor2 ix5417 (.Y (nx5416), .A0 (nx5418), .A1 (nx5420)) ;
    xnor2 ix5421 (.Y (nx5420), .A0 (nx3550), .A1 (nx3572)) ;
    oai32 ix3551 (.Y (nx3550), .A0 (nx6098), .A1 (nx6118), .A2 (nx5366), .B0 (
          nx5359), .B1 (nx5362)) ;
    xnor2 ix3573 (.Y (nx3572), .A0 (nx5424), .A1 (nx3570)) ;
    xnor2 ix3571 (.Y (nx3570), .A0 (nx3558), .A1 (nx5428)) ;
    oai32 ix3559 (.Y (nx3558), .A0 (nx6090), .A1 (nx6128), .A2 (nx5375), .B0 (
          nx5368), .B1 (nx5371)) ;
    xnor2 ix5429 (.Y (nx5428), .A0 (nx5430), .A1 (nx5432)) ;
    aoi32 ix5433 (.Y (nx5432), .A0 (nx5922), .A1 (nx5966), .A2 (nx3486), .B0 (
          nx3478), .B1 (nx3488)) ;
    xnor2 ix5438 (.Y (nx5437), .A0 (nx2703), .A1 (nx4414)) ;
    xnor2 ix4415 (.Y (nx4414), .A0 (MAC0_adderB_25), .A1 (RegOut[25])) ;
    dffr MAC0_RegMultOut_reg_Y_26 (.Q (MAC0_adderB_26), .QB (\$dummy [126]), .D (
         nx3758), .CLK (clk), .R (nx5820)) ;
    xnor2 ix3759 (.Y (nx3758), .A0 (nx5444), .A1 (nx3652)) ;
    aoi32 ix5445 (.Y (nx5444), .A0 (nx5970), .A1 (nx5926), .A2 (nx3586), .B0 (
          nx3518), .B1 (nx3588)) ;
    xnor2 ix3653 (.Y (nx3652), .A0 (nx5447), .A1 (nx3650)) ;
    xnor2 ix3651 (.Y (nx3650), .A0 (nx3602), .A1 (nx5453)) ;
    oai32 ix3603 (.Y (nx3602), .A0 (nx6122), .A1 (nx6102), .A2 (nx5408), .B0 (
          nx5451), .B1 (nx5404)) ;
    inv01 ix5452 (.Y (nx5451), .A (nx3526)) ;
    xnor2 ix5454 (.Y (nx5453), .A0 (nx5455), .A1 (nx5457)) ;
    xnor2 ix5458 (.Y (nx5457), .A0 (nx5459), .A1 (nx5461)) ;
    aoi32 ix5460 (.Y (nx5459), .A0 (nx5954), .A1 (nx5942), .A2 (nx3578), .B0 (
          nx3534), .B1 (nx3580)) ;
    xnor2 ix5462 (.Y (nx5461), .A0 (nx5463), .A1 (nx5465)) ;
    xnor2 ix5466 (.Y (nx5465), .A0 (nx3618), .A1 (nx3640)) ;
    oai32 ix3619 (.Y (nx3618), .A0 (nx6106), .A1 (nx6118), .A2 (nx5420), .B0 (
          nx5468), .B1 (nx5416)) ;
    inv01 ix5469 (.Y (nx5468), .A (nx3542)) ;
    xnor2 ix3641 (.Y (nx3640), .A0 (nx5471), .A1 (nx3638)) ;
    xnor2 ix3639 (.Y (nx3638), .A0 (nx5474), .A1 (nx3636)) ;
    aoi32 ix5475 (.Y (nx5474), .A0 (nx5938), .A1 (nx5958), .A2 (nx3570), .B0 (
          nx3550), .B1 (nx3572)) ;
    xnor2 ix3637 (.Y (nx3636), .A0 (nx5477), .A1 (nx3634)) ;
    oai32 ix3635 (.Y (nx3634), .A0 (nx6090), .A1 (nx6136), .A2 (nx5432), .B0 (
          nx5480), .B1 (nx5428)) ;
    inv01 ix5481 (.Y (nx5480), .A (nx3558)) ;
    xnor2 ix5486 (.Y (nx5485), .A0 (nx2695), .A1 (nx4430)) ;
    xnor2 ix4431 (.Y (nx4430), .A0 (MAC0_adderB_26), .A1 (RegOut[26])) ;
    dffr MAC0_RegMultOut_reg_Y_27 (.Q (MAC0_adderB_27), .QB (\$dummy [127]), .D (
         nx3752), .CLK (clk), .R (nx5820)) ;
    xor2 ix3753 (.Y (nx3752), .A0 (nx5492), .A1 (nx5495)) ;
    aoi32 ix5493 (.Y (nx5492), .A0 (nx5970), .A1 (nx5934), .A2 (nx3650), .B0 (
          nx3594), .B1 (nx3652)) ;
    xnor2 ix5496 (.Y (nx5495), .A0 (nx5497), .A1 (nx5499)) ;
    xnor2 ix5500 (.Y (nx5499), .A0 (nx3666), .A1 (nx3700)) ;
    oai32 ix3667 (.Y (nx3666), .A0 (nx6122), .A1 (nx6110), .A2 (nx5457), .B0 (
          nx5502), .B1 (nx5453)) ;
    xnor2 ix3701 (.Y (nx3700), .A0 (nx5507), .A1 (nx3698)) ;
    xnor2 ix3699 (.Y (nx3698), .A0 (nx3674), .A1 (nx5511)) ;
    oai32 ix3675 (.Y (nx3674), .A0 (nx6114), .A1 (nx6118), .A2 (nx5465), .B0 (
          nx5459), .B1 (nx5461)) ;
    xnor2 ix5512 (.Y (nx5511), .A0 (nx5513), .A1 (nx5515)) ;
    xnor2 ix5516 (.Y (nx5515), .A0 (nx5517), .A1 (nx5519)) ;
    aoi32 ix5518 (.Y (nx5517), .A0 (nx5946), .A1 (nx5958), .A2 (nx3638), .B0 (
          nx3618), .B1 (nx3640)) ;
    xnor2 ix5520 (.Y (nx5519), .A0 (nx5521), .A1 (nx5523)) ;
    aoi32 ix5524 (.Y (nx5523), .A0 (nx5938), .A1 (nx5966), .A2 (nx3634), .B0 (
          nx3626), .B1 (nx3636)) ;
    xnor2 ix5530 (.Y (nx5529), .A0 (nx2687), .A1 (nx4446)) ;
    xnor2 ix4447 (.Y (nx4446), .A0 (MAC0_adderB_27), .A1 (RegOut[27])) ;
    dffr MAC0_RegMultOut_reg_Y_28 (.Q (MAC0_adderB_28), .QB (\$dummy [128]), .D (
         nx3746), .CLK (clk), .R (nx5820)) ;
    xnor2 ix3747 (.Y (nx3746), .A0 (nx3710), .A1 (nx5537)) ;
    oai32 ix3711 (.Y (nx3710), .A0 (nx6132), .A1 (nx6110), .A2 (nx5499), .B0 (
          nx5492), .B1 (nx5495)) ;
    xnor2 ix5538 (.Y (nx5537), .A0 (nx5539), .A1 (nx5541)) ;
    xnor2 ix5542 (.Y (nx5541), .A0 (nx5543), .A1 (nx5545)) ;
    aoi32 ix5544 (.Y (nx5543), .A0 (nx5962), .A1 (nx5950), .A2 (nx3698), .B0 (
          nx3666), .B1 (nx3700)) ;
    xnor2 ix5546 (.Y (nx5545), .A0 (nx5547), .A1 (nx5549)) ;
    xnor2 ix5550 (.Y (nx5549), .A0 (nx3726), .A1 (nx3736)) ;
    oai32 ix3727 (.Y (nx3726), .A0 (nx6114), .A1 (nx6128), .A2 (nx5515), .B0 (
          nx5552), .B1 (nx5511)) ;
    inv01 ix5553 (.Y (nx5552), .A (nx3674)) ;
    xnor2 ix3737 (.Y (nx3736), .A0 (nx5555), .A1 (nx3734)) ;
    oai32 ix3735 (.Y (nx3734), .A0 (nx6106), .A1 (nx6136), .A2 (nx5523), .B0 (
          nx5517), .B1 (nx5519)) ;
    xnor2 ix5562 (.Y (nx5561), .A0 (nx2679), .A1 (nx4462)) ;
    xnor2 ix4463 (.Y (nx4462), .A0 (MAC0_adderB_28), .A1 (RegOut[28])) ;
    dffr MAC0_RegMultOut_reg_Y_29 (.Q (MAC0_adderB_29), .QB (\$dummy [129]), .D (
         nx4502), .CLK (clk), .R (nx5820)) ;
    xor2 ix4503 (.Y (nx4502), .A0 (nx4478), .A1 (nx4500)) ;
    oai32 ix4479 (.Y (nx4478), .A0 (nx6132), .A1 (nx6118), .A2 (nx5541), .B0 (
          nx5569), .B1 (nx5537)) ;
    inv01 ix5570 (.Y (nx5569), .A (nx3710)) ;
    xnor2 ix4501 (.Y (nx4500), .A0 (nx5572), .A1 (nx4498)) ;
    xnor2 ix4499 (.Y (nx4498), .A0 (nx4486), .A1 (nx5576)) ;
    oai32 ix4487 (.Y (nx4486), .A0 (nx6122), .A1 (nx6128), .A2 (nx5549), .B0 (
          nx5543), .B1 (nx5545)) ;
    xnor2 ix5577 (.Y (nx5576), .A0 (nx5578), .A1 (nx5580)) ;
    aoi32 ix5581 (.Y (nx5580), .A0 (nx5954), .A1 (nx5966), .A2 (nx3734), .B0 (
          nx3726), .B1 (nx3736)) ;
    dffr MISR0_reg_internal_reg_30 (.Q (MISR_out_30), .QB (nx5584), .D (nx2309)
         , .CLK (clk), .R (nx5820)) ;
    dffr MAC0_BigBoyReg_reg_Y_30 (.Q (RegOut[30]), .QB (\$dummy [130]), .D (
         nx1989), .CLK (clk), .R (nx5820)) ;
    mux21 ix1990 (.Y (nx1989), .A0 (RegOut[30]), .A1 (nx4548), .S0 (WE)) ;
    aoi22 ix5593 (.Y (nx5592), .A0 (RegOut[29]), .A1 (nx4472), .B0 (
          MAC0_adderB_29), .B1 (nx5595)) ;
    xnor2 ix5596 (.Y (nx5595), .A0 (nx2671), .A1 (nx4508)) ;
    xnor2 ix4509 (.Y (nx4508), .A0 (MAC0_adderB_29), .A1 (RegOut[29])) ;
    dffr MAC0_RegMultOut_reg_Y_30 (.Q (MAC0_adderB_30), .QB (\$dummy [131]), .D (
         nx4540), .CLK (clk), .R (nx5820)) ;
    xnor2 ix4541 (.Y (nx4540), .A0 (nx5602), .A1 (nx4538)) ;
    aoi32 ix5603 (.Y (nx5602), .A0 (nx5970), .A1 (nx5958), .A2 (nx4498), .B0 (
          nx4478), .B1 (nx4500)) ;
    xnor2 ix4539 (.Y (nx4538), .A0 (nx5605), .A1 (nx4536)) ;
    oai32 ix4537 (.Y (nx4536), .A0 (nx6122), .A1 (nx6136), .A2 (nx5580), .B0 (
          nx5608), .B1 (nx5576)) ;
    inv01 ix5609 (.Y (nx5608), .A (nx4486)) ;
    dffr MISR0_reg_internal_reg_31 (.Q (MISR_out_31), .QB (\$dummy [132]), .D (
         nx2299), .CLK (clk), .R (nx5820)) ;
    dffr MAC0_BigBoyReg_reg_Y_31 (.Q (RegOut[31]), .QB (\$dummy [133]), .D (
         nx1999), .CLK (clk), .R (nx5820)) ;
    mux21 ix2000 (.Y (nx1999), .A0 (RegOut[31]), .A1 (nx4574), .S0 (WE)) ;
    xnor2 ix4575 (.Y (nx4574), .A0 (nx5620), .A1 (nx5626)) ;
    aoi22 ix5621 (.Y (nx5620), .A0 (RegOut[30]), .A1 (nx4522), .B0 (
          MAC0_adderB_30), .B1 (nx5623)) ;
    xnor2 ix5624 (.Y (nx5623), .A0 (nx5592), .A1 (nx4546)) ;
    xnor2 ix4547 (.Y (nx4546), .A0 (MAC0_adderB_30), .A1 (RegOut[30])) ;
    xor2 ix5627 (.Y (nx5626), .A0 (MAC0_adderB_31), .A1 (RegOut[31])) ;
    dffr MAC0_RegMultOut_reg_Y_31 (.Q (MAC0_adderB_31), .QB (\$dummy [134]), .D (
         nx4566), .CLK (clk), .R (nx5820)) ;
    dffr MISR0_reg_internal_reg_0 (.Q (MISR_out_0), .QB (nx5633), .D (nx2289), .CLK (
         clk), .R (nx5820)) ;
    dffr MISR0_reg_internal_reg_1 (.Q (MISR_out_1), .QB (nx5638), .D (nx2279), .CLK (
         clk), .R (nx5822)) ;
    dffr MISR0_reg_internal_reg_2 (.Q (MISR_out_2), .QB (nx5643), .D (nx2269), .CLK (
         clk), .R (nx5822)) ;
    dffs MISR0_reg_internal_reg_3 (.Q (MISR_out_3), .QB (nx5648), .D (nx2259), .CLK (
         clk), .S (nx5822)) ;
    dffs MISR0_reg_internal_reg_4 (.Q (MISR_out_4), .QB (nx5653), .D (nx2249), .CLK (
         clk), .S (nx5822)) ;
    dffs MISR0_reg_internal_reg_5 (.Q (MISR_out_5), .QB (\$dummy [135]), .D (
         nx2239), .CLK (clk), .S (nx5822)) ;
    dffs MISR0_reg_internal_reg_6 (.Q (MISR_out_6), .QB (\$dummy [136]), .D (
         nx2229), .CLK (clk), .S (nx5822)) ;
    dffr MISR0_reg_internal_reg_7 (.Q (MISR_out_7), .QB (\$dummy [137]), .D (
         nx2219), .CLK (clk), .R (nx5822)) ;
    dffr MISR0_reg_internal_reg_8 (.Q (MISR_out_8), .QB (\$dummy [138]), .D (
         nx2209), .CLK (clk), .R (nx5822)) ;
    dffs MISR0_reg_internal_reg_9 (.Q (MISR_out_9), .QB (nx5678), .D (nx2199), .CLK (
         clk), .S (nx5822)) ;
    dffs MISR0_reg_internal_reg_10 (.Q (MISR_out_10), .QB (nx5683), .D (nx2189)
         , .CLK (clk), .S (nx5822)) ;
    dffr MISR0_reg_internal_reg_11 (.Q (MISR_out_11), .QB (nx5688), .D (nx2179)
         , .CLK (clk), .R (nx5822)) ;
    dffs MISR0_reg_internal_reg_12 (.Q (MISR_out_12), .QB (nx5693), .D (nx2169)
         , .CLK (clk), .S (nx5822)) ;
    dffr MISR0_reg_internal_reg_13 (.Q (MISR_out_13), .QB (nx5698), .D (nx2159)
         , .CLK (clk), .R (nx5822)) ;
    dffs MISR0_reg_internal_reg_14 (.Q (MISR_out_14), .QB (nx5703), .D (nx2149)
         , .CLK (clk), .S (nx5822)) ;
    dffr MISR0_reg_internal_reg_15 (.Q (MISR_out_15), .QB (nx5708), .D (nx2139)
         , .CLK (clk), .R (nx5822)) ;
    dffr MISR0_reg_internal_reg_16 (.Q (MISR_out_16), .QB (nx5713), .D (nx2129)
         , .CLK (clk), .R (nx5824)) ;
    dffr MISR0_reg_internal_reg_17 (.Q (MISR_out_17), .QB (nx5718), .D (nx2119)
         , .CLK (clk), .R (nx5824)) ;
    dffs MISR0_reg_internal_reg_18 (.Q (MISR_out_18), .QB (nx5723), .D (nx2109)
         , .CLK (clk), .S (nx5824)) ;
    dffr MISR0_reg_internal_reg_19 (.Q (MISR_out_19), .QB (nx5728), .D (nx2099)
         , .CLK (clk), .R (nx5824)) ;
    dffs MISR0_reg_internal_reg_20 (.Q (MISR_out_20), .QB (nx5782), .D (nx2089)
         , .CLK (clk), .S (nx5824)) ;
    dffs MISR0_reg_internal_reg_21 (.Q (MISR_out_21), .QB (nx5738), .D (nx2079)
         , .CLK (clk), .S (nx5824)) ;
    dffr MISR0_reg_internal_reg_22 (.Q (MISR_out_22), .QB (nx5743), .D (nx2069)
         , .CLK (clk), .R (nx5824)) ;
    dffr MISR0_reg_internal_reg_23 (.Q (MISR_out_23), .QB (\$dummy [139]), .D (
         nx2059), .CLK (clk), .R (nx5824)) ;
    dffr MISR0_reg_internal_reg_24 (.Q (MISR_out_24), .QB (nx5753), .D (nx2049)
         , .CLK (clk), .R (nx5824)) ;
    xnor2 ix5759 (.Y (nx5758), .A0 (RegOut[24]), .A1 (MISR_out_25)) ;
    dffs MISR0_reg_internal_reg_25 (.Q (MISR_out_25), .QB (\$dummy [140]), .D (
         nx2039), .CLK (clk), .S (nx5824)) ;
    dffr MISR0_reg_internal_reg_26 (.Q (MISR_out_26), .QB (nx5780), .D (nx2029)
         , .CLK (clk), .R (nx5824)) ;
    dffr MISR0_reg_internal_reg_27 (.Q (MISR_out_27), .QB (\$dummy [141]), .D (
         nx2019), .CLK (clk), .R (nx5824)) ;
    dffs MISR0_reg_internal_reg_28 (.Q (MISR_out_28), .QB (nx5773), .D (nx2009)
         , .CLK (clk), .S (nx5824)) ;
    dffr MISR0_reg_internal_reg_29 (.Q (MISR_out_29), .QB (nx5778), .D (nx2319)
         , .CLK (clk), .R (nx5824)) ;
    nand04 ix5789 (.Y (nx5788), .A0 (nx4838), .A1 (nx4848), .A2 (nx4860), .A3 (
           nx4870)) ;
    inv01 ix4549 (.Y (nx4548), .A (nx5623)) ;
    inv01 ix4523 (.Y (nx4522), .A (nx5592)) ;
    inv01 ix4511 (.Y (nx4510), .A (nx5595)) ;
    inv01 ix4473 (.Y (nx4472), .A (nx2671)) ;
    inv01 ix4465 (.Y (nx1041), .A (nx5561)) ;
    inv01 ix4457 (.Y (nx4456), .A (nx2679)) ;
    inv01 ix4449 (.Y (nx1039), .A (nx5529)) ;
    inv01 ix4441 (.Y (nx4440), .A (nx2687)) ;
    inv01 ix4433 (.Y (nx1037), .A (nx5485)) ;
    inv01 ix4425 (.Y (nx4424), .A (nx2695)) ;
    inv01 ix4417 (.Y (nx1035), .A (nx5437)) ;
    inv01 ix4409 (.Y (nx4408), .A (nx2703)) ;
    inv01 ix4401 (.Y (nx1033), .A (nx5389)) ;
    inv01 ix4393 (.Y (nx4392), .A (nx2711)) ;
    inv01 ix4385 (.Y (nx1031), .A (nx5319)) ;
    inv01 ix4377 (.Y (nx4376), .A (nx2719)) ;
    inv01 ix4369 (.Y (nx1029), .A (nx5244)) ;
    inv01 ix4361 (.Y (nx4360), .A (nx2727)) ;
    inv01 ix4353 (.Y (nx1027), .A (nx5170)) ;
    inv01 ix4345 (.Y (nx4344), .A (nx2735)) ;
    inv01 ix4337 (.Y (nx1025), .A (nx5085)) ;
    inv01 ix4329 (.Y (nx4328), .A (nx2743)) ;
    inv01 ix4321 (.Y (nx1023), .A (nx4999)) ;
    inv01 ix4313 (.Y (nx4312), .A (nx2751)) ;
    inv01 ix4305 (.Y (nx1021), .A (nx4889)) ;
    inv01 ix4297 (.Y (nx4296), .A (nx2759)) ;
    inv01 ix4289 (.Y (nx1019), .A (nx4763)) ;
    inv01 ix4281 (.Y (nx4280), .A (nx2767)) ;
    inv01 ix4273 (.Y (nx1017), .A (nx4665)) ;
    inv01 ix4265 (.Y (nx4264), .A (nx2775)) ;
    inv01 ix4257 (.Y (nx1015), .A (nx4507)) ;
    inv01 ix4249 (.Y (nx4248), .A (nx2783)) ;
    inv01 ix4241 (.Y (nx1013), .A (nx4347)) ;
    inv01 ix4233 (.Y (nx4232), .A (nx2791)) ;
    inv01 ix4225 (.Y (nx1011), .A (nx4201)) ;
    inv01 ix4217 (.Y (nx4216), .A (nx2799)) ;
    inv01 ix4209 (.Y (nx1009), .A (nx4061)) ;
    inv01 ix4201 (.Y (nx4200), .A (nx2807)) ;
    inv01 ix4193 (.Y (nx1007), .A (nx3939)) ;
    inv01 ix4185 (.Y (nx4184), .A (nx2815)) ;
    inv01 ix4177 (.Y (nx1005), .A (nx3823)) ;
    inv01 ix4169 (.Y (nx4168), .A (nx2823)) ;
    inv01 ix4161 (.Y (nx1003), .A (nx3725)) ;
    inv01 ix4153 (.Y (nx4152), .A (nx2831)) ;
    inv01 ix4145 (.Y (nx1001), .A (nx3615)) ;
    inv01 ix4137 (.Y (nx4136), .A (nx2839)) ;
    inv01 ix4129 (.Y (nx1000), .A (nx3515)) ;
    inv01 ix4121 (.Y (nx4120), .A (nx2847)) ;
    inv01 ix4113 (.Y (nx999), .A (nx3425)) ;
    inv01 ix4105 (.Y (nx4104), .A (nx2855)) ;
    inv01 ix4097 (.Y (nx998), .A (nx3347)) ;
    inv01 ix4089 (.Y (nx4088), .A (nx2863)) ;
    inv01 ix4081 (.Y (nx997), .A (nx3279)) ;
    inv01 ix4073 (.Y (nx4072), .A (nx2871)) ;
    inv01 ix4065 (.Y (nx995), .A (nx3225)) ;
    inv01 ix4057 (.Y (nx4056), .A (nx2879)) ;
    inv01 ix4049 (.Y (nx993), .A (nx3179)) ;
    inv01 ix4041 (.Y (nx4040), .A (nx2887)) ;
    inv01 ix4031 (.Y (nx991), .A (nx3143)) ;
    inv01 ix3627 (.Y (nx3626), .A (nx5474)) ;
    inv01 ix5503 (.Y (nx5502), .A (nx3602)) ;
    inv01 ix3595 (.Y (nx3594), .A (nx5444)) ;
    inv01 ix5379 (.Y (nx5378), .A (nx3378)) ;
    inv01 ix3371 (.Y (nx3370), .A (nx5289)) ;
    inv01 ix3363 (.Y (nx3362), .A (nx5282)) ;
    inv01 ix3355 (.Y (nx3354), .A (nx5275)) ;
    inv01 ix3347 (.Y (nx3346), .A (nx5269)) ;
    inv01 ix3283 (.Y (nx3282), .A (nx5233)) ;
    inv01 ix5298 (.Y (nx5297), .A (nx3266)) ;
    inv01 ix3259 (.Y (nx3258), .A (nx5210)) ;
    inv01 ix3251 (.Y (nx3250), .A (nx5203)) ;
    inv01 ix3243 (.Y (nx3242), .A (nx5197)) ;
    inv01 ix5262 (.Y (nx5261), .A (nx3226)) ;
    inv01 ix3219 (.Y (nx3218), .A (nx5177)) ;
    inv01 ix5219 (.Y (nx5218), .A (nx3142)) ;
    inv01 ix3135 (.Y (nx3134), .A (nx5127)) ;
    inv01 ix3127 (.Y (nx3126), .A (nx5121)) ;
    inv01 ix5136 (.Y (nx5135), .A (nx3006)) ;
    inv01 ix2999 (.Y (nx2998), .A (nx5040)) ;
    inv01 ix2747 (.Y (nx2746), .A (nx4877)) ;
    inv01 ix4973 (.Y (nx4972), .A (nx2722)) ;
    inv01 ix2715 (.Y (nx2714), .A (nx4841)) ;
    inv01 ix4940 (.Y (nx4939), .A (nx2690)) ;
    inv01 ix2683 (.Y (nx2682), .A (nx4805)) ;
    inv01 ix4907 (.Y (nx4906), .A (nx2658)) ;
    inv01 ix2651 (.Y (nx2650), .A (nx4771)) ;
    inv01 ix4675 (.Y (nx4674), .A (nx2300)) ;
    inv01 ix4657 (.Y (nx4656), .A (nx2212)) ;
    inv01 ix2205 (.Y (nx2204), .A (nx4475)) ;
    inv01 ix2197 (.Y (nx2196), .A (nx4465)) ;
    inv01 ix2189 (.Y (nx2188), .A (nx4457)) ;
    inv01 ix2181 (.Y (nx2180), .A (nx4447)) ;
    inv01 ix2173 (.Y (nx2172), .A (nx4437)) ;
    inv01 ix2165 (.Y (nx2164), .A (nx4428)) ;
    inv01 ix2157 (.Y (nx2156), .A (nx4419)) ;
    inv01 ix2149 (.Y (nx2148), .A (nx4411)) ;
    inv01 ix2141 (.Y (nx2140), .A (nx4401)) ;
    inv01 ix2133 (.Y (nx2132), .A (nx4393)) ;
    inv01 ix2125 (.Y (nx2124), .A (nx4383)) ;
    inv01 ix2117 (.Y (nx2116), .A (nx4375)) ;
    inv01 ix4488 (.Y (nx4487), .A (nx2024)) ;
    inv01 ix2017 (.Y (nx2016), .A (nx4315)) ;
    inv01 ix2009 (.Y (nx2008), .A (nx4305)) ;
    inv01 ix2001 (.Y (nx2000), .A (nx4297)) ;
    inv01 ix1993 (.Y (nx1992), .A (nx4287)) ;
    inv01 ix1985 (.Y (nx1984), .A (nx4277)) ;
    inv01 ix1977 (.Y (nx1976), .A (nx4268)) ;
    inv01 ix1969 (.Y (nx1968), .A (nx4259)) ;
    inv01 ix1961 (.Y (nx1960), .A (nx4251)) ;
    inv01 ix1953 (.Y (nx1952), .A (nx4241)) ;
    inv01 ix1945 (.Y (nx1944), .A (nx4233)) ;
    inv01 ix1937 (.Y (nx1936), .A (nx4225)) ;
    inv01 ix4326 (.Y (nx4325), .A (nx1848)) ;
    inv01 ix1841 (.Y (nx1840), .A (nx4169)) ;
    inv01 ix1833 (.Y (nx1832), .A (nx4159)) ;
    inv01 ix1825 (.Y (nx1824), .A (nx4149)) ;
    inv01 ix1817 (.Y (nx1816), .A (nx4140)) ;
    inv01 ix1809 (.Y (nx1808), .A (nx4131)) ;
    inv01 ix1801 (.Y (nx1800), .A (nx4123)) ;
    inv01 ix1793 (.Y (nx1792), .A (nx4113)) ;
    inv01 ix1785 (.Y (nx1784), .A (nx4105)) ;
    inv01 ix1777 (.Y (nx1776), .A (nx4095)) ;
    inv01 ix1769 (.Y (nx1768), .A (nx4089)) ;
    inv01 ix4180 (.Y (nx4179), .A (nx1684)) ;
    inv01 ix1677 (.Y (nx1676), .A (nx4031)) ;
    inv01 ix1669 (.Y (nx1668), .A (nx4023)) ;
    inv01 ix1661 (.Y (nx1660), .A (nx4015)) ;
    inv01 ix1653 (.Y (nx1652), .A (nx4007)) ;
    inv01 ix1645 (.Y (nx1644), .A (nx3999)) ;
    inv01 ix1637 (.Y (nx1636), .A (nx3990)) ;
    inv01 ix1629 (.Y (nx1628), .A (nx3981)) ;
    inv01 ix1621 (.Y (nx1620), .A (nx3973)) ;
    inv01 ix1613 (.Y (nx1612), .A (nx3965)) ;
    inv01 ix4044 (.Y (nx4043), .A (nx1532)) ;
    inv01 ix1525 (.Y (nx1524), .A (nx3909)) ;
    inv01 ix1517 (.Y (nx1516), .A (nx3899)) ;
    inv01 ix1509 (.Y (nx1508), .A (nx3891)) ;
    inv01 ix1501 (.Y (nx1500), .A (nx3882)) ;
    inv01 ix1493 (.Y (nx1492), .A (nx3873)) ;
    inv01 ix1485 (.Y (nx1484), .A (nx3865)) ;
    inv01 ix1477 (.Y (nx1476), .A (nx3857)) ;
    inv01 ix1469 (.Y (nx1468), .A (nx3849)) ;
    inv01 ix3920 (.Y (nx3919), .A (nx1392)) ;
    inv01 ix1385 (.Y (nx1384), .A (nx3798)) ;
    inv01 ix1377 (.Y (nx1376), .A (nx3791)) ;
    inv01 ix1369 (.Y (nx1368), .A (nx3783)) ;
    inv01 ix1361 (.Y (nx1360), .A (nx3774)) ;
    inv01 ix1353 (.Y (nx1352), .A (nx3767)) ;
    inv01 ix1345 (.Y (nx1344), .A (nx3759)) ;
    inv01 ix1337 (.Y (nx1336), .A (nx3753)) ;
    inv01 ix3808 (.Y (nx3807), .A (nx1264)) ;
    inv01 ix1257 (.Y (nx1256), .A (nx3691)) ;
    inv01 ix1249 (.Y (nx1248), .A (nx3681)) ;
    inv01 ix1241 (.Y (nx1240), .A (nx3671)) ;
    inv01 ix1233 (.Y (nx1232), .A (nx3661)) ;
    inv01 ix1225 (.Y (nx1224), .A (nx3651)) ;
    inv01 ix1217 (.Y (nx1216), .A (nx3643)) ;
    inv01 ix3704 (.Y (nx3703), .A (nx1148)) ;
    inv01 ix1141 (.Y (nx1140), .A (nx3581)) ;
    inv01 ix1133 (.Y (nx1132), .A (nx3571)) ;
    inv01 ix1125 (.Y (nx1124), .A (nx3561)) ;
    inv01 ix1117 (.Y (nx1116), .A (nx3551)) ;
    inv01 ix1109 (.Y (nx1108), .A (nx3543)) ;
    inv01 ix3594 (.Y (nx3593), .A (nx1044)) ;
    inv01 ix1037 (.Y (nx1036), .A (nx3481)) ;
    inv01 ix1029 (.Y (nx1028), .A (nx3471)) ;
    inv01 ix1021 (.Y (nx1020), .A (nx3461)) ;
    inv01 ix1013 (.Y (nx1012), .A (nx3453)) ;
    inv01 ix3494 (.Y (nx3493), .A (nx952)) ;
    inv01 ix945 (.Y (nx944), .A (nx3391)) ;
    inv01 ix937 (.Y (nx936), .A (nx3381)) ;
    inv01 ix929 (.Y (nx928), .A (nx3373)) ;
    inv01 ix3404 (.Y (nx3403), .A (nx872)) ;
    inv01 ix865 (.Y (nx864), .A (nx3313)) ;
    inv01 ix857 (.Y (nx856), .A (nx3305)) ;
    inv01 ix3326 (.Y (nx3325), .A (nx804)) ;
    inv01 ix797 (.Y (nx796), .A (nx3251)) ;
    inv01 ix3262 (.Y (nx3261), .A (nx748)) ;
    inv01 ix705 (.Y (nx704), .A (nx3207)) ;
    inv02 ix5799 (.Y (nx5800), .A (reset)) ;
    inv02 ix5801 (.Y (nx5802), .A (reset)) ;
    inv02 ix5803 (.Y (nx5804), .A (reset)) ;
    inv02 ix5805 (.Y (nx5806), .A (reset)) ;
    inv02 ix5807 (.Y (nx5808), .A (reset)) ;
    inv02 ix5809 (.Y (nx5810), .A (reset)) ;
    inv02 ix5811 (.Y (nx5812), .A (reset)) ;
    inv02 ix5813 (.Y (nx5814), .A (reset)) ;
    inv02 ix5815 (.Y (nx5816), .A (reset)) ;
    inv02 ix5817 (.Y (nx5818), .A (reset)) ;
    inv02 ix5819 (.Y (nx5820), .A (reset)) ;
    inv02 ix5821 (.Y (nx5822), .A (reset)) ;
    inv02 ix5823 (.Y (nx5824), .A (reset)) ;
    inv01 ix5843 (.Y (nx5844), .A (nx3135)) ;
    inv01 ix5847 (.Y (nx5848), .A (nx3131)) ;
    inv01 ix5849 (.Y (nx5850), .A (nx6016)) ;
    buf02 ix5851 (.Y (nx5852), .A (MAC0_MultA_0)) ;
    buf02 ix5853 (.Y (nx5854), .A (MAC0_MultA_0)) ;
    inv01 ix5855 (.Y (nx5856), .A (nx6140)) ;
    inv01 ix5859 (.Y (nx5860), .A (nx3173)) ;
    inv01 ix5861 (.Y (nx5862), .A (nx6030)) ;
    inv01 ix5863 (.Y (nx5864), .A (nx3159)) ;
    inv01 ix5865 (.Y (nx5866), .A (nx6026)) ;
    inv01 ix5867 (.Y (nx5868), .A (nx3219)) ;
    inv01 ix5869 (.Y (nx5870), .A (nx6038)) ;
    inv01 ix5871 (.Y (nx5872), .A (nx3195)) ;
    inv01 ix5873 (.Y (nx5874), .A (nx6034)) ;
    inv01 ix5875 (.Y (nx5876), .A (nx3273)) ;
    inv01 ix5877 (.Y (nx5878), .A (nx6046)) ;
    inv01 ix5879 (.Y (nx5880), .A (nx3241)) ;
    inv01 ix5881 (.Y (nx5882), .A (nx6042)) ;
    inv01 ix5883 (.Y (nx5884), .A (nx3341)) ;
    inv01 ix5885 (.Y (nx5886), .A (nx6054)) ;
    inv01 ix5887 (.Y (nx5888), .A (nx3295)) ;
    inv01 ix5889 (.Y (nx5890), .A (nx6050)) ;
    inv01 ix5891 (.Y (nx5892), .A (nx3419)) ;
    inv01 ix5893 (.Y (nx5894), .A (nx6062)) ;
    inv01 ix5895 (.Y (nx5896), .A (nx3363)) ;
    inv01 ix5897 (.Y (nx5898), .A (nx6058)) ;
    inv01 ix5899 (.Y (nx5900), .A (nx3509)) ;
    inv01 ix5901 (.Y (nx5902), .A (nx6070)) ;
    inv01 ix5903 (.Y (nx5904), .A (nx3441)) ;
    inv01 ix5905 (.Y (nx5906), .A (nx6066)) ;
    inv01 ix5907 (.Y (nx5908), .A (nx3609)) ;
    inv01 ix5909 (.Y (nx5910), .A (nx6078)) ;
    inv01 ix5911 (.Y (nx5912), .A (nx3531)) ;
    inv01 ix5913 (.Y (nx5914), .A (nx6074)) ;
    inv01 ix5915 (.Y (nx5916), .A (nx3719)) ;
    inv01 ix5917 (.Y (nx5918), .A (nx6086)) ;
    inv01 ix5919 (.Y (nx5920), .A (nx3631)) ;
    inv01 ix5921 (.Y (nx5922), .A (nx6082)) ;
    inv01 ix5923 (.Y (nx5924), .A (nx3819)) ;
    inv01 ix5925 (.Y (nx5926), .A (nx6094)) ;
    inv01 ix5927 (.Y (nx5928), .A (nx3741)) ;
    inv01 ix5929 (.Y (nx5930), .A (nx6090)) ;
    inv01 ix5931 (.Y (nx5932), .A (nx3933)) ;
    inv01 ix5933 (.Y (nx5934), .A (nx6102)) ;
    inv01 ix5935 (.Y (nx5936), .A (nx3837)) ;
    inv01 ix5937 (.Y (nx5938), .A (nx6098)) ;
    inv01 ix5939 (.Y (nx5940), .A (nx4057)) ;
    inv01 ix5941 (.Y (nx5942), .A (nx6110)) ;
    inv01 ix5943 (.Y (nx5944), .A (nx3953)) ;
    inv01 ix5945 (.Y (nx5946), .A (nx6106)) ;
    inv01 ix5947 (.Y (nx5948), .A (nx4195)) ;
    inv01 ix5949 (.Y (nx5950), .A (nx6118)) ;
    inv01 ix5951 (.Y (nx5952), .A (nx4076)) ;
    inv01 ix5953 (.Y (nx5954), .A (nx6114)) ;
    inv01 ix5955 (.Y (nx5956), .A (nx4341)) ;
    inv01 ix5957 (.Y (nx5958), .A (nx6128)) ;
    inv01 ix5959 (.Y (nx5960), .A (nx4215)) ;
    inv01 ix5961 (.Y (nx5962), .A (nx6122)) ;
    inv01 ix5963 (.Y (nx5964), .A (nx4503)) ;
    inv01 ix5965 (.Y (nx5966), .A (nx6136)) ;
    inv01 ix5967 (.Y (nx5968), .A (nx4363)) ;
    inv01 ix5969 (.Y (nx5970), .A (nx6132)) ;
    inv02 ix5971 (.Y (nx5972), .A (MAC0_MultB_0)) ;
    inv02 ix5973 (.Y (nx5974), .A (MAC0_MultB_0)) ;
    or04 ix505 (.Y (nx504), .A0 (CounterOut_0), .A1 (CounterOut_1), .A2 (
         CounterOut_2), .A3 (nx5980)) ;
    inv01 ix5979 (.Y (nx5980), .A (CounterOut_3)) ;
    xor2 ix1050 (.Y (nx1049), .A0 (nx2339), .A1 (nx5998)) ;
    or02 ix25 (.Y (nx987), .A0 (nx2339), .A1 (nx2349)) ;
    mux21 ix1070 (.Y (nx1069), .A0 (nx30), .A1 (CounterOut_2), .S0 (nx5998)) ;
    xor2 ix31 (.Y (nx30), .A0 (nx987), .A1 (nx2361)) ;
    mux21 ix1080 (.Y (nx1079), .A0 (nx44), .A1 (CounterOut_3), .S0 (nx5998)) ;
    or03 ix39 (.Y (nx985), .A0 (nx2339), .A1 (nx2349), .A2 (nx2361)) ;
    or04 ix497 (.Y (nx496), .A0 (CounterOut_4), .A1 (nx2397), .A2 (nx2407), .A3 (
         nx2415)) ;
    mux21 ix1090 (.Y (nx1089), .A0 (nx58), .A1 (CounterOut_4), .S0 (nx5998)) ;
    or04 ix53 (.Y (nx983), .A0 (nx2339), .A1 (nx2349), .A2 (nx2361), .A3 (nx5980
         )) ;
    nor02ii ix2390 (.Y (nx2389), .A0 (nx983), .A1 (CounterOut_4)) ;
    mux21 ix1100 (.Y (nx1099), .A0 (nx72), .A1 (CounterOut_5), .S0 (nx5998)) ;
    xor2 ix73 (.Y (nx72), .A0 (nx2389), .A1 (CounterOut_5)) ;
    mux21 ix1110 (.Y (nx1109), .A0 (nx86), .A1 (CounterOut_6), .S0 (nx5998)) ;
    xor2 ix87 (.Y (nx86), .A0 (nx979), .A1 (nx2407)) ;
    mux21 ix1120 (.Y (nx1119), .A0 (nx100), .A1 (CounterOut_7), .S0 (nx5998)) ;
    xor2 ix101 (.Y (nx100), .A0 (nx2413), .A1 (CounterOut_7)) ;
    nor02ii ix2414 (.Y (nx2413), .A0 (nx979), .A1 (CounterOut_6)) ;
    mux21 ix1130 (.Y (nx1129), .A0 (nx114), .A1 (CounterOut_8), .S0 (nx5998)) ;
    xor2 ix115 (.Y (nx114), .A0 (nx975), .A1 (nx2427)) ;
    mux21 ix1140 (.Y (nx1139), .A0 (nx128), .A1 (CounterOut_9), .S0 (nx5998)) ;
    xor2 ix129 (.Y (nx128), .A0 (nx2433), .A1 (CounterOut_9)) ;
    nor02ii ix2434 (.Y (nx2433), .A0 (nx975), .A1 (CounterOut_8)) ;
    and02 ix2438 (.Y (nx2437), .A0 (nx2447), .A1 (nx2455)) ;
    mux21 ix1150 (.Y (nx1149), .A0 (nx142), .A1 (CounterOut_10), .S0 (nx5998)) ;
    xor2 ix143 (.Y (nx142), .A0 (nx971), .A1 (nx2447)) ;
    mux21 ix1160 (.Y (nx1159), .A0 (nx156), .A1 (CounterOut_11), .S0 (nx5998)) ;
    xor2 ix157 (.Y (nx156), .A0 (nx2453), .A1 (CounterOut_11)) ;
    nor02ii ix2454 (.Y (nx2453), .A0 (nx971), .A1 (CounterOut_10)) ;
    and04 ix2458 (.Y (nx2457), .A0 (nx2467), .A1 (nx2475), .A2 (nx2485), .A3 (
          nx2493)) ;
    mux21 ix1170 (.Y (nx1169), .A0 (nx170), .A1 (CounterOut_12), .S0 (nx5998)) ;
    xor2 ix171 (.Y (nx170), .A0 (nx967), .A1 (nx2467)) ;
    mux21 ix1180 (.Y (nx1179), .A0 (nx184), .A1 (CounterOut_13), .S0 (nx5998)) ;
    xor2 ix185 (.Y (nx184), .A0 (nx2473), .A1 (CounterOut_13)) ;
    nor02ii ix2474 (.Y (nx2473), .A0 (nx967), .A1 (CounterOut_12)) ;
    mux21 ix1190 (.Y (nx1189), .A0 (nx198), .A1 (CounterOut_14), .S0 (nx6000)) ;
    xor2 ix199 (.Y (nx198), .A0 (nx965), .A1 (nx2485)) ;
    mux21 ix1200 (.Y (nx1199), .A0 (nx212), .A1 (CounterOut_15), .S0 (nx6000)) ;
    xor2 ix213 (.Y (nx212), .A0 (nx2491), .A1 (CounterOut_15)) ;
    nor02ii ix2492 (.Y (nx2491), .A0 (nx965), .A1 (CounterOut_14)) ;
    and04 ix2498 (.Y (nx2497), .A0 (nx2507), .A1 (nx2515), .A2 (nx2525), .A3 (
          nx2533)) ;
    mux21 ix1210 (.Y (nx1209), .A0 (nx226), .A1 (CounterOut_16), .S0 (nx6000)) ;
    xor2 ix227 (.Y (nx226), .A0 (nx963), .A1 (nx2507)) ;
    mux21 ix1220 (.Y (nx1219), .A0 (nx240), .A1 (CounterOut_17), .S0 (nx6000)) ;
    xor2 ix241 (.Y (nx240), .A0 (nx2513), .A1 (CounterOut_17)) ;
    nor02ii ix2514 (.Y (nx2513), .A0 (nx963), .A1 (CounterOut_16)) ;
    mux21 ix1230 (.Y (nx1229), .A0 (nx254), .A1 (CounterOut_18), .S0 (nx6000)) ;
    xor2 ix255 (.Y (nx254), .A0 (nx959), .A1 (nx2525)) ;
    mux21 ix1240 (.Y (nx1239), .A0 (nx268), .A1 (CounterOut_19), .S0 (nx6000)) ;
    xor2 ix269 (.Y (nx268), .A0 (nx2531), .A1 (CounterOut_19)) ;
    nor02ii ix2532 (.Y (nx2531), .A0 (nx959), .A1 (CounterOut_18)) ;
    and04 ix2536 (.Y (nx2535), .A0 (nx2545), .A1 (nx2553), .A2 (nx2563), .A3 (
          nx2571)) ;
    mux21 ix1250 (.Y (nx1249), .A0 (nx282), .A1 (CounterOut_20), .S0 (nx6000)) ;
    xor2 ix283 (.Y (nx282), .A0 (nx955), .A1 (nx2545)) ;
    mux21 ix1260 (.Y (nx1259), .A0 (nx296), .A1 (CounterOut_21), .S0 (nx6000)) ;
    xor2 ix297 (.Y (nx296), .A0 (nx2551), .A1 (CounterOut_21)) ;
    nor02ii ix2552 (.Y (nx2551), .A0 (nx955), .A1 (CounterOut_20)) ;
    mux21 ix1270 (.Y (nx1269), .A0 (nx310), .A1 (CounterOut_22), .S0 (nx6000)) ;
    xor2 ix311 (.Y (nx310), .A0 (nx951), .A1 (nx2563)) ;
    mux21 ix1280 (.Y (nx1279), .A0 (nx324), .A1 (CounterOut_23), .S0 (nx6000)) ;
    xor2 ix325 (.Y (nx324), .A0 (nx2569), .A1 (CounterOut_23)) ;
    nor02ii ix2570 (.Y (nx2569), .A0 (nx951), .A1 (CounterOut_22)) ;
    and04 ix2574 (.Y (nx2573), .A0 (nx2583), .A1 (nx2591), .A2 (nx2601), .A3 (
          nx2609)) ;
    mux21 ix1290 (.Y (nx1289), .A0 (nx338), .A1 (CounterOut_24), .S0 (nx6000)) ;
    xor2 ix339 (.Y (nx338), .A0 (nx947), .A1 (nx2583)) ;
    mux21 ix1300 (.Y (nx1299), .A0 (nx352), .A1 (CounterOut_25), .S0 (nx6000)) ;
    xor2 ix353 (.Y (nx352), .A0 (nx2589), .A1 (CounterOut_25)) ;
    nor02ii ix2590 (.Y (nx2589), .A0 (nx947), .A1 (CounterOut_24)) ;
    mux21 ix1310 (.Y (nx1309), .A0 (nx366), .A1 (CounterOut_26), .S0 (nx6000)) ;
    xor2 ix367 (.Y (nx366), .A0 (nx943), .A1 (nx2601)) ;
    mux21 ix1320 (.Y (nx1319), .A0 (nx380), .A1 (CounterOut_27), .S0 (nx6000)) ;
    xor2 ix381 (.Y (nx380), .A0 (nx2607), .A1 (CounterOut_27)) ;
    nor02ii ix2608 (.Y (nx2607), .A0 (nx943), .A1 (CounterOut_26)) ;
    and04 ix2612 (.Y (nx2611), .A0 (nx2621), .A1 (nx2629), .A2 (nx2639), .A3 (
          nx5982)) ;
    inv01 ix5981 (.Y (nx5982), .A (CounterOut_31)) ;
    mux21 ix1330 (.Y (nx1329), .A0 (nx394), .A1 (CounterOut_28), .S0 (nx6000)) ;
    xor2 ix395 (.Y (nx394), .A0 (nx939), .A1 (nx2621)) ;
    mux21 ix1340 (.Y (nx1339), .A0 (nx408), .A1 (CounterOut_29), .S0 (nx6002)) ;
    xor2 ix409 (.Y (nx408), .A0 (nx2627), .A1 (CounterOut_29)) ;
    nor02ii ix2628 (.Y (nx2627), .A0 (nx939), .A1 (CounterOut_28)) ;
    mux21 ix1350 (.Y (nx1349), .A0 (nx422), .A1 (CounterOut_30), .S0 (nx6002)) ;
    xor2 ix423 (.Y (nx422), .A0 (nx935), .A1 (nx2639)) ;
    mux21 ix1360 (.Y (nx1359), .A0 (nx432), .A1 (CounterOut_31), .S0 (nx6002)) ;
    nor02ii ix2646 (.Y (nx2645), .A0 (nx935), .A1 (CounterOut_30)) ;
    and03 ix4785 (.Y (nx4784), .A0 (nx5778), .A1 (MISR_out_31), .A2 (nx5584)) ;
    mux21 ix2320 (.Y (nx2319), .A0 (nx4772), .A1 (MISR_out_29), .S0 (nx6002)) ;
    xor2 ix4773 (.Y (nx4772), .A0 (RegOut[29]), .A1 (MISR_out_30)) ;
    mux21 ix687 (.Y (nx686), .A0 (LFSROUT_16), .A1 (A[0]), .S0 (nx6002)) ;
    mux21 ix1370 (.Y (nx1369), .A0 (LFSROUT_17), .A1 (LFSROUT_16), .S0 (nx6002)
          ) ;
    mux21 ix1680 (.Y (nx1679), .A0 (LFSROUT_18), .A1 (LFSROUT_17), .S0 (nx6002)
          ) ;
    mux21 ix1670 (.Y (nx1669), .A0 (LFSROUT_19), .A1 (LFSROUT_18), .S0 (nx6002)
          ) ;
    mux21 ix1660 (.Y (nx1659), .A0 (nx644), .A1 (LFSROUT_19), .S0 (nx6002)) ;
    xor2 ix645 (.Y (nx644), .A0 (LFSROUT_20), .A1 (LFSROUT_0)) ;
    mux21 ix1650 (.Y (nx1649), .A0 (LFSROUT_21), .A1 (LFSROUT_20), .S0 (nx6002)
          ) ;
    mux21 ix1640 (.Y (nx1639), .A0 (LFSROUT_22), .A1 (LFSROUT_21), .S0 (nx6002)
          ) ;
    mux21 ix1630 (.Y (nx1629), .A0 (LFSROUT_23), .A1 (LFSROUT_22), .S0 (nx6002)
          ) ;
    mux21 ix1620 (.Y (nx1619), .A0 (LFSROUT_24), .A1 (LFSROUT_23), .S0 (nx6002)
          ) ;
    mux21 ix1610 (.Y (nx1609), .A0 (nx622), .A1 (LFSROUT_24), .S0 (nx6002)) ;
    xor2 ix623 (.Y (nx622), .A0 (LFSROUT_25), .A1 (LFSROUT_0)) ;
    mux21 ix1600 (.Y (nx1599), .A0 (nx616), .A1 (LFSROUT_25), .S0 (nx6002)) ;
    xor2 ix617 (.Y (nx616), .A0 (LFSROUT_26), .A1 (LFSROUT_0)) ;
    mux21 ix1590 (.Y (nx1589), .A0 (LFSROUT_27), .A1 (LFSROUT_26), .S0 (nx6004)
          ) ;
    mux21 ix1580 (.Y (nx1579), .A0 (LFSROUT_28), .A1 (LFSROUT_27), .S0 (nx6004)
          ) ;
    mux21 ix1570 (.Y (nx1569), .A0 (LFSROUT_29), .A1 (LFSROUT_28), .S0 (nx6004)
          ) ;
    mux21 ix1560 (.Y (nx1559), .A0 (LFSROUT_30), .A1 (LFSROUT_29), .S0 (nx6004)
          ) ;
    mux21 ix1550 (.Y (nx1549), .A0 (LFSROUT_31), .A1 (LFSROUT_30), .S0 (nx6004)
          ) ;
    mux21 ix1540 (.Y (nx1539), .A0 (LFSROUT_0), .A1 (LFSROUT_31), .S0 (nx6004)
          ) ;
    mux21 ix1530 (.Y (nx1529), .A0 (LFSROUT_1), .A1 (LFSROUT_0), .S0 (nx6004)) ;
    mux21 ix1520 (.Y (nx1519), .A0 (LFSROUT_2), .A1 (LFSROUT_1), .S0 (nx6004)) ;
    mux21 ix1510 (.Y (nx1509), .A0 (LFSROUT_3), .A1 (LFSROUT_2), .S0 (nx6004)) ;
    mux21 ix1500 (.Y (nx1499), .A0 (LFSROUT_4), .A1 (LFSROUT_3), .S0 (nx6004)) ;
    mux21 ix1490 (.Y (nx1489), .A0 (LFSROUT_5), .A1 (LFSROUT_4), .S0 (nx6004)) ;
    mux21 ix1480 (.Y (nx1479), .A0 (LFSROUT_6), .A1 (LFSROUT_5), .S0 (nx6004)) ;
    mux21 ix1470 (.Y (nx1469), .A0 (LFSROUT_7), .A1 (LFSROUT_6), .S0 (nx6004)) ;
    mux21 ix1460 (.Y (nx1459), .A0 (LFSROUT_8), .A1 (LFSROUT_7), .S0 (nx6004)) ;
    mux21 ix1450 (.Y (nx1449), .A0 (LFSROUT_9), .A1 (LFSROUT_8), .S0 (nx6004)) ;
    mux21 ix1440 (.Y (nx1439), .A0 (LFSROUT_10), .A1 (LFSROUT_9), .S0 (nx6006)
          ) ;
    mux21 ix1430 (.Y (nx1429), .A0 (LFSROUT_11), .A1 (LFSROUT_10), .S0 (nx6006)
          ) ;
    mux21 ix1420 (.Y (nx1419), .A0 (LFSROUT_12), .A1 (LFSROUT_11), .S0 (nx6006)
          ) ;
    mux21 ix1410 (.Y (nx1409), .A0 (LFSROUT_13), .A1 (LFSROUT_12), .S0 (nx6006)
          ) ;
    mux21 ix1400 (.Y (nx1399), .A0 (LFSROUT_14), .A1 (LFSROUT_13), .S0 (nx6006)
          ) ;
    mux21 ix1390 (.Y (nx1389), .A0 (LFSROUT_15), .A1 (LFSROUT_14), .S0 (nx6006)
          ) ;
    mux21 ix1380 (.Y (nx1379), .A0 (LFSROUT_16), .A1 (LFSROUT_15), .S0 (nx6006)
          ) ;
    mux21 ix699 (.Y (nx698), .A0 (LFSROUT_0), .A1 (B[0]), .S0 (nx6006)) ;
    mux21 ix673 (.Y (nx672), .A0 (LFSROUT_1), .A1 (B[1]), .S0 (nx6006)) ;
    mux21 ix661 (.Y (nx660), .A0 (LFSROUT_17), .A1 (A[1]), .S0 (nx6006)) ;
    or04 ix3138 (.Y (nx3137), .A0 (nx6020), .A1 (nx6016), .A2 (nx5984), .A3 (
         nx6140)) ;
    inv01 ix5983 (.Y (nx5984), .A (nx5852)) ;
    or02 ix3154 (.Y (nx3153), .A0 (nx6026), .A1 (nx6140)) ;
    mux21 ix733 (.Y (nx732), .A0 (LFSROUT_18), .A1 (A[2]), .S0 (nx6006)) ;
    or02 ix3166 (.Y (nx3165), .A0 (nx6022), .A1 (nx6016)) ;
    mux21 ix715 (.Y (nx714), .A0 (LFSROUT_2), .A1 (B[2]), .S0 (nx6006)) ;
    or02 ix3190 (.Y (nx3189), .A0 (nx6034), .A1 (nx6140)) ;
    mux21 ix781 (.Y (nx780), .A0 (LFSROUT_19), .A1 (A[3]), .S0 (nx6006)) ;
    or02 ix3202 (.Y (nx3201), .A0 (nx6026), .A1 (nx6016)) ;
    or02 ix3212 (.Y (nx3211), .A0 (nx6022), .A1 (nx6030)) ;
    mux21 ix759 (.Y (nx758), .A0 (LFSROUT_3), .A1 (B[3]), .S0 (nx6006)) ;
    or02 ix3236 (.Y (nx3235), .A0 (nx6042), .A1 (nx6140)) ;
    mux21 ix841 (.Y (nx840), .A0 (LFSROUT_20), .A1 (A[4]), .S0 (nx6006)) ;
    or02 ix3248 (.Y (nx3247), .A0 (nx6034), .A1 (nx6016)) ;
    or02 ix3256 (.Y (nx3255), .A0 (nx6026), .A1 (nx6030)) ;
    or02 ix3266 (.Y (nx3265), .A0 (nx6022), .A1 (nx6038)) ;
    mux21 ix815 (.Y (nx814), .A0 (LFSROUT_4), .A1 (B[4]), .S0 (nx6008)) ;
    or02 ix3290 (.Y (nx3289), .A0 (nx6050), .A1 (nx6140)) ;
    mux21 ix913 (.Y (nx912), .A0 (LFSROUT_21), .A1 (A[5]), .S0 (nx6008)) ;
    or02 ix3302 (.Y (nx3301), .A0 (nx6042), .A1 (nx6016)) ;
    or02 ix3310 (.Y (nx3309), .A0 (nx6034), .A1 (nx6030)) ;
    or02 ix3320 (.Y (nx3319), .A0 (nx6026), .A1 (nx6038)) ;
    or02 ix3334 (.Y (nx3333), .A0 (nx6022), .A1 (nx6046)) ;
    mux21 ix883 (.Y (nx882), .A0 (LFSROUT_5), .A1 (B[5]), .S0 (nx6008)) ;
    or02 ix3358 (.Y (nx3357), .A0 (nx6058), .A1 (nx6140)) ;
    mux21 ix997 (.Y (nx996), .A0 (LFSROUT_22), .A1 (A[6]), .S0 (nx6008)) ;
    nor02ii ix3933 (.Y (nx3932), .A0 (nx6058), .A1 (MAC0_MultB_0)) ;
    or02 ix3370 (.Y (nx3369), .A0 (nx6050), .A1 (nx6016)) ;
    or02 ix3378 (.Y (nx3377), .A0 (nx6042), .A1 (nx6030)) ;
    or02 ix3388 (.Y (nx3387), .A0 (nx6034), .A1 (nx6038)) ;
    or02 ix3398 (.Y (nx3397), .A0 (nx6026), .A1 (nx6046)) ;
    or02 ix3412 (.Y (nx3411), .A0 (nx6022), .A1 (nx6054)) ;
    mux21 ix963 (.Y (nx962), .A0 (LFSROUT_6), .A1 (B[6]), .S0 (nx6008)) ;
    or02 ix3436 (.Y (nx3435), .A0 (nx6066), .A1 (nx6140)) ;
    mux21 ix1093 (.Y (nx1092), .A0 (LFSROUT_23), .A1 (A[7]), .S0 (nx6008)) ;
    nor02ii ix3921 (.Y (nx3920), .A0 (nx6066), .A1 (MAC0_MultB_0)) ;
    or02 ix3450 (.Y (nx3449), .A0 (nx6058), .A1 (nx6016)) ;
    or02 ix3458 (.Y (nx3457), .A0 (nx6050), .A1 (nx6030)) ;
    or02 ix3468 (.Y (nx3467), .A0 (nx6042), .A1 (nx6038)) ;
    or02 ix3478 (.Y (nx3477), .A0 (nx6034), .A1 (nx6046)) ;
    or02 ix3488 (.Y (nx3487), .A0 (nx6026), .A1 (nx6054)) ;
    or02 ix3502 (.Y (nx3501), .A0 (nx6022), .A1 (nx6062)) ;
    mux21 ix1055 (.Y (nx1054), .A0 (LFSROUT_7), .A1 (B[7]), .S0 (nx6008)) ;
    or02 ix3526 (.Y (nx3525), .A0 (nx6074), .A1 (nx6140)) ;
    mux21 ix1201 (.Y (nx1200), .A0 (LFSROUT_24), .A1 (A[8]), .S0 (nx6008)) ;
    nor02ii ix3909 (.Y (nx3908), .A0 (nx6074), .A1 (MAC0_MultB_0)) ;
    or02 ix3540 (.Y (nx3539), .A0 (nx6066), .A1 (nx6016)) ;
    or02 ix3548 (.Y (nx3547), .A0 (nx6058), .A1 (nx6030)) ;
    or02 ix3558 (.Y (nx3557), .A0 (nx6050), .A1 (nx6038)) ;
    or02 ix3568 (.Y (nx3567), .A0 (nx6042), .A1 (nx6046)) ;
    or02 ix3578 (.Y (nx3577), .A0 (nx6034), .A1 (nx6054)) ;
    or02 ix3588 (.Y (nx3587), .A0 (nx6026), .A1 (nx6062)) ;
    or02 ix3602 (.Y (nx3601), .A0 (nx6022), .A1 (nx6070)) ;
    mux21 ix1159 (.Y (nx1158), .A0 (LFSROUT_8), .A1 (B[8]), .S0 (nx6008)) ;
    or02 ix3626 (.Y (nx3625), .A0 (nx6082), .A1 (nx6140)) ;
    mux21 ix1321 (.Y (nx1320), .A0 (LFSROUT_25), .A1 (A[9]), .S0 (nx6008)) ;
    nor02ii ix3897 (.Y (nx3896), .A0 (nx6082), .A1 (MAC0_MultB_0)) ;
    or02 ix3640 (.Y (nx3639), .A0 (nx6074), .A1 (nx6016)) ;
    or02 ix3648 (.Y (nx3647), .A0 (nx6066), .A1 (nx6030)) ;
    or02 ix3658 (.Y (nx3657), .A0 (nx6058), .A1 (nx6038)) ;
    or02 ix3668 (.Y (nx3667), .A0 (nx6050), .A1 (nx6046)) ;
    or02 ix3678 (.Y (nx3677), .A0 (nx6042), .A1 (nx6054)) ;
    or02 ix3688 (.Y (nx3687), .A0 (nx6034), .A1 (nx6062)) ;
    or02 ix3698 (.Y (nx3697), .A0 (nx6026), .A1 (nx6070)) ;
    or02 ix3712 (.Y (nx3711), .A0 (nx6022), .A1 (nx6078)) ;
    mux21 ix1275 (.Y (nx1274), .A0 (LFSROUT_9), .A1 (B[9]), .S0 (nx6008)) ;
    or02 ix3736 (.Y (nx3735), .A0 (nx6090), .A1 (nx5974)) ;
    mux21 ix1453 (.Y (nx1452), .A0 (LFSROUT_26), .A1 (A[10]), .S0 (nx6008)) ;
    nor02ii ix3885 (.Y (nx3884), .A0 (nx6090), .A1 (MAC0_MultB_0)) ;
    or02 ix3750 (.Y (nx3749), .A0 (nx6082), .A1 (nx6016)) ;
    or02 ix3757 (.Y (nx3756), .A0 (nx6074), .A1 (nx6030)) ;
    or02 ix3764 (.Y (nx3763), .A0 (nx6066), .A1 (nx6038)) ;
    or02 ix3772 (.Y (nx3771), .A0 (nx6058), .A1 (nx6046)) ;
    or02 ix3780 (.Y (nx3779), .A0 (nx6050), .A1 (nx6054)) ;
    or02 ix3788 (.Y (nx3787), .A0 (nx6042), .A1 (nx6062)) ;
    or02 ix3796 (.Y (nx3795), .A0 (nx6034), .A1 (nx6070)) ;
    or02 ix3804 (.Y (nx3803), .A0 (nx6026), .A1 (nx6078)) ;
    or02 ix3814 (.Y (nx3813), .A0 (nx6022), .A1 (nx6086)) ;
    mux21 ix1403 (.Y (nx1402), .A0 (LFSROUT_10), .A1 (B[10]), .S0 (nx6008)) ;
    or02 ix3834 (.Y (nx3833), .A0 (nx6098), .A1 (nx5974)) ;
    mux21 ix1597 (.Y (nx1596), .A0 (LFSROUT_27), .A1 (A[11]), .S0 (nx6008)) ;
    nor02ii ix3873 (.Y (nx3872), .A0 (nx6098), .A1 (MAC0_MultB_0)) ;
    or02 ix3846 (.Y (nx3845), .A0 (nx6090), .A1 (nx6016)) ;
    or02 ix3854 (.Y (nx3853), .A0 (nx6082), .A1 (nx6030)) ;
    or02 ix3862 (.Y (nx3861), .A0 (nx6074), .A1 (nx6038)) ;
    or02 ix3871 (.Y (nx3870), .A0 (nx6066), .A1 (nx6046)) ;
    or02 ix3880 (.Y (nx3879), .A0 (nx6058), .A1 (nx6054)) ;
    or02 ix3888 (.Y (nx3887), .A0 (nx6050), .A1 (nx6062)) ;
    or02 ix3896 (.Y (nx3895), .A0 (nx6042), .A1 (nx6070)) ;
    or02 ix3906 (.Y (nx3905), .A0 (nx6034), .A1 (nx6078)) ;
    or02 ix3916 (.Y (nx3915), .A0 (nx6026), .A1 (nx6086)) ;
    or02 ix3928 (.Y (nx3927), .A0 (nx6022), .A1 (nx6094)) ;
    mux21 ix1543 (.Y (nx1542), .A0 (LFSROUT_11), .A1 (B[11]), .S0 (nx6008)) ;
    or02 ix3948 (.Y (nx3947), .A0 (nx6106), .A1 (nx5974)) ;
    mux21 ix1753 (.Y (nx1752), .A0 (LFSROUT_28), .A1 (A[12]), .S0 (nx6010)) ;
    nor02ii ix3861 (.Y (nx3860), .A0 (nx6106), .A1 (MAC0_MultB_0)) ;
    or02 ix3962 (.Y (nx3961), .A0 (nx6098), .A1 (nx6016)) ;
    or02 ix3970 (.Y (nx3969), .A0 (nx6090), .A1 (nx6030)) ;
    or02 ix3979 (.Y (nx3978), .A0 (nx6082), .A1 (nx6038)) ;
    or02 ix3988 (.Y (nx3987), .A0 (nx6074), .A1 (nx6046)) ;
    or02 ix3996 (.Y (nx3995), .A0 (nx6066), .A1 (nx6054)) ;
    or02 ix4005 (.Y (nx4004), .A0 (nx6058), .A1 (nx6062)) ;
    or02 ix4012 (.Y (nx4011), .A0 (nx6050), .A1 (nx6070)) ;
    or02 ix4020 (.Y (nx4019), .A0 (nx6042), .A1 (nx6078)) ;
    or02 ix4028 (.Y (nx4027), .A0 (nx6034), .A1 (nx6086)) ;
    or02 ix4038 (.Y (nx4037), .A0 (nx6026), .A1 (nx6094)) ;
    or02 ix4050 (.Y (nx4049), .A0 (nx6022), .A1 (nx6102)) ;
    mux21 ix1695 (.Y (nx1694), .A0 (LFSROUT_12), .A1 (B[12]), .S0 (nx6010)) ;
    or02 ix4072 (.Y (nx4071), .A0 (nx6114), .A1 (nx5974)) ;
    mux21 ix1921 (.Y (nx1920), .A0 (LFSROUT_29), .A1 (A[13]), .S0 (nx6010)) ;
    nor02ii ix3849 (.Y (nx3848), .A0 (nx6114), .A1 (MAC0_MultB_0)) ;
    or02 ix4086 (.Y (nx4085), .A0 (nx6106), .A1 (nx6016)) ;
    or02 ix4093 (.Y (nx4092), .A0 (nx6098), .A1 (nx6030)) ;
    or02 ix4102 (.Y (nx4101), .A0 (nx6090), .A1 (nx6038)) ;
    or02 ix4110 (.Y (nx4109), .A0 (nx6082), .A1 (nx6046)) ;
    or02 ix4120 (.Y (nx4119), .A0 (nx6074), .A1 (nx6054)) ;
    or02 ix4128 (.Y (nx4127), .A0 (nx6066), .A1 (nx6062)) ;
    or02 ix4138 (.Y (nx4137), .A0 (nx6060), .A1 (nx6070)) ;
    or02 ix4146 (.Y (nx4145), .A0 (nx6050), .A1 (nx6078)) ;
    or02 ix4156 (.Y (nx4155), .A0 (nx6042), .A1 (nx6086)) ;
    or02 ix4166 (.Y (nx4165), .A0 (nx6034), .A1 (nx6094)) ;
    or02 ix4174 (.Y (nx4173), .A0 (nx6028), .A1 (nx6102)) ;
    or02 ix4188 (.Y (nx4187), .A0 (nx6022), .A1 (nx6110)) ;
    mux21 ix1859 (.Y (nx1858), .A0 (LFSROUT_13), .A1 (B[13]), .S0 (nx6010)) ;
    or02 ix4210 (.Y (nx4209), .A0 (nx6124), .A1 (nx5974)) ;
    mux21 ix2101 (.Y (nx2100), .A0 (LFSROUT_30), .A1 (A[14]), .S0 (nx6010)) ;
    nor02ii ix3837 (.Y (nx3836), .A0 (nx6124), .A1 (MAC0_MultB_0)) ;
    or02 ix4222 (.Y (nx4221), .A0 (nx6114), .A1 (nx6018)) ;
    or02 ix4230 (.Y (nx4229), .A0 (nx6106), .A1 (nx6030)) ;
    or02 ix4238 (.Y (nx4237), .A0 (nx6098), .A1 (nx6038)) ;
    or02 ix4248 (.Y (nx4247), .A0 (nx6090), .A1 (nx6046)) ;
    or02 ix4256 (.Y (nx4255), .A0 (nx6084), .A1 (nx6054)) ;
    or02 ix4266 (.Y (nx4265), .A0 (nx6074), .A1 (nx6062)) ;
    or02 ix4274 (.Y (nx4273), .A0 (nx6066), .A1 (nx6070)) ;
    or02 ix4284 (.Y (nx4283), .A0 (nx6060), .A1 (nx6080)) ;
    or02 ix4294 (.Y (nx4293), .A0 (nx6050), .A1 (nx6086)) ;
    or02 ix4302 (.Y (nx4301), .A0 (nx6044), .A1 (nx6094)) ;
    or02 ix4312 (.Y (nx4311), .A0 (nx6034), .A1 (nx6102)) ;
    or02 ix4320 (.Y (nx4319), .A0 (nx6028), .A1 (nx6110)) ;
    or02 ix4334 (.Y (nx4333), .A0 (nx6022), .A1 (nx6118)) ;
    mux21 ix2035 (.Y (nx2034), .A0 (LFSROUT_14), .A1 (B[14]), .S0 (nx6010)) ;
    or02 ix4358 (.Y (nx4357), .A0 (nx6132), .A1 (nx5974)) ;
    mux21 ix2293 (.Y (nx2292), .A0 (LFSROUT_31), .A1 (A[15]), .S0 (nx6010)) ;
    nor02ii ix3825 (.Y (nx3824), .A0 (nx6132), .A1 (MAC0_MultB_0)) ;
    or02 ix4372 (.Y (nx4371), .A0 (nx6124), .A1 (nx6018)) ;
    or02 ix4380 (.Y (nx4379), .A0 (nx6114), .A1 (nx6032)) ;
    or02 ix4390 (.Y (nx4389), .A0 (nx6106), .A1 (nx6040)) ;
    or02 ix4398 (.Y (nx4397), .A0 (nx6098), .A1 (nx6048)) ;
    or02 ix4408 (.Y (nx4407), .A0 (nx6090), .A1 (nx6056)) ;
    or02 ix4416 (.Y (nx4415), .A0 (nx6084), .A1 (nx6062)) ;
    or02 ix4426 (.Y (nx4425), .A0 (nx6076), .A1 (nx6070)) ;
    or02 ix4434 (.Y (nx4433), .A0 (nx6066), .A1 (nx6080)) ;
    or02 ix4444 (.Y (nx4443), .A0 (nx6060), .A1 (nx6086)) ;
    or02 ix4454 (.Y (nx4453), .A0 (nx6052), .A1 (nx6094)) ;
    or02 ix4462 (.Y (nx4461), .A0 (nx6044), .A1 (nx6102)) ;
    or02 ix4472 (.Y (nx4471), .A0 (nx6036), .A1 (nx6110)) ;
    or02 ix4482 (.Y (nx4481), .A0 (nx6028), .A1 (nx6120)) ;
    or02 ix4496 (.Y (nx4495), .A0 (nx6022), .A1 (nx6128)) ;
    mux21 ix2223 (.Y (nx2222), .A0 (LFSROUT_15), .A1 (B[15]), .S0 (nx6010)) ;
    or02 ix4520 (.Y (nx4519), .A0 (nx6132), .A1 (nx6018)) ;
    or02 ix4528 (.Y (nx4527), .A0 (nx6124), .A1 (nx6032)) ;
    or02 ix4538 (.Y (nx4537), .A0 (nx6114), .A1 (nx6040)) ;
    or02 ix4548 (.Y (nx4547), .A0 (nx6106), .A1 (nx6048)) ;
    or02 ix4558 (.Y (nx4557), .A0 (nx6098), .A1 (nx6056)) ;
    or02 ix4568 (.Y (nx4567), .A0 (nx6090), .A1 (nx6062)) ;
    or02 ix4578 (.Y (nx4577), .A0 (nx6084), .A1 (nx6070)) ;
    or02 ix4588 (.Y (nx4587), .A0 (nx6076), .A1 (nx6080)) ;
    or02 ix4598 (.Y (nx4597), .A0 (nx6068), .A1 (nx6086)) ;
    or02 ix4608 (.Y (nx4607), .A0 (nx6060), .A1 (nx6094)) ;
    or02 ix4618 (.Y (nx4617), .A0 (nx6052), .A1 (nx6102)) ;
    or02 ix4628 (.Y (nx4627), .A0 (nx6044), .A1 (nx6110)) ;
    or02 ix4638 (.Y (nx4637), .A0 (nx6036), .A1 (nx6120)) ;
    or02 ix4648 (.Y (nx4647), .A0 (nx6028), .A1 (nx6128)) ;
    or02 ix4652 (.Y (nx4651), .A0 (nx6022), .A1 (nx6136)) ;
    or02 ix4678 (.Y (nx4677), .A0 (nx6132), .A1 (nx6032)) ;
    or02 ix4684 (.Y (nx4683), .A0 (nx6124), .A1 (nx6040)) ;
    or02 ix4690 (.Y (nx4689), .A0 (nx6114), .A1 (nx6048)) ;
    or02 ix4696 (.Y (nx4695), .A0 (nx6108), .A1 (nx6056)) ;
    or02 ix4702 (.Y (nx4701), .A0 (nx6098), .A1 (nx6064)) ;
    or02 ix4708 (.Y (nx4707), .A0 (nx6092), .A1 (nx6072)) ;
    or02 ix4714 (.Y (nx4713), .A0 (nx6084), .A1 (nx6080)) ;
    or02 ix4720 (.Y (nx4719), .A0 (nx6076), .A1 (nx6086)) ;
    or02 ix4726 (.Y (nx4725), .A0 (nx6068), .A1 (nx6094)) ;
    or02 ix4732 (.Y (nx4731), .A0 (nx6060), .A1 (nx6102)) ;
    or02 ix4738 (.Y (nx4737), .A0 (nx6052), .A1 (nx6110)) ;
    or02 ix4744 (.Y (nx4743), .A0 (nx6044), .A1 (nx6120)) ;
    or02 ix4750 (.Y (nx4749), .A0 (nx6036), .A1 (nx6128)) ;
    or02 ix4756 (.Y (nx4755), .A0 (nx6028), .A1 (nx6136)) ;
    or03 ix4758 (.Y (nx4757), .A0 (nx5986), .A1 (nx6024), .A2 (nx6136)) ;
    inv01 ix5985 (.Y (nx5986), .A (nx2412)) ;
    or02 ix4776 (.Y (nx4775), .A0 (nx6132), .A1 (nx6040)) ;
    or02 ix4784 (.Y (nx4783), .A0 (nx6124), .A1 (nx6048)) ;
    or02 ix4792 (.Y (nx4791), .A0 (nx6116), .A1 (nx6056)) ;
    or02 ix4802 (.Y (nx4801), .A0 (nx6108), .A1 (nx6064)) ;
    or02 ix4810 (.Y (nx4809), .A0 (nx6098), .A1 (nx6072)) ;
    or02 ix4820 (.Y (nx4819), .A0 (nx6092), .A1 (nx6080)) ;
    or02 ix4828 (.Y (nx4827), .A0 (nx6084), .A1 (nx6086)) ;
    or02 ix4838 (.Y (nx4837), .A0 (nx6076), .A1 (nx6094)) ;
    or02 ix4846 (.Y (nx4845), .A0 (nx6068), .A1 (nx6104)) ;
    or02 ix4856 (.Y (nx4855), .A0 (nx6060), .A1 (nx6112)) ;
    or02 ix4864 (.Y (nx4863), .A0 (nx6052), .A1 (nx6120)) ;
    or02 ix4874 (.Y (nx4873), .A0 (nx6044), .A1 (nx6128)) ;
    or02 ix4882 (.Y (nx4881), .A0 (nx6036), .A1 (nx6136)) ;
    or02 ix4902 (.Y (nx4901), .A0 (nx6132), .A1 (nx6048)) ;
    or02 ix4912 (.Y (nx4911), .A0 (nx6124), .A1 (nx6056)) ;
    or02 ix4918 (.Y (nx4917), .A0 (nx6116), .A1 (nx6064)) ;
    or02 ix4926 (.Y (nx4925), .A0 (nx6108), .A1 (nx6072)) ;
    or02 ix4935 (.Y (nx4934), .A0 (nx6098), .A1 (nx6080)) ;
    or02 ix4945 (.Y (nx4944), .A0 (nx6092), .A1 (nx6088)) ;
    or02 ix4951 (.Y (nx4950), .A0 (nx6084), .A1 (nx6094)) ;
    or02 ix4959 (.Y (nx4958), .A0 (nx6076), .A1 (nx6104)) ;
    or02 ix4968 (.Y (nx4967), .A0 (nx6068), .A1 (nx6112)) ;
    or02 ix4978 (.Y (nx4977), .A0 (nx6060), .A1 (nx6120)) ;
    or02 ix4984 (.Y (nx4983), .A0 (nx6052), .A1 (nx6128)) ;
    or02 ix4992 (.Y (nx4991), .A0 (nx6044), .A1 (nx6136)) ;
    or02 ix5010 (.Y (nx5009), .A0 (nx6134), .A1 (nx6056)) ;
    or02 ix5018 (.Y (nx5017), .A0 (nx6124), .A1 (nx6064)) ;
    or02 ix5026 (.Y (nx5025), .A0 (nx6116), .A1 (nx6072)) ;
    or02 ix5032 (.Y (nx5031), .A0 (nx6108), .A1 (nx6080)) ;
    or02 ix5038 (.Y (nx5037), .A0 (nx6100), .A1 (nx6088)) ;
    or02 ix5044 (.Y (nx5043), .A0 (nx6092), .A1 (nx6094)) ;
    or02 ix5052 (.Y (nx5051), .A0 (nx6084), .A1 (nx6104)) ;
    or02 ix5058 (.Y (nx5057), .A0 (nx6076), .A1 (nx6112)) ;
    or02 ix5064 (.Y (nx5063), .A0 (nx6068), .A1 (nx6120)) ;
    or02 ix5072 (.Y (nx5071), .A0 (nx6060), .A1 (nx6130)) ;
    or02 ix5080 (.Y (nx5079), .A0 (nx6052), .A1 (nx6138)) ;
    or02 ix5097 (.Y (nx5096), .A0 (nx6134), .A1 (nx6064)) ;
    or02 ix5103 (.Y (nx5102), .A0 (nx6124), .A1 (nx6072)) ;
    or02 ix5111 (.Y (nx5110), .A0 (nx6116), .A1 (nx6080)) ;
    or02 ix5119 (.Y (nx5118), .A0 (nx6108), .A1 (nx6088)) ;
    or02 ix5125 (.Y (nx5124), .A0 (nx6100), .A1 (nx6096)) ;
    or02 ix5132 (.Y (nx5131), .A0 (nx6092), .A1 (nx6104)) ;
    or02 ix5142 (.Y (nx5141), .A0 (nx6084), .A1 (nx6112)) ;
    or02 ix5150 (.Y (nx5149), .A0 (nx6076), .A1 (nx6120)) ;
    or02 ix5158 (.Y (nx5157), .A0 (nx6068), .A1 (nx6130)) ;
    or02 ix5164 (.Y (nx5163), .A0 (nx6060), .A1 (nx6138)) ;
    or02 ix5181 (.Y (nx5180), .A0 (nx6134), .A1 (nx6072)) ;
    or02 ix5189 (.Y (nx5188), .A0 (nx6124), .A1 (nx6080)) ;
    or02 ix5195 (.Y (nx5194), .A0 (nx6116), .A1 (nx6088)) ;
    or02 ix5201 (.Y (nx5200), .A0 (nx6108), .A1 (nx6096)) ;
    or02 ix5208 (.Y (nx5207), .A0 (nx6100), .A1 (nx6104)) ;
    or02 ix5215 (.Y (nx5214), .A0 (nx6092), .A1 (nx6112)) ;
    or02 ix5225 (.Y (nx5224), .A0 (nx6084), .A1 (nx6120)) ;
    or02 ix5231 (.Y (nx5230), .A0 (nx6076), .A1 (nx6130)) ;
    or02 ix5237 (.Y (nx5236), .A0 (nx6068), .A1 (nx6138)) ;
    or02 ix5257 (.Y (nx5256), .A0 (nx6134), .A1 (nx6080)) ;
    or02 ix5267 (.Y (nx5266), .A0 (nx6124), .A1 (nx6088)) ;
    or02 ix5273 (.Y (nx5272), .A0 (nx6116), .A1 (nx6096)) ;
    or02 ix5280 (.Y (nx5279), .A0 (nx6108), .A1 (nx6104)) ;
    or02 ix5287 (.Y (nx5286), .A0 (nx6100), .A1 (nx6112)) ;
    or02 ix5294 (.Y (nx5293), .A0 (nx6092), .A1 (nx6120)) ;
    or02 ix5304 (.Y (nx5303), .A0 (nx6084), .A1 (nx6130)) ;
    or02 ix5312 (.Y (nx5311), .A0 (nx6076), .A1 (nx6138)) ;
    or02 ix5330 (.Y (nx5329), .A0 (nx6134), .A1 (nx6088)) ;
    or02 ix5338 (.Y (nx5337), .A0 (nx6124), .A1 (nx6096)) ;
    or02 ix5347 (.Y (nx5346), .A0 (nx6116), .A1 (nx6104)) ;
    or02 ix5356 (.Y (nx5355), .A0 (nx6108), .A1 (nx6112)) ;
    or02 ix5365 (.Y (nx5364), .A0 (nx6100), .A1 (nx6120)) ;
    or02 ix5374 (.Y (nx5373), .A0 (nx6092), .A1 (nx6130)) ;
    or02 ix5384 (.Y (nx5383), .A0 (nx6084), .A1 (nx6138)) ;
    or02 ix5401 (.Y (nx5400), .A0 (nx6134), .A1 (nx6096)) ;
    or02 ix5407 (.Y (nx5406), .A0 (nx6124), .A1 (nx6104)) ;
    or02 ix5413 (.Y (nx5412), .A0 (nx6116), .A1 (nx6112)) ;
    or02 ix5419 (.Y (nx5418), .A0 (nx6108), .A1 (nx6120)) ;
    or02 ix5425 (.Y (nx5424), .A0 (nx6100), .A1 (nx6130)) ;
    or02 ix5431 (.Y (nx5430), .A0 (nx6092), .A1 (nx6138)) ;
    or02 ix5448 (.Y (nx5447), .A0 (nx6134), .A1 (nx6104)) ;
    or02 ix5456 (.Y (nx5455), .A0 (nx6124), .A1 (nx6112)) ;
    or02 ix5464 (.Y (nx5463), .A0 (nx6116), .A1 (nx6120)) ;
    or02 ix5472 (.Y (nx5471), .A0 (nx6108), .A1 (nx6130)) ;
    or02 ix5478 (.Y (nx5477), .A0 (nx6100), .A1 (nx6138)) ;
    or02 ix5498 (.Y (nx5497), .A0 (nx6134), .A1 (nx6112)) ;
    or02 ix5508 (.Y (nx5507), .A0 (nx6124), .A1 (nx6120)) ;
    or02 ix5514 (.Y (nx5513), .A0 (nx6116), .A1 (nx6130)) ;
    or02 ix5522 (.Y (nx5521), .A0 (nx6108), .A1 (nx6138)) ;
    or02 ix5540 (.Y (nx5539), .A0 (nx6134), .A1 (nx6120)) ;
    or02 ix5548 (.Y (nx5547), .A0 (nx6126), .A1 (nx6130)) ;
    or02 ix5556 (.Y (nx5555), .A0 (nx6116), .A1 (nx6138)) ;
    or02 ix5573 (.Y (nx5572), .A0 (nx6134), .A1 (nx6130)) ;
    or02 ix5579 (.Y (nx5578), .A0 (nx6126), .A1 (nx6138)) ;
    mux21 ix2310 (.Y (nx2309), .A0 (nx4766), .A1 (MISR_out_30), .S0 (nx6010)) ;
    xor2 ix4767 (.Y (nx4766), .A0 (RegOut[30]), .A1 (MISR_out_31)) ;
    or02 ix5606 (.Y (nx5605), .A0 (nx6134), .A1 (nx6138)) ;
    mux21 ix2300 (.Y (nx2299), .A0 (nx4760), .A1 (MISR_out_31), .S0 (nx6010)) ;
    xor2 ix4761 (.Y (nx4760), .A0 (RegOut[31]), .A1 (MISR_out_0)) ;
    oai32 ix4567 (.Y (nx4566), .A0 (nx6134), .A1 (nx6138), .A2 (nx5988), .B0 (
          nx5602), .B1 (nx5990)) ;
    inv01 ix5987 (.Y (nx5988), .A (nx4536)) ;
    inv01 ix5989 (.Y (nx5990), .A (nx4538)) ;
    mux21 ix2290 (.Y (nx2289), .A0 (nx4754), .A1 (MISR_out_0), .S0 (nx6010)) ;
    xor2 ix4755 (.Y (nx4754), .A0 (RegOut[0]), .A1 (MISR_out_1)) ;
    mux21 ix2280 (.Y (nx2279), .A0 (nx4748), .A1 (MISR_out_1), .S0 (nx6010)) ;
    xor2 ix4749 (.Y (nx4748), .A0 (RegOut[1]), .A1 (MISR_out_2)) ;
    mux21 ix2270 (.Y (nx2269), .A0 (nx4742), .A1 (MISR_out_2), .S0 (nx6010)) ;
    xor2 ix4743 (.Y (nx4742), .A0 (RegOut[2]), .A1 (MISR_out_3)) ;
    mux21 ix2260 (.Y (nx2259), .A0 (nx4736), .A1 (MISR_out_3), .S0 (nx6010)) ;
    xor2 ix4737 (.Y (nx4736), .A0 (RegOut[3]), .A1 (MISR_out_4)) ;
    mux21 ix2250 (.Y (nx2249), .A0 (nx4730), .A1 (MISR_out_4), .S0 (nx6010)) ;
    xor2 ix4731 (.Y (nx4730), .A0 (RegOut[4]), .A1 (MISR_out_5)) ;
    mux21 ix2240 (.Y (nx2239), .A0 (nx4724), .A1 (MISR_out_5), .S0 (nx6012)) ;
    xor2 ix4725 (.Y (nx4724), .A0 (RegOut[5]), .A1 (MISR_out_6)) ;
    mux21 ix2230 (.Y (nx2229), .A0 (nx4718), .A1 (MISR_out_6), .S0 (nx6012)) ;
    xor2 ix4719 (.Y (nx4718), .A0 (RegOut[6]), .A1 (MISR_out_7)) ;
    mux21 ix2220 (.Y (nx2219), .A0 (nx4712), .A1 (MISR_out_7), .S0 (nx6012)) ;
    xor2 ix4713 (.Y (nx4712), .A0 (RegOut[7]), .A1 (MISR_out_8)) ;
    mux21 ix2210 (.Y (nx2209), .A0 (nx4706), .A1 (MISR_out_8), .S0 (nx6012)) ;
    xor2 ix4707 (.Y (nx4706), .A0 (RegOut[8]), .A1 (MISR_out_9)) ;
    mux21 ix2200 (.Y (nx2199), .A0 (nx4700), .A1 (MISR_out_9), .S0 (nx6012)) ;
    xor2 ix4701 (.Y (nx4700), .A0 (RegOut[9]), .A1 (MISR_out_10)) ;
    mux21 ix2190 (.Y (nx2189), .A0 (nx4694), .A1 (MISR_out_10), .S0 (nx6012)) ;
    xor2 ix4695 (.Y (nx4694), .A0 (RegOut[10]), .A1 (MISR_out_11)) ;
    mux21 ix2180 (.Y (nx2179), .A0 (nx4688), .A1 (MISR_out_11), .S0 (nx6012)) ;
    xor2 ix4689 (.Y (nx4688), .A0 (RegOut[11]), .A1 (MISR_out_12)) ;
    mux21 ix2170 (.Y (nx2169), .A0 (nx4682), .A1 (MISR_out_12), .S0 (nx6012)) ;
    xor2 ix4683 (.Y (nx4682), .A0 (RegOut[12]), .A1 (MISR_out_13)) ;
    mux21 ix2160 (.Y (nx2159), .A0 (nx4676), .A1 (MISR_out_13), .S0 (nx6012)) ;
    xor2 ix4677 (.Y (nx4676), .A0 (RegOut[13]), .A1 (MISR_out_14)) ;
    mux21 ix2150 (.Y (nx2149), .A0 (nx4670), .A1 (MISR_out_14), .S0 (nx6012)) ;
    xor2 ix4671 (.Y (nx4670), .A0 (RegOut[14]), .A1 (MISR_out_15)) ;
    mux21 ix2140 (.Y (nx2139), .A0 (nx4664), .A1 (MISR_out_15), .S0 (nx6012)) ;
    xor2 ix4665 (.Y (nx4664), .A0 (RegOut[15]), .A1 (MISR_out_16)) ;
    mux21 ix2130 (.Y (nx2129), .A0 (nx4658), .A1 (MISR_out_16), .S0 (nx6012)) ;
    xor2 ix4659 (.Y (nx4658), .A0 (RegOut[16]), .A1 (MISR_out_17)) ;
    mux21 ix2120 (.Y (nx2119), .A0 (nx4652), .A1 (MISR_out_17), .S0 (nx6012)) ;
    xor2 ix4653 (.Y (nx4652), .A0 (RegOut[17]), .A1 (MISR_out_18)) ;
    mux21 ix2110 (.Y (nx2109), .A0 (nx4646), .A1 (MISR_out_18), .S0 (nx6012)) ;
    xor2 ix4647 (.Y (nx4646), .A0 (RegOut[18]), .A1 (MISR_out_19)) ;
    mux21 ix2100 (.Y (nx2099), .A0 (nx4640), .A1 (MISR_out_19), .S0 (nx6012)) ;
    xor2 ix4641 (.Y (nx4640), .A0 (nx5633), .A1 (nx5733)) ;
    xor2 ix5734 (.Y (nx5733), .A0 (RegOut[19]), .A1 (nx5782)) ;
    mux21 ix2090 (.Y (nx2089), .A0 (nx4632), .A1 (MISR_out_20), .S0 (nx6014)) ;
    xor2 ix4633 (.Y (nx4632), .A0 (RegOut[20]), .A1 (MISR_out_21)) ;
    mux21 ix2080 (.Y (nx2079), .A0 (nx4626), .A1 (MISR_out_21), .S0 (nx6014)) ;
    xor2 ix4627 (.Y (nx4626), .A0 (RegOut[21]), .A1 (MISR_out_22)) ;
    mux21 ix2070 (.Y (nx2069), .A0 (nx4620), .A1 (MISR_out_22), .S0 (nx6014)) ;
    xor2 ix4621 (.Y (nx4620), .A0 (RegOut[22]), .A1 (MISR_out_23)) ;
    mux21 ix2060 (.Y (nx2059), .A0 (nx4614), .A1 (MISR_out_23), .S0 (nx6014)) ;
    xor2 ix4615 (.Y (nx4614), .A0 (RegOut[23]), .A1 (MISR_out_24)) ;
    mux21 ix2050 (.Y (nx2049), .A0 (nx4608), .A1 (MISR_out_24), .S0 (nx6014)) ;
    xor2 ix4609 (.Y (nx4608), .A0 (nx5633), .A1 (nx5758)) ;
    mux21 ix2040 (.Y (nx2039), .A0 (nx4600), .A1 (MISR_out_25), .S0 (nx6014)) ;
    xor2 ix4601 (.Y (nx4600), .A0 (nx5633), .A1 (nx5763)) ;
    xor2 ix5764 (.Y (nx5763), .A0 (RegOut[25]), .A1 (nx5780)) ;
    mux21 ix2030 (.Y (nx2029), .A0 (nx4592), .A1 (MISR_out_26), .S0 (nx6014)) ;
    xor2 ix4593 (.Y (nx4592), .A0 (RegOut[26]), .A1 (MISR_out_27)) ;
    mux21 ix2020 (.Y (nx2019), .A0 (nx4586), .A1 (MISR_out_27), .S0 (nx6014)) ;
    xor2 ix4587 (.Y (nx4586), .A0 (RegOut[27]), .A1 (MISR_out_28)) ;
    mux21 ix2010 (.Y (nx2009), .A0 (nx4580), .A1 (MISR_out_28), .S0 (nx6014)) ;
    xor2 ix4581 (.Y (nx4580), .A0 (RegOut[28]), .A1 (MISR_out_29)) ;
    and04 ix4801 (.Y (nx4800), .A0 (MISR_out_26), .A1 (nx5992), .A2 (nx5753), .A3 (
          MISR_out_23)) ;
    inv01 ix5991 (.Y (nx5992), .A (MISR_out_25)) ;
    nand04 ix5785 (.Y (nx5784), .A0 (nx5743), .A1 (nx5738), .A2 (MISR_out_20), .A3 (
           nx5728)) ;
    or04 ix5787 (.Y (nx5786), .A0 (nx5723), .A1 (nx5718), .A2 (nx5713), .A3 (
         nx5708)) ;
    and04 ix4839 (.Y (nx4838), .A0 (nx5703), .A1 (nx5698), .A2 (nx5693), .A3 (
          nx5688)) ;
    and04 ix4849 (.Y (nx4848), .A0 (nx5683), .A1 (nx5678), .A2 (MISR_out_8), .A3 (
          MISR_out_7)) ;
    and04 ix4861 (.Y (nx4860), .A0 (MISR_out_6), .A1 (MISR_out_5), .A2 (nx5653)
          , .A3 (nx5648)) ;
    nor04 ix4871 (.Y (nx4870), .A0 (nx5643), .A1 (nx5638), .A2 (MISR_out_0), .A3 (
          nx5994)) ;
    inv01 ix5993 (.Y (nx5994), .A (nx2335)) ;
    inv01 ix5995 (.Y (nx5996), .A (nx2347)) ;
    inv02 ix5997 (.Y (nx5998), .A (nx5996)) ;
    inv02 ix5999 (.Y (nx6000), .A (nx5996)) ;
    inv02 ix6001 (.Y (nx6002), .A (nx5996)) ;
    inv02 ix6003 (.Y (nx6004), .A (nx5996)) ;
    inv02 ix6005 (.Y (nx6006), .A (nx5996)) ;
    inv02 ix6007 (.Y (nx6008), .A (nx5996)) ;
    inv02 ix6009 (.Y (nx6010), .A (nx5996)) ;
    inv02 ix6011 (.Y (nx6012), .A (nx5996)) ;
    inv02 ix6013 (.Y (nx6014), .A (nx5996)) ;
    inv01 ix6015 (.Y (nx6016), .A (nx5848)) ;
    inv01 ix6017 (.Y (nx6018), .A (nx5848)) ;
    inv02 ix6019 (.Y (nx6020), .A (nx5844)) ;
    inv02 ix6021 (.Y (nx6022), .A (nx5844)) ;
    inv02 ix6023 (.Y (nx6024), .A (nx5844)) ;
    inv01 ix6025 (.Y (nx6026), .A (nx5864)) ;
    inv01 ix6027 (.Y (nx6028), .A (nx5864)) ;
    inv01 ix6029 (.Y (nx6030), .A (nx5860)) ;
    inv01 ix6031 (.Y (nx6032), .A (nx5860)) ;
    inv01 ix6033 (.Y (nx6034), .A (nx5872)) ;
    inv01 ix6035 (.Y (nx6036), .A (nx5872)) ;
    inv01 ix6037 (.Y (nx6038), .A (nx5868)) ;
    inv01 ix6039 (.Y (nx6040), .A (nx5868)) ;
    inv01 ix6041 (.Y (nx6042), .A (nx5880)) ;
    inv01 ix6043 (.Y (nx6044), .A (nx5880)) ;
    inv01 ix6045 (.Y (nx6046), .A (nx5876)) ;
    inv01 ix6047 (.Y (nx6048), .A (nx5876)) ;
    inv01 ix6049 (.Y (nx6050), .A (nx5888)) ;
    inv01 ix6051 (.Y (nx6052), .A (nx5888)) ;
    inv01 ix6053 (.Y (nx6054), .A (nx5884)) ;
    inv01 ix6055 (.Y (nx6056), .A (nx5884)) ;
    inv01 ix6057 (.Y (nx6058), .A (nx5896)) ;
    inv01 ix6059 (.Y (nx6060), .A (nx5896)) ;
    inv01 ix6061 (.Y (nx6062), .A (nx5892)) ;
    inv01 ix6063 (.Y (nx6064), .A (nx5892)) ;
    inv01 ix6065 (.Y (nx6066), .A (nx5904)) ;
    inv01 ix6067 (.Y (nx6068), .A (nx5904)) ;
    inv01 ix6069 (.Y (nx6070), .A (nx5900)) ;
    inv01 ix6071 (.Y (nx6072), .A (nx5900)) ;
    inv01 ix6073 (.Y (nx6074), .A (nx5912)) ;
    inv01 ix6075 (.Y (nx6076), .A (nx5912)) ;
    inv01 ix6077 (.Y (nx6078), .A (nx5908)) ;
    inv01 ix6079 (.Y (nx6080), .A (nx5908)) ;
    inv01 ix6081 (.Y (nx6082), .A (nx5920)) ;
    inv01 ix6083 (.Y (nx6084), .A (nx5920)) ;
    inv01 ix6085 (.Y (nx6086), .A (nx5916)) ;
    inv01 ix6087 (.Y (nx6088), .A (nx5916)) ;
    inv01 ix6089 (.Y (nx6090), .A (nx5928)) ;
    inv01 ix6091 (.Y (nx6092), .A (nx5928)) ;
    inv01 ix6093 (.Y (nx6094), .A (nx5924)) ;
    inv01 ix6095 (.Y (nx6096), .A (nx5924)) ;
    inv01 ix6097 (.Y (nx6098), .A (nx5936)) ;
    inv01 ix6099 (.Y (nx6100), .A (nx5936)) ;
    inv01 ix6101 (.Y (nx6102), .A (nx5932)) ;
    inv01 ix6103 (.Y (nx6104), .A (nx5932)) ;
    inv01 ix6105 (.Y (nx6106), .A (nx5944)) ;
    inv01 ix6107 (.Y (nx6108), .A (nx5944)) ;
    inv01 ix6109 (.Y (nx6110), .A (nx5940)) ;
    inv01 ix6111 (.Y (nx6112), .A (nx5940)) ;
    inv01 ix6113 (.Y (nx6114), .A (nx5952)) ;
    inv01 ix6115 (.Y (nx6116), .A (nx5952)) ;
    inv01 ix6117 (.Y (nx6118), .A (nx5948)) ;
    inv01 ix6119 (.Y (nx6120), .A (nx5948)) ;
    inv01 ix6121 (.Y (nx6122), .A (nx5960)) ;
    inv01 ix6123 (.Y (nx6124), .A (nx5960)) ;
    inv01 ix6125 (.Y (nx6126), .A (nx5960)) ;
    inv01 ix6127 (.Y (nx6128), .A (nx5956)) ;
    inv01 ix6129 (.Y (nx6130), .A (nx5956)) ;
    inv01 ix6131 (.Y (nx6132), .A (nx5968)) ;
    inv01 ix6133 (.Y (nx6134), .A (nx5968)) ;
    inv01 ix6135 (.Y (nx6136), .A (nx5964)) ;
    inv01 ix6137 (.Y (nx6138), .A (nx5964)) ;
    inv02 ix6139 (.Y (nx6140), .A (MAC0_MultB_0)) ;
endmodule

