.class public Lorg/bouncycastle/crypto/generators/DSAParametersGenerator;
.super Ljava/lang/Object;
.source "DSAParametersGenerator.java"


# static fields
.field private static final ONE:Ljava/math/BigInteger;

.field private static final TWO:Ljava/math/BigInteger;

.field private static final ZERO:Ljava/math/BigInteger;


# instance fields
.field private L:I

.field private N:I

.field private certainty:I

.field private digest:Lorg/bouncycastle/crypto/Digest;

.field private iterations:I

.field private random:Ljava/security/SecureRandom;

.field private usageIndex:I

.field private use186_3:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 21
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/crypto/generators/DSAParametersGenerator;->ZERO:Ljava/math/BigInteger;

    .line 22
    const-wide/16 v0, 0x1

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/crypto/generators/DSAParametersGenerator;->ONE:Ljava/math/BigInteger;

    .line 23
    const-wide/16 v0, 0x2

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/crypto/generators/DSAParametersGenerator;->TWO:Ljava/math/BigInteger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 35
    invoke-static {}, Lorg/bouncycastle/crypto/util/DigestFactory;->createSHA1()Lorg/bouncycastle/crypto/Digest;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/generators/DSAParametersGenerator;-><init>(Lorg/bouncycastle/crypto/Digest;)V

    .line 36
    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/crypto/Digest;)V
    .locals 0
    .param p1, "digest"    # Lorg/bouncycastle/crypto/Digest;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "digest"
        }
    .end annotation

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lorg/bouncycastle/crypto/generators/DSAParametersGenerator;->digest:Lorg/bouncycastle/crypto/Digest;

    .line 41
    return-void
.end method

.method private static calculateGenerator_FIPS186_2(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/security/SecureRandom;)Ljava/math/BigInteger;
    .locals 6
    .param p0, "p"    # Ljava/math/BigInteger;
    .param p1, "q"    # Ljava/math/BigInteger;
    .param p2, "r"    # Ljava/security/SecureRandom;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "p",
            "q",
            "r"
        }
    .end annotation

    .line 203
    sget-object v0, Lorg/bouncycastle/crypto/generators/DSAParametersGenerator;->ONE:Ljava/math/BigInteger;

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    .line 204
    .local v0, "e":Ljava/math/BigInteger;
    sget-object v1, Lorg/bouncycastle/crypto/generators/DSAParametersGenerator;->TWO:Ljava/math/BigInteger;

    invoke-virtual {p0, v1}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    .line 208
    .local v1, "pSub2":Ljava/math/BigInteger;
    :goto_0
    sget-object v2, Lorg/bouncycastle/crypto/generators/DSAParametersGenerator;->TWO:Ljava/math/BigInteger;

    invoke-static {v2, v1, p2}, Lorg/bouncycastle/util/BigIntegers;->createRandomInRange(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/security/SecureRandom;)Ljava/math/BigInteger;

    move-result-object v2

    .line 209
    .local v2, "h":Ljava/math/BigInteger;
    invoke-virtual {v2, v0, p0}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    .line 210
    .local v3, "g":Ljava/math/BigInteger;
    invoke-virtual {v3}, Ljava/math/BigInteger;->bitLength()I

    move-result v4

    const/4 v5, 0x1

    if-le v4, v5, :cond_0

    .line 212
    return-object v3

    .line 214
    .end local v2    # "h":Ljava/math/BigInteger;
    .end local v3    # "g":Ljava/math/BigInteger;
    :cond_0
    goto :goto_0
.end method

