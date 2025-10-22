.class public Lorg/bouncycastle/crypto/generators/PKCS12ParametersGenerator;
.super Lorg/bouncycastle/crypto/PBEParametersGenerator;
.source "PKCS12ParametersGenerator.java"


# static fields
.field public static final IV_MATERIAL:I = 0x2

.field public static final KEY_MATERIAL:I = 0x1

.field public static final MAC_MATERIAL:I = 0x3


# instance fields
.field private digest:Lorg/bouncycastle/crypto/Digest;

.field private u:I

.field private v:I


# direct methods
.method public constructor <init>(Lorg/bouncycastle/crypto/Digest;)V
    .locals 4
    .param p1, "digest"    # Lorg/bouncycastle/crypto/Digest;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "digest"
        }
    .end annotation

    .line 38
    invoke-direct {p0}, Lorg/bouncycastle/crypto/PBEParametersGenerator;-><init>()V

    .line 39
    iput-object p1, p0, Lorg/bouncycastle/crypto/generators/PKCS12ParametersGenerator;->digest:Lorg/bouncycastle/crypto/Digest;

    .line 40
    instance-of v0, p1, Lorg/bouncycastle/crypto/ExtendedDigest;

    if-eqz v0, :cond_0

    .line 42
    invoke-interface {p1}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/crypto/generators/PKCS12ParametersGenerator;->u:I

    .line 43
    move-object v0, p1

    check-cast v0, Lorg/bouncycastle/crypto/ExtendedDigest;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/ExtendedDigest;->getByteLength()I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/crypto/generators/PKCS12ParametersGenerator;->v:I

    .line 49
    return-void

    .line 47
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-interface {p1}, Lorg/bouncycastle/crypto/Digest;->getAlgorithmName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Digest "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " unsupported"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private adjust([BI[B)V
    .locals 4
    .param p1, "a"    # [B
    .param p2, "aOff"    # I
    .param p3, "b"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "a",
            "aOff",
            "b"
        }
    .end annotation

    .line 61
    array-length v0, p3

    add-int/lit8 v0, v0, -0x1

    aget-byte v0, p3, v0

    and-int/lit16 v0, v0, 0xff

    array-length v1, p3

    add-int/2addr v1, p2

    add-int/lit8 v1, v1, -0x1

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    .line 63
    .local v0, "x":I
    array-length v1, p3

    add-int/2addr v1, p2

    add-int/lit8 v1, v1, -0x1

    int-to-byte v2, v0

    aput-byte v2, p1, v1

    .line 64
    ushr-int/lit8 v0, v0, 0x8

    .line 66
    array-length v1, p3

    add-int/lit8 v1, v1, -0x2

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 68
    aget-byte v2, p3, v1

    and-int/lit16 v2, v2, 0xff

    add-int v3, p2, v1

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    add-int/2addr v2, v3

    add-int/2addr v0, v2

    .line 69
    add-int v2, p2, v1

    int-to-byte v3, v0

    aput-byte v3, p1, v2

    .line 70
    ushr-int/lit8 v0, v0, 0x8

    .line 66
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 72
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method private generateDerivedKey(II)[B
    .locals 16
    .param p1, "idByte"    # I
    .param p2, "n"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "idByte",
            "n"
        }
    .end annotation

    .line 81
    move-object/from16 v0, p0

    move/from16 v1, p2

    iget v2, v0, Lorg/bouncycastle/crypto/generators/PKCS12ParametersGenerator;->v:I

    new-array v2, v2, [B

    .line 82
    .local v2, "D":[B
    new-array v3, v1, [B

    .line 84
    .local v3, "dKey":[B
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    array-length v5, v2

    if-eq v4, v5, :cond_0

    .line 86
    move/from16 v5, p1

    int-to-byte v6, v5

    aput-byte v6, v2, v4

    .line 84
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    move/from16 v5, p1

    .line 91
    .end local v4    # "i":I
    iget-object v4, v0, Lorg/bouncycastle/crypto/generators/PKCS12ParametersGenerator;->salt:[B

    const/4 v6, 0x0

    if-eqz v4, :cond_2

    iget-object v4, v0, Lorg/bouncycastle/crypto/generators/PKCS12ParametersGenerator;->salt:[B

    array-length v4, v4

    if-eqz v4, :cond_2

    .line 93
    iget v4, v0, Lorg/bouncycastle/crypto/generators/PKCS12ParametersGenerator;->v:I

    iget-object v7, v0, Lorg/bouncycastle/crypto/generators/PKCS12ParametersGenerator;->salt:[B

    array-length v7, v7

    iget v8, v0, Lorg/bouncycastle/crypto/generators/PKCS12ParametersGenerator;->v:I

    add-int/2addr v7, v8

    add-int/lit8 v7, v7, -0x1

    iget v8, v0, Lorg/bouncycastle/crypto/generators/PKCS12ParametersGenerator;->v:I

    div-int/2addr v7, v8

    mul-int v4, v4, v7

    new-array v4, v4, [B

    .line 95
    .local v4, "S":[B
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1
    array-length v8, v4

    if-eq v7, v8, :cond_1

    .line 97
    iget-object v8, v0, Lorg/bouncycastle/crypto/generators/PKCS12ParametersGenerator;->salt:[B

    iget-object v9, v0, Lorg/bouncycastle/crypto/generators/PKCS12ParametersGenerator;->salt:[B

    array-length v9, v9

    rem-int v9, v7, v9

    aget-byte v8, v8, v9

    aput-byte v8, v4, v7

    .line 95
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .end local v7    # "i":I
    :cond_1
    goto :goto_2

    .line 102
    .end local v4    # "S":[B
    :cond_2
    new-array v4, v6, [B

    .line 107
    .restart local v4    # "S":[B
    :goto_2
    iget-object v7, v0, Lorg/bouncycastle/crypto/generators/PKCS12ParametersGenerator;->password:[B

    if-eqz v7, :cond_4

    iget-object v7, v0, Lorg/bouncycastle/crypto/generators/PKCS12ParametersGenerator;->password:[B

    array-length v7, v7

    if-eqz v7, :cond_4

    .line 109
    iget v7, v0, Lorg/bouncycastle/crypto/generators/PKCS12ParametersGenerator;->v:I

    iget-object v8, v0, Lorg/bouncycastle/crypto/generators/PKCS12ParametersGenerator;->password:[B

    array-length v8, v8

    iget v9, v0, Lorg/bouncycastle/crypto/generators/PKCS12ParametersGenerator;->v:I

    add-int/2addr v8, v9

    add-int/lit8 v8, v8, -0x1

    iget v9, v0, Lorg/bouncycastle/crypto/generators/PKCS12ParametersGenerator;->v:I

    div-int/2addr v8, v9

    mul-int v7, v7, v8

    new-array v7, v7, [B

    .line 111
    .local v7, "P":[B
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_3
    array-length v9, v7

    if-eq v8, v9, :cond_3

    .line 113
    iget-object v9, v0, Lorg/bouncycastle/crypto/generators/PKCS12ParametersGenerator;->password:[B

    iget-object v10, v0, Lorg/bouncycastle/crypto/generators/PKCS12ParametersGenerator;->password:[B

    array-length v10, v10

    rem-int v10, v8, v10

    aget-byte v9, v9, v10

    aput-byte v9, v7, v8

    .line 111
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .end local v8    # "i":I
    :cond_3
    goto :goto_4

    .line 118
    .end local v7    # "P":[B
    :cond_4
    new-array v7, v6, [B

    .line 121
    .restart local v7    # "P":[B
    :goto_4
    array-length v8, v4

    array-length v9, v7

    add-int/2addr v8, v9

    new-array v8, v8, [B

    .line 123
    .local v8, "I":[B
    array-length v9, v4

    invoke-static {v4, v6, v8, v6, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 124
    array-length v9, v4

    array-length v10, v7

    invoke-static {v7, v6, v8, v9, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 126
    iget v9, v0, Lorg/bouncycastle/crypto/generators/PKCS12ParametersGenerator;->v:I

    new-array v9, v9, [B

    .line 127
    .local v9, "B":[B
    iget v10, v0, Lorg/bouncycastle/crypto/generators/PKCS12ParametersGenerator;->u:I

    add-int/2addr v10, v1

    add-int/lit8 v10, v10, -0x1

    iget v11, v0, Lorg/bouncycastle/crypto/generators/PKCS12ParametersGenerator;->u:I

    div-int/2addr v10, v11

    .line 128
    .local v10, "c":I
    iget v11, v0, Lorg/bouncycastle/crypto/generators/PKCS12ParametersGenerator;->u:I

    new-array v11, v11, [B

    .line 130
    .local v11, "A":[B
    const/4 v12, 0x1

    .local v12, "i":I
    :goto_5
    if-gt v12, v10, :cond_9

    .line 132
    iget-object v13, v0, Lorg/bouncycastle/crypto/generators/PKCS12ParametersGenerator;->digest:Lorg/bouncycastle/crypto/Digest;

    array-length v14, v2

    invoke-interface {v13, v2, v6, v14}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    .line 133
    iget-object v13, v0, Lorg/bouncycastle/crypto/generators/PKCS12ParametersGenerator;->digest:Lorg/bouncycastle/crypto/Digest;

    array-length v14, v8

    invoke-interface {v13, v8, v6, v14}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    .line 134
    iget-object v13, v0, Lorg/bouncycastle/crypto/generators/PKCS12ParametersGenerator;->digest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v13, v11, v6}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    .line 135
    const/4 v13, 0x1

    .local v13, "j":I
    :goto_6
    iget v14, v0, Lorg/bouncycastle/crypto/generators/PKCS12ParametersGenerator;->iterationCount:I

    if-ge v13, v14, :cond_5

    .line 137
    iget-object v14, v0, Lorg/bouncycastle/crypto/generators/PKCS12ParametersGenerator;->digest:Lorg/bouncycastle/crypto/Digest;

    array-length v15, v11

    invoke-interface {v14, v11, v6, v15}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    .line 138
    iget-object v14, v0, Lorg/bouncycastle/crypto/generators/PKCS12ParametersGenerator;->digest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v14, v11, v6}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    .line 135
    add-int/lit8 v13, v13, 0x1

    goto :goto_6

    .line 141
    .end local v13    # "j":I
    :cond_5
    const/4 v13, 0x0

    .restart local v13    # "j":I
    :goto_7
    array-length v14, v9

    if-eq v13, v14, :cond_6

    .line 143
    array-length v14, v11

    rem-int v14, v13, v14

    aget-byte v14, v11, v14

    aput-byte v14, v9, v13

    .line 141
    add-int/lit8 v13, v13, 0x1

    goto :goto_7

    .line 146
    .end local v13    # "j":I
    :cond_6
    const/4 v13, 0x0

    .restart local v13    # "j":I
    :goto_8
    array-length v14, v8

    iget v15, v0, Lorg/bouncycastle/crypto/generators/PKCS12ParametersGenerator;->v:I

    div-int/2addr v14, v15

    if-eq v13, v14, :cond_7

    .line 148
    iget v14, v0, Lorg/bouncycastle/crypto/generators/PKCS12ParametersGenerator;->v:I

    mul-int v14, v14, v13

    invoke-direct {v0, v8, v14, v9}, Lorg/bouncycastle/crypto/generators/PKCS12ParametersGenerator;->adjust([BI[B)V

    .line 146
    add-int/lit8 v13, v13, 0x1

    goto :goto_8

    .line 151
    .end local v13    # "j":I
    :cond_7
    if-ne v12, v10, :cond_8

    .line 153
    add-int/lit8 v13, v12, -0x1

    iget v14, v0, Lorg/bouncycastle/crypto/generators/PKCS12ParametersGenerator;->u:I

    mul-int v13, v13, v14

    array-length v14, v3

    add-int/lit8 v15, v12, -0x1

    iget v6, v0, Lorg/bouncycastle/crypto/generators/PKCS12ParametersGenerator;->u:I

    mul-int v15, v15, v6

    sub-int/2addr v14, v15

    const/4 v6, 0x0

    invoke-static {v11, v6, v3, v13, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_9

    .line 157
    :cond_8
    add-int/lit8 v13, v12, -0x1

    iget v14, v0, Lorg/bouncycastle/crypto/generators/PKCS12ParametersGenerator;->u:I

    mul-int v13, v13, v14

    array-length v14, v11

    invoke-static {v11, v6, v3, v13, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 130
    :goto_9
    add-int/lit8 v12, v12, 0x1

    goto :goto_5

    .line 161
    .end local v12    # "i":I
    :cond_9
    return-object v3
.end method


# virtual methods
.method public generateDerivedMacParameters(I)Lorg/bouncycastle/crypto/CipherParameters;
    .locals 3
    .param p1, "keySize"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "keySize"
        }
    .end annotation

    .line 214
    div-int/lit8 p1, p1, 0x8

    .line 216
    const/4 v0, 0x3

    invoke-direct {p0, v0, p1}, Lorg/bouncycastle/crypto/generators/PKCS12ParametersGenerator;->generateDerivedKey(II)[B

    move-result-object v0

    .line 218
    .local v0, "dKey":[B
    new-instance v1, Lorg/bouncycastle/crypto/params/KeyParameter;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2, p1}, Lorg/bouncycastle/crypto/params/KeyParameter;-><init>([BII)V

    return-object v1
.end method

.method public generateDerivedParameters(I)Lorg/bouncycastle/crypto/CipherParameters;
    .locals 3
    .param p1, "keySize"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "keySize"
        }
    .end annotation

    .line 174
    div-int/lit8 p1, p1, 0x8

    .line 176
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lorg/bouncycastle/crypto/generators/PKCS12ParametersGenerator;->generateDerivedKey(II)[B

    move-result-object v0

    .line 178
    .local v0, "dKey":[B
    new-instance v1, Lorg/bouncycastle/crypto/params/KeyParameter;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2, p1}, Lorg/bouncycastle/crypto/params/KeyParameter;-><init>([BII)V

    return-object v1
.end method

.method public generateDerivedParameters(II)Lorg/bouncycastle/crypto/CipherParameters;
    .locals 5
    .param p1, "keySize"    # I
    .param p2, "ivSize"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "keySize",
            "ivSize"
        }
    .end annotation

    .line 194
    div-int/lit8 p1, p1, 0x8

    .line 195
    div-int/lit8 p2, p2, 0x8

    .line 197
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lorg/bouncycastle/crypto/generators/PKCS12ParametersGenerator;->generateDerivedKey(II)[B

    move-result-object v0

    .line 199
    .local v0, "dKey":[B
    const/4 v1, 0x2

    invoke-direct {p0, v1, p2}, Lorg/bouncycastle/crypto/generators/PKCS12ParametersGenerator;->generateDerivedKey(II)[B

    move-result-object v1

    .line 201
    .local v1, "iv":[B
    new-instance v2, Lorg/bouncycastle/crypto/params/ParametersWithIV;

    new-instance v3, Lorg/bouncycastle/crypto/params/KeyParameter;

    const/4 v4, 0x0

    invoke-direct {v3, v0, v4, p1}, Lorg/bouncycastle/crypto/params/KeyParameter;-><init>([BII)V

    invoke-direct {v2, v3, v1, v4, p2}, Lorg/bouncycastle/crypto/params/ParametersWithIV;-><init>(Lorg/bouncycastle/crypto/CipherParameters;[BII)V

    return-object v2
.end method
