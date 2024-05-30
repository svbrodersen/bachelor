volatile int alist[4096] = {
    -430, -755, -466, -353, -727, -279, -965,  -102, -65,  -229, 720,  714,
    565,  -90,  823,  -715, 525,  809,  263,   345,  -763, 598,  806,  739,
    -691, 610,  788,  -27,  973,  -236, -480,  394,  637,  -289, 646,  -674,
    -642, 873,  70,   325,  574,  -143, 433,   -354, 681,  959,  -35,  -198,
    114,  598,  439,  374,  -224, -959, -153,  -337, 908,  955,  -312, 181,
    -660, 649,  -613, 570,  -163, -916, 792,   -451, 890,  6,    -668, 117,
    -654, -812, -500, -823, -854, 600,  -789,  -197, 864,  -436, 662,  -924,
    485,  900,  430,  902,  -944, -397, 825,   377,  423,  -914, 394,  587,
    -433, 251,  -97,  813,  -515, 125,  -417,  -73,  662,  -961, 48,   492,
    -2,   -241, -884, -787, -555, -821, 334,   884,  792,  336,  -998, -163,
    212,  85,   -328, 938,  600,  -912, 353,   -92,  -401, -980, -341, -972,
    -914, 700,  -114, 604,  -119, 312,  674,   402,  -498, -768, 707,  -395,
    167,  372,  -324, 383,  -310, 66,   -27,   691,  847,  555,  -265, 577,
    618,  805,  930,  531,  57,   -482, -801,  -871, -973, -583, 8,    743,
    -758, 18,   -342, 423,  -833, 123,  -372,  -147, 228,  28,   332,  -503,
    932,  553,  924,  844,  -221, -757, -589,  863,  578,  133,  -231, -675,
    -289, -500, 398,  -228, -83,  -749, 523,   -571, 489,  -754, -452, -968,
    -895, -347, -282, -76,  -66,  -790, 756,   -566, 790,  -173, -10,  -79,
    93,   -677, -17,  529,  451,  -189, -269,  -486, -506, -937, -338, -712,
    -96,  133,  -440, -404, -684, 691,  -167,  -810, 967,  -949, -594, 346,
    396,  -271, -455, -310, 454,  585,  153,   -341, -53,  -244, 177,  -752,
    279,  -799, -143, 707,  720,  -103, 833,   549,  131,  383,  -360, -689,
    376,  78,   -402, 836,  -245, -575, -861,  -216, 134,  77,   -626, 283,
    -870, -971, -702, -631, 1,    -899, -841,  952,  -753, -411, 64,   4,
    -715, 372,  281,  -955, 477,  895,  -121,  -447, -99,  -640, -904, 929,
    -659, -677, -632, 714,  -396, -852, -510,  -983, 387,  428,  354,  35,
    -985, -670, 655,  814,  -332, 266,  125,   701,  -140, -667, -261, -292,
    566,  -631, -488, 869,  703,  -18,  284,   71,   -625, 428,  -247, 216,
    239,  631,  10,   51,   -476, 507,  541,   -912, 481,  -766, 536,  -148,
    -984, 483,  -769, 404,  282,  24,   530,   644,  470,  -996, 794,  182,
    587,  -105, 569,  640,  -608, 574,  326,   -936, 429,  -600, -108, -785,
    63,   177,  559,  -776, -789, 331,  -504,  -605, 817,  -549, -248, 639,
    230,  283,  -322, -101, 286,  -400, -951,  -994, -628, -446, -772, -495,
    917,  -803, -828, -933, -921, -954, -684,  -910, -925, 951,  954,  366,
    997,  -122, 669,  357,  -89,  249,  -441,  -533, 218,  -455, 397,  -517,
    -3,   -200, 335,  -757, 800,  617,  161,   436,  454,  -231, -639, -483,
    641,  -599, 579,  368,  -758, -349, 179,   582,  -639, 146,  728,  528,
    -4,   -18,  852,  897,  -688, 186,  -132,  569,  -330, -478, -805, 344,
    292,  -193, 930,  955,  -754, 93,   -937,  273,  -129, 950,  -998, -538,
    -312, -416, 650,  -437, 214,  -718, 284,   -428, -208, 974,  58,   386,
    -28,  473,  -20,  418,  597,  -436, 255,   -774, 341,  50,   -529, 335,
    -239, 573,  -163, 853,  -585, -728, 940,   -991, -442, -482, -926, 914,
    996,  383,  789,  514,  -814, -832, 447,   54,   689,  -288, 70,   800,
    -360, -670, 508,  -856, 632,  -219, 268,   -377, -244, -264, -658, -482,
    55,   -502, 942,  97,   497,  -466, 748,   969,  -388, 476,  -163, 1,
    869,  -446, 593,  -805, 418,  -977, -368,  700,  -124, -922, 524,  -578,
    -721, 869,  -208, -785, 798,  -540, -462,  21,   -50,  86,   -802, -381,
    946,  -703, 986,  980,  -62,  431,  576,   -835, 457,  359,  150,  -755,
    -128, 749,  -86,  701,  -177, -371, 567,   -958, 155,  832,  -240, 319,
    -583, -465, -367, -684, 717,  -92,  -812,  320,  140,  665,  212,  340,
    917,  -251, 36,   128,  -723, 88,   999,   200,  -655, 683,  -955, 994,
    468,  926,  -854, 658,  829,  -725, 516,   -952, 572,  830,  932,  -699,
    -890, -808, -59,  617,  -183, 819,  -888,  581,  987,  432,  -610, -199,
    815,  835,  863,  431,  261,  335,  -210,  938,  717,  -951, 438,  -688,
    -97,  666,  532,  -88,  -503, -673, 372,   397,  179,  955,  -789, -876,
    69,   -355, 566,  916,  851,  -112, -849,  658,  105,  -562, -59,  607,
    445,  889,  -288, 253,  355,  524,  -212,  321,  -107, -580, -591, -99,
    -982, 103,  -273, -641, -412, -825, 655,   466,  559,  -141, 241,  -42,
    -926, -857, -877, -267, 332,  187,  -662,  -561, -911, 391,  480,  677,
    844,  538,  -328, -446, -936, -718, -650,  331,  641,  258,  151,  -94,
    60,   -359, 99,   599,  -535, 371,  -760,  -439, -862, -51,  862,  416,
    -709, 879,  -881, 906,  -814, 393,  801,   -254, 187,  880,  527,  921,
    644,  -66,  -203, -177, 664,  -823, -820,  128,  -940, 530,  32,   -886,
    -302, 42,   -959, -82,  554,  952,  -435,  269,  336,  -262, 808,  -400,
    -922, 393,  478,  -751, -825, 165,  498,   508,  -18,  428,  -876, 27,
    328,  -870, -764, 115,  -106, 583,  870,   -386, -978, 88,   -843, -209,
    771,  -625, -595, 398,  349,  -405, -41,   698,  -662, 327,  -288, 462,
    723,  667,  -250, 34,   -266, -237, 102,   -228, -855, -728, 93,   -335,
    -402, 870,  149,  77,   547,  566,  632,   861,  375,  -70,  -426, 897,
    977,  592,  789,  53,   -117, -191, 73,    -660, -446, -826, 545,  10,
    226,  -434, -523, 734,  389,  -181, 892,   -389, -308, -769, -511, -529,
    109,  790,  -714, -47,  161,  -352, 118,   13,   961,  -815, 930,  -480,
    397,  65,   -722, 672,  -298, 36,   -188,  23,   767,  786,  45,   -276,
    -592, 529,  -957, 928,  536,  951,  -197,  -486, -808, -947, 915,  845,
    904,  -980, 791,  323,  -924, -341, -391,  801,  -555, 582,  -44,  -499,
    -961, 572,  -176, -868, -483, -909, 225,   -977, -504, -856, 587,  933,
    48,   -367, -827, 534,  -533, -687, -967,  618,  -636, -354, -631, 467,
    541,  41,   269,  -648, -465, 767,  31,    885,  390,  113,  -998, -305,
    535,  929,  573,  161,  -550, 619,  463,   -438, 897,  -443, -205, -302,
    185,  758,  902,  388,  -669, 101,  919,   -170, -140, -497, 706,  -325,
    768,  207,  332,  305,  -957, 35,   -722,  625,  988,  761,  558,  120,
    177,  426,  558,  -16,  484,  -78,  -182,  -877, -992, 603,  -135, 3,
    -146, -842, -8,   -97,  -955, -395, 142,   903,  754,  -294, 387,  147,
    -629, 161,  -941, 661,  131,  284,  -872,  -947, -225, -789, 91,   -284,
    -849, 648,  -526, 509,  -858, 301,  -844,  76,   -662, -43,  -844, -936,
    -390, -875, -435, 601,  -232, -56,  -577,  870,  -993, -445, -651, 58,
    -897, -330, 282,  43,   896,  -674, 916,   -385, 449,  -647, 397,  1000,
    177,  -952, 199,  -614, 992,  -555, 651,   852,  -961, -484, 668,  -908,
    -570, -869, -773, 512,  -572, -301, -759,  210,  -246, -694, -390, 54,
    -38,  484,  504,  280,  -135, 907,  -87,   779,  -793, -923, 500,  827,
    111,  482,  493,  -310, -102, 2,    -356,  606,  -961, 722,  56,   -875,
    -896, 110,  -647, -354, -114, 63,   454,   -471, 281,  654,  -90,  -275,
    -660, 152,  572,  -194, -123, 788,  462,   -341, 287,  -946, -877, 821,
    -723, -545, -201, 286,  -306, -621, -905,  342,  516,  -71,  -15,  -640,
    981,  513,  667,  -217, -597, -95,  735,   43,   982,  85,   334,  151,
    317,  -889, 958,  -543, 312,  900,  -236,  798,  -764, -308, 793,  563,
    10,   -521, -714, 358,  -348, -724, -212,  -702, -571, 703,  -847, 67,
    600,  9,    120,  249,  -830, -377, 472,   923,  -860, 208,  686,  865,
    360,  317,  -668, -35,  481,  -143, -613,  952,  344,  34,   -553, 800,
    -661, -153, 94,   362,  142,  -997, 568,   -698, 252,  832,  -357, -38,
    209,  -11,  -151, 472,  506,  895,  -955,  459,  -25,  -750, 695,  512,
    -776, -978, 893,  -372, -396, -746, -957,  708,  -981, 784,  -158, 560,
    -703, -376, -549, -690, 92,   -189, 205,   623,  843,  793,  -118, 763,
    -497, -753, 52,   -937, -209, -13,  -965,  605,  -591, -790, -939, -431,
    933,  256,  175,  -233, -120, -178, 868,   982,  -451, 93,   514,  -365,
    474,  -294, 559,  -419, 229,  -86,  448,   -293, -191, 529,  1000, -183,
    -300, -735, 584,  653,  -66,  734,  -295,  -425, -162, -234, -11,  -672,
    804,  -922, 584,  -664, 417,  398,  -534,  387,  106,  34,   941,  -349,
    -63,  -286, 308,  892,  55,   329,  -39,   -345, 862,  -923, 894,  -312,
    -716, 890,  -512, 814,  693,  827,  353,   804,  624,  100,  910,  -609,
    53,   848,  -784, -178, -628, 624,  -641,  -383, 132,  -116, 480,  -145,
    -444, 609,  -109, -565, 251,  -856, 747,   849,  -93,  -540, -618, -659,
    -716, -468, 762,  472,  158,  280,  481,   -297, -938, -873, -242, -714,
    -349, 283,  -959, -680, -682, 457,  -276,  941,  -486, 315,  -338, 66,
    -949, 378,  427,  951,  588,  662,  -903,  -619, 533,  355,  425,  811,
    -198, 786,  -361, 217,  -68,  204,  -935,  267,  -216, 796,  -305, 842,
    256,  590,  366,  446,  -393, 144,  -326,  50,   -372, 469,  980,  802,
    -651, -555, 495,  -250, -241, -629, -137,  305,  -483, -165, 297,  137,
    909,  797,  -229, -982, 773,  261,  -858,  590,  100,  221,  -423, 940,
    -833, -693, -288, 746,  -446, 133,  381,   -458, -423, 240,  55,   324,
    781,  986,  -710, -571, 150,  -635, 589,   159,  86,   444,  637,  663,
    -54,  -392, 32,   920,  226,  -373, 966,   858,  800,  -579, 815,  -100,
    343,  -644, -296, 889,  30,   161,  141,   -639, 151,  997,  895,  949,
    538,  -415, 592,  -260, -583, 913,  918,   66,   -28,  -281, 623,  -632,
    -371, -733, -12,  -697, -687, 50,   -668,  823,  172,  -125, 567,  -609,
    759,  -898, 698,  -849, 24,   846,  -339,  -858, -497, 179,  562,  976,
    -284, 746,  -587, 830,  758,  -477, -702,  -268, -63,  905,  510,  -856,
    978,  824,  -378, -894, -437, 384,  -447,  84,   938,  -447, -827, 701,
    -540, -271, 979,  -946, 68,   679,  -899,  490,  793,  -995, -527, 770,
    127,  -930, 663,  -231, -550, 120,  828,   -704, 249,  -753, -709, 540,
    85,   -657, -411, 664,  561,  488,  -574,  729,  -472, -391, 74,   -831,
    -999, 452,  822,  -454, -507, -81,  307,   -251, -656, 880,  -454, 51,
    -970, 804,  -945, 522,  -154, -447, 956,   -892, -441, -348, 92,   -37,
    -536, 748,  -691, -182, -372, 507,  218,   -229, 763,  993,  -439, -496,
    -372, 230,  -308, -407, -978, 737,  -435,  892,  -797, 894,  638,  906,
    712,  -180, -771, 366,  -130, 12,   -955,  520,  -973, -138, -606, 505,
    -855, -4,   -601, -830, 941,  -855, 102,   959,  -241, 510,  646,  -890,
    484,  -305, -775, -900, 611,  -192, -831,  953,  722,  686,  973,  423,
    365,  -996, -972, -686, 449,  -742, -382,  -496, 674,  -587, -777, -4,
    -677, 13,   534,  989,  316,  874,  -110,  916,  499,  -761, 867,  -453,
    351,  -986, -354, -654, -922, -48,  -45,   -691, 53,   283,  58,   29,
    638,  153,  408,  882,  -395, -166, 168,   131,  -114, -966, -972, 428,
    -198, -350, 865,  -663, 107,  -896, 981,   23,   665,  847,  14,   -161,
    -201, 740,  -875, -794, -783, -142, 341,   -460, -63,  309,  410,  78,
    955,  -175, 151,  712,  608,  -602, 722,   -97,  450,  -179, 381,  -168,
    890,  -716, -754, -685, 118,  -991, -286,  7,    954,  213,  -316, -909,
    -638, -207, 229,  -178, -616, -701, -464,  -467, -488, -505, 849,  13,
    -700, -735, -925, 313,  -577, 629,  -48,   282,  -816, 319,  227,  -654,
    -835, -655, -604, 510,  -11,  635,  -280,  -832, 943,  58,   -596, 828,
    783,  -654, -650, -833, -36,  315,  -714,  278,  279,  -955, 492,  497,
    -324, 343,  -478, 653,  586,  379,  -805,  94,   824,  -259, -37,  -968,
    834,  846,  -257, 401,  -904, 686,  466,   -222, -810, -521, -696, -198,
    -911, 906,  -676, 818,  694,  838,  657,   109,  935,  -632, 122,  -91,
    -719, 642,  -143, -287, -987, -630, -917,  140,  685,  -383, -164, 862,
    976,  -344, 380,  850,  -918, -364, 795,   -525, -925, -715, -103, -240,
    690,  -268, 681,  -365, 691,  159,  613,   990,  58,   865,  34,   190,
    452,  -256, -976, -541, -386, -523, 183,   -242, 575,  -2,   -513, 68,
    238,  173,  -458, -792, -2,   -608, -358,  -401, 299,  -753, -957, 853,
    -806, 449,  124,  -727, 961,  -514, 603,   -616, 377,  799,  874,  -93,
    -321, 598,  639,  -625, 872,  442,  839,   93,   -869, -564, -441, 405,
    995,  683,  953,  -641, -392, -219, 150,   -465, 485,  405,  -660, -719,
    -955, -335, 798,  -774, -310, -957, -152,  450,  267,  427,  782,  -355,
    -688, -745, -4,   -223, 117,  -202, -191,  484,  860,  991,  -862, 568,
    227,  357,  691,  461,  -472, -486, 124,   -817, 852,  -431, 27,   -253,
    212,  161,  88,   392,  833,  674,  298,   992,  417,  -107, 95,   245,
    -931, -66,  -988, 301,  113,  -271, -667,  373,  857,  849,  160,  -856,
    440,  794,  -258, 308,  -256, -510, 312,   -99,  275,  622,  508,  106,
    64,   198,  968,  -556, -774, 695,  516,   317,  -21,  -843, 959,  548,
    63,   389,  427,  -514, -770, -804, 966,   139,  -793, -701, -538, 567,
    -306, -698, -313, 9,    768,  724,  811,   -917, 813,  -498, -561, -670,
    -145, -305, -662, -509, -171, 383,  665,   853,  -180, 678,  676,  32,
    389,  24,   280,  -778, -746, -832, -303,  -993, -998, 173,  352,  279,
    910,  -591, -276, 956,  328,  363,  -806,  617,  334,  -785, -745, -85,
    -720, 618,  636,  -699, 56,   958,  -878,  14,   928,  -451, -70,  -313,
    -627, -672, 179,  928,  -830, 402,  -169,  439,  -351, 684,  -249, 476,
    979,  70,   842,  426,  442,  -882, 826,   -272, 290,  -479, -28,  -278,
    474,  -866, -70,  -838, 15,   -988, 54,    -133, 700,  -642, 718,  494,
    410,  -467, 521,  -717, -185, 965,  682,   -745, 375,  408,  -810, 157,
    870,  476,  -369, -358, -929, -991, -28,   391,  -715, -440, -876, 394,
    711,  -32,  861,  -166, 777,  -241, -1000, 139,  -762, -420, 931,  84,
    -341, 509,  536,  -293, 921,  -236, 300,   -381, 928,  -449, 948,  -655,
    -675, 282,  824,  344,  602,  210,  -364,  -560, 110,  23,   -212, 761,
    535,  -327, 651,  545,  -819, -314, -510,  -191, 478,  -309, -658, 276,
    -994, -599, 709,  571,  804,  392,  575,   -392, 741,  759,  564,  484,
    351,  -727, -908, -279, -326, 772,  -52,   -473, -919, 703,  312,  -79,
    -42,  195,  -170, 480,  401,  -969, 614,   -676, 649,  -104, 886,  913,
    -630, -716, -317, -250, 410,  861,  987,   -338, 733,  569,  937,  180,
    838,  880,  780,  -182, -451, 590,  -201,  -916, 120,  -315, 748,  982,
    171,  896,  -800, -968, -151, -651, -723,  296,  -21,  135,  -451, 208,
    -187, -697, 82,   -59,  776,  96,   -436,  -809, 694,  926,  738,  165,
    -542, -929, 604,  349,  -682, -879, -587,  634,  762,  885,  208,  72,
    369,  563,  697,  813,  -808, 209,  932,   -651, 299,  749,  -350, 780,
    -503, -382, -579, -493, -665, 469,  -334,  752,  -941, -111, 635,  -900,
    467,  519,  59,   -209, 832,  796,  -6,    466,  -492, 893,  671,  854,
    -983, -103, -405, 360,  -655, 500,  556,   524,  -37,  115,  382,  -395,
    144,  125,  -517, -842, -651, -790, 975,   -228, -147, -400, 138,  228,
    278,  469,  -237, -103, -572, 64,   42,    -532, -240, 614,  535,  204,
    649,  -141, -29,  212,  913,  329,  21,    -923, 343,  989,  586,  -301,
    -135, -624, 343,  -56,  263,  -760, 404,   -533, 921,  960,  -163, 935,
    556,  519,  -529, -784, -811, -711, -381,  581,  -393, -641, 59,   -349,
    -219, -470, 317,  218,  568,  -723, 129,   492,  -955, 168,  599,  637,
    -268, -786, 567,  435,  728,  -423, -47,   -507, 997,  303,  -566, 223,
    -550, 476,  445,  376,  983,  494,  -63,   521,  659,  -334, 776,  -786,
    645,  -764, -355, -684, 7,    -21,  566,   -983, -949, -946, -558, 746,
    -952, -883, 998,  588,  -163, 834,  -805,  -933, -391, -818, -92,  660,
    -915, 465,  174,  -612, -699, 811,  727,   365,  598,  -645, 215,  870,
    -376, -104, 783,  -99,  -223, -226, 717,   878,  694,  -305, 506,  -533,
    -358, -594, -921, -384, 525,  890,  950,   37,   557,  130,  56,   -522,
    873,  386,  153,  -937, -935, 411,  -3,    -366, -473, -990, -737, 771,
    -697, 44,   -454, -725, -232, 912,  796,   395,  672,  586,  -118, 211,
    -39,  -751, 337,  -755, -596, 869,  590,   982,  -288, -489, 516,  300,
    65,   -811, 916,  -616, -514, 841,  332,   349,  505,  237,  -535, -313,
    -813, 584,  481,  969,  686,  -846, -208,  490,  -800, 448,  522,  -434,
    -960, -243, 971,  -123, 575,  755,  -763,  576,  496,  725,  -945, 957,
    654,  52,   162,  -643, -446, 748,  -917,  355,  -650, 831,  -450, -177,
    421,  -40,  -410, -377, 606,  191,  -437,  122,  -253, -720, 973,  746,
    302,  778,  179,  322,  115,  -440, 851,   131,  -672, -14,  -174, -147,
    618,  -432, 279,  -228, -895, -923, -540,  -241, -200, -256, 708,  -736,
    696,  -135, 20,   381,  -915, 376,  -477,  -130, -276, -736, 182,  553,
    696,  -138, -115, 454,  574,  -36,  -823,  -383, 241,  291,  438,  -785,
    218,  556,  692,  -227, -615, -925, -489,  371,  -957, 226,  -509, 943,
    -732, -917, 747,  720,  -72,  223,  -728,  270,  -263, 244,  739,  -541,
    -297, 60,   -345, 152,  -336, 801,  570,   772,  821,  95,   -168, 60,
    902,  -576, 704,  -90,  -196, -576, 888,   404,  897,  820,  497,  -220,
    -987, -118, 93,   -587, 259,  972,  -595,  -108, 67,   356,  -817, -986,
    789,  -563, 581,  -919, 33,   -629, 258,   19,   597,  -541, 356,  803,
    -648, 943,  -682, 982,  307,  -805, -651,  -52,  -421, -664, -810, 733,
    -340, -216, 588,  80,   -538, 516,  447,   122,  722,  557,  -119, -848,
    -907, 570,  -60,  223,  853,  -259, -976,  -780, 172,  505,  -666, 808,
    -866, 332,  -100, -648, -452, -993, -67,   -664, -240, 489,  -808, 274,
    287,  663,  -755, -988, 551,  283,  -330,  -612, -175, -133, -708, 781,
    612,  -761, -744, -572, -740, 539,  -366,  -257, 786,  34,   -711, -526,
    -964, -64,  -667, -109, -803, -347, -459,  -366, 530,  -153, -236, -995,
    782,  40,   471,  -932, 978,  -838, -892,  315,  -161, -814, -776, 855,
    -841, -514, -524, 584,  -248, 713,  255,   -682, 408,  -140, 687,  -735,
    -103, 598,  -441, -21,  -780, 914,  940,   480,  -247, -107, -197, -826,
    781,  -593, 530,  -171, 557,  571,  -657,  930,  221,  656,  116,  -91,
    638,  892,  -740, 294,  615,  -271, 522,   870,  -586, -285, -910, 708,
    3,    88,   -951, -918, -951, 599,  -795,  -759, 604,  -476, 122,  297,
    462,  4,    369,  653,  744,  839,  -892,  -103, 679,  -71,  955,  -86,
    -565, 108,  -613, -508, -685, 227,  -707,  403,  897,  -36,  668,  463,
    281,  -9,   -964, 176,  170,  621,  839,   -510, -947, -642, -173, 77,
    -966, 239,  141,  -938, 24,   -604, 225,   954,  -784, -729, -763, -545,
    968,  904,  755,  645,  -26,  -602, -727,  885,  228,  933,  726,  340,
    458,  535,  -652, -425, 883,  -831, 249,   -118, 242,  -540, 381,  -484,
    -44,  884,  889,  -106, 949,  -174, -895,  -225, 671,  966,  19,   -564,
    -567, -895, -956, -523, 462,  -150, -827,  32,   -285, -143, -787, 351,
    -194, -212, -371, 613,  -184, 63,   -577,  904,  193,  356,  -13,  566,
    -134, 712,  129,  -315, -643, -776, -984,  532,  226,  -61,  27,   -836,
    424,  -890, 986,  -568, -275, -680, 843,   513,  -595, 310,  508,  938,
    859,  447,  258,  788,  -503, -436, 348,   339,  -271, -528, -669, 860,
    280,  -264, -332, -655, -239, 613,  -888,  -425, -11,  -419, 56,   -182,
    -720, 114,  483,  874,  -456, -607, 432,   195,  283,  76,   -252, 406,
    -345, -826, 132,  688,  -352, 77,   -620,  -239, -768, -960, -319, -285,
    101,  284,  -945, 952,  816,  -867, -840,  41,   787,  885,  521,  331,
    -526, 593,  -39,  -328, -141, 541,  557,   -565, 680,  358,  837,  -806,
    909,  -28,  -565, 409,  -288, 381,  539,   986,  412,  776,  722,  -767,
    941,  255,  -61,  -500, 582,  -312, -503,  -877, -458, -376, 746,  362,
    -905, 878,  -319, 194,  943,  441,  -944,  724,  -905, 819,  -553, 568,
    -831, -397, 596,  859,  -520, -340, -207,  -5,   -217, 36,   -929, -546,
    72,   -722, 254,  482,  391,  -439, -66,   -499, -636, -536, 907,  -869,
    118,  790,  641,  231,  -783, -320, 231,   538,  456,  847,  -790, -999,
    -379, 736,  -936, 856,  -948, -891, -857,  161,  -242, -428, 419,  -913,
    1000, -227, -2,   -652, 149,  -821, -454,  882,  -791, 13,   -158, 403,
    -65,  746,  -506, -398, -348, -679, -725,  -634, -309, -924, -127, 707,
    510,  -511, 548,  969,  -948, 363,  -734,  193,  279,  -83,  -193, -480,
    943,  629,  -217, 139,  757,  -36,  -129,  412,  858,  -25,  -498, 802,
    -645, -967, 435,  176,  -366, 137,  -822,  689,  615,  -55,  -866, 269,
    -237, 93,   58,   -288, -420, 107,  -951,  -760, -599, -738, -499, 725,
    -168, -603, 770,  -527, 568,  234,  -876,  -728, 68,   213,  20,   -830,
    -41,  -141, 650,  -838, -866, -171, 278,   389,  181,  720,  -226, -124,
    -890, -293, -958, -630, 623,  387,  854,   -470, 18,   -957, 683,  912,
    -108, 232,  -767, 267,  -827, 686,  -26,   -341, -947, -653, 173,  13,
    -82,  -309, 54,   609,  764,  -193, -955,  -240, -381, 969,  -434, 216,
    791,  269,  870,  507,  -407, 732,  -225,  554,  312,  688,  280,  -211,
    -123, 352,  6,    -133, -702, -756, -150,  -187, 412,  935,  -981, -523,
    900,  26,   -951, -52,  191,  834,  994,   -320, -721, 286,  -318, -568,
    605,  154,  -65,  -771, 985,  -673, -339,  -948, 68,   354,  -494, -46,
    -688, -344, -564, -113, -431, 141,  -552,  17,   -238, 564,  -918, 102,
    233,  478,  -308, 913,  -277, 527,  431,   137,  632,  336,  631,  294,
    -391, -706, 883,  -476, 917,  -545, -209,  -815, 704,  268,  349,  231,
    -785, -298, 653,  -524, 487,  643,  -448,  712,  -107, 837,  69,   853,
    -222, -757, -861, 952,  319,  -710, -915,  913,  -749, 49,   -711, -159,
    -171, 916,  240,  -956, -217, -368, -35,   856,  -583, -864, -59,  416,
    -721, -209, -287, -689, -622, -102, 74,    -586, -262, 985,  288,  -511,
    769,  619,  -570, 7,    -649, -540, 391,   241,  444,  631,  -174, -497,
    -406, 492,  194,  -61,  -229, -399, -87,   451,  -611, 13,   756,  -781,
    -978, 790,  421,  -578, -691, 663,  288,   359,  605,  -824, -984, 858,
    181,  622,  900,  729,  -988, -438, 391,   -173, 609,  422,  -696, 944,
    -167, 542,  487,  -822, -768, -982, -105,  -845, 493,  259,  -745, 5,
    -217, -318, -148, 829,  -991, 203,  -874,  -268, -627, -158, -744, -239,
    -569, 926,  -276, -425, -886, 916,  -880,  -700, 271,  414,  -972, -500,
    630,  -269, -86,  -478, -926, -931, 164,   670,  269,  -947, 41,   -153,
    827,  -300, 377,  -273, -100, 672,  -10,   -768, -29,  -249, 28,   -83,
    852,  760,  -373, 60,   871,  167,  -106,  -860, -468, -44,  807,  -248,
    31,   -911, 261,  -840, 596,  -453, 407,   958,  -618, 487,  -318, 219,
    -933, -898, -552, -354, 568,  963,  -124,  -398, 428,  433,  -991, 145,
    592,  861,  -360, -562, 247,  663,  771,   259,  -1,   -624, -346, 260,
    870,  -635, -193, 118,  -862, -183, 575,   377,  620,  -361, -692, 222,
    -138, 28,   -495, -629, 592,  -492, 505,   221,  -116, 879,  -535, 993,
    -104, -696, 99,   59,   106,  -455, 742,   553,  -701, -981, 154,  -495,
    -223, -932, -32,  -984, -627, 354,  -66,   -464, 500,  -922, 776,  -771,
    -420, -753, -751, 831,  -36,  146,  465,   480,  953,  -532, -860, -464,
    330,  12,   -997, 272,  124,  -760, -403,  -357, -19,  -602, -497, -429,
    289,  -477, 83,   -290, -700, -414, -896,  -841, -532, -218, -437, -940,
    36,   -233, -14,  -74,  349,  -949, 108,   865,  -372, 536,  896,  353,
    499,  -62,  -168, -392, 450,  54,   -933,  121,  -658, -431, -36,  315,
    -439, 269,  -546, 139,  -574, 337,  223,   -705, 45,   606,  112,  -535,
    528,  41,   -25,  -767, -331, -736, 504,   966,  589,  187,  -612, -57,
    -563, 744,  -507, 243,  944,  447,  -498,  -758, -771, -692, -356, -70,
    540,  -103, -350, -512, -111, 547,  545,   -603, 71,   -965, -655, -157,
    532,  -216, 195,  -161, -622, 903,  653,   96,   82,   -250, 41,   -674,
    755,  -817, -91,  713,  479,  275,  763,   -331, -832, 527,  234,  -730,
    484,  341,  738,  987,  -899, -697, 445,   999,  342,  -807, 208,  -163,
    215,  -611, -580, 680,  -859, 714,  688,   725,  348,  361,  -687, 662,
    -983, 907,  -219, 50,   -903, 637,  -600,  -742, -35,  -579, -618, -179,
    481,  555,  249,  -891, -492, 882,  -825,  837,  -653, -250, 805,  494,
    -174, -144, 71,   -303, 278,  999,  -722,  -721, -831, -450, 603,  -454,
    -673, 119,  -509, 203,  754,  -179, 844,   -151, 828,  -190, 10,   529,
    700,  795,  398,  322,  -422, -100, -772,  -938, -699, 314,  285,  -624,
    732,  -306, 104,  -876, 180,  974,  -168,  197,  -655, 63,   -364, 878,
    130,  -532, 589,  12,   378,  -329, 295,   -414, 0,    66,   292,  -987,
    -714, -274, -238, -868, 503,  -947, 370,   -142, -22,  30,   -681, -247,
    -364, -638, -686, 499,  -182, -791, 319,   303,  224,  -739, 997,  -286,
    868,  236,  -124, 93,   793,  901,  -9,    293,  334,  495,  -956, -555,
    541,  -125, -87,  727,  741,  550,  -904,  592,  -766, 855,  434,  -415,
    -214, 582,  -851, 83,   573,  -318, 86,    -667, 298,  -699, 235,  -94,
    799,  -996, -779, 32,   476,  287,  408,   23,   28,   66,   380,  493,
    -318, 442,  729,  843,  -168, 398,  -340,  653,  143,  90,   922,  -178,
    452,  667,  -189, -150, -568, -584, -666,  55,   -131, 121,  -660, -639,
    174,  459,  -825, -920, -850, 19,   388,   -11,  -391, 28,   -607, -403,
    730,  -608, 457,  -764, -844, -350, -755,  -560, -33,  -151, 375,  -216,
    -830, 631,  409,  534,  -515, -733, -581,  -278, 684,  -29,  -532, -677,
    401,  788,  484,  508,  -34,  -696, -784,  -899, -425, -558, -347, -958,
    -547, -878, 330,  405,  -641, -805, 519,   361,  628,  804,  899,  -772,
    826,  369,  724,  29,   484,  -897, 755,   -951, 915,  561,  -972, -177,
    410,  350,  0,    -162, 875,  98,   763,   243,  -444, -321, 596,  -692,
    -744, 515,  89,   -683, 208,  -620, 306,   -646, 54,   795,  -893, -525,
    -902, -180, -656, -956, -734, -895, 883,   -684, -886, -710, 532,  -475,
    -661, 709,  -643, 568,  -3,   -595, 80,    -677, -268, 301,  -718, 401,
    347,  -778, 424,  -2,   869,  4,    794,   -661, -444, -281, 142,  408,
    956,  -137, -762, -724};
volatile int alist_size = 4096;
