.class public Lorg/bouncycastle/crypto/generators/NaccacheSternKeyPairGenerator;
.super Ljava/lang/Object;
.source "NaccacheSternKeyPairGenerator.java"

# interfaces
.implements Lorg/bouncycastle/crypto/AsymmetricCipherKeyPairGenerator;


# static fields
.field private static final ONE:Ljava/math/BigInteger;

.field private static smallPrimes:[I


# instance fields
.field private param:Lorg/bouncycastle/crypto/params/NaccacheSternKeyGenerationParameters;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 27
    const/16 v0, 0x65

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lorg/bouncycastle/crypto/generators/NaccacheSternKeyPairGenerator;->smallPrimes:[I

    .line 40
    const-wide/16 v0, 0x1

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/crypto/generators/NaccacheSternKeyPairGenerator;->ONE:Ljava/math/BigInteger;

    return-void

    :array_0
    .array-data 4
        0x3
        0x5
        0x7
        0xb
        0xd
        0x11
        0x13
        0x17
        0x1d
        0x1f
        0x25
        0x29
        0x2b
        0x2f
        0x35
        0x3b
        0x3d
        0x43
        0x47
        0x49
        0x4f
        0x53
        0x59
        0x61
        0x65
        0x67
        0x6b
        0x6d
        0x71
        0x7f
        0x83
        0x89
        0x8b
        0x95
        0x97
        0x9d
        0xa3
        0xa7
        0xad
        0xb3
        0xb5
        0xbf
        0xc1
        0xc5
        0xc7
        0xd3
        0xdf
        0xe3
        0xe5
        0xe9
        0xef
        0xf1
        0xfb
        0x101
        0x107
        0x10d
        0x10f
        0x115
        0x119
        0x11b
        0x125
        0x133
        0x137
        0x139
        0x13d
        0x14b
        0x151
        0x15b
        0x15d
        0x161
        0x167
        0x16f
        0x175
        0x17b
        0x17f
        0x185
        0x18d
        0x191
        0x199
        0x1a3
        0x1a5
        0x1af
        0x1b1
        0x1b7
        0x1bb
        0x1c1
        0x1c9
        0x1cd
        0x1cf
        0x1d3
        0x1df
        0x1e7
        0x1eb
        0x1f3
        0x1f7
        0x1fd
        0x209
        0x20b
        0x21d
        0x223
        0x22d
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static findFirstPrimes(I)Ljava/util/Vector;
    .locals 4
    .param p0, "count"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "count"
        }
    .end annotation

    .line 377
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0, p0}, Ljava/util/Vector;-><init>(I)V

    .line 379
    .local v0, "primes":Ljava/util/Vector;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-eq v1, p0, :cond_0

    .line 381
    sget-object v2, Lorg/bouncycastle/crypto/generators/NaccacheSternKeyPairGenerator;->smallPrimes:[I

    aget v2, v2, v1

    int-to-long v2, v2

    invoke-static {v2, v3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 379
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 384
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method

.method private static generatePrime(IILjava/security/SecureRandom;)Ljava/math/BigInteger;
    .locals 2
    .param p0, "bitLength"    # I
    .param p1, "certainty"    # I
    .param p2, "rand"    # Ljava/security/SecureRandom;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "bitLength",
            "certainty",
            "rand"
        }
    .end annotation

    .line 309
    invoke-static {p0, p1, p2}, Lorg/bouncycastle/util/BigIntegers;->createRandomPrime(IILjava/security/SecureRandom;)Ljava/math/BigInteger;

    move-result-object v0

    .line 310
    .local v0, "p_":Ljava/math/BigInteger;
    :goto_0
    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result v1

    if-eq v1, p0, :cond_0

    .line 312
    invoke-static {p0, p1, p2}, Lorg/bouncycastle/util/BigIntegers;->createRandomPrime(IILjava/security/SecureRandom;)Ljava/math/BigInteger;

    move-result-object v0

    goto :goto_0

    .line 314
    :cond_0
    return-object v0
.end method

.method private static getInt(Ljava/security/SecureRandom;I)I
    .locals 5
    .param p0, "rand"    # Ljava/security/SecureRandom;
    .param p1, "n"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "rand",
            "n"
        }
    .end annotation

    .line 351
    neg-int v0, p1

    and-int/2addr v0, p1

    const v1, 0x7fffffff

    if-ne v0, p1, :cond_0

    .line 353
    int-to-long v2, p1

    invoke-virtual {p0}, Ljava/security/SecureRandom;->nextInt()I

    move-result v0

    and-int/2addr v0, v1

    int-to-long v0, v0

    mul-long v2, v2, v0

    const/16 v0, 0x1f

    shr-long v0, v2, v0

    long-to-int v1, v0

    return v1

    .line 359
    :cond_0
    invoke-virtual {p0}, Ljava/security/SecureRandom;->nextInt()I

    move-result v0

    and-int/2addr v0, v1

    .line 360
    .local v0, "bits":I
    rem-int v2, v0, p1

    .line 362
    .local v2, "val":I
    sub-int v3, v0, v2

    add-int/lit8 v4, p1, -0x1

    add-int/2addr v3, v4

    if-ltz v3, :cond_0

    .line 364
    return v2
.end method

