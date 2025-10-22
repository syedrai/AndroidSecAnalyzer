.class public Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPublicKeyParameters;
.super Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyParameters;
.source "RainbowPublicKeyParameters.java"


# instance fields
.field l1_Q3:[[[S

.field l1_Q5:[[[S

.field l1_Q6:[[[S

.field l1_Q9:[[[S

.field l2_Q9:[[[S

.field pk:[[[S

.field pk_seed:[B


# direct methods
.method public constructor <init>(Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;[B)V
    .locals 10
    .param p1, "params"    # Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;
    .param p2, "encoding"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "params",
            "encoding"
        }
    .end annotation

    .line 86
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyParameters;-><init>(ZLorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;)V

    .line 88
    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;->getM()I

    move-result v1

    .line 89
    .local v1, "m":I
    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;->getN()I

    move-result v2

    .line 91
    .local v2, "n":I
    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPublicKeyParameters;->getParameters()Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;

    move-result-object v3

    invoke-virtual {v3}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;->getVersion()Lorg/bouncycastle/pqc/crypto/rainbow/Version;

    move-result-object v3

    sget-object v4, Lorg/bouncycastle/pqc/crypto/rainbow/Version;->CLASSIC:Lorg/bouncycastle/pqc/crypto/rainbow/Version;

    const/4 v5, 0x2

    const/4 v6, 0x3

    const/4 v7, 0x1

    if-ne v3, v4, :cond_4

    .line 93
    new-array v3, v6, [I

    aput v2, v3, v5

    aput v2, v3, v7

    aput v1, v3, v0

    sget-object v4, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-static {v4, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[[S

    iput-object v3, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPublicKeyParameters;->pk:[[[S

    .line 94
    const/4 v3, 0x0

    .line 95
    .local v3, "cnt":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v2, :cond_3

    .line 97
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_1
    if-ge v5, v2, :cond_2

    .line 99
    const/4 v6, 0x0

    .local v6, "k":I
    :goto_2
    if-ge v6, v1, :cond_1

    .line 101
    if-le v4, v5, :cond_0

    .line 103
    iget-object v7, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPublicKeyParameters;->pk:[[[S

    aget-object v7, v7, v6

    aget-object v7, v7, v4

    aput-short v0, v7, v5

    goto :goto_3

    .line 107
    :cond_0
    iget-object v7, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPublicKeyParameters;->pk:[[[S

    aget-object v7, v7, v6

    aget-object v7, v7, v4

    aget-byte v8, p2, v3

    and-int/lit16 v8, v8, 0xff

    int-to-short v8, v8

    aput-short v8, v7, v5

    .line 108
    add-int/lit8 v3, v3, 0x1

    .line 99
    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 97
    .end local v6    # "k":I
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 95
    .end local v5    # "j":I
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 113
    .end local v3    # "cnt":I
    .end local v4    # "i":I
    :cond_3
    goto/16 :goto_4

    .line 116
    :cond_4
    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;->getLen_pkseed()I

    move-result v3

    invoke-static {p2, v0, v3}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object v3

    iput-object v3, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPublicKeyParameters;->pk_seed:[B

    .line 118
    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;->getO1()I

    move-result v3

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;->getV1()I

    move-result v4

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;->getO2()I

    move-result v8

    new-array v9, v6, [I

    aput v8, v9, v5

    aput v4, v9, v7

    aput v3, v9, v0

    sget-object v3, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v9}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[[S

    iput-object v3, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPublicKeyParameters;->l1_Q3:[[[S

    .line 119
    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;->getO1()I

    move-result v3

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;->getO1()I

    move-result v4

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;->getO1()I

    move-result v8

    new-array v9, v6, [I

    aput v8, v9, v5

    aput v4, v9, v7

    aput v3, v9, v0

    sget-object v3, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v9}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[[S

    iput-object v3, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPublicKeyParameters;->l1_Q5:[[[S

    .line 120
    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;->getO1()I

    move-result v3

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;->getO1()I

    move-result v4

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;->getO2()I

    move-result v8

    new-array v9, v6, [I

    aput v8, v9, v5

    aput v4, v9, v7

    aput v3, v9, v0

    sget-object v3, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v9}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[[S

    iput-object v3, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPublicKeyParameters;->l1_Q6:[[[S

    .line 121
    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;->getO1()I

    move-result v3

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;->getO2()I

    move-result v4

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;->getO2()I

    move-result v8

    new-array v9, v6, [I

    aput v8, v9, v5

    aput v4, v9, v7

    aput v3, v9, v0

    sget-object v3, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v9}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[[S

    iput-object v3, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPublicKeyParameters;->l1_Q9:[[[S

    .line 122
    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;->getO2()I

    move-result v3

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;->getO2()I

    move-result v4

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;->getO2()I

    move-result v8

    new-array v6, v6, [I

    aput v8, v6, v5

    aput v4, v6, v7

    aput v3, v6, v0

    sget-object v3, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v6}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[[S

    iput-object v3, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPublicKeyParameters;->l2_Q9:[[[S

    .line 124
    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;->getLen_pkseed()I

    move-result v3

    .line 125
    .local v3, "offSet":I
    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPublicKeyParameters;->l1_Q3:[[[S

    invoke-static {v4, p2, v3, v0}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowUtil;->loadEncoded([[[S[BIZ)I

    move-result v4

    add-int/2addr v3, v4

    .line 126
    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPublicKeyParameters;->l1_Q5:[[[S

    invoke-static {v4, p2, v3, v7}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowUtil;->loadEncoded([[[S[BIZ)I

    move-result v4

    add-int/2addr v3, v4

    .line 127
    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPublicKeyParameters;->l1_Q6:[[[S

    invoke-static {v4, p2, v3, v0}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowUtil;->loadEncoded([[[S[BIZ)I

    move-result v0

    add-int/2addr v3, v0

    .line 128
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPublicKeyParameters;->l1_Q9:[[[S

    invoke-static {v0, p2, v3, v7}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowUtil;->loadEncoded([[[S[BIZ)I

    move-result v0

    add-int/2addr v3, v0

    .line 129
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPublicKeyParameters;->l2_Q9:[[[S

    invoke-static {v0, p2, v3, v7}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowUtil;->loadEncoded([[[S[BIZ)I

    move-result v0

    add-int/2addr v3, v0

    .line 131
    array-length v0, p2

    if-ne v3, v0, :cond_5

    .line 136
    .end local v3    # "offSet":I
    :goto_4
    return-void

    .line 133
    .restart local v3    # "offSet":I
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "unparsed data in key encoding"

    invoke-direct {v0, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method constructor <init>(Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;[B[[[S[[[S[[[S[[[S[[[S)V
    .locals 1
    .param p1, "params"    # Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;
    .param p2, "pk_seed"    # [B
    .param p3, "l1_Q3"    # [[[S
    .param p4, "l1_Q5"    # [[[S
    .param p5, "l1_Q6"    # [[[S
    .param p6, "l1_Q9"    # [[[S
    .param p7, "l2_Q9"    # [[[S
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
            "params",
            "pk_seed",
            "l1_Q3",
            "l1_Q5",
            "l1_Q6",
            "l1_Q9",
            "l2_Q9"
        }
    .end annotation

    .line 74
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyParameters;-><init>(ZLorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;)V

    .line 76
    invoke-virtual {p2}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPublicKeyParameters;->pk_seed:[B

    .line 77
    invoke-static {p3}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowUtil;->cloneArray([[[S)[[[S

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPublicKeyParameters;->l1_Q3:[[[S

    .line 78
    invoke-static {p4}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowUtil;->cloneArray([[[S)[[[S

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPublicKeyParameters;->l1_Q5:[[[S

    .line 79
    invoke-static {p5}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowUtil;->cloneArray([[[S)[[[S

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPublicKeyParameters;->l1_Q6:[[[S

    .line 80
    invoke-static {p6}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowUtil;->cloneArray([[[S)[[[S

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPublicKeyParameters;->l1_Q9:[[[S

    .line 81
    invoke-static {p7}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowUtil;->cloneArray([[[S)[[[S

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPublicKeyParameters;->l2_Q9:[[[S

    .line 82
    return-void
.end method

.method constructor <init>(Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;[[[S[[[S[[[S[[[S[[[S[[[S[[[S[[[S[[[S[[[S[[[S[[[S)V
    .locals 9
    .param p1, "params"    # Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;
    .param p2, "l1_Q1"    # [[[S
    .param p3, "l1_Q2"    # [[[S
    .param p4, "l1_Q3"    # [[[S
    .param p5, "l1_Q5"    # [[[S
    .param p6, "l1_Q6"    # [[[S
    .param p7, "l1_Q9"    # [[[S
    .param p8, "l2_Q1"    # [[[S
    .param p9, "l2_Q2"    # [[[S
    .param p10, "l2_Q3"    # [[[S
    .param p11, "l2_Q5"    # [[[S
    .param p12, "l2_Q6"    # [[[S
    .param p13, "l2_Q9"    # [[[S
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "params",
            "l1_Q1",
            "l1_Q2",
            "l1_Q3",
            "l1_Q5",
            "l1_Q6",
            "l1_Q9",
            "l2_Q1",
            "l2_Q2",
            "l2_Q3",
            "l2_Q5",
            "l2_Q6",
            "l2_Q9"
        }
    .end annotation

    .line 23
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyParameters;-><init>(ZLorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;)V

    .line 25
    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;->getV1()I

    move-result v1

    .line 26
    .local v1, "v1":I
    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;->getO1()I

    move-result v2

    .line 27
    .local v2, "o1":I
    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;->getO2()I

    move-result v3

    .line 29
    .local v3, "o2":I
    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;->getM()I

    move-result v4

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;->getN()I

    move-result v5

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;->getN()I

    move-result v6

    const/4 v7, 0x3

    new-array v7, v7, [I

    const/4 v8, 0x2

    aput v6, v7, v8

    const/4 v6, 0x1

    aput v5, v7, v6

    aput v4, v7, v0

    sget-object v4, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-static {v4, v7}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [[[S

    iput-object v4, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPublicKeyParameters;->pk:[[[S

    .line 30
    const/4 v4, 0x0

    .local v4, "k":I
    :goto_0
    if-ge v4, v2, :cond_3

    .line 32
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    if-ge v5, v1, :cond_0

    .line 34
    aget-object v6, p2, v4

    aget-object v6, v6, v5

    iget-object v7, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPublicKeyParameters;->pk:[[[S

    aget-object v7, v7, v4

    aget-object v7, v7, v5

    invoke-static {v6, v0, v7, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 35
    aget-object v6, p3, v4

    aget-object v6, v6, v5

    iget-object v7, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPublicKeyParameters;->pk:[[[S

    aget-object v7, v7, v4

    aget-object v7, v7, v5

    invoke-static {v6, v0, v7, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 36
    aget-object v6, p4, v4

    aget-object v6, v6, v5

    iget-object v7, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPublicKeyParameters;->pk:[[[S

    aget-object v7, v7, v4

    aget-object v7, v7, v5

    add-int v8, v1, v2

    invoke-static {v6, v0, v7, v8, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 32
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 38
    .end local v5    # "i":I
    :cond_0
    const/4 v5, 0x0

    .restart local v5    # "i":I
    :goto_2
    if-ge v5, v2, :cond_1

    .line 40
    aget-object v6, p5, v4

    aget-object v6, v6, v5

    iget-object v7, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPublicKeyParameters;->pk:[[[S

    aget-object v7, v7, v4

    add-int v8, v5, v1

    aget-object v7, v7, v8

    invoke-static {v6, v0, v7, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 41
    aget-object v6, p6, v4

    aget-object v6, v6, v5

    iget-object v7, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPublicKeyParameters;->pk:[[[S

    aget-object v7, v7, v4

    add-int v8, v5, v1

    aget-object v7, v7, v8

    add-int v8, v1, v2

    invoke-static {v6, v0, v7, v8, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 38
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 43
    .end local v5    # "i":I
    :cond_1
    const/4 v5, 0x0

    .restart local v5    # "i":I
    :goto_3
    if-ge v5, v3, :cond_2

    .line 45
    aget-object v6, p7, v4

    aget-object v6, v6, v5

    iget-object v7, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPublicKeyParameters;->pk:[[[S

    aget-object v7, v7, v4

    add-int v8, v5, v1

    add-int/2addr v8, v2

    aget-object v7, v7, v8

    add-int v8, v1, v2

    invoke-static {v6, v0, v7, v8, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 43
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 30
    .end local v5    # "i":I
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 48
    .end local v4    # "k":I
    :cond_3
    const/4 v4, 0x0

    .restart local v4    # "k":I
    :goto_4
    if-ge v4, v3, :cond_7

    .line 50
    const/4 v5, 0x0

    .restart local v5    # "i":I
    :goto_5
    if-ge v5, v1, :cond_4

    .line 52
    aget-object v6, p8, v4

    aget-object v6, v6, v5

    iget-object v7, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPublicKeyParameters;->pk:[[[S

    add-int v8, v4, v2

    aget-object v7, v7, v8

    aget-object v7, v7, v5

    invoke-static {v6, v0, v7, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 53
    aget-object v6, p9, v4

    aget-object v6, v6, v5

    iget-object v7, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPublicKeyParameters;->pk:[[[S

    add-int v8, v4, v2

    aget-object v7, v7, v8

    aget-object v7, v7, v5

    invoke-static {v6, v0, v7, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 54
    aget-object v6, p10, v4

    aget-object v6, v6, v5

    iget-object v7, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPublicKeyParameters;->pk:[[[S

    add-int v8, v4, v2

    aget-object v7, v7, v8

    aget-object v7, v7, v5

    add-int v8, v1, v2

    invoke-static {v6, v0, v7, v8, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 50
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    .line 56
    .end local v5    # "i":I
    :cond_4
    const/4 v5, 0x0

    .restart local v5    # "i":I
    :goto_6
    if-ge v5, v2, :cond_5

    .line 58
    aget-object v6, p11, v4

    aget-object v6, v6, v5

    iget-object v7, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPublicKeyParameters;->pk:[[[S

    add-int v8, v4, v2

    aget-object v7, v7, v8

    add-int v8, v5, v1

    aget-object v7, v7, v8

    invoke-static {v6, v0, v7, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 59
    aget-object v6, p12, v4

    aget-object v6, v6, v5

    iget-object v7, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPublicKeyParameters;->pk:[[[S

    add-int v8, v4, v2

    aget-object v7, v7, v8

    add-int v8, v5, v1

    aget-object v7, v7, v8

    add-int v8, v1, v2

    invoke-static {v6, v0, v7, v8, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 56
    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    .line 61
    .end local v5    # "i":I
    :cond_5
    const/4 v5, 0x0

    .restart local v5    # "i":I
    :goto_7
    if-ge v5, v3, :cond_6

    .line 63
    aget-object v6, p13, v4

    aget-object v6, v6, v5

    iget-object v7, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPublicKeyParameters;->pk:[[[S

    add-int v8, v4, v2

    aget-object v7, v7, v8

    add-int v8, v5, v1

    add-int/2addr v8, v2

    aget-object v7, v7, v8

    add-int v8, v1, v2

    invoke-static {v6, v0, v7, v8, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 61
    add-int/lit8 v5, v5, 0x1

    goto :goto_7

    .line 48
    .end local v5    # "i":I
    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 66
    .end local v4    # "k":I
    :cond_7
    return-void
.end method


# virtual methods
.method public getEncoded()[B
    .locals 4

    .line 145
    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPublicKeyParameters;->getParameters()Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;->getVersion()Lorg/bouncycastle/pqc/crypto/rainbow/Version;

    move-result-object v0

    sget-object v1, Lorg/bouncycastle/pqc/crypto/rainbow/Version;->CLASSIC:Lorg/bouncycastle/pqc/crypto/rainbow/Version;

    const/4 v2, 0x1

    if-eq v0, v1, :cond_0

    .line 147
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPublicKeyParameters;->pk_seed:[B

    .line 148
    .local v0, "ret":[B
    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPublicKeyParameters;->l1_Q3:[[[S

    const/4 v3, 0x0

    invoke-static {v1, v3}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowUtil;->getEncoded([[[SZ)[B

    move-result-object v1

    invoke-static {v0, v1}, Lorg/bouncycastle/util/Arrays;->concatenate([B[B)[B

    move-result-object v0

    .line 149
    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPublicKeyParameters;->l1_Q5:[[[S

    invoke-static {v1, v2}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowUtil;->getEncoded([[[SZ)[B

    move-result-object v1

    invoke-static {v0, v1}, Lorg/bouncycastle/util/Arrays;->concatenate([B[B)[B

    move-result-object v0

    .line 150
    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPublicKeyParameters;->l1_Q6:[[[S

    invoke-static {v1, v3}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowUtil;->getEncoded([[[SZ)[B

    move-result-object v1

    invoke-static {v0, v1}, Lorg/bouncycastle/util/Arrays;->concatenate([B[B)[B

    move-result-object v0

    .line 151
    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPublicKeyParameters;->l1_Q9:[[[S

    invoke-static {v1, v2}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowUtil;->getEncoded([[[SZ)[B

    move-result-object v1

    invoke-static {v0, v1}, Lorg/bouncycastle/util/Arrays;->concatenate([B[B)[B

    move-result-object v0

    .line 152
    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPublicKeyParameters;->l2_Q9:[[[S

    invoke-static {v1, v2}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowUtil;->getEncoded([[[SZ)[B

    move-result-object v1

    invoke-static {v0, v1}, Lorg/bouncycastle/util/Arrays;->concatenate([B[B)[B

    move-result-object v0

    .line 153
    return-object v0

    .line 156
    .end local v0    # "ret":[B
    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPublicKeyParameters;->pk:[[[S

    invoke-static {v0, v2}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowUtil;->getEncoded([[[SZ)[B

    move-result-object v0

    return-object v0
.end method

.method public getPk()[[[S
    .locals 1

    .line 140
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPublicKeyParameters;->pk:[[[S

    invoke-static {v0}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowUtil;->cloneArray([[[S)[[[S

    move-result-object v0

    return-object v0
.end method
