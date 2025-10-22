.class Lorg/bouncycastle/pqc/crypto/falcon/SHAKE256;
.super Ljava/lang/Object;
.source "SHAKE256.java"


# instance fields
.field A:[J

.field private RC:[J

.field dbuf:[B

.field dptr:J


# direct methods
.method constructor <init>()V
    .locals 2

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const/16 v0, 0x18

    new-array v0, v0, [J

    fill-array-data v0, :array_0

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/falcon/SHAKE256;->RC:[J

    .line 11
    const/16 v0, 0x19

    new-array v0, v0, [J

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/falcon/SHAKE256;->A:[J

    .line 12
    const/16 v0, 0xc8

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/falcon/SHAKE256;->dbuf:[B

    .line 13
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/bouncycastle/pqc/crypto/falcon/SHAKE256;->dptr:J

    .line 14
    return-void

    nop

    :array_0
    .array-data 8
        0x1
        0x8082
        -0x7fffffffffff7f76L    # -1.62577E-319
        -0x7fffffff7fff8000L    # -1.061014085E-314
        0x808b
        0x80000001L
        -0x7fffffff7fff7f7fL    # -1.061014149E-314
        -0x7fffffffffff7ff7L    # -1.6194E-319
        0x8a
        0x88
        0x80008009L
        0x8000000aL
        0x8000808bL
        -0x7fffffffffffff75L    # -6.87E-322
        -0x7fffffffffff7f77L    # -1.6257E-319
        -0x7fffffffffff7ffdL    # -1.6191E-319
        -0x7fffffffffff7ffeL    # -1.61905E-319
        -0x7fffffffffffff80L    # -6.32E-322
        0x800a
        -0x7fffffff7ffffff6L    # -1.0609979004E-314
        -0x7fffffff7fff7f7fL    # -1.061014149E-314
        -0x7fffffffffff7f80L    # -1.6253E-319
        0x80000001L
        -0x7fffffff7fff7ff8L    # -1.061014089E-314
    .end array-data
.end method


# virtual methods
.method i_shake256_flip()V
    .locals 8

    .line 525
    iget-wide v0, p0, Lorg/bouncycastle/pqc/crypto/falcon/SHAKE256;->dptr:J

    long-to-int v1, v0

    .line 526
    .local v1, "v":I
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/falcon/SHAKE256;->A:[J

    shr-int/lit8 v2, v1, 0x3

    aget-wide v3, v0, v2

    and-int/lit8 v5, v1, 0x7

    shl-int/lit8 v5, v5, 0x3

    const-wide/16 v6, 0x1f

    shl-long v5, v6, v5

    xor-long/2addr v3, v5

    aput-wide v3, v0, v2

    .line 527
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/falcon/SHAKE256;->A:[J

    const/16 v2, 0x10

    aget-wide v3, v0, v2

    const-wide/high16 v5, -0x8000000000000000L

    xor-long/2addr v3, v5

    aput-wide v3, v0, v2

    .line 528
    const-wide/16 v2, 0x88

    iput-wide v2, p0, Lorg/bouncycastle/pqc/crypto/falcon/SHAKE256;->dptr:J

    .line 529
    return-void
.end method

.method inner_shake256_extract([BII)V
    .locals 7
    .param p1, "srcout"    # [B
    .param p2, "out"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "srcout",
            "out",
            "len"
        }
    .end annotation

    .line 535
    move v0, p2

    .line 537
    .local v0, "o":I
    iget-wide v1, p0, Lorg/bouncycastle/pqc/crypto/falcon/SHAKE256;->dptr:J

    long-to-int v2, v1

    .line 538
    .local v2, "dptr":I
    :goto_0
    if-lez p3, :cond_3

    .line 542
    const/16 v1, 0x88

    if-ne v2, v1, :cond_0

    .line 544
    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/falcon/SHAKE256;->A:[J

    invoke-virtual {p0, v1}, Lorg/bouncycastle/pqc/crypto/falcon/SHAKE256;->process_block([J)V

    .line 545
    const/4 v2, 0x0

    .line 547
    :cond_0
    rsub-int v1, v2, 0x88

    .line 548
    .local v1, "clen":I
    if-le v1, p3, :cond_1

    .line 550
    move v1, p3

    .line 552
    :cond_1
    sub-int/2addr p3, v1

    .line 553
    :goto_1
    add-int/lit8 v3, v1, -0x1

    .end local v1    # "clen":I
    .local v3, "clen":I
    if-lez v1, :cond_2

    .line 555
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "o":I
    .local v1, "o":I
    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/falcon/SHAKE256;->A:[J

    shr-int/lit8 v5, v2, 0x3

    aget-wide v5, v4, v5

    and-int/lit8 v4, v2, 0x7

    shl-int/lit8 v4, v4, 0x3

    ushr-long v4, v5, v4

    long-to-int v5, v4

    int-to-byte v4, v5

    aput-byte v4, p1, v0

    .line 556
    add-int/lit8 v2, v2, 0x1

    move v0, v1

    move v1, v3

    goto :goto_1

    .line 558
    .end local v1    # "o":I
    .end local v3    # "clen":I
    .restart local v0    # "o":I
    :cond_2
    goto :goto_0

    .line 559
    :cond_3
    int-to-long v3, v2

    iput-wide v3, p0, Lorg/bouncycastle/pqc/crypto/falcon/SHAKE256;->dptr:J

    .line 560
    return-void
.end method

.method inner_shake256_init()V
    .locals 4

    .line 469
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/bouncycastle/pqc/crypto/falcon/SHAKE256;->dptr:J

    .line 475
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/falcon/SHAKE256;->A:[J

    array-length v3, v3

    if-ge v2, v3, :cond_0

    .line 477
    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/falcon/SHAKE256;->A:[J

    aput-wide v0, v3, v2

    .line 475
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 479
    .end local v2    # "i":I
    :cond_0
    return-void
.end method

.method inner_shake256_inject([BII)V
    .locals 22
    .param p1, "srcin"    # [B
    .param p2, "in"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "srcin",
            "in",
            "len"
        }
    .end annotation

    .line 486
    move-object/from16 v0, p0

    iget-wide v1, v0, Lorg/bouncycastle/pqc/crypto/falcon/SHAKE256;->dptr:J

    move-wide v3, v1

    move/from16 v1, p2

    move/from16 v2, p3

    .line 487
    .end local p2    # "in":I
    .end local p3    # "len":I
    .local v1, "in":I
    .local v2, "len":I
    .local v3, "dptr":J
    :goto_0
    if-lez v2, :cond_3

    .line 491
    const-wide/16 v5, 0x88

    sub-long v7, v5, v3

    .line 492
    .local v7, "clen":J
    int-to-long v9, v2

    cmp-long v11, v7, v9

    if-lez v11, :cond_0

    .line 494
    int-to-long v7, v2

    .line 496
    :cond_0
    const-wide/16 v9, 0x0

    .local v9, "u":J
    :goto_1
    cmp-long v11, v9, v7

    if-gez v11, :cond_1

    .line 500
    add-long v11, v9, v3

    .line 501
    .local v11, "v":J
    iget-object v13, v0, Lorg/bouncycastle/pqc/crypto/falcon/SHAKE256;->A:[J

    const/4 v14, 0x3

    move-wide/from16 p2, v5

    shr-long v5, v11, v14

    long-to-int v6, v5

    aget-wide v15, v13, v6

    long-to-int v5, v9

    add-int/2addr v5, v1

    aget-byte v5, p1, v5

    move-wide/from16 v18, v15

    const/16 v17, 0x3

    int-to-long v14, v5

    const-wide/16 v20, 0xff

    and-long v14, v14, v20

    const-wide/16 v20, 0x7

    and-long v20, v11, v20

    move/from16 v16, v6

    shl-long v5, v20, v17

    long-to-int v6, v5

    shl-long v5, v14, v6

    xor-long v5, v18, v5

    aput-wide v5, v13, v16

    .line 496
    .end local v11    # "v":J
    const-wide/16 v5, 0x1

    add-long/2addr v9, v5

    move-wide/from16 v5, p2

    goto :goto_1

    .line 503
    :cond_1
    move-wide/from16 p2, v5

    add-long/2addr v3, v7

    .line 504
    int-to-long v5, v1

    add-long/2addr v5, v7

    long-to-int v1, v5

    .line 505
    int-to-long v5, v2

    sub-long/2addr v5, v7

    long-to-int v2, v5

    .line 506
    cmp-long v5, v3, p2

    if-nez v5, :cond_2

    .line 508
    iget-object v5, v0, Lorg/bouncycastle/pqc/crypto/falcon/SHAKE256;->A:[J

    invoke-virtual {v0, v5}, Lorg/bouncycastle/pqc/crypto/falcon/SHAKE256;->process_block([J)V

    .line 509
    const-wide/16 v3, 0x0

    .line 511
    .end local v7    # "clen":J
    .end local v9    # "u":J
    :cond_2
    goto :goto_0

    .line 512
    :cond_3
    iput-wide v3, v0, Lorg/bouncycastle/pqc/crypto/falcon/SHAKE256;->dptr:J

    .line 513
    return-void
.end method

.method process_block([J)V
    .locals 62
    .param p1, "A"    # [J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "A"
        }
    .end annotation

    .line 49
    move-object/from16 v0, p0

    const/4 v1, 0x1

    aget-wide v2, p1, v1

    not-long v2, v2

    aput-wide v2, p1, v1

    .line 50
    const/4 v2, 0x2

    aget-wide v3, p1, v2

    not-long v3, v3

    aput-wide v3, p1, v2

    .line 51
    const/16 v3, 0x8

    aget-wide v4, p1, v3

    not-long v4, v4

    aput-wide v4, p1, v3

    .line 52
    const/16 v4, 0xc

    aget-wide v5, p1, v4

    not-long v5, v5

    aput-wide v5, p1, v4

    .line 53
    const/16 v5, 0x11

    aget-wide v6, p1, v5

    not-long v6, v6

    aput-wide v6, p1, v5

    .line 54
    const/16 v6, 0x14

    aget-wide v7, p1, v6

    not-long v7, v7

    aput-wide v7, p1, v6

    .line 60
    const/4 v7, 0x0

    .local v7, "j":I
    :goto_0
    const/16 v8, 0x18

    if-ge v7, v8, :cond_0

    .line 63
    aget-wide v9, p1, v1

    const/4 v11, 0x6

    aget-wide v12, p1, v11

    xor-long/2addr v9, v12

    .line 64
    .local v9, "tt0":J
    const/16 v12, 0xb

    aget-wide v12, p1, v12

    const/16 v14, 0x10

    aget-wide v14, p1, v14

    xor-long/2addr v12, v14

    .line 65
    .local v12, "tt1":J
    const/16 v14, 0x15

    aget-wide v15, p1, v14

    xor-long/2addr v15, v12

    xor-long/2addr v9, v15

    .line 66
    shl-long v15, v9, v1

    const/16 v17, 0x3f

    ushr-long v17, v9, v17

    or-long v9, v15, v17

    .line 67
    const/4 v15, 0x4

    aget-wide v16, p1, v15

    const/16 v18, 0x9

    aget-wide v19, p1, v18

    xor-long v16, v16, v19

    .line 68
    .local v16, "tt2":J
    const/16 v19, 0xe

    aget-wide v20, p1, v19

    const/16 v22, 0x13

    aget-wide v23, p1, v22

    xor-long v20, v20, v23

    .line 69
    .local v20, "tt3":J
    aget-wide v23, p1, v8

    xor-long v9, v9, v23

    .line 70
    xor-long v16, v16, v20

    .line 71
    xor-long v23, v9, v16

    .line 73
    .local v23, "t0":J
    aget-wide v25, p1, v2

    const/16 v27, 0x7

    aget-wide v28, p1, v27

    xor-long v9, v25, v28

    .line 74
    aget-wide v25, p1, v4

    aget-wide v28, p1, v5

    xor-long v12, v25, v28

    .line 75
    const/16 v25, 0x16

    aget-wide v28, p1, v25

    xor-long v28, v28, v12

    xor-long v9, v9, v28

    .line 76
    shl-long v28, v9, v1

    const/16 v26, 0x3f

    ushr-long v30, v9, v26

    or-long v9, v28, v30

    .line 77
    const/16 v26, 0x0

    aget-wide v28, p1, v26

    const/16 v26, 0x5

    aget-wide v30, p1, v26

    xor-long v16, v28, v30

    .line 78
    const/16 v28, 0xa

    aget-wide v29, p1, v28

    const/16 v31, 0xf

    aget-wide v32, p1, v31

    xor-long v20, v29, v32

    .line 79
    aget-wide v29, p1, v6

    xor-long v9, v9, v29

    .line 80
    xor-long v16, v16, v20

    .line 81
    xor-long v29, v9, v16

    .line 83
    .local v29, "t1":J
    const/16 v32, 0x3

    aget-wide v33, p1, v32

    aget-wide v35, p1, v3

    xor-long v9, v33, v35

    .line 84
    const/16 v33, 0xd

    aget-wide v34, p1, v33

    const/16 v36, 0x12

    aget-wide v37, p1, v36

    xor-long v12, v34, v37

    .line 85
    const/16 v34, 0x17

    aget-wide v37, p1, v34

    xor-long v37, v37, v12

    xor-long v9, v9, v37

    .line 86
    shl-long v37, v9, v1

    const/16 v35, 0x3f

    ushr-long v39, v9, v35

    or-long v9, v37, v39

    .line 87
    aget-wide v37, p1, v1

    aget-wide v39, p1, v11

    xor-long v16, v37, v39

    .line 88
    const/16 v35, 0xb

    aget-wide v37, p1, v35

    const/16 v35, 0x10

    aget-wide v39, p1, v35

    xor-long v20, v37, v39

    .line 89
    aget-wide v37, p1, v14

    xor-long v9, v9, v37

    .line 90
    xor-long v16, v16, v20

    .line 91
    xor-long v37, v9, v16

    .line 93
    .local v37, "t2":J
    aget-wide v39, p1, v15

    aget-wide v41, p1, v18

    xor-long v9, v39, v41

    .line 94
    aget-wide v39, p1, v19

    aget-wide v41, p1, v22

    xor-long v12, v39, v41

    .line 95
    aget-wide v39, p1, v8

    xor-long v39, v39, v12

    xor-long v9, v9, v39

    .line 96
    shl-long v39, v9, v1

    const/16 v35, 0x3f

    ushr-long v41, v9, v35

    or-long v9, v39, v41

    .line 97
    aget-wide v39, p1, v2

    aget-wide v41, p1, v27

    xor-long v16, v39, v41

    .line 98
    aget-wide v39, p1, v4

    aget-wide v41, p1, v5

    xor-long v20, v39, v41

    .line 99
    aget-wide v39, p1, v25

    xor-long v9, v9, v39

    .line 100
    xor-long v16, v16, v20

    .line 101
    xor-long v39, v9, v16

    .line 103
    .local v39, "t3":J
    const/16 v35, 0x0

    aget-wide v41, p1, v35

    aget-wide v43, p1, v26

    xor-long v9, v41, v43

    .line 104
    aget-wide v41, p1, v28

    aget-wide v43, p1, v31

    xor-long v12, v41, v43

    .line 105
    aget-wide v41, p1, v6

    xor-long v41, v41, v12

    xor-long v9, v9, v41

    .line 106
    shl-long v41, v9, v1

    const/16 v35, 0x3f

    ushr-long v43, v9, v35

    or-long v9, v41, v43

    .line 107
    aget-wide v41, p1, v32

    aget-wide v43, p1, v3

    xor-long v16, v41, v43

    .line 108
    aget-wide v41, p1, v33

    aget-wide v43, p1, v36

    xor-long v20, v41, v43

    .line 109
    aget-wide v41, p1, v34

    xor-long v9, v9, v41

    .line 110
    xor-long v16, v16, v20

    .line 111
    xor-long v41, v9, v16

    .line 113
    .local v41, "t4":J
    const/16 v35, 0x0

    aget-wide v43, p1, v35

    xor-long v43, v43, v23

    aput-wide v43, p1, v35

    .line 114
    aget-wide v43, p1, v26

    xor-long v43, v43, v23

    aput-wide v43, p1, v26

    .line 115
    aget-wide v43, p1, v28

    xor-long v43, v43, v23

    aput-wide v43, p1, v28

    .line 116
    aget-wide v43, p1, v31

    xor-long v43, v43, v23

    aput-wide v43, p1, v31

    .line 117
    aget-wide v43, p1, v6

    xor-long v43, v43, v23

    aput-wide v43, p1, v6

    .line 118
    aget-wide v43, p1, v1

    xor-long v43, v43, v29

    aput-wide v43, p1, v1

    .line 119
    aget-wide v43, p1, v11

    xor-long v43, v43, v29

    aput-wide v43, p1, v11

    .line 120
    const/16 v35, 0xb

    aget-wide v43, p1, v35

    xor-long v43, v43, v29

    aput-wide v43, p1, v35

    .line 121
    const/16 v35, 0x10

    aget-wide v43, p1, v35

    xor-long v43, v43, v29

    aput-wide v43, p1, v35

    .line 122
    aget-wide v43, p1, v14

    xor-long v43, v43, v29

    aput-wide v43, p1, v14

    .line 123
    aget-wide v43, p1, v2

    xor-long v43, v43, v37

    aput-wide v43, p1, v2

    .line 124
    aget-wide v43, p1, v27

    xor-long v43, v43, v37

    aput-wide v43, p1, v27

    .line 125
    aget-wide v43, p1, v4

    xor-long v43, v43, v37

    aput-wide v43, p1, v4

    .line 126
    aget-wide v43, p1, v5

    xor-long v43, v43, v37

    aput-wide v43, p1, v5

    .line 127
    aget-wide v43, p1, v25

    xor-long v43, v43, v37

    aput-wide v43, p1, v25

    .line 128
    aget-wide v43, p1, v32

    xor-long v43, v43, v39

    aput-wide v43, p1, v32

    .line 129
    aget-wide v43, p1, v3

    xor-long v43, v43, v39

    aput-wide v43, p1, v3

    .line 130
    aget-wide v43, p1, v33

    xor-long v43, v43, v39

    aput-wide v43, p1, v33

    .line 131
    aget-wide v43, p1, v36

    xor-long v43, v43, v39

    aput-wide v43, p1, v36

    .line 132
    aget-wide v43, p1, v34

    xor-long v43, v43, v39

    aput-wide v43, p1, v34

    .line 133
    aget-wide v43, p1, v15

    xor-long v43, v43, v41

    aput-wide v43, p1, v15

    .line 134
    aget-wide v43, p1, v18

    xor-long v43, v43, v41

    aput-wide v43, p1, v18

    .line 135
    aget-wide v43, p1, v19

    xor-long v43, v43, v41

    aput-wide v43, p1, v19

    .line 136
    aget-wide v43, p1, v22

    xor-long v43, v43, v41

    aput-wide v43, p1, v22

    .line 137
    aget-wide v43, p1, v8

    xor-long v43, v43, v41

    aput-wide v43, p1, v8

    .line 138
    aget-wide v43, p1, v26

    const/16 v35, 0x24

    shl-long v43, v43, v35

    aget-wide v45, p1, v26

    const/16 v35, 0x1c

    ushr-long v45, v45, v35

    or-long v43, v43, v45

    aput-wide v43, p1, v26

    .line 139
    aget-wide v43, p1, v28

    shl-long v43, v43, v32

    aget-wide v45, p1, v28

    const/16 v35, 0x3d

    ushr-long v45, v45, v35

    or-long v43, v43, v45

    aput-wide v43, p1, v28

    .line 140
    aget-wide v43, p1, v31

    const/16 v35, 0x29

    shl-long v43, v43, v35

    aget-wide v45, p1, v31

    ushr-long v45, v45, v34

    or-long v43, v43, v45

    aput-wide v43, p1, v31

    .line 141
    aget-wide v43, p1, v6

    shl-long v43, v43, v36

    aget-wide v45, p1, v6

    const/16 v35, 0x2e

    ushr-long v45, v45, v35

    or-long v43, v43, v45

    aput-wide v43, p1, v6

    .line 142
    aget-wide v43, p1, v1

    shl-long v43, v43, v1

    aget-wide v45, p1, v1

    const/16 v35, 0x3f

    ushr-long v45, v45, v35

    or-long v43, v43, v45

    aput-wide v43, p1, v1

    .line 143
    aget-wide v43, p1, v11

    const/16 v35, 0x2c

    shl-long v43, v43, v35

    aget-wide v45, p1, v11

    ushr-long v45, v45, v6

    or-long v43, v43, v45

    aput-wide v43, p1, v11

    .line 144
    const/16 v35, 0xb

    aget-wide v43, p1, v35

    shl-long v43, v43, v28

    aget-wide v45, p1, v35

    const/16 v35, 0x36

    ushr-long v45, v45, v35

    or-long v43, v43, v45

    const/16 v35, 0xb

    aput-wide v43, p1, v35

    .line 145
    const/16 v35, 0x10

    aget-wide v43, p1, v35

    const/16 v35, 0x2d

    shl-long v43, v43, v35

    const/16 v35, 0x10

    aget-wide v45, p1, v35

    ushr-long v45, v45, v22

    or-long v43, v43, v45

    aput-wide v43, p1, v35

    .line 146
    aget-wide v43, p1, v14

    shl-long v43, v43, v2

    aget-wide v45, p1, v14

    const/16 v35, 0x3e

    ushr-long v45, v45, v35

    or-long v43, v43, v45

    aput-wide v43, p1, v14

    .line 147
    aget-wide v43, p1, v2

    shl-long v43, v43, v35

    aget-wide v45, p1, v2

    ushr-long v45, v45, v2

    or-long v43, v43, v45

    aput-wide v43, p1, v2

    .line 148
    aget-wide v43, p1, v27

    shl-long v43, v43, v11

    aget-wide v45, p1, v27

    const/16 v35, 0x3a

    ushr-long v45, v45, v35

    or-long v43, v43, v45

    aput-wide v43, p1, v27

    .line 149
    aget-wide v43, p1, v4

    const/16 v35, 0x2b

    shl-long v43, v43, v35

    aget-wide v45, p1, v4

    ushr-long v45, v45, v14

    or-long v43, v43, v45

    aput-wide v43, p1, v4

    .line 150
    aget-wide v43, p1, v5

    shl-long v43, v43, v31

    aget-wide v45, p1, v5

    const/16 v35, 0x31

    ushr-long v45, v45, v35

    or-long v43, v43, v45

    aput-wide v43, p1, v5

    .line 151
    aget-wide v43, p1, v25

    const/16 v35, 0x3d

    shl-long v43, v43, v35

    aget-wide v45, p1, v25

    ushr-long v45, v45, v32

    or-long v43, v43, v45

    aput-wide v43, p1, v25

    .line 152
    aget-wide v43, p1, v32

    const/16 v35, 0x1c

    shl-long v43, v43, v35

    aget-wide v45, p1, v32

    const/16 v35, 0x24

    ushr-long v45, v45, v35

    or-long v43, v43, v45

    aput-wide v43, p1, v32

    .line 153
    aget-wide v43, p1, v3

    const/16 v35, 0x37

    shl-long v43, v43, v35

    aget-wide v45, p1, v3

    ushr-long v45, v45, v18

    or-long v43, v43, v45

    aput-wide v43, p1, v3

    .line 154
    aget-wide v43, p1, v33

    const/16 v35, 0x19

    shl-long v43, v43, v35

    aget-wide v45, p1, v33

    const/16 v35, 0x27

    ushr-long v45, v45, v35

    or-long v43, v43, v45

    aput-wide v43, p1, v33

    .line 155
    aget-wide v43, p1, v36

    shl-long v43, v43, v14

    aget-wide v45, p1, v36

    const/16 v35, 0x2b

    ushr-long v45, v45, v35

    or-long v43, v43, v45

    aput-wide v43, p1, v36

    .line 156
    aget-wide v43, p1, v34

    const/16 v35, 0x38

    shl-long v43, v43, v35

    aget-wide v45, p1, v34

    ushr-long v45, v45, v3

    or-long v43, v43, v45

    aput-wide v43, p1, v34

    .line 157
    aget-wide v43, p1, v15

    const/16 v35, 0x1b

    shl-long v43, v43, v35

    aget-wide v45, p1, v15

    const/16 v35, 0x25

    ushr-long v45, v45, v35

    or-long v43, v43, v45

    aput-wide v43, p1, v15

    .line 158
    aget-wide v43, p1, v18

    shl-long v43, v43, v6

    aget-wide v45, p1, v18

    const/16 v35, 0x2c

    ushr-long v45, v45, v35

    or-long v43, v43, v45

    aput-wide v43, p1, v18

    .line 159
    aget-wide v43, p1, v19

    const/16 v35, 0x27

    shl-long v43, v43, v35

    aget-wide v45, p1, v19

    const/16 v35, 0x19

    ushr-long v45, v45, v35

    or-long v43, v43, v45

    aput-wide v43, p1, v19

    .line 160
    aget-wide v43, p1, v22

    shl-long v43, v43, v3

    aget-wide v45, p1, v22

    const/16 v35, 0x38

    ushr-long v45, v45, v35

    or-long v43, v43, v45

    aput-wide v43, p1, v22

    .line 161
    aget-wide v43, p1, v8

    shl-long v43, v43, v19

    aget-wide v45, p1, v8

    const/16 v35, 0x32

    ushr-long v45, v45, v35

    or-long v43, v43, v45

    aput-wide v43, p1, v8

    .line 163
    const/16 v35, 0x1

    const/16 v43, 0x2

    aget-wide v1, p1, v4

    not-long v1, v1

    .line 164
    .local v1, "bnn":J
    aget-wide v44, p1, v11

    aget-wide v46, p1, v4

    or-long v44, v44, v46

    .line 165
    .local v44, "kt":J
    const/16 v46, 0x0

    aget-wide v46, p1, v46

    xor-long v46, v46, v44

    .line 166
    .local v46, "c0":J
    aget-wide v48, p1, v36

    or-long v44, v1, v48

    .line 167
    aget-wide v48, p1, v11

    xor-long v48, v48, v44

    .line 168
    .local v48, "c1":J
    aget-wide v50, p1, v36

    aget-wide v52, p1, v8

    and-long v44, v50, v52

    .line 169
    aget-wide v50, p1, v4

    xor-long v50, v50, v44

    .line 170
    .local v50, "c2":J
    aget-wide v52, p1, v8

    const/16 v54, 0x0

    aget-wide v54, p1, v54

    or-long v44, v52, v54

    .line 171
    aget-wide v52, p1, v36

    xor-long v52, v52, v44

    .line 172
    .local v52, "c3":J
    const/16 v54, 0x0

    aget-wide v54, p1, v54

    aget-wide v56, p1, v11

    and-long v44, v54, v56

    .line 173
    aget-wide v54, p1, v8

    xor-long v54, v54, v44

    .line 174
    .local v54, "c4":J
    const/16 v56, 0x0

    aput-wide v46, p1, v56

    .line 175
    aput-wide v48, p1, v11

    .line 176
    aput-wide v50, p1, v4

    .line 177
    aput-wide v52, p1, v36

    .line 178
    aput-wide v54, p1, v8

    .line 179
    const/16 v56, 0x8

    const/16 v57, 0xc

    aget-wide v3, p1, v25

    not-long v1, v3

    .line 180
    aget-wide v3, p1, v18

    aget-wide v58, p1, v28

    or-long v3, v3, v58

    .line 181
    .end local v44    # "kt":J
    .local v3, "kt":J
    aget-wide v44, p1, v32

    xor-long v44, v44, v3

    .line 182
    .end local v46    # "c0":J
    .local v44, "c0":J
    aget-wide v46, p1, v28

    const/16 v58, 0x10

    aget-wide v58, p1, v58

    and-long v3, v46, v58

    .line 183
    aget-wide v46, p1, v18

    xor-long v46, v46, v3

    .line 184
    .end local v48    # "c1":J
    .local v46, "c1":J
    const/16 v48, 0x10

    aget-wide v48, p1, v48

    or-long v3, v48, v1

    .line 185
    aget-wide v48, p1, v28

    xor-long v48, v48, v3

    .line 186
    .end local v50    # "c2":J
    .local v48, "c2":J
    aget-wide v50, p1, v25

    aget-wide v58, p1, v32

    or-long v3, v50, v58

    .line 187
    const/16 v50, 0x10

    aget-wide v50, p1, v50

    xor-long v50, v50, v3

    .line 188
    .end local v52    # "c3":J
    .local v50, "c3":J
    aget-wide v52, p1, v32

    aget-wide v58, p1, v18

    and-long v3, v52, v58

    .line 189
    aget-wide v52, p1, v25

    xor-long v52, v52, v3

    .line 190
    .end local v54    # "c4":J
    .local v52, "c4":J
    aput-wide v44, p1, v32

    .line 191
    aput-wide v46, p1, v18

    .line 192
    aput-wide v48, p1, v28

    .line 193
    const/16 v54, 0x10

    aput-wide v50, p1, v54

    .line 194
    aput-wide v52, p1, v25

    .line 195
    const/16 v54, 0x11

    const/16 v55, 0x14

    aget-wide v5, p1, v22

    not-long v1, v5

    .line 196
    aget-wide v5, p1, v27

    aget-wide v58, p1, v33

    or-long v3, v5, v58

    .line 197
    aget-wide v5, p1, v35

    xor-long/2addr v5, v3

    .line 198
    .end local v44    # "c0":J
    .local v5, "c0":J
    aget-wide v44, p1, v33

    aget-wide v58, p1, v22

    and-long v3, v44, v58

    .line 199
    aget-wide v44, p1, v27

    xor-long v44, v44, v3

    .line 200
    .end local v46    # "c1":J
    .local v44, "c1":J
    aget-wide v46, p1, v55

    and-long v3, v1, v46

    .line 201
    aget-wide v46, p1, v33

    xor-long v46, v46, v3

    .line 202
    .end local v48    # "c2":J
    .local v46, "c2":J
    aget-wide v48, p1, v55

    aget-wide v58, p1, v35

    or-long v3, v48, v58

    .line 203
    xor-long v48, v1, v3

    .line 204
    .end local v50    # "c3":J
    .local v48, "c3":J
    aget-wide v50, p1, v35

    aget-wide v58, p1, v27

    and-long v3, v50, v58

    .line 205
    aget-wide v50, p1, v55

    xor-long v50, v50, v3

    .line 206
    .end local v52    # "c4":J
    .local v50, "c4":J
    aput-wide v5, p1, v35

    .line 207
    aput-wide v44, p1, v27

    .line 208
    aput-wide v46, p1, v33

    .line 209
    aput-wide v48, p1, v22

    .line 210
    aput-wide v50, p1, v55

    .line 211
    move-wide/from16 v58, v9

    const/16 v52, 0x18

    .end local v9    # "tt0":J
    .local v58, "tt0":J
    aget-wide v8, p1, v54

    not-long v1, v8

    .line 212
    aget-wide v8, p1, v26

    const/16 v10, 0xb

    aget-wide v60, p1, v10

    and-long v3, v8, v60

    .line 213
    aget-wide v8, p1, v15

    xor-long v5, v8, v3

    .line 214
    const/16 v8, 0xb

    aget-wide v8, p1, v8

    aget-wide v60, p1, v54

    or-long v3, v8, v60

    .line 215
    aget-wide v8, p1, v26

    xor-long/2addr v8, v3

    .line 216
    .end local v44    # "c1":J
    .local v8, "c1":J
    aget-wide v44, p1, v34

    or-long v3, v1, v44

    .line 217
    aget-wide v44, p1, v10

    xor-long v44, v44, v3

    .line 218
    .end local v46    # "c2":J
    .local v44, "c2":J
    aget-wide v46, p1, v34

    aget-wide v60, p1, v15

    and-long v3, v46, v60

    .line 219
    xor-long v46, v1, v3

    .line 220
    .end local v48    # "c3":J
    .local v46, "c3":J
    aget-wide v48, p1, v15

    aget-wide v60, p1, v26

    or-long v3, v48, v60

    .line 221
    aget-wide v48, p1, v34

    xor-long v48, v48, v3

    .line 222
    .end local v50    # "c4":J
    .local v48, "c4":J
    aput-wide v5, p1, v15

    .line 223
    aput-wide v8, p1, v26

    .line 224
    aput-wide v44, p1, v10

    .line 225
    aput-wide v46, p1, v54

    .line 226
    aput-wide v48, p1, v34

    .line 227
    move-wide/from16 v50, v12

    const/4 v10, 0x6

    .end local v12    # "tt1":J
    .local v50, "tt1":J
    aget-wide v11, p1, v56

    not-long v1, v11

    .line 228
    aget-wide v11, p1, v19

    and-long v3, v1, v11

    .line 229
    aget-wide v11, p1, v43

    xor-long v5, v11, v3

    .line 230
    aget-wide v11, p1, v19

    aget-wide v60, p1, v31

    or-long v3, v11, v60

    .line 231
    xor-long v8, v1, v3

    .line 232
    aget-wide v11, p1, v31

    aget-wide v60, p1, v14

    and-long v3, v11, v60

    .line 233
    aget-wide v11, p1, v19

    xor-long/2addr v11, v3

    .line 234
    .end local v44    # "c2":J
    .local v11, "c2":J
    aget-wide v44, p1, v14

    aget-wide v60, p1, v43

    or-long v3, v44, v60

    .line 235
    aget-wide v44, p1, v31

    xor-long v44, v44, v3

    .line 236
    .end local v46    # "c3":J
    .local v44, "c3":J
    aget-wide v46, p1, v43

    aget-wide v60, p1, v56

    and-long v3, v46, v60

    .line 237
    aget-wide v46, p1, v14

    xor-long v46, v46, v3

    .line 238
    .end local v48    # "c4":J
    .local v46, "c4":J
    aput-wide v5, p1, v43

    .line 239
    aput-wide v8, p1, v56

    .line 240
    aput-wide v11, p1, v19

    .line 241
    aput-wide v44, p1, v31

    .line 242
    aput-wide v46, p1, v14

    .line 243
    const/4 v13, 0x0

    aget-wide v48, p1, v13

    iget-object v13, v0, Lorg/bouncycastle/pqc/crypto/falcon/SHAKE256;->RC:[J

    add-int/lit8 v53, v7, 0x0

    aget-wide v60, v13, v53

    xor-long v48, v48, v60

    const/4 v13, 0x0

    aput-wide v48, p1, v13

    .line 245
    aget-wide v48, p1, v10

    aget-wide v60, p1, v18

    xor-long v48, v48, v60

    .line 246
    .end local v58    # "tt0":J
    .local v48, "tt0":J
    aget-wide v58, p1, v27

    aget-wide v60, p1, v26

    xor-long v50, v58, v60

    .line 247
    aget-wide v58, p1, v56

    xor-long v58, v58, v50

    xor-long v48, v48, v58

    .line 248
    shl-long v58, v48, v35

    const/16 v13, 0x3f

    ushr-long v60, v48, v13

    or-long v48, v58, v60

    .line 249
    aget-wide v58, p1, v52

    aget-wide v60, p1, v25

    xor-long v16, v58, v60

    .line 250
    aget-wide v58, p1, v55

    aget-wide v60, p1, v34

    xor-long v20, v58, v60

    .line 251
    aget-wide v58, p1, v14

    xor-long v48, v48, v58

    .line 252
    xor-long v16, v16, v20

    .line 253
    xor-long v23, v48, v16

    .line 255
    aget-wide v58, p1, v57

    aget-wide v60, p1, v28

    xor-long v48, v58, v60

    .line 256
    aget-wide v58, p1, v33

    const/16 v13, 0xb

    aget-wide v60, p1, v13

    xor-long v50, v58, v60

    .line 257
    aget-wide v58, p1, v19

    xor-long v58, v58, v50

    xor-long v48, v48, v58

    .line 258
    shl-long v58, v48, v35

    const/16 v13, 0x3f

    ushr-long v60, v48, v13

    or-long v48, v58, v60

    .line 259
    const/4 v13, 0x0

    aget-wide v58, p1, v13

    aget-wide v60, p1, v32

    xor-long v16, v58, v60

    .line 260
    aget-wide v58, p1, v35

    aget-wide v60, p1, v15

    xor-long v20, v58, v60

    .line 261
    aget-wide v58, p1, v43

    xor-long v48, v48, v58

    .line 262
    xor-long v16, v16, v20

    .line 263
    xor-long v29, v48, v16

    .line 265
    aget-wide v58, p1, v36

    const/16 v13, 0x10

    aget-wide v60, p1, v13

    xor-long v48, v58, v60

    .line 266
    aget-wide v58, p1, v22

    aget-wide v60, p1, v54

    xor-long v50, v58, v60

    .line 267
    aget-wide v58, p1, v31

    xor-long v58, v58, v50

    xor-long v48, v48, v58

    .line 268
    shl-long v58, v48, v35

    const/16 v13, 0x3f

    ushr-long v60, v48, v13

    or-long v48, v58, v60

    .line 269
    aget-wide v58, p1, v10

    aget-wide v60, p1, v18

    xor-long v16, v58, v60

    .line 270
    aget-wide v58, p1, v27

    aget-wide v60, p1, v26

    xor-long v20, v58, v60

    .line 271
    aget-wide v58, p1, v56

    xor-long v48, v48, v58

    .line 272
    xor-long v16, v16, v20

    .line 273
    xor-long v37, v48, v16

    .line 275
    aget-wide v58, p1, v52

    aget-wide v60, p1, v25

    xor-long v48, v58, v60

    .line 276
    aget-wide v58, p1, v55

    aget-wide v60, p1, v34

    xor-long v50, v58, v60

    .line 277
    aget-wide v58, p1, v14

    xor-long v58, v58, v50

    xor-long v48, v48, v58

    .line 278
    shl-long v58, v48, v35

    ushr-long v60, v48, v13

    or-long v48, v58, v60

    .line 279
    aget-wide v58, p1, v57

    aget-wide v60, p1, v28

    xor-long v16, v58, v60

    .line 280
    aget-wide v58, p1, v33

    const/16 v13, 0xb

    aget-wide v60, p1, v13

    xor-long v20, v58, v60

    .line 281
    aget-wide v58, p1, v19

    xor-long v48, v48, v58

    .line 282
    xor-long v16, v16, v20

    .line 283
    xor-long v39, v48, v16

    .line 285
    const/4 v13, 0x0

    aget-wide v58, p1, v13

    aget-wide v60, p1, v32

    xor-long v48, v58, v60

    .line 286
    aget-wide v58, p1, v35

    aget-wide v60, p1, v15

    xor-long v50, v58, v60

    .line 287
    aget-wide v58, p1, v43

    xor-long v58, v58, v50

    xor-long v48, v48, v58

    .line 288
    shl-long v58, v48, v35

    const/16 v13, 0x3f

    ushr-long v60, v48, v13

    or-long v48, v58, v60

    .line 289
    aget-wide v58, p1, v36

    const/16 v13, 0x10

    aget-wide v60, p1, v13

    xor-long v16, v58, v60

    .line 290
    aget-wide v58, p1, v22

    aget-wide v60, p1, v54

    xor-long v20, v58, v60

    .line 291
    aget-wide v58, p1, v31

    xor-long v48, v48, v58

    .line 292
    xor-long v16, v16, v20

    .line 293
    xor-long v41, v48, v16

    .line 295
    const/4 v13, 0x0

    aget-wide v58, p1, v13

    xor-long v58, v58, v23

    aput-wide v58, p1, v13

    .line 296
    aget-wide v58, p1, v32

    xor-long v58, v58, v23

    aput-wide v58, p1, v32

    .line 297
    aget-wide v58, p1, v35

    xor-long v58, v58, v23

    aput-wide v58, p1, v35

    .line 298
    aget-wide v58, p1, v15

    xor-long v58, v58, v23

    aput-wide v58, p1, v15

    .line 299
    aget-wide v58, p1, v43

    xor-long v58, v58, v23

    aput-wide v58, p1, v43

    .line 300
    aget-wide v58, p1, v10

    xor-long v58, v58, v29

    aput-wide v58, p1, v10

    .line 301
    aget-wide v58, p1, v18

    xor-long v58, v58, v29

    aput-wide v58, p1, v18

    .line 302
    aget-wide v58, p1, v27

    xor-long v58, v58, v29

    aput-wide v58, p1, v27

    .line 303
    aget-wide v58, p1, v26

    xor-long v58, v58, v29

    aput-wide v58, p1, v26

    .line 304
    aget-wide v58, p1, v56

    xor-long v58, v58, v29

    aput-wide v58, p1, v56

    .line 305
    aget-wide v58, p1, v57

    xor-long v58, v58, v37

    aput-wide v58, p1, v57

    .line 306
    aget-wide v58, p1, v28

    xor-long v58, v58, v37

    aput-wide v58, p1, v28

    .line 307
    aget-wide v58, p1, v33

    xor-long v58, v58, v37

    aput-wide v58, p1, v33

    .line 308
    const/16 v13, 0xb

    aget-wide v58, p1, v13

    xor-long v58, v58, v37

    aput-wide v58, p1, v13

    .line 309
    aget-wide v58, p1, v19

    xor-long v58, v58, v37

    aput-wide v58, p1, v19

    .line 310
    aget-wide v58, p1, v36

    xor-long v58, v58, v39

    aput-wide v58, p1, v36

    .line 311
    const/16 v13, 0x10

    aget-wide v58, p1, v13

    xor-long v58, v58, v39

    aput-wide v58, p1, v13

    .line 312
    aget-wide v58, p1, v22

    xor-long v58, v58, v39

    aput-wide v58, p1, v22

    .line 313
    aget-wide v58, p1, v54

    xor-long v58, v58, v39

    aput-wide v58, p1, v54

    .line 314
    aget-wide v58, p1, v31

    xor-long v58, v58, v39

    aput-wide v58, p1, v31

    .line 315
    aget-wide v58, p1, v52

    xor-long v58, v58, v41

    aput-wide v58, p1, v52

    .line 316
    aget-wide v58, p1, v25

    xor-long v58, v58, v41

    aput-wide v58, p1, v25

    .line 317
    aget-wide v58, p1, v55

    xor-long v58, v58, v41

    aput-wide v58, p1, v55

    .line 318
    aget-wide v58, p1, v34

    xor-long v58, v58, v41

    aput-wide v58, p1, v34

    .line 319
    aget-wide v58, p1, v14

    xor-long v58, v58, v41

    aput-wide v58, p1, v14

    .line 320
    aget-wide v58, p1, v32

    const/16 v13, 0x24

    shl-long v58, v58, v13

    aget-wide v60, p1, v32

    const/16 v13, 0x1c

    ushr-long v60, v60, v13

    or-long v58, v58, v60

    aput-wide v58, p1, v32

    .line 321
    aget-wide v58, p1, v35

    shl-long v58, v58, v32

    aget-wide v60, p1, v35

    const/16 v13, 0x3d

    ushr-long v60, v60, v13

    or-long v58, v58, v60

    aput-wide v58, p1, v35

    .line 322
    aget-wide v58, p1, v15

    const/16 v13, 0x29

    shl-long v58, v58, v13

    aget-wide v60, p1, v15

    ushr-long v60, v60, v34

    or-long v58, v58, v60

    aput-wide v58, p1, v15

    .line 323
    aget-wide v58, p1, v43

    shl-long v58, v58, v36

    aget-wide v60, p1, v43

    const/16 v13, 0x2e

    ushr-long v60, v60, v13

    or-long v58, v58, v60

    aput-wide v58, p1, v43

    .line 324
    aget-wide v58, p1, v10

    shl-long v58, v58, v35

    aget-wide v60, p1, v10

    const/16 v13, 0x3f

    ushr-long v60, v60, v13

    or-long v58, v58, v60

    aput-wide v58, p1, v10

    .line 325
    aget-wide v58, p1, v18

    const/16 v13, 0x2c

    shl-long v58, v58, v13

    aget-wide v60, p1, v18

    ushr-long v60, v60, v55

    or-long v58, v58, v60

    aput-wide v58, p1, v18

    .line 326
    aget-wide v58, p1, v27

    shl-long v58, v58, v28

    aget-wide v60, p1, v27

    const/16 v13, 0x36

    ushr-long v60, v60, v13

    or-long v58, v58, v60

    aput-wide v58, p1, v27

    .line 327
    aget-wide v58, p1, v26

    const/16 v13, 0x2d

    shl-long v58, v58, v13

    aget-wide v60, p1, v26

    ushr-long v60, v60, v22

    or-long v58, v58, v60

    aput-wide v58, p1, v26

    .line 328
    aget-wide v58, p1, v56

    shl-long v58, v58, v43

    aget-wide v60, p1, v56

    const/16 v13, 0x3e

    ushr-long v60, v60, v13

    or-long v58, v58, v60

    aput-wide v58, p1, v56

    .line 329
    aget-wide v58, p1, v57

    shl-long v58, v58, v13

    aget-wide v60, p1, v57

    ushr-long v60, v60, v43

    or-long v58, v58, v60

    aput-wide v58, p1, v57

    .line 330
    aget-wide v58, p1, v28

    shl-long v58, v58, v10

    aget-wide v60, p1, v28

    const/16 v13, 0x3a

    ushr-long v60, v60, v13

    or-long v58, v58, v60

    aput-wide v58, p1, v28

    .line 331
    aget-wide v58, p1, v33

    const/16 v13, 0x2b

    shl-long v58, v58, v13

    aget-wide v60, p1, v33

    ushr-long v60, v60, v14

    or-long v58, v58, v60

    aput-wide v58, p1, v33

    .line 332
    const/16 v13, 0xb

    aget-wide v58, p1, v13

    shl-long v58, v58, v31

    aget-wide v60, p1, v13

    const/16 v13, 0x31

    ushr-long v60, v60, v13

    or-long v58, v58, v60

    const/16 v13, 0xb

    aput-wide v58, p1, v13

    .line 333
    aget-wide v58, p1, v19

    const/16 v13, 0x3d

    shl-long v58, v58, v13

    aget-wide v60, p1, v19

    ushr-long v60, v60, v32

    or-long v58, v58, v60

    aput-wide v58, p1, v19

    .line 334
    aget-wide v58, p1, v36

    const/16 v13, 0x1c

    shl-long v58, v58, v13

    aget-wide v60, p1, v36

    const/16 v13, 0x24

    ushr-long v60, v60, v13

    or-long v58, v58, v60

    aput-wide v58, p1, v36

    .line 335
    const/16 v13, 0x10

    aget-wide v58, p1, v13

    const/16 v13, 0x37

    shl-long v58, v58, v13

    const/16 v13, 0x10

    aget-wide v60, p1, v13

    ushr-long v60, v60, v18

    or-long v58, v58, v60

    aput-wide v58, p1, v13

    .line 336
    aget-wide v58, p1, v22

    const/16 v13, 0x19

    shl-long v58, v58, v13

    aget-wide v60, p1, v22

    const/16 v13, 0x27

    ushr-long v60, v60, v13

    or-long v58, v58, v60

    aput-wide v58, p1, v22

    .line 337
    aget-wide v58, p1, v54

    shl-long v58, v58, v14

    aget-wide v60, p1, v54

    const/16 v13, 0x2b

    ushr-long v60, v60, v13

    or-long v58, v58, v60

    aput-wide v58, p1, v54

    .line 338
    aget-wide v58, p1, v31

    const/16 v13, 0x38

    shl-long v58, v58, v13

    aget-wide v60, p1, v31

    ushr-long v60, v60, v56

    or-long v58, v58, v60

    aput-wide v58, p1, v31

    .line 339
    aget-wide v58, p1, v52

    const/16 v13, 0x1b

    shl-long v58, v58, v13

    aget-wide v60, p1, v52

    const/16 v13, 0x25

    ushr-long v60, v60, v13

    or-long v58, v58, v60

    aput-wide v58, p1, v52

    .line 340
    aget-wide v58, p1, v25

    shl-long v58, v58, v55

    aget-wide v60, p1, v25

    const/16 v13, 0x2c

    ushr-long v60, v60, v13

    or-long v58, v58, v60

    aput-wide v58, p1, v25

    .line 341
    aget-wide v58, p1, v55

    const/16 v13, 0x27

    shl-long v58, v58, v13

    aget-wide v60, p1, v55

    const/16 v13, 0x19

    ushr-long v60, v60, v13

    or-long v58, v58, v60

    aput-wide v58, p1, v55

    .line 342
    aget-wide v58, p1, v34

    shl-long v58, v58, v56

    aget-wide v60, p1, v34

    const/16 v13, 0x38

    ushr-long v60, v60, v13

    or-long v58, v58, v60

    aput-wide v58, p1, v34

    .line 343
    aget-wide v58, p1, v14

    shl-long v58, v58, v19

    aget-wide v60, p1, v14

    const/16 v13, 0x32

    ushr-long v60, v60, v13

    or-long v58, v58, v60

    aput-wide v58, p1, v14

    .line 345
    move-wide/from16 v58, v11

    const/4 v13, 0x6

    .end local v11    # "c2":J
    .local v58, "c2":J
    aget-wide v10, p1, v33

    not-long v1, v10

    .line 346
    aget-wide v10, p1, v18

    aget-wide v60, p1, v33

    or-long v3, v10, v60

    .line 347
    const/4 v10, 0x0

    aget-wide v10, p1, v10

    xor-long v5, v10, v3

    .line 348
    aget-wide v10, p1, v54

    or-long v3, v1, v10

    .line 349
    aget-wide v10, p1, v18

    xor-long v8, v10, v3

    .line 350
    aget-wide v10, p1, v54

    aget-wide v60, p1, v14

    and-long v3, v10, v60

    .line 351
    aget-wide v10, p1, v33

    xor-long/2addr v10, v3

    .line 352
    .end local v58    # "c2":J
    .local v10, "c2":J
    aget-wide v58, p1, v14

    const/4 v12, 0x0

    aget-wide v60, p1, v12

    or-long v3, v58, v60

    .line 353
    aget-wide v58, p1, v54

    xor-long v44, v58, v3

    .line 354
    aget-wide v58, p1, v12

    aget-wide v60, p1, v18

    and-long v3, v58, v60

    .line 355
    aget-wide v58, p1, v14

    xor-long v46, v58, v3

    .line 356
    aput-wide v5, p1, v12

    .line 357
    aput-wide v8, p1, v18

    .line 358
    aput-wide v10, p1, v33

    .line 359
    aput-wide v44, p1, v54

    .line 360
    aput-wide v46, p1, v14

    .line 361
    const/16 v12, 0x15

    const/16 v53, 0x6

    aget-wide v13, p1, v19

    not-long v1, v13

    .line 362
    aget-wide v13, p1, v25

    aget-wide v58, p1, v35

    or-long v3, v13, v58

    .line 363
    aget-wide v13, p1, v36

    xor-long v5, v13, v3

    .line 364
    aget-wide v13, p1, v35

    aget-wide v58, p1, v26

    and-long v3, v13, v58

    .line 365
    aget-wide v13, p1, v25

    xor-long v8, v13, v3

    .line 366
    aget-wide v13, p1, v26

    or-long v3, v13, v1

    .line 367
    aget-wide v13, p1, v35

    xor-long v10, v13, v3

    .line 368
    aget-wide v13, p1, v19

    aget-wide v58, p1, v36

    or-long v3, v13, v58

    .line 369
    aget-wide v13, p1, v26

    xor-long/2addr v13, v3

    .line 370
    .end local v44    # "c3":J
    .local v13, "c3":J
    aget-wide v44, p1, v36

    aget-wide v58, p1, v25

    and-long v3, v44, v58

    .line 371
    aget-wide v44, p1, v19

    xor-long v44, v44, v3

    .line 372
    .end local v46    # "c4":J
    .local v44, "c4":J
    aput-wide v5, p1, v36

    .line 373
    aput-wide v8, p1, v25

    .line 374
    aput-wide v10, p1, v35

    .line 375
    aput-wide v13, p1, v26

    .line 376
    aput-wide v44, p1, v19

    .line 377
    move-wide/from16 v58, v13

    const/16 v46, 0x15

    .end local v13    # "c3":J
    .local v58, "c3":J
    aget-wide v12, p1, v34

    not-long v1, v12

    .line 378
    aget-wide v12, p1, v28

    aget-wide v60, p1, v22

    or-long v3, v12, v60

    .line 379
    aget-wide v12, p1, v53

    xor-long v5, v12, v3

    .line 380
    aget-wide v12, p1, v22

    aget-wide v60, p1, v34

    and-long v3, v12, v60

    .line 381
    aget-wide v12, p1, v28

    xor-long v8, v12, v3

    .line 382
    aget-wide v12, p1, v43

    and-long v3, v1, v12

    .line 383
    aget-wide v12, p1, v22

    xor-long v10, v12, v3

    .line 384
    aget-wide v12, p1, v43

    aget-wide v60, p1, v53

    or-long v3, v12, v60

    .line 385
    xor-long v12, v1, v3

    .line 386
    .end local v58    # "c3":J
    .local v12, "c3":J
    aget-wide v58, p1, v53

    aget-wide v60, p1, v28

    and-long v3, v58, v60

    .line 387
    aget-wide v58, p1, v43

    xor-long v44, v58, v3

    .line 388
    aput-wide v5, p1, v53

    .line 389
    aput-wide v8, p1, v28

    .line 390
    aput-wide v10, p1, v22

    .line 391
    aput-wide v12, p1, v34

    .line 392
    aput-wide v44, p1, v43

    .line 393
    const/16 v14, 0xb

    move-wide/from16 v58, v1

    .end local v1    # "bnn":J
    .local v58, "bnn":J
    aget-wide v1, p1, v14

    not-long v1, v1

    .line 394
    .end local v58    # "bnn":J
    .restart local v1    # "bnn":J
    aget-wide v58, p1, v32

    aget-wide v60, p1, v27

    and-long v3, v58, v60

    .line 395
    aget-wide v58, p1, v52

    xor-long v5, v58, v3

    .line 396
    aget-wide v58, p1, v27

    aget-wide v60, p1, v14

    or-long v3, v58, v60

    .line 397
    aget-wide v58, p1, v32

    xor-long v8, v58, v3

    .line 398
    aget-wide v58, p1, v31

    or-long v3, v1, v58

    .line 399
    aget-wide v58, p1, v27

    xor-long v10, v58, v3

    .line 400
    aget-wide v58, p1, v31

    aget-wide v60, p1, v52

    and-long v3, v58, v60

    .line 401
    xor-long v12, v1, v3

    .line 402
    aget-wide v58, p1, v52

    aget-wide v60, p1, v32

    or-long v3, v58, v60

    .line 403
    aget-wide v58, p1, v31

    xor-long v44, v58, v3

    .line 404
    aput-wide v5, p1, v52

    .line 405
    aput-wide v8, p1, v32

    .line 406
    aput-wide v10, p1, v27

    .line 407
    aput-wide v12, p1, v14

    .line 408
    aput-wide v44, p1, v31

    .line 409
    const/16 v14, 0x10

    move-wide/from16 v58, v1

    .end local v1    # "bnn":J
    .restart local v58    # "bnn":J
    aget-wide v1, p1, v14

    not-long v1, v1

    .line 410
    .end local v58    # "bnn":J
    .restart local v1    # "bnn":J
    aget-wide v58, p1, v55

    and-long v3, v1, v58

    .line 411
    aget-wide v58, p1, v57

    xor-long v5, v58, v3

    .line 412
    aget-wide v58, p1, v55

    aget-wide v60, p1, v15

    or-long v3, v58, v60

    .line 413
    xor-long v8, v1, v3

    .line 414
    aget-wide v58, p1, v15

    aget-wide v60, p1, v56

    and-long v3, v58, v60

    .line 415
    aget-wide v58, p1, v55

    xor-long v10, v58, v3

    .line 416
    aget-wide v58, p1, v56

    aget-wide v60, p1, v57

    or-long v3, v58, v60

    .line 417
    aget-wide v58, p1, v15

    xor-long v12, v58, v3

    .line 418
    aget-wide v58, p1, v57

    aget-wide v60, p1, v14

    and-long v3, v58, v60

    .line 419
    aget-wide v58, p1, v56

    xor-long v44, v58, v3

    .line 420
    aput-wide v5, p1, v57

    .line 421
    aput-wide v8, p1, v14

    .line 422
    aput-wide v10, p1, v55

    .line 423
    aput-wide v12, p1, v15

    .line 424
    aput-wide v44, p1, v56

    .line 425
    const/4 v14, 0x0

    aget-wide v58, p1, v14

    iget-object v14, v0, Lorg/bouncycastle/pqc/crypto/falcon/SHAKE256;->RC:[J

    add-int/lit8 v47, v7, 0x1

    aget-wide v60, v14, v47

    xor-long v58, v58, v60

    const/4 v14, 0x0

    aput-wide v58, p1, v14

    .line 426
    aget-wide v58, p1, v26

    .line 427
    .local v58, "t":J
    aget-wide v60, p1, v36

    aput-wide v60, p1, v26

    .line 428
    const/16 v14, 0xb

    aget-wide v60, p1, v14

    aput-wide v60, p1, v36

    .line 429
    aget-wide v60, p1, v28

    aput-wide v60, p1, v14

    .line 430
    aget-wide v60, p1, v53

    aput-wide v60, p1, v28

    .line 431
    aget-wide v60, p1, v25

    aput-wide v60, p1, v53

    .line 432
    aget-wide v60, p1, v55

    aput-wide v60, p1, v25

    .line 433
    aget-wide v25, p1, v57

    aput-wide v25, p1, v55

    .line 434
    aget-wide v25, p1, v22

    aput-wide v25, p1, v57

    .line 435
    aget-wide v25, p1, v31

    aput-wide v25, p1, v22

    .line 436
    aget-wide v25, p1, v52

    aput-wide v25, p1, v31

    .line 437
    aget-wide v25, p1, v56

    aput-wide v25, p1, v52

    .line 438
    aput-wide v58, p1, v56

    .line 439
    aget-wide v25, p1, v35

    .line 440
    .end local v58    # "t":J
    .local v25, "t":J
    aget-wide v52, p1, v18

    aput-wide v52, p1, v35

    .line 441
    aget-wide v52, p1, v19

    aput-wide v52, p1, v18

    .line 442
    aget-wide v52, p1, v43

    aput-wide v52, p1, v19

    .line 443
    aget-wide v18, p1, v33

    aput-wide v18, p1, v43

    .line 444
    aget-wide v18, p1, v34

    aput-wide v18, p1, v33

    .line 445
    aget-wide v18, p1, v15

    aput-wide v18, p1, v34

    .line 446
    aget-wide v18, p1, v46

    aput-wide v18, p1, v15

    .line 447
    const/16 v14, 0x10

    aget-wide v14, p1, v14

    aput-wide v14, p1, v46

    .line 448
    const/16 v14, 0x10

    aget-wide v18, p1, v32

    aput-wide v18, p1, v14

    .line 449
    aget-wide v14, p1, v54

    aput-wide v14, p1, v32

    .line 450
    aget-wide v14, p1, v27

    aput-wide v14, p1, v54

    .line 451
    aput-wide v25, p1, v27

    .line 60
    add-int/lit8 v7, v7, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x2

    const/16 v3, 0x8

    const/16 v4, 0xc

    const/16 v5, 0x11

    const/16 v6, 0x14

    goto/16 :goto_0

    .line 457
    .end local v1    # "bnn":J
    .end local v3    # "kt":J
    .end local v5    # "c0":J
    .end local v8    # "c1":J
    .end local v10    # "c2":J
    .end local v12    # "c3":J
    .end local v16    # "tt2":J
    .end local v20    # "tt3":J
    .end local v23    # "t0":J
    .end local v25    # "t":J
    .end local v29    # "t1":J
    .end local v37    # "t2":J
    .end local v39    # "t3":J
    .end local v41    # "t4":J
    .end local v44    # "c4":J
    .end local v48    # "tt0":J
    .end local v50    # "tt1":J
    :cond_0
    const/16 v35, 0x1

    const/16 v43, 0x2

    const/16 v54, 0x11

    const/16 v55, 0x14

    const/16 v56, 0x8

    const/16 v57, 0xc

    aget-wide v1, p1, v35

    not-long v1, v1

    aput-wide v1, p1, v35

    .line 458
    aget-wide v1, p1, v43

    not-long v1, v1

    aput-wide v1, p1, v43

    .line 459
    aget-wide v1, p1, v56

    not-long v1, v1

    aput-wide v1, p1, v56

    .line 460
    aget-wide v1, p1, v57

    not-long v1, v1

    aput-wide v1, p1, v57

    .line 461
    aget-wide v1, p1, v54

    not-long v1, v1

    aput-wide v1, p1, v54

    .line 462
    aget-wide v1, p1, v55

    not-long v1, v1

    aput-wide v1, p1, v55

    .line 463
    return-void
.end method
