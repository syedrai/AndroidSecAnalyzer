.class Lorg/bouncycastle/pqc/crypto/sphincs/Horst;
.super Ljava/lang/Object;
.source "Horst.java"


# static fields
.field static final HORST_K:I = 0x20

.field static final HORST_LOGT:I = 0x10

.field static final HORST_SIGBYTES:I = 0x3400

.field static final HORST_SKBYTES:I = 0x20

.field static final HORST_T:I = 0x10000

.field static final N_MASKS:I = 0x20


# direct methods
.method constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static expand_seed([B[B)V
    .locals 6
    .param p0, "outseeds"    # [B
    .param p1, "inseed"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "outseeds",
            "inseed"
        }
    .end annotation

    .line 15
    const-wide/32 v2, 0x200000

    const/4 v5, 0x0

    const/4 v1, 0x0

    move-object v0, p0

    move-object v4, p1

    .end local p0    # "outseeds":[B
    .end local p1    # "inseed":[B
    .local v0, "outseeds":[B
    .local v4, "inseed":[B
    invoke-static/range {v0 .. v5}, Lorg/bouncycastle/pqc/crypto/sphincs/Seed;->prg([BIJ[BI)V

    .line 16
    return-void
.end method

.method static horst_sign(Lorg/bouncycastle/pqc/crypto/sphincs/HashFunctions;[BI[B[B[B[B)I
    .locals 23
    .param p0, "hs"    # Lorg/bouncycastle/pqc/crypto/sphincs/HashFunctions;
    .param p1, "sig"    # [B
    .param p2, "sigOff"    # I
    .param p3, "pk"    # [B
    .param p4, "seed"    # [B
    .param p5, "masks"    # [B
    .param p6, "m_hash"    # [B
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
            "hs",
            "sig",
            "sigOff",
            "pk",
            "seed",
            "masks",
            "m_hash"
        }
    .end annotation

    .line 24
    const/high16 v0, 0x200000

    new-array v0, v0, [B

    .line 27
    .local v0, "sk":[B
    move/from16 v1, p2

    .line 29
    .local v1, "sigpos":I
    const v2, 0x3fffe0

    new-array v4, v2, [B

    .line 31
    .local v4, "tree":[B
    move-object/from16 v2, p4

    invoke-static {v0, v2}, Lorg/bouncycastle/pqc/crypto/sphincs/Horst;->expand_seed([B[B)V

    .line 36
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    const/high16 v5, 0x10000

    const v10, 0xffff

    const/16 v11, 0x20

    if-ge v3, v5, :cond_0

    .line 38
    add-int/2addr v10, v3

    mul-int/lit8 v10, v10, 0x20

    mul-int/lit8 v5, v3, 0x20

    move-object/from16 v6, p0

    invoke-virtual {v6, v4, v10, v0, v5}, Lorg/bouncycastle/pqc/crypto/sphincs/HashFunctions;->hash_n_n([BI[BI)I

    .line 36
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 42
    :cond_0
    move-object/from16 v6, p0

    const/4 v3, 0x0

    move v12, v3

    .end local v3    # "i":I
    .local v12, "i":I
    :goto_1
    const/16 v3, 0x10

    const/4 v13, 0x1

    if-ge v12, v3, :cond_2

    .line 44
    rsub-int/lit8 v3, v12, 0x10

    shl-int v3, v13, v3

    sub-int/2addr v3, v13

    int-to-long v14, v3

    .line 45
    .local v14, "offset_in":J
    rsub-int/lit8 v3, v12, 0x10

    sub-int/2addr v3, v13

    shl-int v3, v13, v3

    sub-int/2addr v3, v13

    int-to-long v7, v3

    .line 46
    .local v7, "offset_out":J
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_2
    rsub-int/lit8 v5, v12, 0x10

    sub-int/2addr v5, v13

    shl-int v5, v13, v5

    if-ge v3, v5, :cond_1

    .line 48
    move-wide/from16 v17, v14

    const/16 v16, 0x1

    .end local v14    # "offset_in":J
    .local v17, "offset_in":J
    int-to-long v13, v3

    add-long/2addr v13, v7

    const-wide/16 v19, 0x20

    mul-long v13, v13, v19

    long-to-int v5, v13

    mul-int/lit8 v9, v3, 0x2

    int-to-long v13, v9

    add-long v13, v17, v13

    mul-long v13, v13, v19

    long-to-int v9, v13

    mul-int/lit8 v13, v12, 0x2

    mul-int/lit8 v13, v13, 0x20

    move-object v6, v4

    move-wide/from16 v21, v7

    move v7, v9

    move v9, v13

    move-wide/from16 v13, v21

    move-object/from16 v8, p5

    move v15, v3

    move-object/from16 v3, p0

    .end local v3    # "j":I
    .end local v7    # "offset_out":J
    .local v13, "offset_out":J
    .local v15, "j":I
    invoke-virtual/range {v3 .. v9}, Lorg/bouncycastle/pqc/crypto/sphincs/HashFunctions;->hash_2n_n_mask([BI[BI[BI)I

    .line 46
    add-int/lit8 v3, v15, 0x1

    move-object/from16 v6, p0

    move-wide v7, v13

    move-wide/from16 v14, v17

    const/4 v13, 0x1

    .end local v15    # "j":I
    .restart local v3    # "j":I
    goto :goto_2

    .line 42
    .end local v13    # "offset_out":J
    .end local v17    # "offset_in":J
    .restart local v7    # "offset_out":J
    .restart local v14    # "offset_in":J
    :cond_1
    move-wide/from16 v17, v14

    move v15, v3

    move-wide v13, v7

    .end local v3    # "j":I
    .end local v7    # "offset_out":J
    .end local v14    # "offset_in":J
    .restart local v13    # "offset_out":J
    .restart local v15    # "j":I
    .restart local v17    # "offset_in":J
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v6, p0

    goto :goto_1

    .line 53
    .end local v13    # "offset_out":J
    .end local v15    # "j":I
    .end local v17    # "offset_in":J
    :cond_2
    const/16 v16, 0x1

    const/16 v3, 0x7e0

    .restart local v3    # "j":I
    :goto_3
    const/16 v5, 0xfe0

    if-ge v3, v5, :cond_3

    .line 55
    add-int/lit8 v5, v1, 0x1

    .end local v1    # "sigpos":I
    .local v5, "sigpos":I
    aget-byte v6, v4, v3

    aput-byte v6, p1, v1

    .line 53
    add-int/lit8 v3, v3, 0x1

    move v1, v5

    goto :goto_3

    .line 59
    .end local v5    # "sigpos":I
    .restart local v1    # "sigpos":I
    :cond_3
    const/4 v5, 0x0

    .end local v12    # "i":I
    .local v5, "i":I
    :goto_4
    if-ge v5, v11, :cond_8

    .line 61
    mul-int/lit8 v6, v5, 0x2

    aget-byte v6, p6, v6

    and-int/lit16 v6, v6, 0xff

    mul-int/lit8 v7, v5, 0x2

    add-int/lit8 v7, v7, 0x1

    aget-byte v7, p6, v7

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x8

    add-int/2addr v6, v7

    .line 63
    .local v6, "idx":I
    const/4 v7, 0x0

    .local v7, "k":I
    :goto_5
    if-ge v7, v11, :cond_4

    .line 64
    add-int/lit8 v8, v1, 0x1

    .end local v1    # "sigpos":I
    .local v8, "sigpos":I
    mul-int/lit8 v9, v6, 0x20

    add-int/2addr v9, v7

    aget-byte v9, v0, v9

    aput-byte v9, p1, v1

    .line 63
    add-int/lit8 v7, v7, 0x1

    move v1, v8

    goto :goto_5

    .line 66
    .end local v8    # "sigpos":I
    .restart local v1    # "sigpos":I
    :cond_4
    add-int/2addr v6, v10

    .line 67
    const/4 v3, 0x0

    :goto_6
    const/16 v8, 0xa

    if-ge v3, v8, :cond_7

    .line 69
    and-int/lit8 v8, v6, 0x1

    if-eqz v8, :cond_5

    add-int/lit8 v8, v6, 0x1

    goto :goto_7

    :cond_5
    add-int/lit8 v8, v6, -0x1

    .line 70
    .end local v6    # "idx":I
    .local v8, "idx":I
    :goto_7
    const/4 v6, 0x0

    move v7, v6

    :goto_8
    if-ge v7, v11, :cond_6

    .line 71
    add-int/lit8 v6, v1, 0x1

    .end local v1    # "sigpos":I
    .local v6, "sigpos":I
    mul-int/lit8 v9, v8, 0x20

    add-int/2addr v9, v7

    aget-byte v9, v4, v9

    aput-byte v9, p1, v1

    .line 70
    add-int/lit8 v7, v7, 0x1

    move v1, v6

    goto :goto_8

    .line 72
    .end local v6    # "sigpos":I
    .restart local v1    # "sigpos":I
    :cond_6
    add-int/lit8 v6, v8, -0x1

    div-int/lit8 v6, v6, 0x2

    .line 67
    .end local v8    # "idx":I
    .local v6, "idx":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 59
    :cond_7
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 76
    .end local v6    # "idx":I
    .end local v7    # "k":I
    :cond_8
    const/4 v5, 0x0

    :goto_9
    if-ge v5, v11, :cond_9

    .line 78
    aget-byte v6, v4, v5

    aput-byte v6, p3, v5

    .line 76
    add-int/lit8 v5, v5, 0x1

    goto :goto_9

    .line 81
    :cond_9
    const/16 v6, 0x3400

    return v6
.end method

.method static horst_verify(Lorg/bouncycastle/pqc/crypto/sphincs/HashFunctions;[B[BI[B[B)I
    .locals 17
    .param p0, "hs"    # Lorg/bouncycastle/pqc/crypto/sphincs/HashFunctions;
    .param p1, "pk"    # [B
    .param p2, "sig"    # [B
    .param p3, "sigOff"    # I
    .param p4, "masks"    # [B
    .param p5, "m_hash"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "hs",
            "pk",
            "sig",
            "sigOff",
            "masks",
            "m_hash"
        }
    .end annotation

    .line 86
    move-object/from16 v0, p0

    move-object/from16 v7, p2

    move/from16 v8, p3

    const/16 v1, 0x400

    new-array v1, v1, [B

    .line 91
    .local v1, "buffer":[B
    add-int/lit16 v2, v8, 0x800

    .line 93
    .local v2, "sigOffset":I
    const/4 v3, 0x0

    move v9, v2

    move v10, v3

    .end local v2    # "sigOffset":I
    .local v9, "sigOffset":I
    .local v10, "i":I
    :goto_0
    const/16 v11, 0x8

    const/4 v12, 0x0

    const/4 v13, 0x2

    const/16 v14, 0x20

    if-ge v10, v14, :cond_9

    .line 95
    mul-int/lit8 v2, v10, 0x2

    aget-byte v2, p5, v2

    and-int/lit16 v2, v2, 0xff

    mul-int/lit8 v3, v10, 0x2

    add-int/lit8 v3, v3, 0x1

    aget-byte v3, p5, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/2addr v3, v11

    add-int/2addr v2, v3

    .line 97
    .local v2, "idx":I
    and-int/lit8 v3, v2, 0x1

    if-nez v3, :cond_0

    .line 99
    invoke-virtual {v0, v1, v12, v7, v9}, Lorg/bouncycastle/pqc/crypto/sphincs/HashFunctions;->hash_n_n([BI[BI)I

    .line 100
    const/4 v3, 0x0

    .local v3, "k":I
    :goto_1
    if-ge v3, v14, :cond_1

    .line 101
    add-int/lit8 v4, v3, 0x20

    add-int/lit8 v5, v9, 0x20

    add-int/2addr v5, v3

    aget-byte v5, v7, v5

    aput-byte v5, v1, v4

    .line 100
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 105
    .end local v3    # "k":I
    :cond_0
    invoke-virtual {v0, v1, v14, v7, v9}, Lorg/bouncycastle/pqc/crypto/sphincs/HashFunctions;->hash_n_n([BI[BI)I

    .line 106
    const/4 v3, 0x0

    .restart local v3    # "k":I
    :goto_2
    if-ge v3, v14, :cond_1

    .line 107
    add-int/lit8 v4, v9, 0x20

    add-int/2addr v4, v3

    aget-byte v4, v7, v4

    aput-byte v4, v1, v3

    .line 106
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 109
    :cond_1
    add-int/lit8 v9, v9, 0x40

    .line 111
    const/4 v4, 0x1

    move v11, v4

    move v15, v9

    move v9, v3

    .end local v3    # "k":I
    .local v9, "k":I
    .local v11, "j":I
    .local v15, "sigOffset":I
    :goto_3
    const/16 v3, 0xa

    if-ge v11, v3, :cond_5

    .line 113
    ushr-int/lit8 v16, v2, 0x1

    .line 115
    .end local v2    # "idx":I
    .local v16, "idx":I
    and-int/lit8 v2, v16, 0x1

    if-nez v2, :cond_3

    .line 117
    add-int/lit8 v2, v11, -0x1

    mul-int/lit8 v2, v2, 0x2

    mul-int/lit8 v6, v2, 0x20

    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object v3, v1

    move-object/from16 v5, p4

    invoke-virtual/range {v0 .. v6}, Lorg/bouncycastle/pqc/crypto/sphincs/HashFunctions;->hash_2n_n_mask([BI[BI[BI)I

    .line 118
    const/4 v0, 0x0

    .end local v9    # "k":I
    .local v0, "k":I
    :goto_4
    if-ge v0, v14, :cond_2

    .line 119
    add-int/lit8 v2, v0, 0x20

    add-int v3, v15, v0

    aget-byte v3, v7, v3

    aput-byte v3, v1, v2

    .line 118
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_2
    move v9, v0

    goto :goto_6

    .line 124
    .end local v0    # "k":I
    .restart local v9    # "k":I
    :cond_3
    add-int/lit8 v0, v11, -0x1

    mul-int/lit8 v0, v0, 0x2

    mul-int/lit8 v6, v0, 0x20

    const/16 v2, 0x20

    const/4 v4, 0x0

    move-object v3, v1

    move-object/from16 v0, p0

    move-object/from16 v5, p4

    invoke-virtual/range {v0 .. v6}, Lorg/bouncycastle/pqc/crypto/sphincs/HashFunctions;->hash_2n_n_mask([BI[BI[BI)I

    .line 125
    const/4 v0, 0x0

    .end local v9    # "k":I
    .restart local v0    # "k":I
    :goto_5
    if-ge v0, v14, :cond_4

    .line 126
    add-int v2, v15, v0

    aget-byte v2, v7, v2

    aput-byte v2, v1, v0

    .line 125
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_4
    move v9, v0

    .line 128
    .end local v0    # "k":I
    .restart local v9    # "k":I
    :goto_6
    add-int/lit8 v15, v15, 0x20

    .line 111
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v0, p0

    move/from16 v2, v16

    goto :goto_3

    .line 131
    .end local v16    # "idx":I
    .restart local v2    # "idx":I
    :cond_5
    ushr-int/lit8 v13, v2, 0x1

    .line 132
    .end local v2    # "idx":I
    .local v13, "idx":I
    const/4 v4, 0x0

    const/16 v6, 0x240

    const/4 v2, 0x0

    move-object v3, v1

    move-object/from16 v0, p0

    move-object/from16 v5, p4

    invoke-virtual/range {v0 .. v6}, Lorg/bouncycastle/pqc/crypto/sphincs/HashFunctions;->hash_2n_n_mask([BI[BI[BI)I

    .line 134
    const/4 v0, 0x0

    .end local v9    # "k":I
    .restart local v0    # "k":I
    :goto_7
    if-ge v0, v14, :cond_8

    .line 135
    mul-int/lit8 v2, v13, 0x20

    add-int/2addr v2, v8

    add-int/2addr v2, v0

    aget-byte v2, v7, v2

    aget-byte v3, v1, v0

    if-eq v2, v3, :cond_7

    .line 137
    const/4 v0, 0x0

    :goto_8
    if-ge v0, v14, :cond_6

    .line 138
    aput-byte v12, p1, v0

    .line 137
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 139
    :cond_6
    const/4 v2, -0x1

    return v2

    .line 134
    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 93
    :cond_8
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v0, p0

    move v9, v15

    goto/16 :goto_0

    .line 144
    .end local v0    # "k":I
    .end local v11    # "j":I
    .end local v13    # "idx":I
    .end local v15    # "sigOffset":I
    .local v9, "sigOffset":I
    :cond_9
    const/4 v0, 0x0

    move v15, v0

    .local v15, "j":I
    :goto_9
    if-ge v15, v14, :cond_a

    .line 146
    mul-int/lit8 v2, v15, 0x20

    mul-int/lit8 v0, v15, 0x2

    mul-int/lit8 v0, v0, 0x20

    add-int v4, v8, v0

    const/16 v6, 0x280

    move-object/from16 v0, p0

    move-object/from16 v5, p4

    move-object v3, v7

    invoke-virtual/range {v0 .. v6}, Lorg/bouncycastle/pqc/crypto/sphincs/HashFunctions;->hash_2n_n_mask([BI[BI[BI)I

    .line 144
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v7, p2

    goto :goto_9

    .line 150
    :cond_a
    const/4 v0, 0x0

    move v7, v0

    .end local v15    # "j":I
    .local v7, "j":I
    :goto_a
    const/16 v0, 0x10

    if-ge v7, v0, :cond_b

    .line 152
    mul-int/lit8 v2, v7, 0x20

    mul-int/lit8 v0, v7, 0x2

    mul-int/lit8 v4, v0, 0x20

    const/16 v6, 0x2c0

    move-object v3, v1

    move-object/from16 v0, p0

    move-object/from16 v5, p4

    invoke-virtual/range {v0 .. v6}, Lorg/bouncycastle/pqc/crypto/sphincs/HashFunctions;->hash_2n_n_mask([BI[BI[BI)I

    .line 150
    add-int/lit8 v7, v7, 0x1

    goto :goto_a

    .line 156
    :cond_b
    const/4 v0, 0x0

    move v7, v0

    :goto_b
    if-ge v7, v11, :cond_c

    .line 158
    mul-int/lit8 v2, v7, 0x20

    mul-int/lit8 v0, v7, 0x2

    mul-int/lit8 v4, v0, 0x20

    const/16 v6, 0x300

    move-object v3, v1

    move-object/from16 v0, p0

    move-object/from16 v5, p4

    invoke-virtual/range {v0 .. v6}, Lorg/bouncycastle/pqc/crypto/sphincs/HashFunctions;->hash_2n_n_mask([BI[BI[BI)I

    .line 156
    add-int/lit8 v7, v7, 0x1

    goto :goto_b

    .line 162
    :cond_c
    const/4 v0, 0x0

    move v7, v0

    :goto_c
    const/4 v0, 0x4

    if-ge v7, v0, :cond_d

    .line 164
    mul-int/lit8 v2, v7, 0x20

    mul-int/lit8 v0, v7, 0x2

    mul-int/lit8 v4, v0, 0x20

    const/16 v6, 0x340

    move-object v3, v1

    move-object/from16 v0, p0

    move-object/from16 v5, p4

    invoke-virtual/range {v0 .. v6}, Lorg/bouncycastle/pqc/crypto/sphincs/HashFunctions;->hash_2n_n_mask([BI[BI[BI)I

    .line 162
    add-int/lit8 v7, v7, 0x1

    goto :goto_c

    .line 168
    :cond_d
    const/4 v0, 0x0

    move v7, v0

    :goto_d
    if-ge v7, v13, :cond_e

    .line 170
    mul-int/lit8 v2, v7, 0x20

    mul-int/lit8 v0, v7, 0x2

    mul-int/lit8 v4, v0, 0x20

    const/16 v6, 0x380

    move-object v3, v1

    move-object/from16 v0, p0

    move-object/from16 v5, p4

    invoke-virtual/range {v0 .. v6}, Lorg/bouncycastle/pqc/crypto/sphincs/HashFunctions;->hash_2n_n_mask([BI[BI[BI)I

    .line 168
    add-int/lit8 v7, v7, 0x1

    goto :goto_d

    .line 174
    :cond_e
    const/4 v4, 0x0

    const/16 v6, 0x3c0

    const/4 v2, 0x0

    move-object/from16 v0, p0

    move-object/from16 v5, p4

    move-object v3, v1

    move-object/from16 v1, p1

    .end local v1    # "buffer":[B
    .local v3, "buffer":[B
    invoke-virtual/range {v0 .. v6}, Lorg/bouncycastle/pqc/crypto/sphincs/HashFunctions;->hash_2n_n_mask([BI[BI[BI)I

    .line 176
    move-object v1, v3

    .end local v3    # "buffer":[B
    .restart local v1    # "buffer":[B
    return v12
.end method
