.class public Lorg/bouncycastle/crypto/generators/GOST3410ParametersGenerator;
.super Ljava/lang/Object;
.source "GOST3410ParametersGenerator.java"


# static fields
.field private static final ONE:Ljava/math/BigInteger;

.field private static final TWO:Ljava/math/BigInteger;


# instance fields
.field private init_random:Ljava/security/SecureRandom;

.field private size:I

.field private typeproc:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 19
    const-wide/16 v0, 0x1

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/crypto/generators/GOST3410ParametersGenerator;->ONE:Ljava/math/BigInteger;

    .line 20
    const-wide/16 v0, 0x2

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/crypto/generators/GOST3410ParametersGenerator;->TWO:Ljava/math/BigInteger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private procedure_A(II[Ljava/math/BigInteger;I)I
    .locals 21
    .param p1, "x0"    # I
    .param p2, "c"    # I
    .param p3, "pq"    # [Ljava/math/BigInteger;
    .param p4, "size"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "x0",
            "c",
            "pq",
            "size"
        }
    .end annotation

    .line 43
    move-object/from16 v0, p0

    move/from16 v1, p1

    .end local p1    # "x0":I
    .local v1, "x0":I
    :goto_0
    const v2, 0x8000

    if-ltz v1, :cond_b

    const/high16 v3, 0x10000

    if-le v1, v3, :cond_0

    move/from16 v17, v1

    goto/16 :goto_9

    :cond_0
    move/from16 v4, p2

    .line 48
    .end local p2    # "c":I
    .local v4, "c":I
    :goto_1
    const/4 v5, 0x1

    if-ltz v4, :cond_a

    if-gt v4, v3, :cond_a

    div-int/lit8 v6, v4, 0x2

    if-nez v6, :cond_1

    move/from16 v17, v1

    move v8, v4

    goto/16 :goto_8

    .line 53
    :cond_1
    new-instance v2, Ljava/math/BigInteger;

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    .line 54
    .local v2, "C":Ljava/math/BigInteger;
    new-instance v3, Ljava/math/BigInteger;

    const-string v6, "19381"

    invoke-direct {v3, v6}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    .line 57
    .local v3, "constA16":Ljava/math/BigInteger;
    new-array v6, v5, [Ljava/math/BigInteger;

    .line 58
    .local v6, "y":[Ljava/math/BigInteger;
    new-instance v7, Ljava/math/BigInteger;

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    const/4 v8, 0x0

    aput-object v7, v6, v8

    .line 61
    new-array v7, v5, [I

    .line 62
    .local v7, "t":[I
    aput p4, v7, v8

    .line 63
    const/4 v9, 0x0

    .line 64
    .local v9, "s":I
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_2
    aget v11, v7, v10

    const/16 v12, 0x11

    if-lt v11, v12, :cond_2

    .line 67
    array-length v11, v7

    add-int/2addr v11, v5

    new-array v11, v11, [I

    .line 68
    .local v11, "tmp_t":[I
    array-length v12, v7

    invoke-static {v7, v8, v11, v8, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 69
    array-length v12, v11

    new-array v7, v12, [I

    .line 70
    array-length v12, v11

    invoke-static {v11, v8, v7, v8, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 72
    add-int/lit8 v12, v10, 0x1

    aget v13, v7, v10

    div-int/lit8 v13, v13, 0x2

    aput v13, v7, v12

    .line 73
    add-int/lit8 v9, v10, 0x1

    .line 64
    .end local v11    # "tmp_t":[I
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 77
    .end local v10    # "i":I
    :cond_2
    add-int/lit8 v10, v9, 0x1

    new-array v10, v10, [Ljava/math/BigInteger;

    .line 78
    .local v10, "p":[Ljava/math/BigInteger;
    new-instance v11, Ljava/math/BigInteger;

    const-string v12, "8003"

    const/16 v13, 0x10

    invoke-direct {v11, v12, v13}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    aput-object v11, v10, v9

    .line 80
    add-int/lit8 v11, v9, -0x1

    .line 82
    .local v11, "m":I
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_3
    if-ge v12, v9, :cond_9

    .line 84
    aget v14, v7, v11

    div-int/2addr v14, v13

    .line 89
    .local v14, "rm":I
    :goto_4
    array-length v15, v6

    new-array v15, v15, [Ljava/math/BigInteger;

    .line 90
    .local v15, "tmp_y":[Ljava/math/BigInteger;
    const/16 p1, 0x1

    array-length v5, v6

    invoke-static {v6, v8, v15, v8, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 91
    add-int/lit8 v5, v14, 0x1

    new-array v5, v5, [Ljava/math/BigInteger;

    .line 92
    .end local v6    # "y":[Ljava/math/BigInteger;
    .local v5, "y":[Ljava/math/BigInteger;
    array-length v6, v15

    invoke-static {v15, v8, v5, v8, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 94
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_5
    if-ge v6, v14, :cond_3

    .line 96
    add-int/lit8 v16, v6, 0x1

    const/16 p2, 0x0

    aget-object v8, v5, v6

    invoke-virtual {v8, v3}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v8

    move/from16 v17, v1

    .end local v1    # "x0":I
    .local v17, "x0":I
    sget-object v1, Lorg/bouncycastle/crypto/generators/GOST3410ParametersGenerator;->TWO:Ljava/math/BigInteger;

    invoke-virtual {v1, v13}, Ljava/math/BigInteger;->pow(I)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v8, v1}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    aput-object v1, v5, v16

    .line 94
    add-int/lit8 v6, v6, 0x1

    move/from16 v1, v17

    const/4 v8, 0x0

    goto :goto_5

    .end local v17    # "x0":I
    .restart local v1    # "x0":I
    :cond_3
    move/from16 v17, v1

    const/16 p2, 0x0

    .line 100
    .end local v1    # "x0":I
    .end local v6    # "j":I
    .restart local v17    # "x0":I
    new-instance v1, Ljava/math/BigInteger;

    const-string v6, "0"

    invoke-direct {v1, v6}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    .line 101
    .local v1, "Ym":Ljava/math/BigInteger;
    const/4 v6, 0x0

    .restart local v6    # "j":I
    :goto_6
    if-ge v6, v14, :cond_4

    .line 103
    aget-object v8, v5, v6

    sget-object v13, Lorg/bouncycastle/crypto/generators/GOST3410ParametersGenerator;->TWO:Ljava/math/BigInteger;

    move-object/from16 v18, v2

    .end local v2    # "C":Ljava/math/BigInteger;
    .local v18, "C":Ljava/math/BigInteger;
    mul-int/lit8 v2, v6, 0x10

    invoke-virtual {v13, v2}, Ljava/math/BigInteger;->pow(I)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    .line 101
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v2, v18

    const/16 v13, 0x10

    goto :goto_6

    .end local v18    # "C":Ljava/math/BigInteger;
    .restart local v2    # "C":Ljava/math/BigInteger;
    :cond_4
    move-object/from16 v18, v2

    .line 106
    .end local v2    # "C":Ljava/math/BigInteger;
    .end local v6    # "j":I
    .restart local v18    # "C":Ljava/math/BigInteger;
    aget-object v2, v5, v14

    aput-object v2, v5, p2

    .line 109
    sget-object v2, Lorg/bouncycastle/crypto/generators/GOST3410ParametersGenerator;->TWO:Ljava/math/BigInteger;

    aget v6, v7, v11

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v2, v6}, Ljava/math/BigInteger;->pow(I)Ljava/math/BigInteger;

    move-result-object v2

    add-int/lit8 v6, v11, 0x1

    aget-object v6, v10, v6

    invoke-virtual {v2, v6}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    sget-object v6, Lorg/bouncycastle/crypto/generators/GOST3410ParametersGenerator;->TWO:Ljava/math/BigInteger;

    aget v8, v7, v11

    add-int/lit8 v8, v8, -0x1

    .line 110
    invoke-virtual {v6, v8}, Ljava/math/BigInteger;->pow(I)Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v6

    add-int/lit8 v8, v11, 0x1

    aget-object v8, v10, v8

    sget-object v13, Lorg/bouncycastle/crypto/generators/GOST3410ParametersGenerator;->TWO:Ljava/math/BigInteger;

    move-object/from16 v19, v1

    .end local v1    # "Ym":Ljava/math/BigInteger;
    .local v19, "Ym":Ljava/math/BigInteger;
    mul-int/lit8 v1, v14, 0x10

    .line 111
    invoke-virtual {v13, v1}, Ljava/math/BigInteger;->pow(I)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v8, v1}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    .line 110
    invoke-virtual {v2, v1}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    .line 113
    .local v1, "N":Ljava/math/BigInteger;
    sget-object v2, Lorg/bouncycastle/crypto/generators/GOST3410ParametersGenerator;->TWO:Ljava/math/BigInteger;

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    sget-object v6, Lorg/bouncycastle/crypto/generators/GOST3410ParametersGenerator;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v2, v6}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v2

    if-nez v2, :cond_5

    .line 115
    sget-object v2, Lorg/bouncycastle/crypto/generators/GOST3410ParametersGenerator;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    .line 118
    :cond_5
    const/4 v2, 0x0

    .line 123
    .local v2, "k":I
    :goto_7
    add-int/lit8 v6, v11, 0x1

    aget-object v6, v10, v6

    move-object v13, v3

    move v8, v4

    .end local v3    # "constA16":Ljava/math/BigInteger;
    .end local v4    # "c":I
    .local v8, "c":I
    .local v13, "constA16":Ljava/math/BigInteger;
    int-to-long v3, v2

    invoke-static {v3, v4}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    sget-object v4, Lorg/bouncycastle/crypto/generators/GOST3410ParametersGenerator;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    aput-object v3, v10, v11

    .line 125
    aget-object v3, v10, v11

    sget-object v4, Lorg/bouncycastle/crypto/generators/GOST3410ParametersGenerator;->TWO:Ljava/math/BigInteger;

    aget v6, v7, v11

    invoke-virtual {v4, v6}, Ljava/math/BigInteger;->pow(I)Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_6

    .line 127
    move-object v6, v5

    move v4, v8

    move-object v3, v13

    move/from16 v1, v17

    move-object/from16 v2, v18

    const/4 v5, 0x1

    const/4 v8, 0x0

    const/16 v13, 0x10

    goto/16 :goto_4

    .line 131
    :cond_6
    sget-object v3, Lorg/bouncycastle/crypto/generators/GOST3410ParametersGenerator;->TWO:Ljava/math/BigInteger;

    add-int/lit8 v4, v11, 0x1

    aget-object v4, v10, v4

    move-object/from16 v20, v5

    .end local v5    # "y":[Ljava/math/BigInteger;
    .local v20, "y":[Ljava/math/BigInteger;
    int-to-long v5, v2

    invoke-static {v5, v6}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    aget-object v5, v10, v11

    invoke-virtual {v3, v4, v5}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    sget-object v4, Lorg/bouncycastle/crypto/generators/GOST3410ParametersGenerator;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v3

    if-nez v3, :cond_8

    sget-object v3, Lorg/bouncycastle/crypto/generators/GOST3410ParametersGenerator;->TWO:Ljava/math/BigInteger;

    int-to-long v4, v2

    .line 132
    invoke-static {v4, v5}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    aget-object v5, v10, v11

    invoke-virtual {v3, v4, v5}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    sget-object v4, Lorg/bouncycastle/crypto/generators/GOST3410ParametersGenerator;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v3

    if-eqz v3, :cond_8

    .line 134
    add-int/lit8 v11, v11, -0x1

    .line 135
    nop

    .line 144
    if-ltz v11, :cond_7

    .line 146
    nop

    .line 82
    .end local v1    # "N":Ljava/math/BigInteger;
    .end local v2    # "k":I
    .end local v14    # "rm":I
    .end local v15    # "tmp_y":[Ljava/math/BigInteger;
    .end local v19    # "Ym":Ljava/math/BigInteger;
    add-int/lit8 v12, v12, 0x1

    move v4, v8

    move-object v3, v13

    move/from16 v1, v17

    move-object/from16 v2, v18

    move-object/from16 v6, v20

    const/4 v5, 0x1

    const/4 v8, 0x0

    const/16 v13, 0x10

    goto/16 :goto_3

    .line 150
    .restart local v1    # "N":Ljava/math/BigInteger;
    .restart local v2    # "k":I
    .restart local v14    # "rm":I
    .restart local v15    # "tmp_y":[Ljava/math/BigInteger;
    .restart local v19    # "Ym":Ljava/math/BigInteger;
    :cond_7
    aget-object v3, v10, p2

    aput-object v3, p3, p2

    .line 151
    const/4 v4, 0x1

    aget-object v3, v10, v4

    aput-object v3, p3, v4

    .line 152
    aget-object v3, v20, p2

    invoke-virtual {v3}, Ljava/math/BigInteger;->intValue()I

    move-result v3

    return v3

    .line 139
    :cond_8
    add-int/lit8 v2, v2, 0x2

    .line 140
    move v4, v8

    move-object v3, v13

    move-object/from16 v5, v20

    const/16 p1, 0x1

    goto/16 :goto_7

    .line 82
    .end local v8    # "c":I
    .end local v13    # "constA16":Ljava/math/BigInteger;
    .end local v14    # "rm":I
    .end local v15    # "tmp_y":[Ljava/math/BigInteger;
    .end local v17    # "x0":I
    .end local v18    # "C":Ljava/math/BigInteger;
    .end local v19    # "Ym":Ljava/math/BigInteger;
    .end local v20    # "y":[Ljava/math/BigInteger;
    .local v1, "x0":I
    .local v2, "C":Ljava/math/BigInteger;
    .restart local v3    # "constA16":Ljava/math/BigInteger;
    .restart local v4    # "c":I
    .local v6, "y":[Ljava/math/BigInteger;
    :cond_9
    move/from16 v17, v1

    const/16 p2, 0x0

    .line 156
    .end local v1    # "x0":I
    .end local v12    # "i":I
    .restart local v17    # "x0":I
    aget-object v1, v6, p2

    invoke-virtual {v1}, Ljava/math/BigInteger;->intValue()I

    move-result v1

    return v1

    .line 48
    .end local v2    # "C":Ljava/math/BigInteger;
    .end local v3    # "constA16":Ljava/math/BigInteger;
    .end local v6    # "y":[Ljava/math/BigInteger;
    .end local v7    # "t":[I
    .end local v9    # "s":I
    .end local v10    # "p":[Ljava/math/BigInteger;
    .end local v11    # "m":I
    .end local v17    # "x0":I
    .restart local v1    # "x0":I
    :cond_a
    move/from16 v17, v1

    move v8, v4

    .line 50
    .end local v1    # "x0":I
    .end local v4    # "c":I
    .restart local v8    # "c":I
    .restart local v17    # "x0":I
    :goto_8
    iget-object v1, v0, Lorg/bouncycastle/crypto/generators/GOST3410ParametersGenerator;->init_random:Ljava/security/SecureRandom;

    invoke-virtual {v1}, Ljava/security/SecureRandom;->nextInt()I

    move-result v1

    div-int/2addr v1, v2

    const/4 v4, 0x1

    add-int/2addr v4, v1

    move/from16 v1, v17

    .end local v8    # "c":I
    .restart local v4    # "c":I
    goto/16 :goto_1

    .line 43
    .end local v4    # "c":I
    .end local v17    # "x0":I
    .restart local v1    # "x0":I
    .restart local p2    # "c":I
    :cond_b
    move/from16 v17, v1

    .line 45
    .end local v1    # "x0":I
    .restart local v17    # "x0":I
    :goto_9
    iget-object v1, v0, Lorg/bouncycastle/crypto/generators/GOST3410ParametersGenerator;->init_random:Ljava/security/SecureRandom;

    invoke-virtual {v1}, Ljava/security/SecureRandom;->nextInt()I

    move-result v1

    div-int/2addr v1, v2

    .end local v17    # "x0":I
    .restart local v1    # "x0":I
    goto/16 :goto_0
.end method

.method private procedure_Aa(JJ[Ljava/math/BigInteger;I)J
    .locals 21
    .param p1, "x0"    # J
    .param p3, "c"    # J
    .param p5, "pq"    # [Ljava/math/BigInteger;
    .param p6, "size"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "x0",
            "c",
            "pq",
            "size"
        }
    .end annotation

    .line 163
    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    .end local p1    # "x0":J
    .local v1, "x0":J
    :goto_0
    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-ltz v5, :cond_b

    const-wide v5, 0x100000000L

    cmp-long v7, v1, v5

    if-lez v7, :cond_0

    move-wide/from16 v16, v1

    goto/16 :goto_9

    :cond_0
    move-wide/from16 v7, p3

    .line 168
    .end local p3    # "c":J
    .local v7, "c":J
    :goto_1
    const/4 v9, 0x1

    cmp-long v10, v7, v3

    if-ltz v10, :cond_a

    cmp-long v10, v7, v5

    if-gtz v10, :cond_a

    const-wide/16 v10, 0x2

    div-long v10, v7, v10

    cmp-long v12, v10, v3

    if-nez v12, :cond_1

    move-wide/from16 v16, v1

    goto/16 :goto_8

    .line 173
    :cond_1
    new-instance v3, Ljava/math/BigInteger;

    invoke-static {v7, v8}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    .line 174
    .local v3, "C":Ljava/math/BigInteger;
    new-instance v4, Ljava/math/BigInteger;

    const-string v5, "97781173"

    invoke-direct {v4, v5}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    .line 177
    .local v4, "constA32":Ljava/math/BigInteger;
    new-array v5, v9, [Ljava/math/BigInteger;

    .line 178
    .local v5, "y":[Ljava/math/BigInteger;
    new-instance v6, Ljava/math/BigInteger;

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v6, v10}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    const/4 v10, 0x0

    aput-object v6, v5, v10

    .line 181
    new-array v6, v9, [I

    .line 182
    .local v6, "t":[I
    aput p6, v6, v10

    .line 183
    const/4 v11, 0x0

    .line 184
    .local v11, "s":I
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_2
    aget v13, v6, v12

    const/16 v14, 0x21

    if-lt v13, v14, :cond_2

    .line 187
    array-length v13, v6

    add-int/2addr v13, v9

    new-array v13, v13, [I

    .line 188
    .local v13, "tmp_t":[I
    array-length v14, v6

    invoke-static {v6, v10, v13, v10, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 189
    array-length v14, v13

    new-array v6, v14, [I

    .line 190
    array-length v14, v13

    invoke-static {v13, v10, v6, v10, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 192
    add-int/lit8 v14, v12, 0x1

    aget v15, v6, v12

    div-int/lit8 v15, v15, 0x2

    aput v15, v6, v14

    .line 193
    add-int/lit8 v11, v12, 0x1

    .line 184
    .end local v13    # "tmp_t":[I
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    .line 197
    .end local v12    # "i":I
    :cond_2
    add-int/lit8 v12, v11, 0x1

    new-array v12, v12, [Ljava/math/BigInteger;

    .line 198
    .local v12, "p":[Ljava/math/BigInteger;
    new-instance v13, Ljava/math/BigInteger;

    const-string v14, "8000000B"

    const/16 v15, 0x10

    invoke-direct {v13, v14, v15}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    aput-object v13, v12, v11

    .line 200
    add-int/lit8 v13, v11, -0x1

    .line 202
    .local v13, "m":I
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_3
    if-ge v14, v11, :cond_9

    .line 204
    aget v15, v6, v13

    const/16 p1, 0x1

    const/16 v9, 0x20

    div-int/2addr v15, v9

    .line 209
    .local v15, "rm":I
    :goto_4
    array-length v9, v5

    new-array v9, v9, [Ljava/math/BigInteger;

    .line 210
    .local v9, "tmp_y":[Ljava/math/BigInteger;
    move-wide/from16 v16, v1

    .end local v1    # "x0":J
    .local v16, "x0":J
    array-length v1, v5

    invoke-static {v5, v10, v9, v10, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 211
    add-int/lit8 v1, v15, 0x1

    new-array v1, v1, [Ljava/math/BigInteger;

    .line 212
    .end local v5    # "y":[Ljava/math/BigInteger;
    .local v1, "y":[Ljava/math/BigInteger;
    array-length v2, v9

    invoke-static {v9, v10, v1, v10, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 214
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_5
    if-ge v2, v15, :cond_3

    .line 216
    add-int/lit8 v5, v2, 0x1

    const/16 p3, 0x0

    aget-object v10, v1, v2

    invoke-virtual {v10, v4}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v10

    move-object/from16 p4, v1

    .end local v1    # "y":[Ljava/math/BigInteger;
    .local p4, "y":[Ljava/math/BigInteger;
    sget-object v1, Lorg/bouncycastle/crypto/generators/GOST3410ParametersGenerator;->TWO:Ljava/math/BigInteger;

    move/from16 v18, v2

    const/16 v2, 0x20

    .end local v2    # "j":I
    .local v18, "j":I
    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->pow(I)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v10, v1}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    aput-object v1, p4, v5

    .line 214
    add-int/lit8 v1, v18, 0x1

    move v2, v1

    const/4 v10, 0x0

    move-object/from16 v1, p4

    .end local v18    # "j":I
    .local v1, "j":I
    goto :goto_5

    .end local p4    # "y":[Ljava/math/BigInteger;
    .local v1, "y":[Ljava/math/BigInteger;
    .restart local v2    # "j":I
    :cond_3
    move-object/from16 p4, v1

    move/from16 v18, v2

    const/16 p3, 0x0

    const/16 v2, 0x20

    .line 220
    .end local v1    # "y":[Ljava/math/BigInteger;
    .end local v2    # "j":I
    .restart local p4    # "y":[Ljava/math/BigInteger;
    new-instance v1, Ljava/math/BigInteger;

    const-string v5, "0"

    invoke-direct {v1, v5}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    .line 221
    .local v1, "Ym":Ljava/math/BigInteger;
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_6
    if-ge v5, v15, :cond_4

    .line 223
    aget-object v10, p4, v5

    sget-object v2, Lorg/bouncycastle/crypto/generators/GOST3410ParametersGenerator;->TWO:Ljava/math/BigInteger;

    move-object/from16 v18, v3

    .end local v3    # "C":Ljava/math/BigInteger;
    .local v18, "C":Ljava/math/BigInteger;
    mul-int/lit8 v3, v5, 0x20

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->pow(I)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v10, v2}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    .line 221
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v3, v18

    const/16 v2, 0x20

    goto :goto_6

    .end local v18    # "C":Ljava/math/BigInteger;
    .restart local v3    # "C":Ljava/math/BigInteger;
    :cond_4
    move-object/from16 v18, v3

    .line 226
    .end local v3    # "C":Ljava/math/BigInteger;
    .end local v5    # "j":I
    .restart local v18    # "C":Ljava/math/BigInteger;
    aget-object v2, p4, v15

    aput-object v2, p4, p3

    .line 229
    sget-object v2, Lorg/bouncycastle/crypto/generators/GOST3410ParametersGenerator;->TWO:Ljava/math/BigInteger;

    aget v3, v6, v13

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->pow(I)Ljava/math/BigInteger;

    move-result-object v2

    add-int/lit8 v3, v13, 0x1

    aget-object v3, v12, v3

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    sget-object v3, Lorg/bouncycastle/crypto/generators/GOST3410ParametersGenerator;->TWO:Ljava/math/BigInteger;

    aget v5, v6, v13

    add-int/lit8 v5, v5, -0x1

    .line 230
    invoke-virtual {v3, v5}, Ljava/math/BigInteger;->pow(I)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    add-int/lit8 v5, v13, 0x1

    aget-object v5, v12, v5

    sget-object v10, Lorg/bouncycastle/crypto/generators/GOST3410ParametersGenerator;->TWO:Ljava/math/BigInteger;

    move-object/from16 v19, v1

    .end local v1    # "Ym":Ljava/math/BigInteger;
    .local v19, "Ym":Ljava/math/BigInteger;
    mul-int/lit8 v1, v15, 0x20

    .line 231
    invoke-virtual {v10, v1}, Ljava/math/BigInteger;->pow(I)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    .line 230
    invoke-virtual {v2, v1}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    .line 233
    .local v1, "N":Ljava/math/BigInteger;
    sget-object v2, Lorg/bouncycastle/crypto/generators/GOST3410ParametersGenerator;->TWO:Ljava/math/BigInteger;

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    sget-object v3, Lorg/bouncycastle/crypto/generators/GOST3410ParametersGenerator;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v2

    if-nez v2, :cond_5

    .line 235
    sget-object v2, Lorg/bouncycastle/crypto/generators/GOST3410ParametersGenerator;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    .line 238
    :cond_5
    const/4 v2, 0x0

    .line 243
    .local v2, "k":I
    :goto_7
    add-int/lit8 v3, v13, 0x1

    aget-object v3, v12, v3

    move-object v10, v4

    .end local v4    # "constA32":Ljava/math/BigInteger;
    .local v10, "constA32":Ljava/math/BigInteger;
    int-to-long v4, v2

    invoke-static {v4, v5}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    sget-object v4, Lorg/bouncycastle/crypto/generators/GOST3410ParametersGenerator;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    aput-object v3, v12, v13

    .line 245
    aget-object v3, v12, v13

    sget-object v4, Lorg/bouncycastle/crypto/generators/GOST3410ParametersGenerator;->TWO:Ljava/math/BigInteger;

    aget v5, v6, v13

    invoke-virtual {v4, v5}, Ljava/math/BigInteger;->pow(I)Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_6

    .line 247
    move-object/from16 v5, p4

    move-object v4, v10

    move-wide/from16 v1, v16

    move-object/from16 v3, v18

    const/16 p1, 0x1

    const/16 v9, 0x20

    const/4 v10, 0x0

    goto/16 :goto_4

    .line 251
    :cond_6
    sget-object v3, Lorg/bouncycastle/crypto/generators/GOST3410ParametersGenerator;->TWO:Ljava/math/BigInteger;

    add-int/lit8 v4, v13, 0x1

    aget-object v4, v12, v4

    move-object/from16 v20, v6

    .end local v6    # "t":[I
    .local v20, "t":[I
    int-to-long v5, v2

    invoke-static {v5, v6}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    aget-object v5, v12, v13

    invoke-virtual {v3, v4, v5}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    sget-object v4, Lorg/bouncycastle/crypto/generators/GOST3410ParametersGenerator;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v3

    if-nez v3, :cond_8

    sget-object v3, Lorg/bouncycastle/crypto/generators/GOST3410ParametersGenerator;->TWO:Ljava/math/BigInteger;

    int-to-long v4, v2

    .line 252
    invoke-static {v4, v5}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    aget-object v5, v12, v13

    invoke-virtual {v3, v4, v5}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    sget-object v4, Lorg/bouncycastle/crypto/generators/GOST3410ParametersGenerator;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v3

    if-eqz v3, :cond_8

    .line 254
    add-int/lit8 v13, v13, -0x1

    .line 255
    nop

    .line 264
    if-ltz v13, :cond_7

    .line 266
    nop

    .line 202
    .end local v1    # "N":Ljava/math/BigInteger;
    .end local v2    # "k":I
    .end local v9    # "tmp_y":[Ljava/math/BigInteger;
    .end local v15    # "rm":I
    .end local v19    # "Ym":Ljava/math/BigInteger;
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v5, p4

    move-object v4, v10

    move-wide/from16 v1, v16

    move-object/from16 v3, v18

    move-object/from16 v6, v20

    const/4 v9, 0x1

    const/4 v10, 0x0

    goto/16 :goto_3

    .line 270
    .restart local v1    # "N":Ljava/math/BigInteger;
    .restart local v2    # "k":I
    .restart local v9    # "tmp_y":[Ljava/math/BigInteger;
    .restart local v15    # "rm":I
    .restart local v19    # "Ym":Ljava/math/BigInteger;
    :cond_7
    aget-object v3, v12, p3

    aput-object v3, p5, p3

    .line 271
    const/4 v4, 0x1

    aget-object v3, v12, v4

    aput-object v3, p5, v4

    .line 272
    aget-object v3, p4, p3

    invoke-virtual {v3}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v3

    return-wide v3

    .line 259
    :cond_8
    add-int/lit8 v2, v2, 0x2

    .line 260
    move-object v4, v10

    move-object/from16 v6, v20

    const/16 p1, 0x1

    goto/16 :goto_7

    .line 202
    .end local v2    # "k":I
    .end local v9    # "tmp_y":[Ljava/math/BigInteger;
    .end local v10    # "constA32":Ljava/math/BigInteger;
    .end local v15    # "rm":I
    .end local v16    # "x0":J
    .end local v18    # "C":Ljava/math/BigInteger;
    .end local v19    # "Ym":Ljava/math/BigInteger;
    .end local v20    # "t":[I
    .end local p4    # "y":[Ljava/math/BigInteger;
    .local v1, "x0":J
    .restart local v3    # "C":Ljava/math/BigInteger;
    .restart local v4    # "constA32":Ljava/math/BigInteger;
    .local v5, "y":[Ljava/math/BigInteger;
    .restart local v6    # "t":[I
    :cond_9
    move-wide/from16 v16, v1

    const/16 p3, 0x0

    .line 276
    .end local v1    # "x0":J
    .end local v14    # "i":I
    .restart local v16    # "x0":J
    aget-object v1, v5, p3

    invoke-virtual {v1}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v1

    return-wide v1

    .line 168
    .end local v3    # "C":Ljava/math/BigInteger;
    .end local v4    # "constA32":Ljava/math/BigInteger;
    .end local v5    # "y":[Ljava/math/BigInteger;
    .end local v6    # "t":[I
    .end local v11    # "s":I
    .end local v12    # "p":[Ljava/math/BigInteger;
    .end local v13    # "m":I
    .end local v16    # "x0":J
    .restart local v1    # "x0":J
    :cond_a
    move-wide/from16 v16, v1

    .line 170
    .end local v1    # "x0":J
    .restart local v16    # "x0":J
    :goto_8
    iget-object v1, v0, Lorg/bouncycastle/crypto/generators/GOST3410ParametersGenerator;->init_random:Ljava/security/SecureRandom;

    invoke-virtual {v1}, Ljava/security/SecureRandom;->nextInt()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    const/4 v2, 0x1

    add-int/2addr v1, v2

    int-to-long v7, v1

    move-wide/from16 v1, v16

    goto/16 :goto_1

    .line 163
    .end local v7    # "c":J
    .end local v16    # "x0":J
    .restart local v1    # "x0":J
    .restart local p3    # "c":J
    :cond_b
    move-wide/from16 v16, v1

    .line 165
    .end local v1    # "x0":J
    .restart local v16    # "x0":J
    :goto_9
    iget-object v1, v0, Lorg/bouncycastle/crypto/generators/GOST3410ParametersGenerator;->init_random:Ljava/security/SecureRandom;

    invoke-virtual {v1}, Ljava/security/SecureRandom;->nextInt()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    int-to-long v1, v1

    .end local v16    # "x0":J
    .restart local v1    # "x0":J
    goto/16 :goto_0
.end method

.method private procedure_B(II[Ljava/math/BigInteger;)V
    .locals 18
    .param p1, "x0"    # I
    .param p2, "c"    # I
    .param p3, "pq"    # [Ljava/math/BigInteger;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "x0",
            "c",
            "pq"
        }
    .end annotation

    .line 283
    move-object/from16 v0, p0

    move/from16 v1, p1

    .end local p1    # "x0":I
    .local v1, "x0":I
    :goto_0
    const v2, 0x8000

    if-ltz v1, :cond_8

    const/high16 v3, 0x10000

    if-le v1, v3, :cond_0

    goto/16 :goto_8

    :cond_0
    move/from16 v4, p2

    .line 288
    .end local p2    # "c":I
    .local v4, "c":I
    :goto_1
    if-ltz v4, :cond_7

    if-gt v4, v3, :cond_7

    div-int/lit8 v6, v4, 0x2

    if-nez v6, :cond_1

    move/from16 v16, v4

    goto/16 :goto_7

    .line 293
    :cond_1
    const/4 v2, 0x2

    new-array v6, v2, [Ljava/math/BigInteger;

    .line 294
    .local v6, "qp":[Ljava/math/BigInteger;
    const/4 v2, 0x0

    .local v2, "q":Ljava/math/BigInteger;
    const/4 v3, 0x0

    .local v3, "Q":Ljava/math/BigInteger;
    const/4 v7, 0x0

    .line 295
    .local v7, "p":Ljava/math/BigInteger;
    new-instance v8, Ljava/math/BigInteger;

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    .line 296
    .local v8, "C":Ljava/math/BigInteger;
    new-instance v9, Ljava/math/BigInteger;

    const-string v10, "19381"

    invoke-direct {v9, v10}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    .line 299
    .local v9, "constA16":Ljava/math/BigInteger;
    const/16 v10, 0x100

    invoke-direct {v0, v1, v4, v6, v10}, Lorg/bouncycastle/crypto/generators/GOST3410ParametersGenerator;->procedure_A(II[Ljava/math/BigInteger;I)I

    move-result v1

    .line 300
    const/4 v10, 0x0

    aget-object v11, v6, v10

    .line 303
    .end local v2    # "q":Ljava/math/BigInteger;
    .local v11, "q":Ljava/math/BigInteger;
    const/16 v2, 0x200

    invoke-direct {v0, v1, v4, v6, v2}, Lorg/bouncycastle/crypto/generators/GOST3410ParametersGenerator;->procedure_A(II[Ljava/math/BigInteger;I)I

    move-result v12

    .line 304
    .end local v1    # "x0":I
    .local v12, "x0":I
    aget-object v13, v6, v10

    .line 306
    .end local v3    # "Q":Ljava/math/BigInteger;
    .local v13, "Q":Ljava/math/BigInteger;
    const/16 v1, 0x41

    new-array v14, v1, [Ljava/math/BigInteger;

    .line 307
    .local v14, "y":[Ljava/math/BigInteger;
    new-instance v1, Ljava/math/BigInteger;

    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    aput-object v1, v14, v10

    .line 309
    const/16 v15, 0x400

    .line 314
    .local v15, "tp":I
    :goto_2
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_3
    const/16 v2, 0x40

    if-ge v1, v2, :cond_2

    .line 316
    add-int/lit8 v2, v1, 0x1

    aget-object v3, v14, v1

    invoke-virtual {v3, v9}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    const/16 p1, 0x0

    sget-object v10, Lorg/bouncycastle/crypto/generators/GOST3410ParametersGenerator;->TWO:Ljava/math/BigInteger;

    const/16 v5, 0x10

    invoke-virtual {v10, v5}, Ljava/math/BigInteger;->pow(I)Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    aput-object v3, v14, v2

    .line 314
    add-int/lit8 v1, v1, 0x1

    const/4 v10, 0x0

    goto :goto_3

    :cond_2
    const/16 p1, 0x0

    .line 320
    .end local v1    # "j":I
    new-instance v1, Ljava/math/BigInteger;

    const-string v3, "0"

    invoke-direct {v1, v3}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    .line 322
    .local v1, "Y":Ljava/math/BigInteger;
    const/4 v3, 0x0

    move-object v5, v1

    .end local v1    # "Y":Ljava/math/BigInteger;
    .local v3, "j":I
    .local v5, "Y":Ljava/math/BigInteger;
    :goto_4
    if-ge v3, v2, :cond_3

    .line 324
    aget-object v1, v14, v3

    sget-object v10, Lorg/bouncycastle/crypto/generators/GOST3410ParametersGenerator;->TWO:Ljava/math/BigInteger;

    const/16 v16, 0x40

    mul-int/lit8 v2, v3, 0x10

    invoke-virtual {v10, v2}, Ljava/math/BigInteger;->pow(I)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v5

    .line 322
    add-int/lit8 v3, v3, 0x1

    const/16 v2, 0x40

    goto :goto_4

    :cond_3
    const/16 v16, 0x40

    .line 327
    .end local v3    # "j":I
    aget-object v1, v14, v16

    aput-object v1, v14, p1

    .line 330
    sget-object v1, Lorg/bouncycastle/crypto/generators/GOST3410ParametersGenerator;->TWO:Ljava/math/BigInteger;

    add-int/lit8 v2, v15, -0x1

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->pow(I)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v11, v13}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    sget-object v2, Lorg/bouncycastle/crypto/generators/GOST3410ParametersGenerator;->TWO:Ljava/math/BigInteger;

    add-int/lit8 v3, v15, -0x1

    .line 331
    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->pow(I)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    .line 332
    invoke-virtual {v11, v13}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    sget-object v10, Lorg/bouncycastle/crypto/generators/GOST3410ParametersGenerator;->TWO:Ljava/math/BigInteger;

    move/from16 v16, v4

    .end local v4    # "c":I
    .local v16, "c":I
    const/16 v4, 0x400

    invoke-virtual {v10, v4}, Ljava/math/BigInteger;->pow(I)Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    .line 331
    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    .line 334
    .local v1, "N":Ljava/math/BigInteger;
    sget-object v2, Lorg/bouncycastle/crypto/generators/GOST3410ParametersGenerator;->TWO:Ljava/math/BigInteger;

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    sget-object v3, Lorg/bouncycastle/crypto/generators/GOST3410ParametersGenerator;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v2

    if-nez v2, :cond_4

    .line 336
    sget-object v2, Lorg/bouncycastle/crypto/generators/GOST3410ParametersGenerator;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    move-object v4, v1

    goto :goto_5

    .line 334
    :cond_4
    move-object v4, v1

    .line 339
    .end local v1    # "N":Ljava/math/BigInteger;
    .local v4, "N":Ljava/math/BigInteger;
    :goto_5
    const/4 v1, 0x0

    .line 344
    .local v1, "k":I
    :goto_6
    invoke-virtual {v11, v13}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    move-object/from16 v17, v5

    move-object v10, v6

    .end local v5    # "Y":Ljava/math/BigInteger;
    .end local v6    # "qp":[Ljava/math/BigInteger;
    .local v10, "qp":[Ljava/math/BigInteger;
    .local v17, "Y":Ljava/math/BigInteger;
    int-to-long v5, v1

    invoke-static {v5, v6}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    sget-object v3, Lorg/bouncycastle/crypto/generators/GOST3410ParametersGenerator;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v7

    .line 346
    sget-object v2, Lorg/bouncycastle/crypto/generators/GOST3410ParametersGenerator;->TWO:Ljava/math/BigInteger;

    invoke-virtual {v2, v15}, Ljava/math/BigInteger;->pow(I)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_5

    .line 348
    move-object v6, v10

    move/from16 v4, v16

    const/4 v10, 0x0

    goto/16 :goto_2

    .line 352
    :cond_5
    sget-object v2, Lorg/bouncycastle/crypto/generators/GOST3410ParametersGenerator;->TWO:Ljava/math/BigInteger;

    invoke-virtual {v11, v13}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    int-to-long v5, v1

    invoke-static {v5, v6}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v2, v3, v7}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    sget-object v3, Lorg/bouncycastle/crypto/generators/GOST3410ParametersGenerator;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v2

    if-nez v2, :cond_6

    sget-object v2, Lorg/bouncycastle/crypto/generators/GOST3410ParametersGenerator;->TWO:Ljava/math/BigInteger;

    int-to-long v5, v1

    .line 353
    invoke-static {v5, v6}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v11, v3}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v2, v3, v7}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    sget-object v3, Lorg/bouncycastle/crypto/generators/GOST3410ParametersGenerator;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v2

    if-eqz v2, :cond_6

    .line 355
    aput-object v7, p3, p1

    .line 356
    const/4 v3, 0x1

    aput-object v11, p3, v3

    .line 357
    return-void

    .line 361
    :cond_6
    add-int/lit8 v1, v1, 0x2

    .line 362
    move-object v6, v10

    move-object/from16 v5, v17

    goto :goto_6

    .line 288
    .end local v7    # "p":Ljava/math/BigInteger;
    .end local v8    # "C":Ljava/math/BigInteger;
    .end local v9    # "constA16":Ljava/math/BigInteger;
    .end local v10    # "qp":[Ljava/math/BigInteger;
    .end local v11    # "q":Ljava/math/BigInteger;
    .end local v12    # "x0":I
    .end local v13    # "Q":Ljava/math/BigInteger;
    .end local v14    # "y":[Ljava/math/BigInteger;
    .end local v15    # "tp":I
    .end local v16    # "c":I
    .end local v17    # "Y":Ljava/math/BigInteger;
    .local v1, "x0":I
    .local v4, "c":I
    :cond_7
    move/from16 v16, v4

    .line 290
    .end local v4    # "c":I
    .restart local v16    # "c":I
    :goto_7
    iget-object v4, v0, Lorg/bouncycastle/crypto/generators/GOST3410ParametersGenerator;->init_random:Ljava/security/SecureRandom;

    invoke-virtual {v4}, Ljava/security/SecureRandom;->nextInt()I

    move-result v4

    div-int/2addr v4, v2

    const/4 v5, 0x1

    add-int/2addr v4, v5

    .end local v16    # "c":I
    .restart local v4    # "c":I
    goto/16 :goto_1

    .line 285
    .end local v4    # "c":I
    .restart local p2    # "c":I
    :cond_8
    :goto_8
    iget-object v3, v0, Lorg/bouncycastle/crypto/generators/GOST3410ParametersGenerator;->init_random:Ljava/security/SecureRandom;

    invoke-virtual {v3}, Ljava/security/SecureRandom;->nextInt()I

    move-result v3

    div-int v1, v3, v2

    goto/16 :goto_0
.end method

.method private procedure_Bb(JJ[Ljava/math/BigInteger;)V
    .locals 22
    .param p1, "x0"    # J
    .param p3, "c"    # J
    .param p5, "pq"    # [Ljava/math/BigInteger;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "x0",
            "c",
            "pq"
        }
    .end annotation

    .line 372
    move-wide/from16 v1, p1

    .end local p1    # "x0":J
    .local v1, "x0":J
    :goto_0
    const-wide/16 v3, 0x0

    const/4 v0, 0x2

    cmp-long v5, v1, v3

    if-ltz v5, :cond_8

    const-wide v5, 0x100000000L

    cmp-long v7, v1, v5

    if-lez v7, :cond_0

    move-object/from16 v3, p0

    move-wide/from16 v19, v1

    goto/16 :goto_7

    :cond_0
    move-wide v7, v3

    move-wide/from16 v3, p3

    .line 377
    .end local p3    # "c":J
    .local v3, "c":J
    :goto_1
    cmp-long v10, v3, v7

    if-ltz v10, :cond_7

    cmp-long v10, v3, v5

    if-gtz v10, :cond_7

    const-wide/16 v10, 0x2

    div-long v10, v3, v10

    cmp-long v12, v10, v7

    if-nez v12, :cond_1

    move-wide/from16 v19, v1

    move-wide v15, v3

    move-object/from16 v3, p0

    goto/16 :goto_6

    .line 382
    :cond_1
    new-array v5, v0, [Ljava/math/BigInteger;

    .line 383
    .local v5, "qp":[Ljava/math/BigInteger;
    const/4 v7, 0x0

    .local v7, "q":Ljava/math/BigInteger;
    const/4 v8, 0x0

    .local v8, "Q":Ljava/math/BigInteger;
    const/4 v10, 0x0

    .line 384
    .local v10, "p":Ljava/math/BigInteger;
    new-instance v0, Ljava/math/BigInteger;

    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v6}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    move-object v11, v0

    .line 385
    .local v11, "C":Ljava/math/BigInteger;
    new-instance v0, Ljava/math/BigInteger;

    const-string v6, "97781173"

    invoke-direct {v0, v6}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    move-object v12, v0

    .line 388
    .local v12, "constA32":Ljava/math/BigInteger;
    const/16 v6, 0x100

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/generators/GOST3410ParametersGenerator;->procedure_Aa(JJ[Ljava/math/BigInteger;I)J

    move-result-wide v1

    .line 389
    const/4 v13, 0x0

    aget-object v14, v5, v13

    .line 392
    .end local v7    # "q":Ljava/math/BigInteger;
    .local v14, "q":Ljava/math/BigInteger;
    const/16 v6, 0x200

    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/generators/GOST3410ParametersGenerator;->procedure_Aa(JJ[Ljava/math/BigInteger;I)J

    move-result-wide v1

    .line 393
    move-wide v15, v3

    move-object v4, v5

    move-object v3, v0

    .end local v3    # "c":J
    .end local v5    # "qp":[Ljava/math/BigInteger;
    .local v4, "qp":[Ljava/math/BigInteger;
    .local v15, "c":J
    aget-object v0, v4, v13

    .line 395
    .end local v8    # "Q":Ljava/math/BigInteger;
    .local v0, "Q":Ljava/math/BigInteger;
    const/16 v5, 0x21

    new-array v5, v5, [Ljava/math/BigInteger;

    .line 396
    .local v5, "y":[Ljava/math/BigInteger;
    new-instance v6, Ljava/math/BigInteger;

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    aput-object v6, v5, v13

    .line 398
    const/16 v6, 0x400

    .line 403
    .local v6, "tp":I
    :goto_2
    const/4 v7, 0x0

    .local v7, "j":I
    :goto_3
    const/16 v8, 0x20

    if-ge v7, v8, :cond_2

    .line 405
    add-int/lit8 v17, v7, 0x1

    const/16 p1, 0x0

    aget-object v13, v5, v7

    invoke-virtual {v13, v12}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v13

    sget-object v9, Lorg/bouncycastle/crypto/generators/GOST3410ParametersGenerator;->TWO:Ljava/math/BigInteger;

    invoke-virtual {v9, v8}, Ljava/math/BigInteger;->pow(I)Ljava/math/BigInteger;

    move-result-object v8

    invoke-virtual {v13, v8}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v8

    aput-object v8, v5, v17

    .line 403
    add-int/lit8 v7, v7, 0x1

    const/4 v13, 0x0

    goto :goto_3

    :cond_2
    const/16 p1, 0x0

    .line 409
    .end local v7    # "j":I
    new-instance v7, Ljava/math/BigInteger;

    const-string v9, "0"

    invoke-direct {v7, v9}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    .line 410
    .local v7, "Y":Ljava/math/BigInteger;
    const/4 v9, 0x0

    move/from16 v21, v9

    move-object v9, v7

    move/from16 v7, v21

    .local v7, "j":I
    .local v9, "Y":Ljava/math/BigInteger;
    :goto_4
    if-ge v7, v8, :cond_3

    .line 412
    aget-object v13, v5, v7

    const/16 p3, 0x20

    sget-object v8, Lorg/bouncycastle/crypto/generators/GOST3410ParametersGenerator;->TWO:Ljava/math/BigInteger;

    move-wide/from16 v17, v1

    .end local v1    # "x0":J
    .local v17, "x0":J
    mul-int/lit8 v1, v7, 0x20

    invoke-virtual {v8, v1}, Ljava/math/BigInteger;->pow(I)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v13, v1}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v9, v1}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v9

    .line 410
    add-int/lit8 v7, v7, 0x1

    move-wide/from16 v1, v17

    const/16 v8, 0x20

    goto :goto_4

    .end local v17    # "x0":J
    .restart local v1    # "x0":J
    :cond_3
    move-wide/from16 v17, v1

    const/16 p3, 0x20

    .line 415
    .end local v1    # "x0":J
    .end local v7    # "j":I
    .restart local v17    # "x0":J
    aget-object v1, v5, p3

    aput-object v1, v5, p1

    .line 418
    sget-object v1, Lorg/bouncycastle/crypto/generators/GOST3410ParametersGenerator;->TWO:Ljava/math/BigInteger;

    add-int/lit8 v2, v6, -0x1

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->pow(I)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v14, v0}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    sget-object v2, Lorg/bouncycastle/crypto/generators/GOST3410ParametersGenerator;->TWO:Ljava/math/BigInteger;

    add-int/lit8 v7, v6, -0x1

    .line 419
    invoke-virtual {v2, v7}, Ljava/math/BigInteger;->pow(I)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    .line 420
    invoke-virtual {v14, v0}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v7

    sget-object v8, Lorg/bouncycastle/crypto/generators/GOST3410ParametersGenerator;->TWO:Ljava/math/BigInteger;

    const/16 v13, 0x400

    invoke-virtual {v8, v13}, Ljava/math/BigInteger;->pow(I)Ljava/math/BigInteger;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    .line 419
    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    .line 422
    .local v1, "N":Ljava/math/BigInteger;
    sget-object v2, Lorg/bouncycastle/crypto/generators/GOST3410ParametersGenerator;->TWO:Ljava/math/BigInteger;

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    sget-object v7, Lorg/bouncycastle/crypto/generators/GOST3410ParametersGenerator;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v2, v7}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v2

    if-nez v2, :cond_4

    .line 424
    sget-object v2, Lorg/bouncycastle/crypto/generators/GOST3410ParametersGenerator;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    .line 427
    :cond_4
    const/4 v2, 0x0

    .line 432
    .local v2, "k":I
    :goto_5
    invoke-virtual {v14, v0}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v7

    move-object/from16 p3, v4

    move-object v8, v5

    .end local v4    # "qp":[Ljava/math/BigInteger;
    .end local v5    # "y":[Ljava/math/BigInteger;
    .local v8, "y":[Ljava/math/BigInteger;
    .local p3, "qp":[Ljava/math/BigInteger;
    int-to-long v4, v2

    invoke-static {v4, v5}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    sget-object v5, Lorg/bouncycastle/crypto/generators/GOST3410ParametersGenerator;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v4, v5}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v10

    .line 434
    sget-object v4, Lorg/bouncycastle/crypto/generators/GOST3410ParametersGenerator;->TWO:Ljava/math/BigInteger;

    invoke-virtual {v4, v6}, Ljava/math/BigInteger;->pow(I)Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v10, v4}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_5

    .line 436
    move-object/from16 v4, p3

    move-object v5, v8

    move-wide/from16 v1, v17

    const/4 v13, 0x0

    goto/16 :goto_2

    .line 440
    :cond_5
    sget-object v4, Lorg/bouncycastle/crypto/generators/GOST3410ParametersGenerator;->TWO:Ljava/math/BigInteger;

    invoke-virtual {v14, v0}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v5

    move/from16 p4, v6

    .end local v6    # "tp":I
    .local p4, "tp":I
    int-to-long v6, v2

    invoke-static {v6, v7}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v4, v5, v10}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    sget-object v5, Lorg/bouncycastle/crypto/generators/GOST3410ParametersGenerator;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v4, v5}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v4

    if-nez v4, :cond_6

    sget-object v4, Lorg/bouncycastle/crypto/generators/GOST3410ParametersGenerator;->TWO:Ljava/math/BigInteger;

    int-to-long v5, v2

    .line 441
    invoke-static {v5, v6}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v14, v5}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v4, v5, v10}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    sget-object v5, Lorg/bouncycastle/crypto/generators/GOST3410ParametersGenerator;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v4, v5}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v4

    if-eqz v4, :cond_6

    .line 443
    aput-object v10, p5, p1

    .line 444
    const/4 v5, 0x1

    aput-object v14, p5, v5

    .line 445
    return-void

    .line 449
    :cond_6
    add-int/lit8 v2, v2, 0x2

    .line 450
    move-object/from16 v4, p3

    move/from16 v6, p4

    move-object v5, v8

    goto :goto_5

    .line 377
    .end local v0    # "Q":Ljava/math/BigInteger;
    .end local v2    # "k":I
    .end local v8    # "y":[Ljava/math/BigInteger;
    .end local v9    # "Y":Ljava/math/BigInteger;
    .end local v10    # "p":Ljava/math/BigInteger;
    .end local v11    # "C":Ljava/math/BigInteger;
    .end local v12    # "constA32":Ljava/math/BigInteger;
    .end local v14    # "q":Ljava/math/BigInteger;
    .end local v15    # "c":J
    .end local v17    # "x0":J
    .end local p3    # "qp":[Ljava/math/BigInteger;
    .end local p4    # "tp":I
    .local v1, "x0":J
    .restart local v3    # "c":J
    :cond_7
    move-wide/from16 v19, v1

    move-wide v15, v3

    move-object/from16 v3, p0

    .line 379
    .end local v1    # "x0":J
    .end local v3    # "c":J
    .restart local v15    # "c":J
    .local v19, "x0":J
    :goto_6
    iget-object v1, v3, Lorg/bouncycastle/crypto/generators/GOST3410ParametersGenerator;->init_random:Ljava/security/SecureRandom;

    invoke-virtual {v1}, Ljava/security/SecureRandom;->nextInt()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    const/4 v2, 0x1

    add-int/2addr v1, v2

    int-to-long v1, v1

    move-wide v3, v1

    move-wide/from16 v1, v19

    .end local v15    # "c":J
    .local v1, "c":J
    goto/16 :goto_1

    .line 372
    .end local v19    # "x0":J
    .local v1, "x0":J
    .local p3, "c":J
    :cond_8
    move-object/from16 v3, p0

    move-wide/from16 v19, v1

    .line 374
    .end local v1    # "x0":J
    .restart local v19    # "x0":J
    :goto_7
    iget-object v1, v3, Lorg/bouncycastle/crypto/generators/GOST3410ParametersGenerator;->init_random:Ljava/security/SecureRandom;

    invoke-virtual {v1}, Ljava/security/SecureRandom;->nextInt()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    int-to-long v1, v1

    .end local v19    # "x0":J
    .restart local v1    # "x0":J
    goto/16 :goto_0
.end method

.method private procedure_C(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .locals 6
    .param p1, "p"    # Ljava/math/BigInteger;
    .param p2, "q"    # Ljava/math/BigInteger;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "p",
            "q"
        }
    .end annotation

    .line 464
    sget-object v0, Lorg/bouncycastle/crypto/generators/GOST3410ParametersGenerator;->ONE:Ljava/math/BigInteger;

    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    .line 465
    .local v0, "pSub1":Ljava/math/BigInteger;
    invoke-virtual {v0, p2}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    .line 466
    .local v1, "pSub1DivQ":Ljava/math/BigInteger;
    invoke-virtual {p1}, Ljava/math/BigInteger;->bitLength()I

    move-result v2

    .line 470
    .local v2, "length":I
    :goto_0
    iget-object v3, p0, Lorg/bouncycastle/crypto/generators/GOST3410ParametersGenerator;->init_random:Ljava/security/SecureRandom;

    invoke-static {v2, v3}, Lorg/bouncycastle/util/BigIntegers;->createRandomBigInteger(ILjava/security/SecureRandom;)Ljava/math/BigInteger;

    move-result-object v3

    .line 473
    .local v3, "d":Ljava/math/BigInteger;
    sget-object v4, Lorg/bouncycastle/crypto/generators/GOST3410ParametersGenerator;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v4

    if-lez v4, :cond_0

    invoke-virtual {v3, v0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v4

    if-gez v4, :cond_0

    .line 475
    invoke-virtual {v3, v1, p1}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    .line 477
    .local v4, "a":Ljava/math/BigInteger;
    sget-object v5, Lorg/bouncycastle/crypto/generators/GOST3410ParametersGenerator;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v4, v5}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v5

    if-eqz v5, :cond_0

    .line 479
    return-object v4

    .line 482
    .end local v3    # "d":Ljava/math/BigInteger;
    .end local v4    # "a":Ljava/math/BigInteger;
    :cond_0
    goto :goto_0
.end method


# virtual methods
.method public generateParameters()Lorg/bouncycastle/crypto/params/GOST3410Parameters;
    .locals 14

    .line 493
    const/4 v0, 0x2

    new-array v6, v0, [Ljava/math/BigInteger;

    .line 494
    .local v6, "pq":[Ljava/math/BigInteger;
    const/4 v0, 0x0

    .local v0, "q":Ljava/math/BigInteger;
    const/4 v8, 0x0

    .local v8, "p":Ljava/math/BigInteger;
    const/4 v9, 0x0

    .line 499
    .local v9, "a":Ljava/math/BigInteger;
    iget v1, p0, Lorg/bouncycastle/crypto/generators/GOST3410ParametersGenerator;->typeproc:I

    const/4 v10, 0x0

    const-string v2, "Ooops! key size 512 or 1024 bit."

    const/4 v11, 0x1

    if-ne v1, v11, :cond_0

    .line 501
    iget-object v1, p0, Lorg/bouncycastle/crypto/generators/GOST3410ParametersGenerator;->init_random:Ljava/security/SecureRandom;

    invoke-virtual {v1}, Ljava/security/SecureRandom;->nextInt()I

    move-result v1

    .line 502
    .local v1, "x0":I
    iget-object v3, p0, Lorg/bouncycastle/crypto/generators/GOST3410ParametersGenerator;->init_random:Ljava/security/SecureRandom;

    invoke-virtual {v3}, Ljava/security/SecureRandom;->nextInt()I

    move-result v3

    .line 504
    .local v3, "c":I
    iget v4, p0, Lorg/bouncycastle/crypto/generators/GOST3410ParametersGenerator;->size:I

    sparse-switch v4, :sswitch_data_0

    .line 513
    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-direct {v4, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 510
    :sswitch_0
    invoke-direct {p0, v1, v3, v6}, Lorg/bouncycastle/crypto/generators/GOST3410ParametersGenerator;->procedure_B(II[Ljava/math/BigInteger;)V

    .line 511
    goto :goto_0

    .line 507
    :sswitch_1
    const/16 v2, 0x200

    invoke-direct {p0, v1, v3, v6, v2}, Lorg/bouncycastle/crypto/generators/GOST3410ParametersGenerator;->procedure_A(II[Ljava/math/BigInteger;I)I

    .line 508
    nop

    .line 515
    :goto_0
    aget-object v2, v6, v10

    .end local v8    # "p":Ljava/math/BigInteger;
    .local v2, "p":Ljava/math/BigInteger;
    aget-object v0, v6, v11

    .line 516
    invoke-direct {p0, v2, v0}, Lorg/bouncycastle/crypto/generators/GOST3410ParametersGenerator;->procedure_C(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    .line 519
    .end local v9    # "a":Ljava/math/BigInteger;
    .local v4, "a":Ljava/math/BigInteger;
    new-instance v5, Lorg/bouncycastle/crypto/params/GOST3410Parameters;

    new-instance v7, Lorg/bouncycastle/crypto/params/GOST3410ValidationParameters;

    invoke-direct {v7, v1, v3}, Lorg/bouncycastle/crypto/params/GOST3410ValidationParameters;-><init>(II)V

    invoke-direct {v5, v2, v0, v4, v7}, Lorg/bouncycastle/crypto/params/GOST3410Parameters;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Lorg/bouncycastle/crypto/params/GOST3410ValidationParameters;)V

    return-object v5

    .line 523
    .end local v1    # "x0":I
    .end local v2    # "p":Ljava/math/BigInteger;
    .end local v3    # "c":I
    .end local v4    # "a":Ljava/math/BigInteger;
    .restart local v8    # "p":Ljava/math/BigInteger;
    .restart local v9    # "a":Ljava/math/BigInteger;
    :cond_0
    iget-object v1, p0, Lorg/bouncycastle/crypto/generators/GOST3410ParametersGenerator;->init_random:Ljava/security/SecureRandom;

    invoke-virtual {v1}, Ljava/security/SecureRandom;->nextLong()J

    move-result-wide v3

    .line 524
    .local v3, "x0L":J
    iget-object v1, p0, Lorg/bouncycastle/crypto/generators/GOST3410ParametersGenerator;->init_random:Ljava/security/SecureRandom;

    invoke-virtual {v1}, Ljava/security/SecureRandom;->nextLong()J

    move-result-wide v12

    .line 526
    .local v12, "cL":J
    iget v1, p0, Lorg/bouncycastle/crypto/generators/GOST3410ParametersGenerator;->size:I

    sparse-switch v1, :sswitch_data_1

    .line 535
    move-object v1, p0

    new-instance v5, Ljava/lang/IllegalStateException;

    invoke-direct {v5, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 532
    :sswitch_2
    move-object v1, p0

    move-wide v2, v3

    move-wide v4, v12

    .end local v3    # "x0L":J
    .end local v12    # "cL":J
    .local v2, "x0L":J
    .local v4, "cL":J
    invoke-direct/range {v1 .. v6}, Lorg/bouncycastle/crypto/generators/GOST3410ParametersGenerator;->procedure_Bb(JJ[Ljava/math/BigInteger;)V

    .line 533
    move-wide v3, v2

    goto :goto_1

    .line 529
    .end local v2    # "x0L":J
    .end local v4    # "cL":J
    .restart local v3    # "x0L":J
    .restart local v12    # "cL":J
    :sswitch_3
    move-wide v2, v3

    move-wide v4, v12

    .end local v3    # "x0L":J
    .end local v12    # "cL":J
    .restart local v2    # "x0L":J
    .restart local v4    # "cL":J
    const/16 v7, 0x200

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lorg/bouncycastle/crypto/generators/GOST3410ParametersGenerator;->procedure_Aa(JJ[Ljava/math/BigInteger;I)J

    .line 530
    move-wide v3, v2

    .line 537
    .end local v2    # "x0L":J
    .end local v4    # "cL":J
    .restart local v3    # "x0L":J
    .restart local v12    # "cL":J
    :goto_1
    aget-object v2, v6, v10

    .end local v8    # "p":Ljava/math/BigInteger;
    .local v2, "p":Ljava/math/BigInteger;
    aget-object v0, v6, v11

    .line 538
    invoke-direct {p0, v2, v0}, Lorg/bouncycastle/crypto/generators/GOST3410ParametersGenerator;->procedure_C(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v5

    .line 541
    .end local v9    # "a":Ljava/math/BigInteger;
    .local v5, "a":Ljava/math/BigInteger;
    new-instance v7, Lorg/bouncycastle/crypto/params/GOST3410Parameters;

    new-instance v8, Lorg/bouncycastle/crypto/params/GOST3410ValidationParameters;

    invoke-direct {v8, v3, v4, v12, v13}, Lorg/bouncycastle/crypto/params/GOST3410ValidationParameters;-><init>(JJ)V

    invoke-direct {v7, v2, v0, v5, v8}, Lorg/bouncycastle/crypto/params/GOST3410Parameters;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Lorg/bouncycastle/crypto/params/GOST3410ValidationParameters;)V

    return-object v7

    :sswitch_data_0
    .sparse-switch
        0x200 -> :sswitch_1
        0x400 -> :sswitch_0
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x200 -> :sswitch_3
        0x400 -> :sswitch_2
    .end sparse-switch
.end method

.method public init(IILjava/security/SecureRandom;)V
    .locals 0
    .param p1, "size"    # I
    .param p2, "typeproc"    # I
    .param p3, "random"    # Ljava/security/SecureRandom;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "size",
            "typeproc",
            "random"
        }
    .end annotation

    .line 34
    iput p1, p0, Lorg/bouncycastle/crypto/generators/GOST3410ParametersGenerator;->size:I

    .line 35
    iput p2, p0, Lorg/bouncycastle/crypto/generators/GOST3410ParametersGenerator;->typeproc:I

    .line 36
    iput-object p3, p0, Lorg/bouncycastle/crypto/generators/GOST3410ParametersGenerator;->init_random:Ljava/security/SecureRandom;

    .line 37
    return-void
.end method