.method private static calculateGenerator_FIPS186_3_Unverifiable(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/security/SecureRandom;)Ljava/math/BigInteger;
    .locals 1
    .param p0, "p"    # Ljava/math/BigInteger;
    .param p1, "q"    # Ljava/math/BigInteger;
    .param p2, "r"    # Ljava/security/SecureRandom;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "p",
            "q",
            "r"
        }
    .end annotation

    .line 347
    invoke-static {p0, p1, p2}, Lorg/bouncycastle/crypto/generators/DSAParametersGenerator;->calculateGenerator_FIPS186_2(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/security/SecureRandom;)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method private static calculateGenerator_FIPS186_3_Verifiable(Lorg/bouncycastle/crypto/Digest;Ljava/math/BigInteger;Ljava/math/BigInteger;[BI)Ljava/math/BigInteger;
    .locals 10
    .param p0, "d"    # Lorg/bouncycastle/crypto/Digest;
    .param p1, "p"    # Ljava/math/BigInteger;
    .param p2, "q"    # Ljava/math/BigInteger;
    .param p3, "seed"    # [B
    .param p4, "index"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "d",
            "p",
            "q",
            "seed",
            "index"
        }
    .end annotation

    .line 354
    sget-object v0, Lorg/bouncycastle/crypto/generators/DSAParametersGenerator;->ONE:Ljava/math/BigInteger;

    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    .line 355
    .local v0, "e":Ljava/math/BigInteger;
    const-string v1, "6767656E"

    invoke-static {v1}, Lorg/bouncycastle/util/encoders/Hex;->decodeStrict(Ljava/lang/String;)[B

    move-result-object v1

    .line 358
    .local v1, "ggen":[B
    array-length v2, p3

    array-length v3, v1

    add-int/2addr v2, v3

    const/4 v3, 0x1

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x2

    new-array v2, v2, [B

    .line 359
    .local v2, "U":[B
    array-length v4, p3

    const/4 v5, 0x0

    invoke-static {p3, v5, v2, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 360
    array-length v4, p3

    array-length v6, v1

    invoke-static {v1, v5, v2, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 361
    array-length v4, v2

    add-int/lit8 v4, v4, -0x3

    int-to-byte v6, p4

    aput-byte v6, v2, v4

    .line 363
    invoke-interface {p0}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v4

    new-array v4, v4, [B

    .line 364
    .local v4, "w":[B
    const/4 v6, 0x1

    .local v6, "count":I
    :goto_0
    const/high16 v7, 0x10000

    if-ge v6, v7, :cond_1

    .line 366
    invoke-static {v2}, Lorg/bouncycastle/crypto/generators/DSAParametersGenerator;->inc([B)V

    .line 367
    invoke-static {p0, v2, v4, v5}, Lorg/bouncycastle/crypto/generators/DSAParametersGenerator;->hash(Lorg/bouncycastle/crypto/Digest;[B[BI)V

    .line 368
    new-instance v7, Ljava/math/BigInteger;

    invoke-direct {v7, v3, v4}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 369
    .local v7, "W":Ljava/math/BigInteger;
    invoke-virtual {v7, v0, p1}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v8

    .line 370
    .local v8, "g":Ljava/math/BigInteger;
    sget-object v9, Lorg/bouncycastle/crypto/generators/DSAParametersGenerator;->TWO:Ljava/math/BigInteger;

    invoke-virtual {v8, v9}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v9

    if-ltz v9, :cond_0

    .line 372
    return-object v8

    .line 364
    .end local v7    # "W":Ljava/math/BigInteger;
    .end local v8    # "g":Ljava/math/BigInteger;
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 376
    .end local v6    # "count":I
    :cond_1
    const/4 v3, 0x0

    return-object v3
.end method

.method private generateParameters_FIPS186_2()Lorg/bouncycastle/crypto/params/DSAParameters;
    .locals 16

    .line 124
    move-object/from16 v0, p0

    const/16 v1, 0x14

    new-array v2, v1, [B

    .line 125
    .local v2, "seed":[B
    new-array v3, v1, [B

    .line 126
    .local v3, "part1":[B
    new-array v4, v1, [B

    .line 127
    .local v4, "part2":[B
    new-array v1, v1, [B

    .line 128
    .local v1, "u":[B
    iget v5, v0, Lorg/bouncycastle/crypto/generators/DSAParametersGenerator;->L:I

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    div-int/lit16 v5, v5, 0xa0

    .line 129
    .local v5, "n":I
    iget v7, v0, Lorg/bouncycastle/crypto/generators/DSAParametersGenerator;->L:I

    div-int/lit8 v7, v7, 0x8

    new-array v7, v7, [B

    .line 131
    .local v7, "w":[B
    iget-object v8, v0, Lorg/bouncycastle/crypto/generators/DSAParametersGenerator;->digest:Lorg/bouncycastle/crypto/Digest;

    instance-of v8, v8, Lorg/bouncycastle/crypto/digests/SHA1Digest;

    if-eqz v8, :cond_6

    .line 138
    :goto_0
    iget-object v8, v0, Lorg/bouncycastle/crypto/generators/DSAParametersGenerator;->random:Ljava/security/SecureRandom;

    invoke-virtual {v8, v2}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 140
    iget-object v8, v0, Lorg/bouncycastle/crypto/generators/DSAParametersGenerator;->digest:Lorg/bouncycastle/crypto/Digest;

    const/4 v9, 0x0

    invoke-static {v8, v2, v3, v9}, Lorg/bouncycastle/crypto/generators/DSAParametersGenerator;->hash(Lorg/bouncycastle/crypto/Digest;[B[BI)V

    .line 141
    array-length v8, v2

    invoke-static {v2, v9, v4, v9, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 142
    invoke-static {v4}, Lorg/bouncycastle/crypto/generators/DSAParametersGenerator;->inc([B)V

    .line 143
    iget-object v8, v0, Lorg/bouncycastle/crypto/generators/DSAParametersGenerator;->digest:Lorg/bouncycastle/crypto/Digest;

    invoke-static {v8, v4, v4, v9}, Lorg/bouncycastle/crypto/generators/DSAParametersGenerator;->hash(Lorg/bouncycastle/crypto/Digest;[B[BI)V

    .line 145
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_1
    array-length v10, v1

    if-eq v8, v10, :cond_0

    .line 147
    aget-byte v10, v3, v8

    aget-byte v11, v4, v8

    xor-int/2addr v10, v11

    int-to-byte v10, v10

    aput-byte v10, v1, v8

    .line 145
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 150
    .end local v8    # "i":I
    :cond_0
    aget-byte v8, v1, v9

    or-int/lit8 v8, v8, -0x80

    int-to-byte v8, v8

    aput-byte v8, v1, v9

    .line 151
    const/16 v8, 0x13

    aget-byte v10, v1, v8

    or-int/2addr v10, v6

    int-to-byte v10, v10

    aput-byte v10, v1, v8

    .line 153
    new-instance v8, Ljava/math/BigInteger;

    invoke-direct {v8, v6, v1}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 155
    .local v8, "q":Ljava/math/BigInteger;
    invoke-direct {v0, v8}, Lorg/bouncycastle/crypto/generators/DSAParametersGenerator;->isProbablePrime(Ljava/math/BigInteger;)Z

    move-result v10

    if-nez v10, :cond_1

    .line 157
    goto :goto_0

    .line 160
    :cond_1
    invoke-static {v2}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v10

    .line 161
    .local v10, "offset":[B
    invoke-static {v10}, Lorg/bouncycastle/crypto/generators/DSAParametersGenerator;->inc([B)V

    .line 163
    const/4 v11, 0x0

    .local v11, "counter":I
    :goto_2
    const/16 v12, 0x1000

    if-ge v11, v12, :cond_5

    .line 166
    const/4 v12, 0x1

    .local v12, "k":I
    :goto_3
    if-gt v12, v5, :cond_2

    .line 168
    invoke-static {v10}, Lorg/bouncycastle/crypto/generators/DSAParametersGenerator;->inc([B)V

    .line 169
    iget-object v13, v0, Lorg/bouncycastle/crypto/generators/DSAParametersGenerator;->digest:Lorg/bouncycastle/crypto/Digest;

    array-length v14, v7

    array-length v15, v3

    mul-int v15, v15, v12

    sub-int/2addr v14, v15

    invoke-static {v13, v10, v7, v14}, Lorg/bouncycastle/crypto/generators/DSAParametersGenerator;->hash(Lorg/bouncycastle/crypto/Digest;[B[BI)V

    .line 166
    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    .line 172
    .end local v12    # "k":I
    :cond_2
    array-length v12, v7

    array-length v13, v3

    mul-int v13, v13, v5

    sub-int/2addr v12, v13

    .line 173
    .local v12, "remaining":I
    invoke-static {v10}, Lorg/bouncycastle/crypto/generators/DSAParametersGenerator;->inc([B)V

    .line 174
    iget-object v13, v0, Lorg/bouncycastle/crypto/generators/DSAParametersGenerator;->digest:Lorg/bouncycastle/crypto/Digest;

    invoke-static {v13, v10, v3, v9}, Lorg/bouncycastle/crypto/generators/DSAParametersGenerator;->hash(Lorg/bouncycastle/crypto/Digest;[B[BI)V

    .line 175
    array-length v13, v3

    sub-int/2addr v13, v12

    invoke-static {v3, v13, v7, v9, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 177
    aget-byte v13, v7, v9

    or-int/lit8 v13, v13, -0x80

    int-to-byte v13, v13

    aput-byte v13, v7, v9

    .line 180
    .end local v12    # "remaining":I
    new-instance v12, Ljava/math/BigInteger;

    invoke-direct {v12, v6, v7}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 182
    .local v12, "x":Ljava/math/BigInteger;
    invoke-virtual {v8, v6}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v13

    .line 184
    .local v13, "c":Ljava/math/BigInteger;
    sget-object v14, Lorg/bouncycastle/crypto/generators/DSAParametersGenerator;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v13, v14}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v14

    invoke-virtual {v12, v14}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v14

    .line 186
    .local v14, "p":Ljava/math/BigInteger;
    invoke-virtual {v14}, Ljava/math/BigInteger;->bitLength()I

    move-result v15

    iget v6, v0, Lorg/bouncycastle/crypto/generators/DSAParametersGenerator;->L:I

    if-eq v15, v6, :cond_3

    .line 188
    goto :goto_4

    .line 191
    :cond_3
    invoke-direct {v0, v14}, Lorg/bouncycastle/crypto/generators/DSAParametersGenerator;->isProbablePrime(Ljava/math/BigInteger;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 193
    iget-object v6, v0, Lorg/bouncycastle/crypto/generators/DSAParametersGenerator;->random:Ljava/security/SecureRandom;

    invoke-static {v14, v8, v6}, Lorg/bouncycastle/crypto/generators/DSAParametersGenerator;->calculateGenerator_FIPS186_2(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/security/SecureRandom;)Ljava/math/BigInteger;

    move-result-object v6

    .line 195
    .local v6, "g":Ljava/math/BigInteger;
    new-instance v9, Lorg/bouncycastle/crypto/params/DSAParameters;

    new-instance v15, Lorg/bouncycastle/crypto/params/DSAValidationParameters;

    invoke-direct {v15, v2, v11}, Lorg/bouncycastle/crypto/params/DSAValidationParameters;-><init>([BI)V

    invoke-direct {v9, v14, v8, v6, v15}, Lorg/bouncycastle/crypto/params/DSAParameters;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Lorg/bouncycastle/crypto/params/DSAValidationParameters;)V

    return-object v9

    .line 163
    .end local v6    # "g":Ljava/math/BigInteger;
    .end local v12    # "x":Ljava/math/BigInteger;
    .end local v13    # "c":Ljava/math/BigInteger;
    .end local v14    # "p":Ljava/math/BigInteger;
    :cond_4
    :goto_4
    add-int/lit8 v11, v11, 0x1

    const/4 v6, 0x1

    goto :goto_2

    .line 198
    .end local v8    # "q":Ljava/math/BigInteger;
    .end local v10    # "offset":[B
    .end local v11    # "counter":I
    :cond_5
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 133
    :cond_6
    new-instance v6, Ljava/lang/IllegalStateException;

    const-string v8, "can only use SHA-1 for generating FIPS 186-2 parameters"

    invoke-direct {v6, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6
.end method

.method private generateParameters_FIPS186_3()Lorg/bouncycastle/crypto/params/DSAParameters;
    .locals 22

    .line 225
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/bouncycastle/crypto/generators/DSAParametersGenerator;->digest:Lorg/bouncycastle/crypto/Digest;

    .line 226
    .local v1, "d":Lorg/bouncycastle/crypto/Digest;
    invoke-interface {v1}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v2

    mul-int/lit8 v2, v2, 0x8

    .line 234
    .local v2, "outlen":I
    iget v3, v0, Lorg/bouncycastle/crypto/generators/DSAParametersGenerator;->N:I

    .line 235
    .local v3, "seedlen":I
    div-int/lit8 v4, v3, 0x8

    new-array v4, v4, [B

    .line 238
    .local v4, "seed":[B
    iget v5, v0, Lorg/bouncycastle/crypto/generators/DSAParametersGenerator;->L:I

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    div-int/2addr v5, v2

    .line 241
    .local v5, "n":I
    iget v7, v0, Lorg/bouncycastle/crypto/generators/DSAParametersGenerator;->L:I

    sub-int/2addr v7, v6

    rem-int/2addr v7, v2

    .line 243
    .local v7, "b":I
    iget v8, v0, Lorg/bouncycastle/crypto/generators/DSAParametersGenerator;->L:I

    div-int/lit8 v8, v8, 0x8

    new-array v8, v8, [B

    .line 244
    .local v8, "w":[B
    invoke-interface {v1}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v9

    new-array v9, v9, [B

    .line 248
    .local v9, "output":[B
    :goto_0
    iget-object v10, v0, Lorg/bouncycastle/crypto/generators/DSAParametersGenerator;->random:Ljava/security/SecureRandom;

    invoke-virtual {v10, v4}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 251
    const/4 v10, 0x0

    invoke-static {v1, v4, v9, v10}, Lorg/bouncycastle/crypto/generators/DSAParametersGenerator;->hash(Lorg/bouncycastle/crypto/Digest;[B[BI)V

    .line 253
    new-instance v11, Ljava/math/BigInteger;

    invoke-direct {v11, v6, v9}, Ljava/math/BigInteger;-><init>(I[B)V

    sget-object v12, Lorg/bouncycastle/crypto/generators/DSAParametersGenerator;->ONE:Ljava/math/BigInteger;

    iget v13, v0, Lorg/bouncycastle/crypto/generators/DSAParametersGenerator;->N:I

    sub-int/2addr v13, v6

    invoke-virtual {v12, v13}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v11

    .line 256
    .local v11, "U":Ljava/math/BigInteger;
    invoke-virtual {v11, v10}, Ljava/math/BigInteger;->setBit(I)Ljava/math/BigInteger;

    move-result-object v12

    iget v13, v0, Lorg/bouncycastle/crypto/generators/DSAParametersGenerator;->N:I

    sub-int/2addr v13, v6

    invoke-virtual {v12, v13}, Ljava/math/BigInteger;->setBit(I)Ljava/math/BigInteger;

    move-result-object v12

    .line 259
    .local v12, "q":Ljava/math/BigInteger;
    invoke-direct {v0, v12}, Lorg/bouncycastle/crypto/generators/DSAParametersGenerator;->isProbablePrime(Ljava/math/BigInteger;)Z

    move-result v13

    if-nez v13, :cond_0

    .line 262
    goto :goto_0

    .line 267
    :cond_0
    invoke-static {v4}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v13

    .line 270
    .local v13, "offset":[B
    iget v14, v0, Lorg/bouncycastle/crypto/generators/DSAParametersGenerator;->L:I

    mul-int/lit8 v14, v14, 0x4

    .line 271
    .local v14, "counterLimit":I
    const/4 v15, 0x0

    .local v15, "counter":I
    :goto_1
    if-ge v15, v14, :cond_6

    .line 277
    const/16 v16, 0x1

    move/from16 v6, v16

    .local v6, "j":I
    :goto_2
    if-gt v6, v5, :cond_1

    .line 279
    invoke-static {v13}, Lorg/bouncycastle/crypto/generators/DSAParametersGenerator;->inc([B)V

    .line 280
    array-length v10, v8

    move/from16 v17, v2

    .end local v2    # "outlen":I
    .local v17, "outlen":I
    array-length v2, v9

    mul-int v2, v2, v6

    sub-int/2addr v10, v2

    invoke-static {v1, v13, v8, v10}, Lorg/bouncycastle/crypto/generators/DSAParametersGenerator;->hash(Lorg/bouncycastle/crypto/Digest;[B[BI)V

    .line 277
    add-int/lit8 v6, v6, 0x1

    move/from16 v2, v17

    const/4 v10, 0x0

    goto :goto_2

    .end local v17    # "outlen":I
    .restart local v2    # "outlen":I
    :cond_1
    move/from16 v17, v2

    .line 283
    .end local v2    # "outlen":I
    .end local v6    # "j":I
    .restart local v17    # "outlen":I
    array-length v2, v8

    array-length v6, v9

    mul-int v6, v6, v5

    sub-int/2addr v2, v6

    .line 284
    .local v2, "remaining":I
    invoke-static {v13}, Lorg/bouncycastle/crypto/generators/DSAParametersGenerator;->inc([B)V

    .line 285
    const/4 v6, 0x0

    invoke-static {v1, v13, v9, v6}, Lorg/bouncycastle/crypto/generators/DSAParametersGenerator;->hash(Lorg/bouncycastle/crypto/Digest;[B[BI)V

    .line 286
    array-length v10, v9

    sub-int/2addr v10, v2

    invoke-static {v9, v10, v8, v6, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 289
    aget-byte v10, v8, v6

    or-int/lit8 v10, v10, -0x80

    int-to-byte v10, v10

    aput-byte v10, v8, v6

    .line 292
    .end local v2    # "remaining":I
    new-instance v2, Ljava/math/BigInteger;

    const/4 v10, 0x1

    invoke-direct {v2, v10, v8}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 295
    .local v2, "X":Ljava/math/BigInteger;
    invoke-virtual {v12, v10}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v6

    .line 298
    .local v6, "c":Ljava/math/BigInteger;
    sget-object v10, Lorg/bouncycastle/crypto/generators/DSAParametersGenerator;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v6, v10}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v10

    .line 301
    .local v10, "p":Ljava/math/BigInteger;
    move-object/from16 v18, v2

    .end local v2    # "X":Ljava/math/BigInteger;
    .local v18, "X":Ljava/math/BigInteger;
    invoke-virtual {v10}, Ljava/math/BigInteger;->bitLength()I

    move-result v2

    move/from16 v19, v3

    .end local v3    # "seedlen":I
    .local v19, "seedlen":I
    iget v3, v0, Lorg/bouncycastle/crypto/generators/DSAParametersGenerator;->L:I

    if-eq v2, v3, :cond_2

    .line 303
    move-object/from16 v20, v1

    move/from16 v21, v5

    goto :goto_4

    .line 307
    :cond_2
    invoke-direct {v0, v10}, Lorg/bouncycastle/crypto/generators/DSAParametersGenerator;->isProbablePrime(Ljava/math/BigInteger;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 311
    iget v2, v0, Lorg/bouncycastle/crypto/generators/DSAParametersGenerator;->usageIndex:I

    if-ltz v2, :cond_4

    .line 313
    iget v2, v0, Lorg/bouncycastle/crypto/generators/DSAParametersGenerator;->usageIndex:I

    invoke-static {v1, v10, v12, v4, v2}, Lorg/bouncycastle/crypto/generators/DSAParametersGenerator;->calculateGenerator_FIPS186_3_Verifiable(Lorg/bouncycastle/crypto/Digest;Ljava/math/BigInteger;Ljava/math/BigInteger;[BI)Ljava/math/BigInteger;

    move-result-object v2

    .line 314
    .local v2, "g":Ljava/math/BigInteger;
    if-eqz v2, :cond_3

    .line 316
    new-instance v3, Lorg/bouncycastle/crypto/params/DSAParameters;

    move-object/from16 v20, v1

    .end local v1    # "d":Lorg/bouncycastle/crypto/Digest;
    .local v20, "d":Lorg/bouncycastle/crypto/Digest;
    new-instance v1, Lorg/bouncycastle/crypto/params/DSAValidationParameters;

    move/from16 v21, v5

    .end local v5    # "n":I
    .local v21, "n":I
    iget v5, v0, Lorg/bouncycastle/crypto/generators/DSAParametersGenerator;->usageIndex:I

    invoke-direct {v1, v4, v15, v5}, Lorg/bouncycastle/crypto/params/DSAValidationParameters;-><init>([BII)V

    invoke-direct {v3, v10, v12, v2, v1}, Lorg/bouncycastle/crypto/params/DSAParameters;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Lorg/bouncycastle/crypto/params/DSAValidationParameters;)V

    return-object v3

    .line 314
    .end local v20    # "d":Lorg/bouncycastle/crypto/Digest;
    .end local v21    # "n":I
    .restart local v1    # "d":Lorg/bouncycastle/crypto/Digest;
    .restart local v5    # "n":I
    :cond_3
    move-object/from16 v20, v1

    move/from16 v21, v5

    .end local v1    # "d":Lorg/bouncycastle/crypto/Digest;
    .end local v5    # "n":I
    .restart local v20    # "d":Lorg/bouncycastle/crypto/Digest;
    .restart local v21    # "n":I
    goto :goto_3

    .line 311
    .end local v2    # "g":Ljava/math/BigInteger;
    .end local v20    # "d":Lorg/bouncycastle/crypto/Digest;
    .end local v21    # "n":I
    .restart local v1    # "d":Lorg/bouncycastle/crypto/Digest;
    .restart local v5    # "n":I
    :cond_4
    move-object/from16 v20, v1

    move/from16 v21, v5

    .line 320
    .end local v1    # "d":Lorg/bouncycastle/crypto/Digest;
    .end local v5    # "n":I
    .restart local v20    # "d":Lorg/bouncycastle/crypto/Digest;
    .restart local v21    # "n":I
    :goto_3
    iget-object v1, v0, Lorg/bouncycastle/crypto/generators/DSAParametersGenerator;->random:Ljava/security/SecureRandom;

    invoke-static {v10, v12, v1}, Lorg/bouncycastle/crypto/generators/DSAParametersGenerator;->calculateGenerator_FIPS186_3_Unverifiable(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/security/SecureRandom;)Ljava/math/BigInteger;

    move-result-object v1

    .line 322
    .local v1, "g":Ljava/math/BigInteger;
    new-instance v2, Lorg/bouncycastle/crypto/params/DSAParameters;

    new-instance v3, Lorg/bouncycastle/crypto/params/DSAValidationParameters;

    invoke-direct {v3, v4, v15}, Lorg/bouncycastle/crypto/params/DSAValidationParameters;-><init>([BI)V

    invoke-direct {v2, v10, v12, v1, v3}, Lorg/bouncycastle/crypto/params/DSAParameters;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Lorg/bouncycastle/crypto/params/DSAValidationParameters;)V

    return-object v2

    .line 307
    .end local v20    # "d":Lorg/bouncycastle/crypto/Digest;
    .end local v21    # "n":I
    .local v1, "d":Lorg/bouncycastle/crypto/Digest;
    .restart local v5    # "n":I
    :cond_5
    move-object/from16 v20, v1

    move/from16 v21, v5

    .line 271
    .end local v1    # "d":Lorg/bouncycastle/crypto/Digest;
    .end local v5    # "n":I
    .end local v6    # "c":Ljava/math/BigInteger;
    .end local v10    # "p":Ljava/math/BigInteger;
    .end local v18    # "X":Ljava/math/BigInteger;
    .restart local v20    # "d":Lorg/bouncycastle/crypto/Digest;
    .restart local v21    # "n":I
    :goto_4
    add-int/lit8 v15, v15, 0x1

    move/from16 v2, v17

    move/from16 v3, v19

    move-object/from16 v1, v20

    move/from16 v5, v21

    const/4 v6, 0x1

    const/4 v10, 0x0

    goto/16 :goto_1

    .end local v17    # "outlen":I
    .end local v19    # "seedlen":I
    .end local v20    # "d":Lorg/bouncycastle/crypto/Digest;
    .end local v21    # "n":I
    .restart local v1    # "d":Lorg/bouncycastle/crypto/Digest;
    .local v2, "outlen":I
    .restart local v3    # "seedlen":I
    .restart local v5    # "n":I
    :cond_6
    move-object/from16 v20, v1

    move/from16 v17, v2

    move/from16 v19, v3

    move/from16 v21, v5

    .line 331
    .end local v1    # "d":Lorg/bouncycastle/crypto/Digest;
    .end local v2    # "outlen":I
    .end local v3    # "seedlen":I
    .end local v5    # "n":I
    .end local v11    # "U":Ljava/math/BigInteger;
    .end local v12    # "q":Ljava/math/BigInteger;
    .end local v13    # "offset":[B
    .end local v14    # "counterLimit":I
    .end local v15    # "counter":I
    .restart local v17    # "outlen":I
    .restart local v19    # "seedlen":I
    .restart local v20    # "d":Lorg/bouncycastle/crypto/Digest;
    .restart local v21    # "n":I
    const/4 v6, 0x1

    goto/16 :goto_0
.end method

.method private static getDefaultN(I)I
    .locals 1
    .param p0, "L"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "L"
        }
    .end annotation

    .line 387
    const/16 v0, 0x400

    if-le p0, v0, :cond_0

    const/16 v0, 0x100

    goto :goto_0

    :cond_0
    const/16 v0, 0xa0

    :goto_0
    return v0
.end method

.method private static getMinimumIterations(I)I
    .locals 2
    .param p0, "L"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "L"
        }
    .end annotation

    .line 393
    const/16 v0, 0x400

    if-gt p0, v0, :cond_0

    const/16 v0, 0x28

    goto :goto_0

    :cond_0
    add-int/lit8 v1, p0, -0x1

    div-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x8

    add-int/lit8 v0, v1, 0x30

    :goto_0
    return v0
.end method

.method private static hash(Lorg/bouncycastle/crypto/Digest;[B[BI)V
    .locals 2
    .param p0, "d"    # Lorg/bouncycastle/crypto/Digest;
    .param p1, "input"    # [B
    .param p2, "output"    # [B
    .param p3, "outputPos"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "d",
            "input",
            "output",
            "outputPos"
        }
    .end annotation

    .line 381
    const/4 v0, 0x0

    array-length v1, p1

    invoke-interface {p0, p1, v0, v1}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    .line 382
    invoke-interface {p0, p2, p3}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    .line 383
    return-void
.end method

.method private static inc([B)V
    .locals 2
    .param p0, "buf"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "buf"
        }
    .end annotation

    .line 398
    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 400
    aget-byte v1, p0, v0

    add-int/lit8 v1, v1, 0x1

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    .line 401
    .local v1, "b":B
    aput-byte v1, p0, v0

    .line 403
    if-eqz v1, :cond_0

    .line 405
    goto :goto_1

    .line 398
    .end local v1    # "b":B
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 408
    .end local v0    # "i":I
    :cond_1
    :goto_1
    return-void
.end method

.method private isProbablePrime(Ljava/math/BigInteger;)Z
    .locals 1
    .param p1, "x"    # Ljava/math/BigInteger;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "x"
        }
    .end annotation

    .line 341
    iget v0, p0, Lorg/bouncycastle/crypto/generators/DSAParametersGenerator;->certainty:I

    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->isProbablePrime(I)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public generateParameters()Lorg/bouncycastle/crypto/params/DSAParameters;
    .locals 1

    .line 117
    iget-boolean v0, p0, Lorg/bouncycastle/crypto/generators/DSAParametersGenerator;->use186_3:Z

    if-eqz v0, :cond_0

    .line 118
    invoke-direct {p0}, Lorg/bouncycastle/crypto/generators/DSAParametersGenerator;->generateParameters_FIPS186_3()Lorg/bouncycastle/crypto/params/DSAParameters;

    move-result-object v0

    goto :goto_0

    .line 119
    :cond_0
    invoke-direct {p0}, Lorg/bouncycastle/crypto/generators/DSAParametersGenerator;->generateParameters_FIPS186_2()Lorg/bouncycastle/crypto/params/DSAParameters;

    move-result-object v0

    .line 117
    :goto_0
    return-object v0
.end method

.method public init(IILjava/security/SecureRandom;)V
    .locals 2
    .param p1, "size"    # I
    .param p2, "certainty"    # I
    .param p3, "random"    # Ljava/security/SecureRandom;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "size",
            "certainty",
            "random"
        }
    .end annotation

    .line 55
    iput p1, p0, Lorg/bouncycastle/crypto/generators/DSAParametersGenerator;->L:I

    .line 56
    invoke-static {p1}, Lorg/bouncycastle/crypto/generators/DSAParametersGenerator;->getDefaultN(I)I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/crypto/generators/DSAParametersGenerator;->N:I

    .line 57
    iput p2, p0, Lorg/bouncycastle/crypto/generators/DSAParametersGenerator;->certainty:I

    .line 58
    iget v0, p0, Lorg/bouncycastle/crypto/generators/DSAParametersGenerator;->L:I

    invoke-static {v0}, Lorg/bouncycastle/crypto/generators/DSAParametersGenerator;->getMinimumIterations(I)I

    move-result v0

    add-int/lit8 v1, p2, 0x1

    div-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/crypto/generators/DSAParametersGenerator;->iterations:I

    .line 59
    iput-object p3, p0, Lorg/bouncycastle/crypto/generators/DSAParametersGenerator;->random:Ljava/security/SecureRandom;

    .line 60
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/bouncycastle/crypto/generators/DSAParametersGenerator;->use186_3:Z

    .line 61
    const/4 v0, -0x1

    iput v0, p0, Lorg/bouncycastle/crypto/generators/DSAParametersGenerator;->usageIndex:I

    .line 62
    return-void
.end method

.method public init(Lorg/bouncycastle/crypto/params/DSAParameterGenerationParameters;)V
    .locals 5
    .param p1, "params"    # Lorg/bouncycastle/crypto/params/DSAParameterGenerationParameters;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "params"
        }
    .end annotation

    .line 75
    invoke-virtual {p1}, Lorg/bouncycastle/crypto/params/DSAParameterGenerationParameters;->getL()I

    move-result v0

    .local v0, "L":I
    invoke-virtual {p1}, Lorg/bouncycastle/crypto/params/DSAParameterGenerationParameters;->getN()I

    move-result v1

    .line 77
    .local v1, "N":I
    const/16 v2, 0x400

    if-lt v0, v2, :cond_7

    const/16 v3, 0xc00

    if-gt v0, v3, :cond_7

    rem-int/lit16 v4, v0, 0x400

    if-nez v4, :cond_7

    .line 81
    if-ne v0, v2, :cond_1

    const/16 v2, 0xa0

    if-ne v1, v2, :cond_0

    goto :goto_0

    .line 83
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "N must be 160 for L = 1024"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 85
    :cond_1
    :goto_0
    const/16 v2, 0x800

    const/16 v4, 0x100

    if-ne v0, v2, :cond_3

    const/16 v2, 0xe0

    if-eq v1, v2, :cond_3

    if-ne v1, v4, :cond_2

    goto :goto_1

    .line 87
    :cond_2
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "N must be 224 or 256 for L = 2048"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 89
    :cond_3
    :goto_1
    if-ne v0, v3, :cond_5

    if-ne v1, v4, :cond_4

    goto :goto_2

    .line 91
    :cond_4
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "N must be 256 for L = 3072"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 94
    :cond_5
    :goto_2
    iget-object v2, p0, Lorg/bouncycastle/crypto/generators/DSAParametersGenerator;->digest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v2}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v2

    mul-int/lit8 v2, v2, 0x8

    if-lt v2, v1, :cond_6

    .line 99
    iput v0, p0, Lorg/bouncycastle/crypto/generators/DSAParametersGenerator;->L:I

    .line 100
    iput v1, p0, Lorg/bouncycastle/crypto/generators/DSAParametersGenerator;->N:I

    .line 101
    invoke-virtual {p1}, Lorg/bouncycastle/crypto/params/DSAParameterGenerationParameters;->getCertainty()I

    move-result v2

    iput v2, p0, Lorg/bouncycastle/crypto/generators/DSAParametersGenerator;->certainty:I

    .line 102
    invoke-static {v0}, Lorg/bouncycastle/crypto/generators/DSAParametersGenerator;->getMinimumIterations(I)I

    move-result v2

    iget v3, p0, Lorg/bouncycastle/crypto/generators/DSAParametersGenerator;->certainty:I

    const/4 v4, 0x1

    add-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, p0, Lorg/bouncycastle/crypto/generators/DSAParametersGenerator;->iterations:I

    .line 103
    invoke-virtual {p1}, Lorg/bouncycastle/crypto/params/DSAParameterGenerationParameters;->getRandom()Ljava/security/SecureRandom;

    move-result-object v2

    iput-object v2, p0, Lorg/bouncycastle/crypto/generators/DSAParametersGenerator;->random:Ljava/security/SecureRandom;

    .line 104
    iput-boolean v4, p0, Lorg/bouncycastle/crypto/generators/DSAParametersGenerator;->use186_3:Z

    .line 105
    invoke-virtual {p1}, Lorg/bouncycastle/crypto/params/DSAParameterGenerationParameters;->getUsageIndex()I

    move-result v2

    iput v2, p0, Lorg/bouncycastle/crypto/generators/DSAParametersGenerator;->usageIndex:I

    .line 106
    return-void

    .line 96
    :cond_6
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Digest output size too small for value of N"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 79
    :cond_7
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "L values must be between 1024 and 3072 and a multiple of 1024"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method