.method private static permuteList(Ljava/util/Vector;Ljava/security/SecureRandom;)Ljava/util/Vector;
    .locals 5
    .param p0, "arr"    # Ljava/util/Vector;
    .param p1, "rand"    # Ljava/security/SecureRandom;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "arr",
            "rand"
        }
    .end annotation

    .line 331
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    .line 332
    .local v0, "retval":Ljava/util/Vector;
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    .line 333
    .local v1, "tmp":Ljava/util/Vector;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/util/Vector;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 335
    invoke-virtual {p0, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 333
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 337
    .end local v2    # "i":I
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 338
    invoke-virtual {v1, v2}, Ljava/util/Vector;->removeElementAt(I)V

    .line 339
    :goto_1
    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v3

    if-eqz v3, :cond_1

    .line 341
    invoke-virtual {v1, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-static {p1, v4}, Lorg/bouncycastle/crypto/generators/NaccacheSternKeyPairGenerator;->getInt(Ljava/security/SecureRandom;I)I

    move-result v4

    invoke-virtual {v0, v3, v4}, Ljava/util/Vector;->insertElementAt(Ljava/lang/Object;I)V

    .line 342
    invoke-virtual {v1, v2}, Ljava/util/Vector;->removeElementAt(I)V

    goto :goto_1

    .line 344
    :cond_1
    return-object v0
.end method


# virtual methods
.method public generateKeyPair()Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;
    .locals 34

    .line 62
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/bouncycastle/crypto/generators/NaccacheSternKeyPairGenerator;->param:Lorg/bouncycastle/crypto/params/NaccacheSternKeyGenerationParameters;

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/params/NaccacheSternKeyGenerationParameters;->getStrength()I

    move-result v1

    .line 63
    .local v1, "strength":I
    iget-object v2, v0, Lorg/bouncycastle/crypto/generators/NaccacheSternKeyPairGenerator;->param:Lorg/bouncycastle/crypto/params/NaccacheSternKeyGenerationParameters;

    invoke-virtual {v2}, Lorg/bouncycastle/crypto/params/NaccacheSternKeyGenerationParameters;->getRandom()Ljava/security/SecureRandom;

    move-result-object v2

    .line 64
    .local v2, "rand":Ljava/security/SecureRandom;
    iget-object v3, v0, Lorg/bouncycastle/crypto/generators/NaccacheSternKeyPairGenerator;->param:Lorg/bouncycastle/crypto/params/NaccacheSternKeyGenerationParameters;

    invoke-virtual {v3}, Lorg/bouncycastle/crypto/params/NaccacheSternKeyGenerationParameters;->getCertainty()I

    move-result v3

    .line 65
    .local v3, "certainty":I
    iget-object v4, v0, Lorg/bouncycastle/crypto/generators/NaccacheSternKeyPairGenerator;->param:Lorg/bouncycastle/crypto/params/NaccacheSternKeyGenerationParameters;

    invoke-virtual {v4}, Lorg/bouncycastle/crypto/params/NaccacheSternKeyGenerationParameters;->isDebug()Z

    move-result v4

    .line 67
    .local v4, "debug":Z
    if-eqz v4, :cond_0

    .line 70
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    iget-object v6, v0, Lorg/bouncycastle/crypto/generators/NaccacheSternKeyPairGenerator;->param:Lorg/bouncycastle/crypto/params/NaccacheSternKeyGenerationParameters;

    invoke-virtual {v6}, Lorg/bouncycastle/crypto/params/NaccacheSternKeyGenerationParameters;->getCntSmallPrimes()I

    move-result v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Fetching first "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " primes."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 73
    :cond_0
    iget-object v5, v0, Lorg/bouncycastle/crypto/generators/NaccacheSternKeyPairGenerator;->param:Lorg/bouncycastle/crypto/params/NaccacheSternKeyGenerationParameters;

    invoke-virtual {v5}, Lorg/bouncycastle/crypto/params/NaccacheSternKeyGenerationParameters;->getCntSmallPrimes()I

    move-result v5

    invoke-static {v5}, Lorg/bouncycastle/crypto/generators/NaccacheSternKeyPairGenerator;->findFirstPrimes(I)Ljava/util/Vector;

    move-result-object v5

    .line 74
    .local v5, "smallPrimes":Ljava/util/Vector;
    invoke-static {v5, v2}, Lorg/bouncycastle/crypto/generators/NaccacheSternKeyPairGenerator;->permuteList(Ljava/util/Vector;Ljava/security/SecureRandom;)Ljava/util/Vector;

    move-result-object v10

    .line 76
    .end local v5    # "smallPrimes":Ljava/util/Vector;
    .local v10, "smallPrimes":Ljava/util/Vector;
    sget-object v5, Lorg/bouncycastle/crypto/generators/NaccacheSternKeyPairGenerator;->ONE:Ljava/math/BigInteger;

    .line 77
    .local v5, "u":Ljava/math/BigInteger;
    sget-object v6, Lorg/bouncycastle/crypto/generators/NaccacheSternKeyPairGenerator;->ONE:Ljava/math/BigInteger;

    .line 79
    .local v6, "v":Ljava/math/BigInteger;
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    invoke-virtual {v10}, Ljava/util/Vector;->size()I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    if-ge v7, v8, :cond_1

    .line 81
    invoke-virtual {v10, v7}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/math/BigInteger;

    invoke-virtual {v5, v8}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v5

    .line 79
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 83
    .end local v7    # "i":I
    :cond_1
    invoke-virtual {v10}, Ljava/util/Vector;->size()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    move-object v12, v6

    .end local v6    # "v":Ljava/math/BigInteger;
    .restart local v7    # "i":I
    .local v12, "v":Ljava/math/BigInteger;
    :goto_1
    invoke-virtual {v10}, Ljava/util/Vector;->size()I

    move-result v6

    if-ge v7, v6, :cond_2

    .line 85
    invoke-virtual {v10, v7}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/math/BigInteger;

    invoke-virtual {v12, v6}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v12

    .line 83
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 88
    .end local v7    # "i":I
    :cond_2
    invoke-virtual {v5, v12}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v13

    .line 96
    .local v13, "sigma":Ljava/math/BigInteger;
    invoke-virtual {v13}, Ljava/math/BigInteger;->bitLength()I

    move-result v6

    sub-int v6, v1, v6

    add-int/lit8 v14, v6, -0x30

    .line 97
    .local v14, "remainingStrength":I
    div-int/lit8 v6, v14, 0x2

    const/4 v7, 0x1

    add-int/2addr v6, v7

    invoke-static {v6, v3, v2}, Lorg/bouncycastle/crypto/generators/NaccacheSternKeyPairGenerator;->generatePrime(IILjava/security/SecureRandom;)Ljava/math/BigInteger;

    move-result-object v15

    .line 98
    .local v15, "a":Ljava/math/BigInteger;
    div-int/lit8 v6, v14, 0x2

    add-int/2addr v6, v7

    invoke-static {v6, v3, v2}, Lorg/bouncycastle/crypto/generators/NaccacheSternKeyPairGenerator;->generatePrime(IILjava/security/SecureRandom;)Ljava/math/BigInteger;

    move-result-object v6

    .line 104
    .local v6, "b":Ljava/math/BigInteger;
    const-wide/16 v8, 0x0

    .line 105
    .local v8, "tries":J
    if-eqz v4, :cond_3

    .line 108
    sget-object v11, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v7, "generating p and q"

    invoke-virtual {v11, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 111
    :cond_3
    invoke-virtual {v15, v5}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v7

    const/4 v11, 0x1

    invoke-virtual {v7, v11}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v7

    .line 112
    .local v7, "_2au":Ljava/math/BigInteger;
    invoke-virtual {v6, v12}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v0

    .line 117
    .local v0, "_2bv":Ljava/math/BigInteger;
    :goto_2
    const-wide/16 v16, 0x1

    add-long v8, v8, v16

    .line 119
    const/16 v11, 0x18

    move/from16 v18, v4

    .end local v4    # "debug":Z
    .local v18, "debug":Z
    invoke-static {v11, v3, v2}, Lorg/bouncycastle/crypto/generators/NaccacheSternKeyPairGenerator;->generatePrime(IILjava/security/SecureRandom;)Ljava/math/BigInteger;

    move-result-object v4

    .line 121
    .local v4, "p_":Ljava/math/BigInteger;
    invoke-virtual {v4, v7}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v11

    move-object/from16 v20, v5

    .end local v5    # "u":Ljava/math/BigInteger;
    .local v20, "u":Ljava/math/BigInteger;
    sget-object v5, Lorg/bouncycastle/crypto/generators/NaccacheSternKeyPairGenerator;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v11, v5}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v5

    .line 123
    .local v5, "p":Ljava/math/BigInteger;
    invoke-virtual {v5, v3}, Ljava/math/BigInteger;->isProbablePrime(I)Z

    move-result v11

    if-nez v11, :cond_4

    .line 125
    move-object/from16 v22, v0

    move-object/from16 v30, v2

    move/from16 v31, v3

    move-object v3, v6

    move-object/from16 v23, v7

    move-wide/from16 v26, v8

    move-object/from16 v32, v10

    move-object/from16 v19, v12

    move-object/from16 v33, v13

    move/from16 v24, v14

    goto/16 :goto_e

    .line 130
    :cond_4
    :goto_3
    move-object/from16 v19, v12

    const/16 v11, 0x18

    .end local v12    # "v":Ljava/math/BigInteger;
    .local v19, "v":Ljava/math/BigInteger;
    invoke-static {v11, v3, v2}, Lorg/bouncycastle/crypto/generators/NaccacheSternKeyPairGenerator;->generatePrime(IILjava/security/SecureRandom;)Ljava/math/BigInteger;

    move-result-object v12

    .line 132
    .local v12, "q_":Ljava/math/BigInteger;
    invoke-virtual {v4, v12}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_5

    .line 134
    move-object/from16 v12, v19

    goto :goto_3

    .line 137
    :cond_5
    invoke-virtual {v12, v0}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v11

    move-object/from16 v22, v0

    .end local v0    # "_2bv":Ljava/math/BigInteger;
    .local v22, "_2bv":Ljava/math/BigInteger;
    sget-object v0, Lorg/bouncycastle/crypto/generators/NaccacheSternKeyPairGenerator;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v11, v0}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    .line 139
    .local v0, "q":Ljava/math/BigInteger;
    invoke-virtual {v0, v3}, Ljava/math/BigInteger;->isProbablePrime(I)Z

    move-result v11

    if-eqz v11, :cond_1d

    .line 141
    nop

    .line 145
    invoke-virtual {v4, v12}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v11

    invoke-static {v11, v13}, Lorg/bouncycastle/util/BigIntegers;->modOddIsCoprime(Ljava/math/BigInteger;Ljava/math/BigInteger;)Z

    move-result v11

    if-nez v11, :cond_6

    .line 149
    move-object/from16 v30, v2

    move/from16 v31, v3

    move-object v3, v6

    move-object/from16 v23, v7

    move-wide/from16 v26, v8

    move-object/from16 v32, v10

    move-object/from16 v33, v13

    move/from16 v24, v14

    goto/16 :goto_e

    .line 152
    :cond_6
    invoke-virtual {v5, v0}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v11

    .line 153
    .local v11, "n":Ljava/math/BigInteger;
    move-object/from16 v23, v7

    .end local v7    # "_2au":Ljava/math/BigInteger;
    .local v23, "_2au":Ljava/math/BigInteger;
    invoke-virtual {v11}, Ljava/math/BigInteger;->bitLength()I

    move-result v7

    if-lt v7, v1, :cond_1b

    .line 155
    nop

    .line 166
    const-string v7, "needed "

    if-eqz v18, :cond_7

    .line 169
    move/from16 v24, v14

    .end local v14    # "remainingStrength":I
    .local v24, "remainingStrength":I
    sget-object v14, Ljava/lang/System;->out:Ljava/io/PrintStream;

    move-object/from16 v25, v6

    .end local v6    # "b":Ljava/math/BigInteger;
    .local v25, "b":Ljava/math/BigInteger;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    move-wide/from16 v26, v8

    .end local v8    # "tries":J
    .local v26, "tries":J
    const-string v8, " tries to generate p and q."

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v14, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_4

    .line 166
    .end local v24    # "remainingStrength":I
    .end local v25    # "b":Ljava/math/BigInteger;
    .end local v26    # "tries":J
    .restart local v6    # "b":Ljava/math/BigInteger;
    .restart local v8    # "tries":J
    .restart local v14    # "remainingStrength":I
    :cond_7
    move-object/from16 v25, v6

    move-wide/from16 v26, v8

    move/from16 v24, v14

    .line 172
    .end local v6    # "b":Ljava/math/BigInteger;
    .end local v8    # "tries":J
    .end local v14    # "remainingStrength":I
    .restart local v24    # "remainingStrength":I
    .restart local v25    # "b":Ljava/math/BigInteger;
    .restart local v26    # "tries":J
    :goto_4
    sget-object v6, Lorg/bouncycastle/crypto/generators/NaccacheSternKeyPairGenerator;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v5, v6}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v6

    sget-object v8, Lorg/bouncycastle/crypto/generators/NaccacheSternKeyPairGenerator;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v0, v8}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v6

    .line 174
    .local v6, "phi_n":Ljava/math/BigInteger;
    const-wide/16 v8, 0x0

    .line 175
    .end local v26    # "tries":J
    .restart local v8    # "tries":J
    if-eqz v18, :cond_8

    .line 178
    sget-object v14, Ljava/lang/System;->out:Ljava/io/PrintStream;

    move-wide/from16 v26, v8

    .end local v8    # "tries":J
    .restart local v26    # "tries":J
    const-string v8, "generating g"

    invoke-virtual {v14, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_5

    .line 175
    .end local v26    # "tries":J
    .restart local v8    # "tries":J
    :cond_8
    move-wide/from16 v26, v8

    .line 183
    .end local v8    # "tries":J
    .restart local v26    # "tries":J
    :goto_5
    move-wide/from16 v8, v26

    .end local v26    # "tries":J
    .restart local v8    # "tries":J
    :goto_6
    new-instance v14, Ljava/util/Vector;

    invoke-direct {v14}, Ljava/util/Vector;-><init>()V

    .line 184
    .local v14, "gParts":Ljava/util/Vector;
    const/16 v21, 0x0

    move-object/from16 v28, v0

    move/from16 v0, v21

    .local v0, "ind":I
    .local v28, "q":Ljava/math/BigInteger;
    :goto_7
    move-object/from16 v29, v5

    .end local v5    # "p":Ljava/math/BigInteger;
    .local v29, "p":Ljava/math/BigInteger;
    invoke-virtual {v10}, Ljava/util/Vector;->size()I

    move-result v5

    if-eq v0, v5, :cond_a

    .line 186
    invoke-virtual {v10, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/math/BigInteger;

    .line 187
    .local v5, "i":Ljava/math/BigInteger;
    move/from16 v21, v0

    .end local v0    # "ind":I
    .local v21, "ind":I
    invoke-virtual {v6, v5}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    .line 191
    .local v0, "e":Ljava/math/BigInteger;
    :goto_8
    add-long v8, v8, v16

    .line 192
    move-object/from16 v26, v5

    .end local v5    # "i":Ljava/math/BigInteger;
    .local v26, "i":Ljava/math/BigInteger;
    invoke-static {v1, v3, v2}, Lorg/bouncycastle/util/BigIntegers;->createRandomPrime(IILjava/security/SecureRandom;)Ljava/math/BigInteger;

    move-result-object v5

    .line 193
    .local v5, "g":Ljava/math/BigInteger;
    move-object/from16 v30, v2

    .end local v2    # "rand":Ljava/security/SecureRandom;
    .local v30, "rand":Ljava/security/SecureRandom;
    invoke-virtual {v5, v0, v11}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    move-object/from16 v27, v0

    .end local v0    # "e":Ljava/math/BigInteger;
    .local v27, "e":Ljava/math/BigInteger;
    sget-object v0, Lorg/bouncycastle/crypto/generators/NaccacheSternKeyPairGenerator;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v2, v0}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 195
    move-object/from16 v5, v26

    move-object/from16 v0, v27

    move-object/from16 v2, v30

    goto :goto_8

    .line 197
    :cond_9
    invoke-virtual {v14, v5}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 198
    nop

    .line 184
    .end local v26    # "i":Ljava/math/BigInteger;
    .end local v27    # "e":Ljava/math/BigInteger;
    add-int/lit8 v0, v21, 0x1

    move-object/from16 v5, v29

    move-object/from16 v2, v30

    .end local v21    # "ind":I
    .local v0, "ind":I
    goto :goto_7

    .end local v5    # "g":Ljava/math/BigInteger;
    .end local v30    # "rand":Ljava/security/SecureRandom;
    .restart local v2    # "rand":Ljava/security/SecureRandom;
    :cond_a
    move/from16 v21, v0

    move-object/from16 v30, v2

    .line 201
    .end local v0    # "ind":I
    .end local v2    # "rand":Ljava/security/SecureRandom;
    .restart local v30    # "rand":Ljava/security/SecureRandom;
    sget-object v0, Lorg/bouncycastle/crypto/generators/NaccacheSternKeyPairGenerator;->ONE:Ljava/math/BigInteger;

    .line 202
    .local v0, "g":Ljava/math/BigInteger;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_9
    invoke-virtual {v10}, Ljava/util/Vector;->size()I

    move-result v5

    if-ge v2, v5, :cond_b

    .line 204
    invoke-virtual {v14, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/math/BigInteger;

    invoke-virtual {v10, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v21

    move/from16 v26, v2

    .end local v2    # "i":I
    .local v26, "i":I
    move-object/from16 v2, v21

    check-cast v2, Ljava/math/BigInteger;

    invoke-virtual {v13, v2}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v5, v2, v11}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    .line 202
    add-int/lit8 v2, v26, 0x1

    .end local v26    # "i":I
    .restart local v2    # "i":I
    goto :goto_9

    :cond_b
    move/from16 v26, v2

    .line 208
    .end local v2    # "i":I
    const/4 v2, 0x0

    .line 209
    .local v2, "divisible":Z
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_a
    move/from16 v21, v2

    .end local v2    # "divisible":Z
    .local v21, "divisible":Z
    invoke-virtual {v10}, Ljava/util/Vector;->size()I

    move-result v2

    if-ge v5, v2, :cond_e

    .line 211
    invoke-virtual {v10, v5}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/math/BigInteger;

    invoke-virtual {v6, v2}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v0, v2, v11}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    move/from16 v31, v3

    .end local v3    # "certainty":I
    .local v31, "certainty":I
    sget-object v3, Lorg/bouncycastle/crypto/generators/NaccacheSternKeyPairGenerator;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 213
    if-eqz v18, :cond_c

    .line 216
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v10, v5}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    move/from16 v26, v5

    .end local v5    # "i":I
    .restart local v26    # "i":I
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v32, v10

    .end local v10    # "smallPrimes":Ljava/util/Vector;
    .local v32, "smallPrimes":Ljava/util/Vector;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v33, v13

    .end local v13    # "sigma":Ljava/math/BigInteger;
    .local v33, "sigma":Ljava/math/BigInteger;
    const-string v13, "g has order phi(n)/"

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v10, "\n g: "

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_b

    .line 213
    .end local v26    # "i":I
    .end local v32    # "smallPrimes":Ljava/util/Vector;
    .end local v33    # "sigma":Ljava/math/BigInteger;
    .restart local v5    # "i":I
    .restart local v10    # "smallPrimes":Ljava/util/Vector;
    .restart local v13    # "sigma":Ljava/math/BigInteger;
    :cond_c
    move/from16 v26, v5

    move-object/from16 v32, v10

    move-object/from16 v33, v13

    .line 218
    .end local v5    # "i":I
    .end local v10    # "smallPrimes":Ljava/util/Vector;
    .end local v13    # "sigma":Ljava/math/BigInteger;
    .restart local v26    # "i":I
    .restart local v32    # "smallPrimes":Ljava/util/Vector;
    .restart local v33    # "sigma":Ljava/math/BigInteger;
    :goto_b
    const/4 v2, 0x1

    .line 219
    .end local v21    # "divisible":Z
    .restart local v2    # "divisible":Z
    goto :goto_c

    .line 209
    .end local v2    # "divisible":Z
    .end local v26    # "i":I
    .end local v32    # "smallPrimes":Ljava/util/Vector;
    .end local v33    # "sigma":Ljava/math/BigInteger;
    .restart local v5    # "i":I
    .restart local v10    # "smallPrimes":Ljava/util/Vector;
    .restart local v13    # "sigma":Ljava/math/BigInteger;
    .restart local v21    # "divisible":Z
    :cond_d
    move/from16 v26, v5

    move-object/from16 v32, v10

    move-object/from16 v33, v13

    .end local v5    # "i":I
    .end local v10    # "smallPrimes":Ljava/util/Vector;
    .end local v13    # "sigma":Ljava/math/BigInteger;
    .restart local v26    # "i":I
    .restart local v32    # "smallPrimes":Ljava/util/Vector;
    .restart local v33    # "sigma":Ljava/math/BigInteger;
    add-int/lit8 v5, v26, 0x1

    move/from16 v2, v21

    move/from16 v3, v31

    .end local v26    # "i":I
    .restart local v5    # "i":I
    goto :goto_a

    .end local v31    # "certainty":I
    .end local v32    # "smallPrimes":Ljava/util/Vector;
    .end local v33    # "sigma":Ljava/math/BigInteger;
    .restart local v3    # "certainty":I
    .restart local v10    # "smallPrimes":Ljava/util/Vector;
    .restart local v13    # "sigma":Ljava/math/BigInteger;
    :cond_e
    move/from16 v31, v3

    move/from16 v26, v5

    move-object/from16 v32, v10

    move-object/from16 v33, v13

    .end local v3    # "certainty":I
    .end local v5    # "i":I
    .end local v10    # "smallPrimes":Ljava/util/Vector;
    .end local v13    # "sigma":Ljava/math/BigInteger;
    .restart local v26    # "i":I
    .restart local v31    # "certainty":I
    .restart local v32    # "smallPrimes":Ljava/util/Vector;
    .restart local v33    # "sigma":Ljava/math/BigInteger;
    move/from16 v2, v21

    .line 223
    .end local v21    # "divisible":Z
    .end local v26    # "i":I
    .restart local v2    # "divisible":Z
    :goto_c
    if-eqz v2, :cond_f

    .line 225
    move-object/from16 v3, v25

    goto/16 :goto_d

    .line 230
    :cond_f
    const-wide/16 v26, 0x4

    invoke-static/range {v26 .. v27}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v0, v3, v11}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    sget-object v5, Lorg/bouncycastle/crypto/generators/NaccacheSternKeyPairGenerator;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v3, v5}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 232
    if-eqz v18, :cond_10

    .line 235
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "g has order phi(n)/4\n g:"

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    move-object/from16 v3, v25

    goto/16 :goto_d

    .line 232
    :cond_10
    move-object/from16 v3, v25

    goto/16 :goto_d

    .line 240
    :cond_11
    invoke-virtual {v6, v4}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v0, v3, v11}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    sget-object v5, Lorg/bouncycastle/crypto/generators/NaccacheSternKeyPairGenerator;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v3, v5}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 242
    if-eqz v18, :cond_12

    .line 245
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "g has order phi(n)/p\'\n g: "

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    move-object/from16 v3, v25

    goto/16 :goto_d

    .line 242
    :cond_12
    move-object/from16 v3, v25

    goto/16 :goto_d

    .line 249
    :cond_13
    invoke-virtual {v6, v12}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v0, v3, v11}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    sget-object v5, Lorg/bouncycastle/crypto/generators/NaccacheSternKeyPairGenerator;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v3, v5}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 251
    if-eqz v18, :cond_14

    .line 254
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "g has order phi(n)/q\'\n g: "

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    move-object/from16 v3, v25

    goto/16 :goto_d

    .line 251
    :cond_14
    move-object/from16 v3, v25

    goto :goto_d

    .line 258
    :cond_15
    invoke-virtual {v6, v15}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v0, v3, v11}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    sget-object v5, Lorg/bouncycastle/crypto/generators/NaccacheSternKeyPairGenerator;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v3, v5}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_17

    .line 260
    if-eqz v18, :cond_16

    .line 263
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "g has order phi(n)/a\n g: "

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    move-object/from16 v3, v25

    goto :goto_d

    .line 260
    :cond_16
    move-object/from16 v3, v25

    goto :goto_d

    .line 267
    :cond_17
    move-object/from16 v3, v25

    .end local v25    # "b":Ljava/math/BigInteger;
    .local v3, "b":Ljava/math/BigInteger;
    invoke-virtual {v6, v3}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v0, v5, v11}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v5

    sget-object v10, Lorg/bouncycastle/crypto/generators/NaccacheSternKeyPairGenerator;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v5, v10}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_19

    .line 269
    if-eqz v18, :cond_18

    .line 272
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v21, v2

    .end local v2    # "divisible":Z
    .restart local v21    # "divisible":Z
    const-string v2, "g has order phi(n)/b\n g: "

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_d

    .line 269
    .end local v21    # "divisible":Z
    .restart local v2    # "divisible":Z
    :cond_18
    move/from16 v21, v2

    .line 183
    .end local v0    # "g":Ljava/math/BigInteger;
    .end local v2    # "divisible":Z
    .end local v3    # "b":Ljava/math/BigInteger;
    .end local v14    # "gParts":Ljava/util/Vector;
    .restart local v25    # "b":Ljava/math/BigInteger;
    :goto_d
    move-object/from16 v25, v3

    move-object/from16 v0, v28

    move-object/from16 v5, v29

    move-object/from16 v2, v30

    move/from16 v3, v31

    move-object/from16 v10, v32

    move-object/from16 v13, v33

    .end local v25    # "b":Ljava/math/BigInteger;
    .restart local v3    # "b":Ljava/math/BigInteger;
    goto/16 :goto_6

    .line 267
    .restart local v0    # "g":Ljava/math/BigInteger;
    .restart local v2    # "divisible":Z
    .restart local v14    # "gParts":Ljava/util/Vector;
    :cond_19
    move/from16 v21, v2

    .line 280
    .end local v2    # "divisible":Z
    .end local v14    # "gParts":Ljava/util/Vector;
    if-eqz v18, :cond_1a

    .line 282
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " tries to generate g"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 283
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v2}, Ljava/io/PrintStream;->println()V

    .line 284
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v5, "found new NaccacheStern cipher variables:"

    invoke-virtual {v2, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 285
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-static/range {v32 .. v32}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "smallPrimes: "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 286
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-static/range {v33 .. v33}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v33 .. v33}, Ljava/math/BigInteger;->bitLength()I

    move-result v7

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "sigma:...... "

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v10, " ("

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " bits)"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 287
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-static {v15}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "a:.......... "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 288
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "b:.......... "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 289
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "p\':......... "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 290
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "q\':......... "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 291
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-static/range {v29 .. v29}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "p:.......... "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 292
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-static/range {v28 .. v28}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "q:.......... "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 293
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "n:.......... "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 294
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "phi(n):..... "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 295
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "g:.......... "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 296
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v2}, Ljava/io/PrintStream;->println()V

    .line 299
    :cond_1a
    new-instance v2, Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;

    new-instance v5, Lorg/bouncycastle/crypto/params/NaccacheSternKeyParameters;

    .line 300
    invoke-virtual/range {v33 .. v33}, Ljava/math/BigInteger;->bitLength()I

    move-result v7

    const/4 v10, 0x0

    invoke-direct {v5, v10, v0, v11, v7}, Lorg/bouncycastle/crypto/params/NaccacheSternKeyParameters;-><init>(ZLjava/math/BigInteger;Ljava/math/BigInteger;I)V

    move-wide v9, v8

    move-object v8, v11

    move-object v11, v6

    .end local v6    # "phi_n":Ljava/math/BigInteger;
    .local v8, "n":Ljava/math/BigInteger;
    .local v9, "tries":J
    .local v11, "phi_n":Ljava/math/BigInteger;
    new-instance v6, Lorg/bouncycastle/crypto/params/NaccacheSternPrivateKeyParameters;

    .line 301
    move-wide v13, v9

    .end local v9    # "tries":J
    .local v13, "tries":J
    invoke-virtual/range {v33 .. v33}, Ljava/math/BigInteger;->bitLength()I

    move-result v9

    move-object v7, v0

    move-object/from16 v10, v32

    .end local v0    # "g":Ljava/math/BigInteger;
    .end local v32    # "smallPrimes":Ljava/util/Vector;
    .local v7, "g":Ljava/math/BigInteger;
    .restart local v10    # "smallPrimes":Ljava/util/Vector;
    invoke-direct/range {v6 .. v11}, Lorg/bouncycastle/crypto/params/NaccacheSternPrivateKeyParameters;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;ILjava/util/Vector;Ljava/math/BigInteger;)V

    .end local v10    # "smallPrimes":Ljava/util/Vector;
    .restart local v32    # "smallPrimes":Ljava/util/Vector;
    invoke-direct {v2, v5, v6}, Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;-><init>(Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;)V

    .line 299
    return-object v2

    .line 158
    .end local v7    # "g":Ljava/math/BigInteger;
    .end local v24    # "remainingStrength":I
    .end local v28    # "q":Ljava/math/BigInteger;
    .end local v29    # "p":Ljava/math/BigInteger;
    .end local v30    # "rand":Ljava/security/SecureRandom;
    .end local v31    # "certainty":I
    .end local v32    # "smallPrimes":Ljava/util/Vector;
    .end local v33    # "sigma":Ljava/math/BigInteger;
    .local v0, "q":Ljava/math/BigInteger;
    .local v2, "rand":Ljava/security/SecureRandom;
    .local v3, "certainty":I
    .local v5, "p":Ljava/math/BigInteger;
    .local v6, "b":Ljava/math/BigInteger;
    .local v8, "tries":J
    .restart local v10    # "smallPrimes":Ljava/util/Vector;
    .local v11, "n":Ljava/math/BigInteger;
    .local v13, "sigma":Ljava/math/BigInteger;
    .local v14, "remainingStrength":I
    :cond_1b
    move-object/from16 v28, v0

    move-object/from16 v30, v2

    move/from16 v31, v3

    move-object/from16 v29, v5

    move-object v3, v6

    move-wide/from16 v26, v8

    move-object/from16 v32, v10

    move-object v8, v11

    move-object/from16 v33, v13

    move/from16 v24, v14

    .end local v0    # "q":Ljava/math/BigInteger;
    .end local v2    # "rand":Ljava/security/SecureRandom;
    .end local v5    # "p":Ljava/math/BigInteger;
    .end local v6    # "b":Ljava/math/BigInteger;
    .end local v10    # "smallPrimes":Ljava/util/Vector;
    .end local v11    # "n":Ljava/math/BigInteger;
    .end local v13    # "sigma":Ljava/math/BigInteger;
    .end local v14    # "remainingStrength":I
    .local v3, "b":Ljava/math/BigInteger;
    .local v8, "n":Ljava/math/BigInteger;
    .restart local v24    # "remainingStrength":I
    .local v26, "tries":J
    .restart local v28    # "q":Ljava/math/BigInteger;
    .restart local v29    # "p":Ljava/math/BigInteger;
    .restart local v30    # "rand":Ljava/security/SecureRandom;
    .restart local v31    # "certainty":I
    .restart local v32    # "smallPrimes":Ljava/util/Vector;
    .restart local v33    # "sigma":Ljava/math/BigInteger;
    if-eqz v18, :cond_1c

    .line 161
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 162
    move-object/from16 v5, v28

    move-object/from16 v2, v29

    .end local v28    # "q":Ljava/math/BigInteger;
    .end local v29    # "p":Ljava/math/BigInteger;
    .local v2, "p":Ljava/math/BigInteger;
    .local v5, "q":Ljava/math/BigInteger;
    invoke-virtual {v2, v5}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v6}, Ljava/math/BigInteger;->bitLength()I

    move-result v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "key size too small. Should be "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, " but is actually "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 161
    invoke-virtual {v0, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_e

    .line 158
    .end local v2    # "p":Ljava/math/BigInteger;
    .end local v5    # "q":Ljava/math/BigInteger;
    .restart local v28    # "q":Ljava/math/BigInteger;
    .restart local v29    # "p":Ljava/math/BigInteger;
    :cond_1c
    move-object/from16 v5, v28

    move-object/from16 v2, v29

    .line 117
    .end local v4    # "p_":Ljava/math/BigInteger;
    .end local v19    # "v":Ljava/math/BigInteger;
    .end local v22    # "_2bv":Ljava/math/BigInteger;
    .end local v23    # "_2au":Ljava/math/BigInteger;
    .end local v24    # "remainingStrength":I
    .end local v26    # "tries":J
    .end local v28    # "q":Ljava/math/BigInteger;
    .end local v29    # "p":Ljava/math/BigInteger;
    .end local v30    # "rand":Ljava/security/SecureRandom;
    .end local v31    # "certainty":I
    .end local v32    # "smallPrimes":Ljava/util/Vector;
    .end local v33    # "sigma":Ljava/math/BigInteger;
    .local v0, "_2bv":Ljava/math/BigInteger;
    .local v2, "rand":Ljava/security/SecureRandom;
    .local v3, "certainty":I
    .restart local v6    # "b":Ljava/math/BigInteger;
    .local v7, "_2au":Ljava/math/BigInteger;
    .local v8, "tries":J
    .restart local v10    # "smallPrimes":Ljava/util/Vector;
    .local v12, "v":Ljava/math/BigInteger;
    .restart local v13    # "sigma":Ljava/math/BigInteger;
    .restart local v14    # "remainingStrength":I
    :goto_e
    move-object v6, v3

    move/from16 v4, v18

    move-object/from16 v12, v19

    move-object/from16 v5, v20

    move-object/from16 v0, v22

    move-object/from16 v7, v23

    move/from16 v14, v24

    move-wide/from16 v8, v26

    move-object/from16 v2, v30

    move/from16 v3, v31

    move-object/from16 v10, v32

    move-object/from16 v13, v33

    .end local v0    # "_2bv":Ljava/math/BigInteger;
    .end local v2    # "rand":Ljava/security/SecureRandom;
    .end local v6    # "b":Ljava/math/BigInteger;
    .end local v7    # "_2au":Ljava/math/BigInteger;
    .end local v8    # "tries":J
    .end local v10    # "smallPrimes":Ljava/util/Vector;
    .end local v12    # "v":Ljava/math/BigInteger;
    .end local v13    # "sigma":Ljava/math/BigInteger;
    .end local v14    # "remainingStrength":I
    .local v3, "b":Ljava/math/BigInteger;
    .restart local v19    # "v":Ljava/math/BigInteger;
    .restart local v22    # "_2bv":Ljava/math/BigInteger;
    .restart local v23    # "_2au":Ljava/math/BigInteger;
    .restart local v24    # "remainingStrength":I
    .restart local v26    # "tries":J
    .restart local v30    # "rand":Ljava/security/SecureRandom;
    .restart local v31    # "certainty":I
    .restart local v32    # "smallPrimes":Ljava/util/Vector;
    .restart local v33    # "sigma":Ljava/math/BigInteger;
    goto/16 :goto_2

    .line 139
    .end local v23    # "_2au":Ljava/math/BigInteger;
    .end local v24    # "remainingStrength":I
    .end local v26    # "tries":J
    .end local v30    # "rand":Ljava/security/SecureRandom;
    .end local v31    # "certainty":I
    .end local v32    # "smallPrimes":Ljava/util/Vector;
    .end local v33    # "sigma":Ljava/math/BigInteger;
    .local v0, "q":Ljava/math/BigInteger;
    .restart local v2    # "rand":Ljava/security/SecureRandom;
    .local v3, "certainty":I
    .restart local v4    # "p_":Ljava/math/BigInteger;
    .local v5, "p":Ljava/math/BigInteger;
    .restart local v6    # "b":Ljava/math/BigInteger;
    .restart local v7    # "_2au":Ljava/math/BigInteger;
    .restart local v8    # "tries":J
    .restart local v10    # "smallPrimes":Ljava/util/Vector;
    .local v12, "q_":Ljava/math/BigInteger;
    .restart local v13    # "sigma":Ljava/math/BigInteger;
    .restart local v14    # "remainingStrength":I
    :cond_1d
    move-object/from16 v30, v2

    move/from16 v31, v3

    move-object v2, v5

    move-object v3, v6

    move-object/from16 v23, v7

    move-wide/from16 v26, v8

    move-object/from16 v32, v10

    move-object/from16 v33, v13

    move/from16 v24, v14

    move-object v5, v0

    .end local v0    # "q":Ljava/math/BigInteger;
    .end local v6    # "b":Ljava/math/BigInteger;
    .end local v7    # "_2au":Ljava/math/BigInteger;
    .end local v8    # "tries":J
    .end local v10    # "smallPrimes":Ljava/util/Vector;
    .end local v13    # "sigma":Ljava/math/BigInteger;
    .end local v14    # "remainingStrength":I
    .local v2, "p":Ljava/math/BigInteger;
    .local v3, "b":Ljava/math/BigInteger;
    .local v5, "q":Ljava/math/BigInteger;
    .restart local v23    # "_2au":Ljava/math/BigInteger;
    .restart local v24    # "remainingStrength":I
    .restart local v26    # "tries":J
    .restart local v30    # "rand":Ljava/security/SecureRandom;
    .restart local v31    # "certainty":I
    .restart local v32    # "smallPrimes":Ljava/util/Vector;
    .restart local v33    # "sigma":Ljava/math/BigInteger;
    move-object v5, v2

    move-object/from16 v12, v19

    move-object/from16 v0, v22

    move-object/from16 v2, v30

    move/from16 v3, v31

    goto/16 :goto_3
.end method

.method public init(Lorg/bouncycastle/crypto/KeyGenerationParameters;)V
    .locals 4
    .param p1, "param"    # Lorg/bouncycastle/crypto/KeyGenerationParameters;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "param"
        }
    .end annotation

    .line 49
    move-object v0, p1

    check-cast v0, Lorg/bouncycastle/crypto/params/NaccacheSternKeyGenerationParameters;

    iput-object v0, p0, Lorg/bouncycastle/crypto/generators/NaccacheSternKeyPairGenerator;->param:Lorg/bouncycastle/crypto/params/NaccacheSternKeyGenerationParameters;

    .line 51
    new-instance v0, Lorg/bouncycastle/crypto/constraints/DefaultServiceProperties;

    .line 52
    invoke-virtual {p1}, Lorg/bouncycastle/crypto/KeyGenerationParameters;->getStrength()I

    move-result v1

    invoke-static {v1}, Lorg/bouncycastle/crypto/constraints/ConstraintUtils;->bitsOfSecurityForFF(I)I

    move-result v1

    sget-object v2, Lorg/bouncycastle/crypto/CryptoServicePurpose;->KEYGEN:Lorg/bouncycastle/crypto/CryptoServicePurpose;

    const-string v3, "NaccacheStern KeyGen"

    invoke-direct {v0, v3, v1, p1, v2}, Lorg/bouncycastle/crypto/constraints/DefaultServiceProperties;-><init>(Ljava/lang/String;ILjava/lang/Object;Lorg/bouncycastle/crypto/CryptoServicePurpose;)V

    .line 51
    invoke-static {v0}, Lorg/bouncycastle/crypto/CryptoServicesRegistrar;->checkConstraints(Lorg/bouncycastle/crypto/CryptoServiceProperties;)V

    .line 53
    return-void
.end method
