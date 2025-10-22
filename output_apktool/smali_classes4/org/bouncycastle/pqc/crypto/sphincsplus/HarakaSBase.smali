.class Lorg/bouncycastle/pqc/crypto/sphincsplus/HarakaSBase;
.super Ljava/lang/Object;
.source "HarakaSBase.java"


# instance fields
.field protected final buffer:[B

.field protected haraka256_rc:[[I

.field protected haraka512_rc:[[J

.field protected off:I


# direct methods
.method protected constructor <init>()V
    .locals 14

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const/16 v0, 0x8

    new-array v1, v0, [J

    fill-array-data v1, :array_0

    new-array v2, v0, [J

    fill-array-data v2, :array_1

    new-array v3, v0, [J

    fill-array-data v3, :array_2

    new-array v4, v0, [J

    fill-array-data v4, :array_3

    new-array v5, v0, [J

    fill-array-data v5, :array_4

    new-array v6, v0, [J

    fill-array-data v6, :array_5

    new-array v7, v0, [J

    fill-array-data v7, :array_6

    new-array v8, v0, [J

    fill-array-data v8, :array_7

    new-array v9, v0, [J

    fill-array-data v9, :array_8

    new-array v10, v0, [J

    fill-array-data v10, :array_9

    const/16 v11, 0xa

    new-array v12, v11, [[J

    const/4 v13, 0x0

    aput-object v1, v12, v13

    const/4 v1, 0x1

    aput-object v2, v12, v1

    const/4 v2, 0x2

    aput-object v3, v12, v2

    const/4 v3, 0x3

    aput-object v4, v12, v3

    const/4 v3, 0x4

    aput-object v5, v12, v3

    const/4 v3, 0x5

    aput-object v6, v12, v3

    const/4 v3, 0x6

    aput-object v7, v12, v3

    const/4 v3, 0x7

    aput-object v8, v12, v3

    aput-object v9, v12, v0

    const/16 v3, 0x9

    aput-object v10, v12, v3

    iput-object v12, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/HarakaSBase;->haraka512_rc:[[J

    .line 26
    new-array v2, v2, [I

    aput v0, v2, v1

    aput v11, v2, v13

    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v0, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/HarakaSBase;->haraka256_rc:[[I

    .line 33
    const/16 v0, 0x40

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/HarakaSBase;->buffer:[B

    .line 34
    iput v13, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/HarakaSBase;->off:I

    .line 35
    return-void

    :array_0
    .array-data 8
        0x24cf0ab9086f628bL
        -0x4229111337c47c7eL    # -8.34308612284233E-11
        -0x26904fcf93252f59L    # -6.546156084996416E122
        -0x5531f7d53706a077L    # -1.676078432208414E-102
        0x449d8e8870d7041fL    # 3.489447431402143E22
        0x49bb2f80b2b3e2f8L    # 1.5520209701854548E47
        0x569ae98d93bb258L
        0x23dc9691e7d6a4b1L    # 6.145655770896743E-136
    .end array-data

    :array_1
    .array-data 8
        -0x2745ef121f01a492L    # -2.6292679825308743E119
        0x7ecf7dbe424c7b8eL    # 6.748615020939513E302
        0x6ea9949c6df62a31L    # 1.1835756175030821E225
        -0x40c0c3681363cec2L    # -4.766341122468715E-4
        0x241d03a196a1861eL    # 9.979581241169313E-135
        -0x152c5aeee91a5d16L    # -3.941889791574587E206
        0x77d479fcad9574e3L    # 1.6902545635337163E269
        0x18657a1af894b7a0L    # 3.765874600035735E-191
    .end array-data

    :array_2
    .array-data 8
        0x10671e1a7f595522L
        -0x265ff0098a2d7385L    # -5.309057635999325E123
        0x2f1edf0d2b9ba661L    # 1.0170353113546807E-81
        -0x4700a7471c21ba07L    # -3.773206257899628E-34
        -0x11d6d9e25679a3feL    # -4.545332269748838E222
        -0x2eacd55b4af420bdL    # -5.817861007223787E83
        -0x7407a7ea64dce44fL    # -5.312720711737885E-251
        -0x20e8bc62dd2b0a67L    # -1.1898834423148703E150
    .end array-data

    :array_3
    .array-data 8
        -0x22b4d0f78f46e740L    # -2.58974445888421E141
        0x757a81f3b39b1bb6L    # 7.960257583444253E257
        0x7a5c556898952e3fL    # 2.5715687751585318E281
        0x7dd70a16d915d87aL    # 1.5067704671106849E298
        0x3ae61971982b8301L    # 5.712558311230167E-25
        -0x3c54ce61fcfbed42L    # -9.7976052433665203E17
        0x17c0033ac094a8cbL    # 2.741921857949429E-194
        0x5a0630fc1a8dc4efL    # 4.694311121929546E125
    .end array-data

    :array_4
    .array-data 8
        0x17708988c1632f73L    # 8.849239197528661E-196
        -0x6d2251f6f4bb0b1L
        0x11ac0285c43aa314L
        0x509059941936b8baL    # 1.2116422007715244E80
        -0x2fc1ead05d316497L    # -3.483345412404803E78
        0x3fbcbcb63a32998bL    # 0.11225451393929668
        0x6204696d692254f7L    # 1.469296709179446E164
        -0x6eaabd126c13a64cL
    .end array-data

    :array_5
    .array-data 8
        -0xb126b557786dc92L
        -0x934be32c71fc40L    # -6.29885272061005E305
        0x69b38602368aeabL
        0x669495b820f0ddbaL    # 1.3994740532770079E186
        -0xbdfec4e474061c3L
        -0x306ca1019bc68cb3L    # -2.1904458731970534E75
        -0x43e230bd35d61c08L    # -4.0399558806768864E-19
        0x7e6d3ed29f78ad67L    # 9.792718521296269E300
    .end array-data

    :array_6
    .array-data 8
        -0xc4f097c80032256L    # -1.89765673535373E249
        0x3a76faef934ddf41L    # 4.6408180932303894E-27
        -0x313851a7c56371cbL    # -3.2688097657865015E71
        -0x1b22e73970fd9f51L    # -7.3692346579630015E177
        0x2c0e5df1ad398eaaL    # 1.777104005811316E-96
        0x478df5236ae22e8cL    # 4.977555370078104E36
        -0x46bb3b90179a0c7L
        -0x55b707d0fd7ecd46L
    .end array-data

    :array_7
    .array-data 8
        0x231b9ae2b76aca77L
        0x292a76a712db0b40L
        0x5850625dc8134491L    # 2.582288254505837E117
        0x73137dd469810fb5L    # 2.129424428140561E246
        -0x75ed595dfd5b8b03L    # -3.790738024500112E-260
        -0x2c90262558742480L    # -8.304847093147992E93
        -0x4cb3a18ccafa8f91L    # -1.3792217247815056E-61
        -0x450e32357e72626aL    # -9.204385702630212E-25
    .end array-data

    :array_8
    .array-data 8
        0x2e99781335e8c641L    # 3.2775841565382925E-84
        -0x42201a331b82a9f2L    # -1.1604300257025845E-10
        -0x8b1640cd1a1fbf4L    # -4.934894433373285E266
        0x1d7a709d65996be9L
        0x670df36a9cf66cddL    # 2.606371959909268E188
        -0x2fa107b5e895d78bL    # -1.4344268687412442E79
        0xf888e828cb1c44eL    # 7.723302057184993E-234
        0x1a79e9c9727b052cL
    .end array-data

    :array_9
    .array-data 8
        -0x7cb68cb79d727b22L    # -7.969801972455513E-293
        0x2e9387d51f22a754L    # 2.513371656647365E-84
        -0x4ffff9725d07ad2aL    # -1.7299971449456164E-77
        0x378c9e1190fd6fe5L    # 4.1064034819251023E-41
        -0x78ffd83ce9218d6dL    # -5.832698769165024E-275
        -0x1ae562bb9d1fb845L    # -1.0784819811384435E179
        -0x6f13080739daee6bL
        0x655953bfbed90a9cL    # 1.6421153225414198E180
    .end array-data
.end method

.method private Swapn([JIII)V
    .locals 12
    .param p1, "q"    # [J
    .param p2, "s"    # I
    .param p3, "pos1"    # I
    .param p4, "pos2"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "q",
            "s",
            "pos1",
            "pos2"
        }
    .end annotation

    .line 500
    const-wide/16 v0, 0x0

    .local v0, "cl":J
    const-wide/16 v2, 0x0

    .line 501
    .local v2, "ch":J
    packed-switch p2, :pswitch_data_0

    .line 516
    :pswitch_0
    return-void

    .line 512
    :pswitch_1
    const-wide v0, 0xf0f0f0f0f0f0f0fL    # 3.815736827118017E-236

    .line 513
    const-wide v2, -0xf0f0f0f0f0f0f10L    # -1.0773087426743214E236

    .line 514
    goto :goto_0

    .line 508
    :pswitch_2
    const-wide v0, 0x3333333333333333L    # 4.667261458395856E-62

    .line 509
    const-wide v2, -0x3333333333333334L    # -9.255963134931783E61

    .line 510
    goto :goto_0

    .line 504
    :pswitch_3
    const-wide v0, 0x5555555555555555L    # 1.1945305291614955E103

    .line 505
    const-wide v2, -0x5555555555555556L

    .line 506
    nop

    .line 518
    :goto_0
    aget-wide v4, p1, p3

    .local v4, "a":J
    aget-wide v6, p1, p4

    .line 519
    .local v6, "b":J
    and-long v8, v4, v0

    and-long v10, v6, v0

    shl-long/2addr v10, p2

    or-long/2addr v8, v10

    aput-wide v8, p1, p3

    .line 520
    and-long v8, v4, v2

    ushr-long/2addr v8, p2

    and-long v10, v6, v2

    or-long/2addr v8, v10

    aput-wide v8, p1, p4

    .line 521
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private Swapn32([IIII)V
    .locals 6
    .param p1, "q"    # [I
    .param p2, "s"    # I
    .param p3, "pos1"    # I
    .param p4, "pos2"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "q",
            "s",
            "pos1",
            "pos2"
        }
    .end annotation

    .line 477
    const/4 v0, 0x0

    .local v0, "cl":I
    const/4 v1, 0x0

    .line 478
    .local v1, "ch":I
    packed-switch p2, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 489
    :pswitch_1
    const v0, 0xf0f0f0f

    .line 490
    const v1, -0xf0f0f10

    goto :goto_0

    .line 485
    :pswitch_2
    const v0, 0x33333333

    .line 486
    const v1, -0x33333334

    .line 487
    goto :goto_0

    .line 481
    :pswitch_3
    const v0, 0x55555555

    .line 482
    const v1, -0x55555556

    .line 483
    nop

    .line 493
    :goto_0
    aget v2, p1, p3

    .local v2, "a":I
    aget v3, p1, p4

    .line 494
    .local v3, "b":I
    and-int v4, v2, v0

    and-int v5, v3, v0

    shl-int/2addr v5, p2

    or-int/2addr v4, v5

    aput v4, p1, p3

    .line 495
    and-int v4, v2, v1

    ushr-int/2addr v4, p2

    and-int v5, v3, v1

    or-int/2addr v4, v5

    aput v4, p1, p4

    .line 496
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private addRoundKey([J[J)V
    .locals 5
    .param p1, "q"    # [J
    .param p2, "sk"    # [J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "q",
            "sk"
        }
    .end annotation

    .line 753
    const/4 v0, 0x0

    aget-wide v1, p1, v0

    aget-wide v3, p2, v0

    xor-long/2addr v1, v3

    aput-wide v1, p1, v0

    .line 754
    const/4 v0, 0x1

    aget-wide v1, p1, v0

    aget-wide v3, p2, v0

    xor-long/2addr v1, v3

    aput-wide v1, p1, v0

    .line 755
    const/4 v0, 0x2

    aget-wide v1, p1, v0

    aget-wide v3, p2, v0

    xor-long/2addr v1, v3

    aput-wide v1, p1, v0

    .line 756
    const/4 v0, 0x3

    aget-wide v1, p1, v0

    aget-wide v3, p2, v0

    xor-long/2addr v1, v3

    aput-wide v1, p1, v0

    .line 757
    const/4 v0, 0x4

    aget-wide v1, p1, v0

    aget-wide v3, p2, v0

    xor-long/2addr v1, v3

    aput-wide v1, p1, v0

    .line 758
    const/4 v0, 0x5

    aget-wide v1, p1, v0

    aget-wide v3, p2, v0

    xor-long/2addr v1, v3

    aput-wide v1, p1, v0

    .line 759
    const/4 v0, 0x6

    aget-wide v1, p1, v0

    aget-wide v3, p2, v0

    xor-long/2addr v1, v3

    aput-wide v1, p1, v0

    .line 760
    const/4 v0, 0x7

    aget-wide v1, p1, v0

    aget-wide v3, p2, v0

    xor-long/2addr v1, v3

    aput-wide v1, p1, v0

    .line 761
    return-void
.end method

.method private addRoundKey32([I[I)V
    .locals 3
    .param p1, "q"    # [I
    .param p2, "sk"    # [I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "q",
            "sk"
        }
    .end annotation

    .line 424
    const/4 v0, 0x0

    aget v1, p1, v0

    aget v2, p2, v0

    xor-int/2addr v1, v2

    aput v1, p1, v0

    .line 425
    const/4 v0, 0x1

    aget v1, p1, v0

    aget v2, p2, v0

    xor-int/2addr v1, v2

    aput v1, p1, v0

    .line 426
    const/4 v0, 0x2

    aget v1, p1, v0

    aget v2, p2, v0

    xor-int/2addr v1, v2

    aput v1, p1, v0

    .line 427
    const/4 v0, 0x3

    aget v1, p1, v0

    aget v2, p2, v0

    xor-int/2addr v1, v2

    aput v1, p1, v0

    .line 428
    const/4 v0, 0x4

    aget v1, p1, v0

    aget v2, p2, v0

    xor-int/2addr v1, v2

    aput v1, p1, v0

    .line 429
    const/4 v0, 0x5

    aget v1, p1, v0

    aget v2, p2, v0

    xor-int/2addr v1, v2

    aput v1, p1, v0

    .line 430
    const/4 v0, 0x6

    aget v1, p1, v0

    aget v2, p2, v0

    xor-int/2addr v1, v2

    aput v1, p1, v0

    .line 431
    const/4 v0, 0x7

    aget v1, p1, v0

    aget v2, p2, v0

    xor-int/2addr v1, v2

    aput v1, p1, v0

    .line 432
    return-void
.end method

.method private brAesCt64BitsliceSbox([J)V
    .locals 256
    .param p1, "q"    # [J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "q"
        }
    .end annotation

    .line 550
    move-object/from16 v0, p1

    const/4 v1, 0x7

    aget-wide v2, v0, v1

    .line 551
    .local v2, "x0":J
    const/4 v4, 0x6

    aget-wide v5, v0, v4

    .line 552
    .local v5, "x1":J
    const/4 v7, 0x5

    aget-wide v8, v0, v7

    .line 553
    .local v8, "x2":J
    const/4 v10, 0x4

    aget-wide v11, v0, v10

    .line 554
    .local v11, "x3":J
    const/4 v13, 0x3

    aget-wide v14, v0, v13

    .line 555
    .local v14, "x4":J
    const/16 v16, 0x2

    aget-wide v17, v0, v16

    .line 556
    .local v17, "x5":J
    const/16 v19, 0x1

    aget-wide v20, v0, v19

    .line 557
    .local v20, "x6":J
    const/16 v22, 0x0

    aget-wide v23, v0, v22

    .line 562
    .local v23, "x7":J
    xor-long v25, v11, v17

    .line 563
    .local v25, "y14":J
    xor-long v27, v2, v20

    .line 564
    .local v27, "y13":J
    xor-long v29, v2, v11

    .line 565
    .local v29, "y9":J
    xor-long v31, v2, v17

    .line 566
    .local v31, "y8":J
    xor-long v33, v5, v8

    .line 567
    .local v33, "t0":J
    xor-long v35, v33, v23

    .line 568
    .local v35, "y1":J
    xor-long v37, v35, v11

    .line 569
    .local v37, "y4":J
    xor-long v39, v27, v25

    .line 570
    .local v39, "y12":J
    xor-long v41, v35, v2

    .line 571
    .local v41, "y2":J
    xor-long v43, v35, v20

    .line 572
    .local v43, "y5":J
    xor-long v45, v43, v31

    .line 573
    .local v45, "y3":J
    xor-long v47, v14, v39

    .line 574
    .local v47, "t1":J
    xor-long v49, v47, v17

    .line 575
    .local v49, "y15":J
    xor-long v51, v47, v5

    .line 576
    .local v51, "y20":J
    xor-long v53, v49, v23

    .line 577
    .local v53, "y6":J
    xor-long v55, v49, v33

    .line 578
    .local v55, "y10":J
    xor-long v57, v51, v29

    .line 579
    .local v57, "y11":J
    xor-long v59, v23, v57

    .line 580
    .local v59, "y7":J
    xor-long v61, v55, v57

    .line 581
    .local v61, "y17":J
    xor-long v63, v55, v31

    .line 582
    .local v63, "y19":J
    xor-long v65, v33, v57

    .line 583
    .local v65, "y16":J
    xor-long v67, v27, v65

    .line 584
    .local v67, "y21":J
    xor-long v69, v2, v65

    .line 589
    .local v69, "y18":J
    and-long v71, v39, v49

    .line 590
    .local v71, "t2":J
    and-long v73, v45, v53

    .line 591
    .local v73, "t3":J
    xor-long v75, v73, v71

    .line 592
    .local v75, "t4":J
    and-long v77, v37, v23

    .line 593
    .local v77, "t5":J
    xor-long v79, v77, v71

    .line 594
    .local v79, "t6":J
    and-long v81, v27, v65

    .line 595
    .local v81, "t7":J
    and-long v83, v43, v35

    .line 596
    .local v83, "t8":J
    xor-long v85, v83, v81

    .line 597
    .local v85, "t9":J
    and-long v87, v41, v59

    .line 598
    .local v87, "t10":J
    xor-long v89, v87, v81

    .line 599
    .local v89, "t11":J
    and-long v91, v29, v57

    .line 600
    .local v91, "t12":J
    and-long v93, v25, v61

    .line 601
    .local v93, "t13":J
    xor-long v95, v93, v91

    .line 602
    .local v95, "t14":J
    and-long v97, v31, v55

    .line 603
    .local v97, "t15":J
    xor-long v99, v97, v91

    .line 604
    .local v99, "t16":J
    xor-long v101, v75, v95

    .line 605
    .local v101, "t17":J
    xor-long v103, v79, v99

    .line 606
    .local v103, "t18":J
    xor-long v105, v85, v95

    .line 607
    .local v105, "t19":J
    xor-long v107, v89, v99

    .line 608
    .local v107, "t20":J
    xor-long v109, v101, v51

    .line 609
    .local v109, "t21":J
    xor-long v111, v103, v63

    .line 610
    .local v111, "t22":J
    xor-long v113, v105, v67

    .line 611
    .local v113, "t23":J
    xor-long v115, v107, v69

    .line 613
    .local v115, "t24":J
    xor-long v117, v109, v111

    .line 614
    .local v117, "t25":J
    and-long v119, v109, v113

    .line 615
    .local v119, "t26":J
    xor-long v121, v115, v119

    .line 616
    .local v121, "t27":J
    and-long v123, v117, v121

    .line 617
    .local v123, "t28":J
    xor-long v125, v123, v111

    .line 618
    .local v125, "t29":J
    xor-long v127, v113, v115

    .line 619
    .local v127, "t30":J
    xor-long v129, v111, v119

    .line 620
    .local v129, "t31":J
    and-long v131, v129, v127

    .line 621
    .local v131, "t32":J
    xor-long v133, v131, v115

    .line 622
    .local v133, "t33":J
    xor-long v135, v113, v133

    .line 623
    .local v135, "t34":J
    xor-long v137, v121, v133

    .line 624
    .local v137, "t35":J
    and-long v139, v115, v137

    .line 625
    .local v139, "t36":J
    xor-long v141, v139, v135

    .line 626
    .local v141, "t37":J
    xor-long v143, v121, v139

    .line 627
    .local v143, "t38":J
    and-long v145, v125, v143

    .line 628
    .local v145, "t39":J
    xor-long v147, v117, v145

    .line 630
    .local v147, "t40":J
    xor-long v149, v147, v141

    .line 631
    .local v149, "t41":J
    xor-long v151, v125, v133

    .line 632
    .local v151, "t42":J
    xor-long v153, v125, v147

    .line 633
    .local v153, "t43":J
    xor-long v155, v133, v141

    .line 634
    .local v155, "t44":J
    xor-long v157, v151, v149

    .line 635
    .local v157, "t45":J
    and-long v159, v155, v49

    .line 636
    .local v159, "z0":J
    and-long v161, v141, v53

    .line 637
    .local v161, "z1":J
    and-long v163, v133, v23

    .line 638
    .local v163, "z2":J
    and-long v165, v153, v65

    .line 639
    .local v165, "z3":J
    and-long v167, v147, v35

    .line 640
    .local v167, "z4":J
    and-long v169, v125, v59

    .line 641
    .local v169, "z5":J
    and-long v171, v151, v57

    .line 642
    .local v171, "z6":J
    and-long v173, v157, v61

    .line 643
    .local v173, "z7":J
    and-long v175, v149, v55

    .line 644
    .local v175, "z8":J
    and-long v177, v155, v39

    .line 645
    .local v177, "z9":J
    and-long v179, v141, v45

    .line 646
    .local v179, "z10":J
    and-long v181, v133, v37

    .line 647
    .local v181, "z11":J
    and-long v183, v153, v27

    .line 648
    .local v183, "z12":J
    and-long v185, v147, v43

    .line 649
    .local v185, "z13":J
    and-long v187, v125, v41

    .line 650
    .local v187, "z14":J
    and-long v189, v151, v29

    .line 651
    .local v189, "z15":J
    and-long v191, v157, v25

    .line 652
    .local v191, "z16":J
    and-long v193, v149, v31

    .line 657
    .local v193, "z17":J
    xor-long v195, v189, v191

    .line 658
    .local v195, "t46":J
    xor-long v197, v179, v181

    .line 659
    .local v197, "t47":J
    xor-long v199, v169, v185

    .line 660
    .local v199, "t48":J
    xor-long v201, v177, v179

    .line 661
    .local v201, "t49":J
    xor-long v203, v163, v183

    .line 662
    .local v203, "t50":J
    xor-long v205, v163, v169

    .line 663
    .local v205, "t51":J
    xor-long v207, v173, v175

    .line 664
    .local v207, "t52":J
    xor-long v209, v159, v165

    .line 665
    .local v209, "t53":J
    xor-long v211, v171, v173

    .line 666
    .local v211, "t54":J
    xor-long v213, v191, v193

    .line 667
    .local v213, "t55":J
    xor-long v215, v183, v199

    .line 668
    .local v215, "t56":J
    xor-long v217, v203, v209

    .line 669
    .local v217, "t57":J
    xor-long v219, v167, v195

    .line 670
    .local v219, "t58":J
    xor-long v221, v165, v211

    .line 671
    .local v221, "t59":J
    move-wide/from16 v224, v14

    .end local v14    # "x4":J
    .local v224, "x4":J
    xor-long v13, v195, v217

    .line 672
    .local v13, "t60":J
    xor-long v226, v187, v217

    .line 673
    .local v226, "t61":J
    move-wide/from16 v228, v11

    .end local v11    # "x3":J
    .local v228, "x3":J
    xor-long v10, v207, v219

    .line 674
    .local v10, "t62":J
    xor-long v230, v201, v219

    .line 675
    .local v230, "t63":J
    xor-long v232, v167, v221

    .line 676
    .local v232, "t64":J
    xor-long v234, v226, v10

    .line 677
    .local v234, "t65":J
    xor-long v236, v161, v230

    .line 678
    .local v236, "t66":J
    xor-long v238, v221, v230

    .line 679
    .local v238, "s0":J
    move-wide/from16 v240, v8

    .end local v8    # "x2":J
    .local v240, "x2":J
    not-long v7, v10

    xor-long v7, v215, v7

    .line 680
    .local v7, "s6":J
    move-wide/from16 v242, v5

    .end local v5    # "x1":J
    .local v242, "x1":J
    not-long v4, v13

    xor-long v4, v199, v4

    .line 681
    .local v4, "s7":J
    move-wide/from16 v244, v10

    .end local v10    # "t62":J
    .local v244, "t62":J
    xor-long v9, v232, v234

    .line 682
    .local v9, "t67":J
    move-wide/from16 v246, v13

    .end local v13    # "t60":J
    .local v246, "t60":J
    xor-long v12, v209, v236

    .line 683
    .local v12, "s3":J
    xor-long v248, v205, v236

    .line 684
    .local v248, "s4":J
    xor-long v250, v197, v234

    .line 685
    .local v250, "s5":J
    move-wide/from16 v252, v7

    .end local v7    # "s6":J
    .local v252, "s6":J
    not-long v6, v12

    xor-long v6, v232, v6

    .line 686
    .local v6, "s1":J
    move-wide/from16 v254, v12

    .end local v12    # "s3":J
    .local v254, "s3":J
    not-long v11, v9

    xor-long v11, v213, v11

    .line 688
    .local v11, "s2":J
    aput-wide v238, v0, v1

    .line 689
    const/4 v8, 0x6

    aput-wide v6, v0, v8

    .line 690
    const/4 v14, 0x5

    aput-wide v11, v0, v14

    .line 691
    const/4 v15, 0x4

    aput-wide v254, v0, v15

    .line 692
    const/16 v223, 0x3

    aput-wide v248, v0, v223

    .line 693
    aput-wide v250, v0, v16

    .line 694
    aput-wide v252, v0, v19

    .line 695
    aput-wide v4, v0, v22

    .line 696
    return-void
.end method

.method private brAesCt64InterleaveIn([JI[II)V
    .locals 12
    .param p1, "q"    # [J
    .param p2, "qPos"    # I
    .param p3, "w"    # [I
    .param p4, "startPos"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "q",
            "qPos",
            "w",
            "startPos"
        }
    .end annotation

    .line 178
    aget v0, p3, p4

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    .line 179
    .local v0, "x0":J
    add-int/lit8 v4, p4, 0x1

    aget v4, p3, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    .line 180
    .local v4, "x1":J
    add-int/lit8 v6, p4, 0x2

    aget v6, p3, v6

    int-to-long v6, v6

    and-long/2addr v6, v2

    .line 181
    .local v6, "x2":J
    add-int/lit8 v8, p4, 0x3

    aget v8, p3, v8

    int-to-long v8, v8

    and-long/2addr v2, v8

    .line 182
    .local v2, "x3":J
    const/16 v8, 0x10

    shl-long v9, v0, v8

    or-long/2addr v0, v9

    .line 183
    shl-long v9, v4, v8

    or-long/2addr v4, v9

    .line 184
    shl-long v9, v6, v8

    or-long/2addr v6, v9

    .line 185
    shl-long v8, v2, v8

    or-long/2addr v2, v8

    .line 186
    const-wide v8, 0xffff0000ffffL

    and-long/2addr v0, v8

    .line 187
    and-long/2addr v4, v8

    .line 188
    and-long/2addr v6, v8

    .line 189
    and-long/2addr v2, v8

    .line 190
    const/16 v8, 0x8

    shl-long v9, v0, v8

    or-long/2addr v0, v9

    .line 191
    shl-long v9, v4, v8

    or-long/2addr v4, v9

    .line 192
    shl-long v9, v6, v8

    or-long/2addr v6, v9

    .line 193
    shl-long v9, v2, v8

    or-long/2addr v2, v9

    .line 194
    const-wide v9, 0xff00ff00ff00ffL

    and-long/2addr v0, v9

    .line 195
    and-long/2addr v4, v9

    .line 196
    and-long/2addr v6, v9

    .line 197
    and-long/2addr v2, v9

    .line 198
    shl-long v9, v6, v8

    or-long/2addr v9, v0

    aput-wide v9, p1, p2

    .line 199
    add-int/lit8 v9, p2, 0x4

    shl-long v10, v2, v8

    or-long/2addr v10, v4

    aput-wide v10, p1, v9

    .line 200
    return-void
.end method

.method private brAesCt64InterleaveOut([I[JI)V
    .locals 12
    .param p1, "w"    # [I
    .param p2, "q"    # [J
    .param p3, "pos"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "w",
            "q",
            "pos"
        }
    .end annotation

    .line 767
    aget-wide v0, p2, p3

    const-wide v2, 0xff00ff00ff00ffL

    and-long/2addr v0, v2

    .line 768
    .local v0, "x0":J
    add-int/lit8 v4, p3, 0x4

    aget-wide v4, p2, v4

    and-long/2addr v4, v2

    .line 769
    .local v4, "x1":J
    aget-wide v6, p2, p3

    const/16 v8, 0x8

    ushr-long/2addr v6, v8

    and-long/2addr v6, v2

    .line 770
    .local v6, "x2":J
    add-int/lit8 v9, p3, 0x4

    aget-wide v9, p2, v9

    ushr-long/2addr v9, v8

    and-long/2addr v2, v9

    .line 771
    .local v2, "x3":J
    ushr-long v9, v0, v8

    or-long/2addr v0, v9

    .line 772
    ushr-long v9, v4, v8

    or-long/2addr v4, v9

    .line 773
    ushr-long v9, v6, v8

    or-long/2addr v6, v9

    .line 774
    ushr-long v8, v2, v8

    or-long/2addr v2, v8

    .line 775
    const-wide v8, 0xffff0000ffffL

    and-long/2addr v0, v8

    .line 776
    and-long/2addr v4, v8

    .line 777
    and-long/2addr v6, v8

    .line 778
    and-long/2addr v2, v8

    .line 779
    shl-int/lit8 p3, p3, 0x2

    .line 780
    const/16 v8, 0x10

    ushr-long v9, v0, v8

    or-long/2addr v9, v0

    long-to-int v10, v9

    aput v10, p1, p3

    .line 781
    add-int/lit8 v9, p3, 0x1

    ushr-long v10, v4, v8

    or-long/2addr v10, v4

    long-to-int v11, v10

    aput v11, p1, v9

    .line 782
    add-int/lit8 v9, p3, 0x2

    ushr-long v10, v6, v8

    or-long/2addr v10, v6

    long-to-int v11, v10

    aput v11, p1, v9

    .line 783
    add-int/lit8 v9, p3, 0x3

    ushr-long v10, v2, v8

    or-long/2addr v10, v2

    long-to-int v8, v10

    aput v8, p1, v9

    .line 784
    return-void
.end method

.method private brAesCt64Ortho([J)V
    .locals 8
    .param p1, "q"    # [J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "q"
        }
    .end annotation

    .line 441
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1, v0}, Lorg/bouncycastle/pqc/crypto/sphincsplus/HarakaSBase;->Swapn([JIII)V

    .line 442
    const/4 v2, 0x2

    const/4 v3, 0x3

    invoke-direct {p0, p1, v0, v2, v3}, Lorg/bouncycastle/pqc/crypto/sphincsplus/HarakaSBase;->Swapn([JIII)V

    .line 443
    const/4 v4, 0x4

    const/4 v5, 0x5

    invoke-direct {p0, p1, v0, v4, v5}, Lorg/bouncycastle/pqc/crypto/sphincsplus/HarakaSBase;->Swapn([JIII)V

    .line 444
    const/4 v6, 0x6

    const/4 v7, 0x7

    invoke-direct {p0, p1, v0, v6, v7}, Lorg/bouncycastle/pqc/crypto/sphincsplus/HarakaSBase;->Swapn([JIII)V

    .line 446
    invoke-direct {p0, p1, v2, v1, v2}, Lorg/bouncycastle/pqc/crypto/sphincsplus/HarakaSBase;->Swapn([JIII)V

    .line 447
    invoke-direct {p0, p1, v2, v0, v3}, Lorg/bouncycastle/pqc/crypto/sphincsplus/HarakaSBase;->Swapn([JIII)V

    .line 448
    invoke-direct {p0, p1, v2, v4, v6}, Lorg/bouncycastle/pqc/crypto/sphincsplus/HarakaSBase;->Swapn([JIII)V

    .line 449
    invoke-direct {p0, p1, v2, v5, v7}, Lorg/bouncycastle/pqc/crypto/sphincsplus/HarakaSBase;->Swapn([JIII)V

    .line 451
    invoke-direct {p0, p1, v4, v1, v4}, Lorg/bouncycastle/pqc/crypto/sphincsplus/HarakaSBase;->Swapn([JIII)V

    .line 452
    invoke-direct {p0, p1, v4, v0, v5}, Lorg/bouncycastle/pqc/crypto/sphincsplus/HarakaSBase;->Swapn([JIII)V

    .line 453
    invoke-direct {p0, p1, v4, v2, v6}, Lorg/bouncycastle/pqc/crypto/sphincsplus/HarakaSBase;->Swapn([JIII)V

    .line 454
    invoke-direct {p0, p1, v4, v3, v7}, Lorg/bouncycastle/pqc/crypto/sphincsplus/HarakaSBase;->Swapn([JIII)V

    .line 455
    return-void
.end method

.method private static brAesCtBitsliceSbox([I)V
    .locals 131
    .param p0, "q"    # [I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "q"
        }
    .end annotation

    .line 229
    const/4 v0, 0x7

    aget v1, p0, v0

    .line 230
    .local v1, "x0":I
    const/4 v2, 0x6

    aget v3, p0, v2

    .line 231
    .local v3, "x1":I
    const/4 v4, 0x5

    aget v5, p0, v4

    .line 232
    .local v5, "x2":I
    const/4 v6, 0x4

    aget v7, p0, v6

    .line 233
    .local v7, "x3":I
    const/4 v8, 0x3

    aget v9, p0, v8

    .line 234
    .local v9, "x4":I
    const/4 v10, 0x2

    aget v11, p0, v10

    .line 235
    .local v11, "x5":I
    const/4 v12, 0x1

    aget v13, p0, v12

    .line 236
    .local v13, "x6":I
    const/4 v14, 0x0

    aget v15, p0, v14

    .line 241
    .local v15, "x7":I
    xor-int v16, v7, v11

    .line 242
    .local v16, "y14":I
    xor-int v17, v1, v13

    .line 243
    .local v17, "y13":I
    xor-int v18, v1, v7

    .line 244
    .local v18, "y9":I
    xor-int v19, v1, v11

    .line 245
    .local v19, "y8":I
    xor-int v20, v3, v5

    .line 246
    .local v20, "t0":I
    xor-int v21, v20, v15

    .line 247
    .local v21, "y1":I
    xor-int v22, v21, v7

    .line 248
    .local v22, "y4":I
    xor-int v23, v17, v16

    .line 249
    .local v23, "y12":I
    xor-int v24, v21, v1

    .line 250
    .local v24, "y2":I
    xor-int v25, v21, v13

    .line 251
    .local v25, "y5":I
    xor-int v26, v25, v19

    .line 252
    .local v26, "y3":I
    xor-int v27, v9, v23

    .line 253
    .local v27, "t1":I
    xor-int v28, v27, v11

    .line 254
    .local v28, "y15":I
    xor-int v29, v27, v3

    .line 255
    .local v29, "y20":I
    xor-int v30, v28, v15

    .line 256
    .local v30, "y6":I
    xor-int v31, v28, v20

    .line 257
    .local v31, "y10":I
    xor-int v32, v29, v18

    .line 258
    .local v32, "y11":I
    xor-int v33, v15, v32

    .line 259
    .local v33, "y7":I
    xor-int v34, v31, v32

    .line 260
    .local v34, "y17":I
    xor-int v35, v31, v19

    .line 261
    .local v35, "y19":I
    xor-int v36, v20, v32

    .line 262
    .local v36, "y16":I
    xor-int v37, v17, v36

    .line 263
    .local v37, "y21":I
    xor-int v38, v1, v36

    .line 268
    .local v38, "y18":I
    and-int v39, v23, v28

    .line 269
    .local v39, "t2":I
    and-int v40, v26, v30

    .line 270
    .local v40, "t3":I
    xor-int v41, v40, v39

    .line 271
    .local v41, "t4":I
    and-int v42, v22, v15

    .line 272
    .local v42, "t5":I
    xor-int v43, v42, v39

    .line 273
    .local v43, "t6":I
    and-int v44, v17, v36

    .line 274
    .local v44, "t7":I
    and-int v45, v25, v21

    .line 275
    .local v45, "t8":I
    xor-int v46, v45, v44

    .line 276
    .local v46, "t9":I
    and-int v47, v24, v33

    .line 277
    .local v47, "t10":I
    xor-int v48, v47, v44

    .line 278
    .local v48, "t11":I
    and-int v49, v18, v32

    .line 279
    .local v49, "t12":I
    and-int v50, v16, v34

    .line 280
    .local v50, "t13":I
    xor-int v51, v50, v49

    .line 281
    .local v51, "t14":I
    and-int v52, v19, v31

    .line 282
    .local v52, "t15":I
    xor-int v53, v52, v49

    .line 283
    .local v53, "t16":I
    xor-int v54, v41, v51

    .line 284
    .local v54, "t17":I
    xor-int v55, v43, v53

    .line 285
    .local v55, "t18":I
    xor-int v56, v46, v51

    .line 286
    .local v56, "t19":I
    xor-int v57, v48, v53

    .line 287
    .local v57, "t20":I
    xor-int v58, v54, v29

    .line 288
    .local v58, "t21":I
    xor-int v59, v55, v35

    .line 289
    .local v59, "t22":I
    xor-int v60, v56, v37

    .line 290
    .local v60, "t23":I
    xor-int v61, v57, v38

    .line 292
    .local v61, "t24":I
    xor-int v62, v58, v59

    .line 293
    .local v62, "t25":I
    and-int v63, v58, v60

    .line 294
    .local v63, "t26":I
    xor-int v64, v61, v63

    .line 295
    .local v64, "t27":I
    and-int v65, v62, v64

    .line 296
    .local v65, "t28":I
    xor-int v66, v65, v59

    .line 297
    .local v66, "t29":I
    xor-int v67, v60, v61

    .line 298
    .local v67, "t30":I
    xor-int v68, v59, v63

    .line 299
    .local v68, "t31":I
    and-int v69, v68, v67

    .line 300
    .local v69, "t32":I
    xor-int v70, v69, v61

    .line 301
    .local v70, "t33":I
    xor-int v71, v60, v70

    .line 302
    .local v71, "t34":I
    xor-int v72, v64, v70

    .line 303
    .local v72, "t35":I
    and-int v73, v61, v72

    .line 304
    .local v73, "t36":I
    xor-int v74, v73, v71

    .line 305
    .local v74, "t37":I
    xor-int v75, v64, v73

    .line 306
    .local v75, "t38":I
    and-int v76, v66, v75

    .line 307
    .local v76, "t39":I
    xor-int v77, v62, v76

    .line 309
    .local v77, "t40":I
    xor-int v78, v77, v74

    .line 310
    .local v78, "t41":I
    xor-int v79, v66, v70

    .line 311
    .local v79, "t42":I
    xor-int v80, v66, v77

    .line 312
    .local v80, "t43":I
    xor-int v81, v70, v74

    .line 313
    .local v81, "t44":I
    xor-int v82, v79, v78

    .line 314
    .local v82, "t45":I
    and-int v83, v81, v28

    .line 315
    .local v83, "z0":I
    and-int v84, v74, v30

    .line 316
    .local v84, "z1":I
    and-int v85, v70, v15

    .line 317
    .local v85, "z2":I
    and-int v86, v80, v36

    .line 318
    .local v86, "z3":I
    and-int v87, v77, v21

    .line 319
    .local v87, "z4":I
    and-int v88, v66, v33

    .line 320
    .local v88, "z5":I
    and-int v89, v79, v32

    .line 321
    .local v89, "z6":I
    and-int v90, v82, v34

    .line 322
    .local v90, "z7":I
    and-int v91, v78, v31

    .line 323
    .local v91, "z8":I
    and-int v92, v81, v23

    .line 324
    .local v92, "z9":I
    and-int v93, v74, v26

    .line 325
    .local v93, "z10":I
    and-int v94, v70, v22

    .line 326
    .local v94, "z11":I
    and-int v95, v80, v17

    .line 327
    .local v95, "z12":I
    and-int v96, v77, v25

    .line 328
    .local v96, "z13":I
    and-int v97, v66, v24

    .line 329
    .local v97, "z14":I
    and-int v98, v79, v18

    .line 330
    .local v98, "z15":I
    and-int v99, v82, v16

    .line 331
    .local v99, "z16":I
    and-int v100, v78, v19

    .line 336
    .local v100, "z17":I
    xor-int v101, v98, v99

    .line 337
    .local v101, "t46":I
    xor-int v102, v93, v94

    .line 338
    .local v102, "t47":I
    xor-int v103, v88, v96

    .line 339
    .local v103, "t48":I
    xor-int v104, v92, v93

    .line 340
    .local v104, "t49":I
    xor-int v105, v85, v95

    .line 341
    .local v105, "t50":I
    xor-int v106, v85, v88

    .line 342
    .local v106, "t51":I
    xor-int v107, v90, v91

    .line 343
    .local v107, "t52":I
    xor-int v108, v83, v86

    .line 344
    .local v108, "t53":I
    xor-int v109, v89, v90

    .line 345
    .local v109, "t54":I
    xor-int v110, v99, v100

    .line 346
    .local v110, "t55":I
    xor-int v111, v95, v103

    .line 347
    .local v111, "t56":I
    xor-int v112, v105, v108

    .line 348
    .local v112, "t57":I
    xor-int v113, v87, v101

    .line 349
    .local v113, "t58":I
    xor-int v114, v86, v109

    .line 350
    .local v114, "t59":I
    const/16 v115, 0x7

    xor-int v0, v101, v112

    .line 351
    .local v0, "t60":I
    xor-int v116, v97, v112

    .line 352
    .local v116, "t61":I
    const/16 v117, 0x6

    xor-int v2, v107, v113

    .line 353
    .local v2, "t62":I
    xor-int v118, v104, v113

    .line 354
    .local v118, "t63":I
    xor-int v119, v87, v114

    .line 355
    .local v119, "t64":I
    xor-int v120, v116, v2

    .line 356
    .local v120, "t65":I
    xor-int v121, v84, v118

    .line 357
    .local v121, "t66":I
    xor-int v122, v114, v118

    .line 358
    .local v122, "s0":I
    const/16 v123, 0x5

    not-int v4, v2

    xor-int v4, v111, v4

    .line 359
    .local v4, "s6":I
    const/16 v124, 0x4

    not-int v6, v0

    xor-int v6, v103, v6

    .line 360
    .local v6, "s7":I
    const/16 v125, 0x3

    xor-int v8, v119, v120

    .line 361
    .local v8, "t67":I
    const/16 v126, 0x2

    xor-int v10, v108, v121

    .line 362
    .local v10, "s3":I
    xor-int v127, v106, v121

    .line 363
    .local v127, "s4":I
    xor-int v128, v102, v120

    .line 364
    .local v128, "s5":I
    const/16 v129, 0x1

    not-int v12, v10

    xor-int v12, v119, v12

    .line 365
    .local v12, "s1":I
    const/16 v130, 0x0

    not-int v14, v8

    xor-int v14, v110, v14

    .line 367
    .local v14, "s2":I
    aput v122, p0, v115

    .line 368
    aput v12, p0, v117

    .line 369
    aput v14, p0, v123

    .line 370
    aput v10, p0, v124

    .line 371
    aput v127, p0, v125

    .line 372
    aput v128, p0, v126

    .line 373
    aput v4, p0, v129

    .line 374
    aput v6, p0, v130

    .line 375
    return-void
.end method

.method private brAesCtOrtho([I)V
    .locals 8
    .param p1, "q"    # [I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "q"
        }
    .end annotation

    .line 459
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1, v0}, Lorg/bouncycastle/pqc/crypto/sphincsplus/HarakaSBase;->Swapn32([IIII)V

    .line 460
    const/4 v2, 0x2

    const/4 v3, 0x3

    invoke-direct {p0, p1, v0, v2, v3}, Lorg/bouncycastle/pqc/crypto/sphincsplus/HarakaSBase;->Swapn32([IIII)V

    .line 461
    const/4 v4, 0x4

    const/4 v5, 0x5

    invoke-direct {p0, p1, v0, v4, v5}, Lorg/bouncycastle/pqc/crypto/sphincsplus/HarakaSBase;->Swapn32([IIII)V

    .line 462
    const/4 v6, 0x6

    const/4 v7, 0x7

    invoke-direct {p0, p1, v0, v6, v7}, Lorg/bouncycastle/pqc/crypto/sphincsplus/HarakaSBase;->Swapn32([IIII)V

    .line 464
    invoke-direct {p0, p1, v2, v1, v2}, Lorg/bouncycastle/pqc/crypto/sphincsplus/HarakaSBase;->Swapn32([IIII)V

    .line 465
    invoke-direct {p0, p1, v2, v0, v3}, Lorg/bouncycastle/pqc/crypto/sphincsplus/HarakaSBase;->Swapn32([IIII)V

    .line 466
    invoke-direct {p0, p1, v2, v4, v6}, Lorg/bouncycastle/pqc/crypto/sphincsplus/HarakaSBase;->Swapn32([IIII)V

    .line 467
    invoke-direct {p0, p1, v2, v5, v7}, Lorg/bouncycastle/pqc/crypto/sphincsplus/HarakaSBase;->Swapn32([IIII)V

    .line 469
    invoke-direct {p0, p1, v4, v1, v4}, Lorg/bouncycastle/pqc/crypto/sphincsplus/HarakaSBase;->Swapn32([IIII)V

    .line 470
    invoke-direct {p0, p1, v4, v0, v5}, Lorg/bouncycastle/pqc/crypto/sphincsplus/HarakaSBase;->Swapn32([IIII)V

    .line 471
    invoke-direct {p0, p1, v4, v2, v6}, Lorg/bouncycastle/pqc/crypto/sphincsplus/HarakaSBase;->Swapn32([IIII)V

    .line 472
    invoke-direct {p0, p1, v4, v3, v7}, Lorg/bouncycastle/pqc/crypto/sphincsplus/HarakaSBase;->Swapn32([IIII)V

    .line 473
    return-void
.end method

.method private brDec32Le([BI)I
    .locals 3
    .param p1, "input"    # [B
    .param p2, "startPos"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "input",
            "startPos"
        }
    .end annotation

    .line 77
    aget-byte v0, p1, p2

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 v1, p2, 0x1

    aget-byte v1, p1, v1

    shl-int/lit8 v1, v1, 0x8

    const v2, 0xff00

    and-int/2addr v1, v2

    or-int/2addr v0, v1

    add-int/lit8 v1, p2, 0x2

    aget-byte v1, p1, v1

    shl-int/lit8 v1, v1, 0x10

    const/high16 v2, 0xff0000

    and-int/2addr v1, v2

    or-int/2addr v0, v1

    add-int/lit8 v1, p2, 0x3

    aget-byte v1, p1, v1

    shl-int/lit8 v1, v1, 0x18

    or-int/2addr v0, v1

    return v0
.end method

.method private brEnc32Le([BII)V
    .locals 3
    .param p1, "dst"    # [B
    .param p2, "x"    # I
    .param p3, "startPos"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "dst",
            "x",
            "startPos"
        }
    .end annotation

    .line 169
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    .line 171
    add-int v1, p3, v0

    shl-int/lit8 v2, v0, 0x3

    shr-int v2, p2, v2

    int-to-byte v2, v2

    aput-byte v2, p1, v1

    .line 169
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 173
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method private brRangeDec32Le([B[II)V
    .locals 5
    .param p1, "input"    # [B
    .param p2, "output"    # [I
    .param p3, "inputPos"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "input",
            "output",
            "inputPos"
        }
    .end annotation

    .line 46
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_0

    .line 48
    shl-int/lit8 v1, v0, 0x2

    add-int/2addr v1, p3

    .line 49
    .local v1, "tmp":I
    aget-byte v2, p1, v1

    and-int/lit16 v2, v2, 0xff

    add-int/lit8 v3, v1, 0x1

    aget-byte v3, p1, v3

    shl-int/lit8 v3, v3, 0x8

    const v4, 0xff00

    and-int/2addr v3, v4

    or-int/2addr v2, v3

    add-int/lit8 v3, v1, 0x2

    aget-byte v3, p1, v3

    shl-int/lit8 v3, v3, 0x10

    const/high16 v4, 0xff0000

    and-int/2addr v3, v4

    or-int/2addr v2, v3

    add-int/lit8 v3, v1, 0x3

    aget-byte v3, p1, v3

    shl-int/lit8 v3, v3, 0x18

    or-int/2addr v2, v3

    aput v2, p2, v0

    .line 46
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 51
    .end local v0    # "i":I
    .end local v1    # "tmp":I
    :cond_0
    return-void
.end method

.method private mixColumns([J)V
    .locals 47
    .param p1, "q"    # [J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "q"
        }
    .end annotation

    .line 719
    move-object/from16 v0, p0

    const/4 v1, 0x0

    aget-wide v2, p1, v1

    .line 720
    .local v2, "q0":J
    const/4 v4, 0x1

    aget-wide v5, p1, v4

    .line 721
    .local v5, "q1":J
    const/4 v7, 0x2

    aget-wide v8, p1, v7

    .line 722
    .local v8, "q2":J
    const/4 v10, 0x3

    aget-wide v11, p1, v10

    .line 723
    .local v11, "q3":J
    const/4 v13, 0x4

    aget-wide v14, p1, v13

    .line 724
    .local v14, "q4":J
    const/16 v16, 0x5

    aget-wide v17, p1, v16

    .line 725
    .local v17, "q5":J
    const/16 v19, 0x6

    aget-wide v20, p1, v19

    .line 726
    .local v20, "q6":J
    const/16 v22, 0x7

    aget-wide v23, p1, v22

    .line 727
    .local v23, "q7":J
    const/16 v25, 0x10

    ushr-long v26, v2, v25

    const/16 v28, 0x30

    shl-long v29, v2, v28

    or-long v26, v26, v29

    .line 728
    .local v26, "r0":J
    ushr-long v29, v5, v25

    shl-long v31, v5, v28

    or-long v29, v29, v31

    .line 729
    .local v29, "r1":J
    ushr-long v31, v8, v25

    shl-long v33, v8, v28

    or-long v31, v31, v33

    .line 730
    .local v31, "r2":J
    ushr-long v33, v11, v25

    shl-long v35, v11, v28

    or-long v33, v33, v35

    .line 731
    .local v33, "r3":J
    ushr-long v35, v14, v25

    shl-long v37, v14, v28

    or-long v35, v35, v37

    .line 732
    .local v35, "r4":J
    ushr-long v37, v17, v25

    shl-long v39, v17, v28

    or-long v37, v37, v39

    .line 733
    .local v37, "r5":J
    ushr-long v39, v20, v25

    shl-long v41, v20, v28

    or-long v39, v39, v41

    .line 734
    .local v39, "r6":J
    ushr-long v41, v23, v25

    shl-long v43, v23, v28

    or-long v41, v41, v43

    .line 736
    .local v41, "r7":J
    xor-long v43, v23, v41

    xor-long v43, v43, v26

    move-wide/from16 v45, v5

    const/16 v25, 0x1

    .end local v5    # "q1":J
    .local v45, "q1":J
    xor-long v4, v2, v26

    invoke-direct {v0, v4, v5}, Lorg/bouncycastle/pqc/crypto/sphincsplus/HarakaSBase;->rotr32(J)J

    move-result-wide v4

    xor-long v4, v43, v4

    aput-wide v4, p1, v1

    .line 737
    xor-long v4, v2, v26

    xor-long v4, v4, v23

    xor-long v4, v4, v41

    xor-long v4, v4, v29

    move-wide/from16 v43, v8

    const/4 v1, 0x2

    .end local v8    # "q2":J
    .local v43, "q2":J
    xor-long v7, v45, v29

    invoke-direct {v0, v7, v8}, Lorg/bouncycastle/pqc/crypto/sphincsplus/HarakaSBase;->rotr32(J)J

    move-result-wide v6

    xor-long/2addr v4, v6

    aput-wide v4, p1, v25

    .line 738
    xor-long v4, v45, v29

    xor-long v4, v4, v31

    xor-long v6, v43, v31

    invoke-direct {v0, v6, v7}, Lorg/bouncycastle/pqc/crypto/sphincsplus/HarakaSBase;->rotr32(J)J

    move-result-wide v6

    xor-long/2addr v4, v6

    aput-wide v4, p1, v1

    .line 739
    xor-long v4, v43, v31

    xor-long v4, v4, v23

    xor-long v4, v4, v41

    xor-long v4, v4, v33

    xor-long v6, v11, v33

    invoke-direct {v0, v6, v7}, Lorg/bouncycastle/pqc/crypto/sphincsplus/HarakaSBase;->rotr32(J)J

    move-result-wide v6

    xor-long/2addr v4, v6

    aput-wide v4, p1, v10

    .line 740
    xor-long v4, v11, v33

    xor-long v4, v4, v23

    xor-long v4, v4, v41

    xor-long v4, v4, v35

    xor-long v6, v14, v35

    invoke-direct {v0, v6, v7}, Lorg/bouncycastle/pqc/crypto/sphincsplus/HarakaSBase;->rotr32(J)J

    move-result-wide v6

    xor-long/2addr v4, v6

    aput-wide v4, p1, v13

    .line 741
    xor-long v4, v14, v35

    xor-long v4, v4, v37

    xor-long v6, v17, v37

    invoke-direct {v0, v6, v7}, Lorg/bouncycastle/pqc/crypto/sphincsplus/HarakaSBase;->rotr32(J)J

    move-result-wide v6

    xor-long/2addr v4, v6

    aput-wide v4, p1, v16

    .line 742
    xor-long v4, v17, v37

    xor-long v4, v4, v39

    xor-long v6, v20, v39

    invoke-direct {v0, v6, v7}, Lorg/bouncycastle/pqc/crypto/sphincsplus/HarakaSBase;->rotr32(J)J

    move-result-wide v6

    xor-long/2addr v4, v6

    aput-wide v4, p1, v19

    .line 743
    xor-long v4, v20, v39

    xor-long v4, v4, v41

    xor-long v6, v23, v41

    invoke-direct {v0, v6, v7}, Lorg/bouncycastle/pqc/crypto/sphincsplus/HarakaSBase;->rotr32(J)J

    move-result-wide v6

    xor-long/2addr v4, v6

    aput-wide v4, p1, v22

    .line 744
    return-void
.end method

.method private mixColumns32([I)V
    .locals 27
    .param p1, "q"    # [I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "q"
        }
    .end annotation

    .line 395
    move-object/from16 v0, p0

    const/4 v1, 0x0

    aget v2, p1, v1

    .line 396
    .local v2, "q0":I
    const/4 v3, 0x1

    aget v4, p1, v3

    .line 397
    .local v4, "q1":I
    const/4 v5, 0x2

    aget v6, p1, v5

    .line 398
    .local v6, "q2":I
    const/4 v7, 0x3

    aget v8, p1, v7

    .line 399
    .local v8, "q3":I
    const/4 v9, 0x4

    aget v10, p1, v9

    .line 400
    .local v10, "q4":I
    const/4 v11, 0x5

    aget v12, p1, v11

    .line 401
    .local v12, "q5":I
    const/4 v13, 0x6

    aget v14, p1, v13

    .line 402
    .local v14, "q6":I
    const/4 v15, 0x7

    aget v16, p1, v15

    .line 403
    .local v16, "q7":I
    ushr-int/lit8 v17, v2, 0x8

    shl-int/lit8 v18, v2, 0x18

    or-int v17, v17, v18

    .line 404
    .local v17, "r0":I
    ushr-int/lit8 v18, v4, 0x8

    shl-int/lit8 v19, v4, 0x18

    or-int v18, v18, v19

    .line 405
    .local v18, "r1":I
    ushr-int/lit8 v19, v6, 0x8

    shl-int/lit8 v20, v6, 0x18

    or-int v19, v19, v20

    .line 406
    .local v19, "r2":I
    ushr-int/lit8 v20, v8, 0x8

    shl-int/lit8 v21, v8, 0x18

    or-int v20, v20, v21

    .line 407
    .local v20, "r3":I
    ushr-int/lit8 v21, v10, 0x8

    shl-int/lit8 v22, v10, 0x18

    or-int v21, v21, v22

    .line 408
    .local v21, "r4":I
    ushr-int/lit8 v22, v12, 0x8

    shl-int/lit8 v23, v12, 0x18

    or-int v22, v22, v23

    .line 409
    .local v22, "r5":I
    ushr-int/lit8 v23, v14, 0x8

    shl-int/lit8 v24, v14, 0x18

    or-int v23, v23, v24

    .line 410
    .local v23, "r6":I
    ushr-int/lit8 v24, v16, 0x8

    shl-int/lit8 v25, v16, 0x18

    or-int v24, v24, v25

    .line 412
    .local v24, "r7":I
    xor-int v25, v16, v24

    xor-int v25, v25, v17

    const/16 v26, 0x0

    xor-int v1, v2, v17

    invoke-direct {v0, v1}, Lorg/bouncycastle/pqc/crypto/sphincsplus/HarakaSBase;->rotr16(I)I

    move-result v1

    xor-int v1, v25, v1

    aput v1, p1, v26

    .line 413
    xor-int v1, v2, v17

    xor-int v1, v1, v16

    xor-int v1, v1, v24

    xor-int v1, v1, v18

    const/16 v25, 0x1

    xor-int v3, v4, v18

    invoke-direct {v0, v3}, Lorg/bouncycastle/pqc/crypto/sphincsplus/HarakaSBase;->rotr16(I)I

    move-result v3

    xor-int/2addr v1, v3

    aput v1, p1, v25

    .line 414
    xor-int v1, v4, v18

    xor-int v1, v1, v19

    xor-int v3, v6, v19

    invoke-direct {v0, v3}, Lorg/bouncycastle/pqc/crypto/sphincsplus/HarakaSBase;->rotr16(I)I

    move-result v3

    xor-int/2addr v1, v3

    aput v1, p1, v5

    .line 415
    xor-int v1, v6, v19

    xor-int v1, v1, v16

    xor-int v1, v1, v24

    xor-int v1, v1, v20

    xor-int v3, v8, v20

    invoke-direct {v0, v3}, Lorg/bouncycastle/pqc/crypto/sphincsplus/HarakaSBase;->rotr16(I)I

    move-result v3

    xor-int/2addr v1, v3

    aput v1, p1, v7

    .line 416
    xor-int v1, v8, v20

    xor-int v1, v1, v16

    xor-int v1, v1, v24

    xor-int v1, v1, v21

    xor-int v3, v10, v21

    invoke-direct {v0, v3}, Lorg/bouncycastle/pqc/crypto/sphincsplus/HarakaSBase;->rotr16(I)I

    move-result v3

    xor-int/2addr v1, v3

    aput v1, p1, v9

    .line 417
    xor-int v1, v10, v21

    xor-int v1, v1, v22

    xor-int v3, v12, v22

    invoke-direct {v0, v3}, Lorg/bouncycastle/pqc/crypto/sphincsplus/HarakaSBase;->rotr16(I)I

    move-result v3

    xor-int/2addr v1, v3

    aput v1, p1, v11

    .line 418
    xor-int v1, v12, v22

    xor-int v1, v1, v23

    xor-int v3, v14, v23

    invoke-direct {v0, v3}, Lorg/bouncycastle/pqc/crypto/sphincsplus/HarakaSBase;->rotr16(I)I

    move-result v3

    xor-int/2addr v1, v3

    aput v1, p1, v13

    .line 419
    xor-int v1, v14, v23

    xor-int v1, v1, v24

    xor-int v3, v16, v24

    invoke-direct {v0, v3}, Lorg/bouncycastle/pqc/crypto/sphincsplus/HarakaSBase;->rotr16(I)I

    move-result v3

    xor-int/2addr v1, v3

    aput v1, p1, v15

    .line 420
    return-void
.end method

.method private rotr16(I)I
    .locals 2
    .param p1, "x"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "x"
        }
    .end annotation

    .line 436
    shl-int/lit8 v0, p1, 0x10

    ushr-int/lit8 v1, p1, 0x10

    or-int/2addr v0, v1

    return v0
.end method

.method private rotr32(J)J
    .locals 5
    .param p1, "x"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "x"
        }
    .end annotation

    .line 748
    const/16 v0, 0x20

    shl-long v1, p1, v0

    ushr-long v3, p1, v0

    or-long/2addr v1, v3

    return-wide v1
.end method

.method private shiftRows([J)V
    .locals 10
    .param p1, "q"    # [J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "q"
        }
    .end annotation

    .line 701
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 703
    aget-wide v1, p1, v0

    .line 704
    .local v1, "x":J
    const-wide/32 v3, 0xffff

    and-long/2addr v3, v1

    const-wide v5, 0xfff00000L

    and-long/2addr v5, v1

    const/4 v7, 0x4

    ushr-long/2addr v5, v7

    or-long/2addr v3, v5

    const-wide/32 v5, 0xf0000

    and-long/2addr v5, v1

    const/16 v8, 0xc

    shl-long/2addr v5, v8

    or-long/2addr v3, v5

    const-wide v5, 0xff0000000000L

    and-long/2addr v5, v1

    const/16 v9, 0x8

    ushr-long/2addr v5, v9

    or-long/2addr v3, v5

    const-wide v5, 0xff00000000L

    and-long/2addr v5, v1

    shl-long/2addr v5, v9

    or-long/2addr v3, v5

    const-wide/high16 v5, -0x1000000000000000L    # -3.105036184601418E231

    and-long/2addr v5, v1

    ushr-long/2addr v5, v8

    or-long/2addr v3, v5

    const-wide/high16 v5, 0xfff000000000000L

    and-long/2addr v5, v1

    shl-long/2addr v5, v7

    or-long/2addr v3, v5

    aput-wide v3, p1, v0

    .line 701
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 712
    .end local v0    # "i":I
    .end local v1    # "x":J
    :cond_0
    return-void
.end method

.method private shiftRows32([I)V
    .locals 4
    .param p1, "q"    # [I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "q"
        }
    .end annotation

    .line 380
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v1, 0x8

    if-ge v0, v1, :cond_0

    .line 382
    aget v1, p1, v0

    .line 383
    .local v1, "x":I
    and-int/lit16 v2, v1, 0xff

    const v3, 0xfc00

    and-int/2addr v3, v1

    ushr-int/lit8 v3, v3, 0x2

    or-int/2addr v2, v3

    and-int/lit16 v3, v1, 0x300

    shl-int/lit8 v3, v3, 0x6

    or-int/2addr v2, v3

    const/high16 v3, 0xf00000

    and-int/2addr v3, v1

    ushr-int/lit8 v3, v3, 0x4

    or-int/2addr v2, v3

    const/high16 v3, 0xf0000

    and-int/2addr v3, v1

    shl-int/lit8 v3, v3, 0x4

    or-int/2addr v2, v3

    const/high16 v3, -0x40000000    # -2.0f

    and-int/2addr v3, v1

    ushr-int/lit8 v3, v3, 0x6

    or-int/2addr v2, v3

    const/high16 v3, 0x3f000000    # 0.5f

    and-int/2addr v3, v1

    shl-int/lit8 v3, v3, 0x2

    or-int/2addr v2, v3

    aput v2, p1, v0

    .line 380
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 388
    .end local v0    # "i":I
    .end local v1    # "x":I
    :cond_0
    return-void
.end method

.method protected static xor([BI[BI[BII)V
    .locals 4
    .param p0, "x"    # [B
    .param p1, "xOff"    # I
    .param p2, "y"    # [B
    .param p3, "yOff"    # I
    .param p4, "z"    # [B
    .param p5, "zOff"    # I
    .param p6, "zLen"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "x",
            "xOff",
            "y",
            "yOff",
            "z",
            "zOff",
            "zLen"
        }
    .end annotation

    .line 788
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p6, :cond_0

    .line 790
    add-int v1, p5, v0

    add-int v2, p1, v0

    aget-byte v2, p0, v2

    add-int v3, p3, v0

    aget-byte v3, p2, v3

    xor-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, p4, v1

    .line 788
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 792
    .end local v0    # "i":I
    :cond_0
    return-void
.end method


# virtual methods
.method protected haraka256Perm([B)V
    .locals 8
    .param p1, "output"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "output"
        }
    .end annotation

    .line 135
    const/16 v0, 0x8

    new-array v1, v0, [I

    .line 137
    .local v1, "q":[I
    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/HarakaSBase;->buffer:[B

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v2, v3}, Lorg/bouncycastle/pqc/crypto/sphincsplus/HarakaSBase;->interleaveConstant32([I[BI)V

    .line 138
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    const/4 v3, 0x5

    if-ge v2, v3, :cond_2

    .line 140
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_1
    const/4 v4, 0x2

    if-ge v3, v4, :cond_0

    .line 142
    invoke-static {v1}, Lorg/bouncycastle/pqc/crypto/sphincsplus/HarakaSBase;->brAesCtBitsliceSbox([I)V

    .line 143
    invoke-direct {p0, v1}, Lorg/bouncycastle/pqc/crypto/sphincsplus/HarakaSBase;->shiftRows32([I)V

    .line 144
    invoke-direct {p0, v1}, Lorg/bouncycastle/pqc/crypto/sphincsplus/HarakaSBase;->mixColumns32([I)V

    .line 145
    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/HarakaSBase;->haraka256_rc:[[I

    shl-int/lit8 v5, v2, 0x1

    add-int/2addr v5, v3

    aget-object v4, v4, v5

    invoke-direct {p0, v1, v4}, Lorg/bouncycastle/pqc/crypto/sphincsplus/HarakaSBase;->addRoundKey32([I[I)V

    .line 140
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 147
    :cond_0
    const/4 v3, 0x0

    :goto_2
    if-ge v3, v0, :cond_1

    .line 149
    aget v5, v1, v3

    .line 150
    .local v5, "tmp_q":I
    const v6, -0x7e7e7e7f

    and-int/2addr v6, v5

    const v7, 0x2020202

    and-int/2addr v7, v5

    shl-int/lit8 v7, v7, 0x1

    or-int/2addr v6, v7

    const v7, 0x4040404

    and-int/2addr v7, v5

    shl-int/2addr v7, v4

    or-int/2addr v6, v7

    const v7, 0x8080808

    and-int/2addr v7, v5

    shl-int/lit8 v7, v7, 0x3

    or-int/2addr v6, v7

    const v7, 0x10101010

    and-int/2addr v7, v5

    ushr-int/lit8 v7, v7, 0x3

    or-int/2addr v6, v7

    const v7, 0x20202020

    and-int/2addr v7, v5

    ushr-int/2addr v7, v4

    or-int/2addr v6, v7

    const v7, 0x40404040

    and-int/2addr v7, v5

    ushr-int/lit8 v7, v7, 0x1

    or-int/2addr v6, v7

    aput v6, v1, v3

    .line 147
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 138
    .end local v5    # "tmp_q":I
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 159
    .end local v3    # "j":I
    :cond_2
    invoke-direct {p0, v1}, Lorg/bouncycastle/pqc/crypto/sphincsplus/HarakaSBase;->brAesCtOrtho([I)V

    .line 160
    const/4 v0, 0x0

    .end local v2    # "i":I
    .local v0, "i":I
    :goto_3
    const/4 v2, 0x4

    if-ge v0, v2, :cond_3

    .line 162
    shl-int/lit8 v2, v0, 0x1

    aget v2, v1, v2

    shl-int/lit8 v3, v0, 0x2

    invoke-direct {p0, p1, v2, v3}, Lorg/bouncycastle/pqc/crypto/sphincsplus/HarakaSBase;->brEnc32Le([BII)V

    .line 163
    shl-int/lit8 v2, v0, 0x1

    add-int/lit8 v2, v2, 0x1

    aget v2, v1, v2

    shl-int/lit8 v3, v0, 0x2

    add-int/lit8 v3, v3, 0x10

    invoke-direct {p0, p1, v2, v3}, Lorg/bouncycastle/pqc/crypto/sphincsplus/HarakaSBase;->brEnc32Le([BII)V

    .line 160
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 165
    :cond_3
    return-void
.end method

.method protected haraka512Perm([B)V
    .locals 18
    .param p1, "output"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "output"
        }
    .end annotation

    .line 82
    move-object/from16 v0, p0

    const/16 v1, 0x10

    new-array v2, v1, [I

    .line 83
    .local v2, "w":[I
    const/16 v3, 0x8

    new-array v4, v3, [J

    .line 86
    .local v4, "q":[J
    iget-object v5, v0, Lorg/bouncycastle/pqc/crypto/sphincsplus/HarakaSBase;->buffer:[B

    const/4 v6, 0x0

    invoke-direct {v0, v5, v2, v6}, Lorg/bouncycastle/pqc/crypto/sphincsplus/HarakaSBase;->brRangeDec32Le([B[II)V

    .line 87
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    const/4 v6, 0x4

    if-ge v5, v6, :cond_0

    .line 89
    shl-int/lit8 v6, v5, 0x2

    invoke-direct {v0, v4, v5, v2, v6}, Lorg/bouncycastle/pqc/crypto/sphincsplus/HarakaSBase;->brAesCt64InterleaveIn([JI[II)V

    .line 87
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 91
    :cond_0
    invoke-direct {v0, v4}, Lorg/bouncycastle/pqc/crypto/sphincsplus/HarakaSBase;->brAesCt64Ortho([J)V

    .line 92
    const/4 v5, 0x0

    :goto_1
    const/4 v7, 0x5

    if-ge v5, v7, :cond_3

    .line 94
    const/4 v8, 0x0

    .local v8, "j":I
    :goto_2
    const/4 v9, 0x2

    if-ge v8, v9, :cond_1

    .line 96
    invoke-direct {v0, v4}, Lorg/bouncycastle/pqc/crypto/sphincsplus/HarakaSBase;->brAesCt64BitsliceSbox([J)V

    .line 97
    invoke-direct {v0, v4}, Lorg/bouncycastle/pqc/crypto/sphincsplus/HarakaSBase;->shiftRows([J)V

    .line 98
    invoke-direct {v0, v4}, Lorg/bouncycastle/pqc/crypto/sphincsplus/HarakaSBase;->mixColumns([J)V

    .line 99
    iget-object v9, v0, Lorg/bouncycastle/pqc/crypto/sphincsplus/HarakaSBase;->haraka512_rc:[[J

    shl-int/lit8 v10, v5, 0x1

    add-int/2addr v10, v8

    aget-object v9, v9, v10

    invoke-direct {v0, v4, v9}, Lorg/bouncycastle/pqc/crypto/sphincsplus/HarakaSBase;->addRoundKey([J[J)V

    .line 94
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 101
    :cond_1
    const/4 v8, 0x0

    :goto_3
    if-ge v8, v3, :cond_2

    .line 103
    aget-wide v10, v4, v8

    .line 104
    .local v10, "tmp_q":J
    const-wide v12, 0x1000100010001L

    and-long/2addr v12, v10

    shl-long/2addr v12, v7

    const-wide v14, 0x2000200020002L

    and-long/2addr v14, v10

    const/16 v16, 0xc

    shl-long v14, v14, v16

    or-long/2addr v12, v14

    const-wide v14, 0x4000400040004L

    and-long/2addr v14, v10

    const/16 v17, 0x1

    ushr-long v14, v14, v17

    or-long/2addr v12, v14

    const-wide v14, 0x8000800080008L

    and-long/2addr v14, v10

    const/16 v17, 0x6

    shl-long v14, v14, v17

    or-long/2addr v12, v14

    const-wide v14, 0x20002000200020L

    and-long/2addr v14, v10

    const/16 v17, 0x9

    shl-long v14, v14, v17

    or-long/2addr v12, v14

    const-wide v14, 0x40004000400040L

    and-long/2addr v14, v10

    ushr-long/2addr v14, v6

    or-long/2addr v12, v14

    const-wide v14, 0x80008000800080L

    and-long/2addr v14, v10

    const/16 v17, 0x3

    shl-long v14, v14, v17

    or-long/2addr v12, v14

    const-wide v14, 0x2100210021002100L    # 9.854557643121966E-150

    and-long/2addr v14, v10

    ushr-long/2addr v14, v7

    or-long/2addr v12, v14

    const-wide v14, 0x210021002100210L

    and-long/2addr v14, v10

    shl-long/2addr v14, v9

    or-long/2addr v12, v14

    const-wide v14, 0x800080008000800L

    and-long/2addr v14, v10

    shl-long/2addr v14, v6

    or-long/2addr v12, v14

    const-wide v14, 0x1000100010001000L    # 1.293261978181323E-231

    and-long/2addr v14, v10

    ushr-long v14, v14, v16

    or-long/2addr v12, v14

    const-wide v14, 0x4000400040004000L    # 2.031250476844434

    and-long/2addr v14, v10

    const/16 v16, 0xa

    ushr-long v14, v14, v16

    or-long/2addr v12, v14

    const-wide v14, -0x7bff7bff7bff7c00L

    and-long/2addr v14, v10

    ushr-long v14, v14, v17

    or-long/2addr v12, v14

    aput-wide v12, v4, v8

    .line 101
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_3

    .line 92
    .end local v10    # "tmp_q":J
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_1

    .line 119
    .end local v8    # "j":I
    :cond_3
    invoke-direct {v0, v4}, Lorg/bouncycastle/pqc/crypto/sphincsplus/HarakaSBase;->brAesCt64Ortho([J)V

    .line 120
    const/4 v3, 0x0

    .end local v5    # "i":I
    .local v3, "i":I
    :goto_4
    if-ge v3, v6, :cond_4

    .line 122
    invoke-direct {v0, v2, v4, v3}, Lorg/bouncycastle/pqc/crypto/sphincsplus/HarakaSBase;->brAesCt64InterleaveOut([I[JI)V

    .line 120
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 124
    :cond_4
    const/4 v3, 0x0

    :goto_5
    if-ge v3, v1, :cond_6

    .line 126
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_6
    if-ge v5, v6, :cond_5

    .line 128
    shl-int/lit8 v7, v3, 0x2

    add-int/2addr v7, v5

    aget v8, v2, v3

    shl-int/lit8 v9, v5, 0x3

    ushr-int/2addr v8, v9

    and-int/lit16 v8, v8, 0xff

    int-to-byte v8, v8

    aput-byte v8, p1, v7

    .line 126
    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    .line 124
    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 131
    .end local v5    # "j":I
    :cond_6
    return-void
.end method

.method protected interleaveConstant([J[BI)V
    .locals 3
    .param p1, "output"    # [J
    .param p2, "input"    # [B
    .param p3, "startPos"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "output",
            "input",
            "startPos"
        }
    .end annotation

    .line 55
    const/16 v0, 0x10

    new-array v0, v0, [I

    .line 57
    .local v0, "tmp_32_constant":[I
    invoke-direct {p0, p2, v0, p3}, Lorg/bouncycastle/pqc/crypto/sphincsplus/HarakaSBase;->brRangeDec32Le([B[II)V

    .line 58
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/4 v2, 0x4

    if-ge v1, v2, :cond_0

    .line 60
    shl-int/lit8 v2, v1, 0x2

    invoke-direct {p0, p1, v1, v0, v2}, Lorg/bouncycastle/pqc/crypto/sphincsplus/HarakaSBase;->brAesCt64InterleaveIn([JI[II)V

    .line 58
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 62
    :cond_0
    invoke-direct {p0, p1}, Lorg/bouncycastle/pqc/crypto/sphincsplus/HarakaSBase;->brAesCt64Ortho([J)V

    .line 63
    return-void
.end method

.method protected interleaveConstant32([I[BI)V
    .locals 3
    .param p1, "output"    # [I
    .param p2, "input"    # [B
    .param p3, "startPos"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "output",
            "input",
            "startPos"
        }
    .end annotation

    .line 67
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    .line 69
    shl-int/lit8 v1, v0, 0x1

    shl-int/lit8 v2, v0, 0x2

    add-int/2addr v2, p3

    invoke-direct {p0, p2, v2}, Lorg/bouncycastle/pqc/crypto/sphincsplus/HarakaSBase;->brDec32Le([BI)I

    move-result v2

    aput v2, p1, v1

    .line 70
    shl-int/lit8 v1, v0, 0x1

    add-int/lit8 v1, v1, 0x1

    shl-int/lit8 v2, v0, 0x2

    add-int/2addr v2, p3

    add-int/lit8 v2, v2, 0x10

    invoke-direct {p0, p2, v2}, Lorg/bouncycastle/pqc/crypto/sphincsplus/HarakaSBase;->brDec32Le([BI)I

    move-result v2

    aput v2, p1, v1

    .line 67
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 72
    .end local v0    # "i":I
    :cond_0
    invoke-direct {p0, p1}, Lorg/bouncycastle/pqc/crypto/sphincsplus/HarakaSBase;->brAesCtOrtho([I)V

    .line 73
    return-void
.end method

.method protected reset()V
    .locals 1

    .line 39
    const/4 v0, 0x0

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/HarakaSBase;->off:I

    .line 40
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/HarakaSBase;->buffer:[B

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->clear([B)V

    .line 41
    return-void
.end method
