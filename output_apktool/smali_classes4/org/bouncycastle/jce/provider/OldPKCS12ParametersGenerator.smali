.class Lorg/bouncycastle/jce/provider/OldPKCS12ParametersGenerator;
.super Lorg/bouncycastle/crypto/PBEParametersGenerator;
.source "BrokenPBE.java"


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

    .line 51
    invoke-direct {p0}, Lorg/bouncycastle/crypto/PBEParametersGenerator;-><init>()V

    .line 52
    iput-object p1, p0, Lorg/bouncycastle/jce/provider/OldPKCS12ParametersGenerator;->digest:Lorg/bouncycastle/crypto/Digest;

    .line 53
    instance-of v0, p1, Lorg/bouncycastle/crypto/digests/MD5Digest;

    const/16 v1, 0x40

    if-eqz v0, :cond_0

    .line 55
    const/16 v0, 0x10

    iput v0, p0, Lorg/bouncycastle/jce/provider/OldPKCS12ParametersGenerator;->u:I

    .line 56
    iput v1, p0, Lorg/bouncycastle/jce/provider/OldPKCS12ParametersGenerator;->v:I

    goto :goto_0

    .line 58
    :cond_0
    instance-of v0, p1, Lorg/bouncycastle/crypto/digests/SHA1Digest;

    const/16 v2, 0x14

    if-eqz v0, :cond_1

    .line 60
    iput v2, p0, Lorg/bouncycastle/jce/provider/OldPKCS12ParametersGenerator;->u:I

    .line 61
    iput v1, p0, Lorg/bouncycastle/jce/provider/OldPKCS12ParametersGenerator;->v:I

    goto :goto_0

    .line 63
    :cond_1
    instance-of v0, p1, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;

    if-eqz v0, :cond_2

    .line 65
    iput v2, p0, Lorg/bouncycastle/jce/provider/OldPKCS12ParametersGenerator;->u:I

    .line 66
    iput v1, p0, Lorg/bouncycastle/jce/provider/OldPKCS12ParametersGenerator;->v:I

    .line 72
    :goto_0
    return-void

    .line 70
    :cond_2
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

    .line 84
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

    .line 86
    .local v0, "x":I
    array-length v1, p3

    add-int/2addr v1, p2

    add-int/lit8 v1, v1, -0x1

    int-to-byte v2, v0

    aput-byte v2, p1, v1

    .line 87
    ushr-int/lit8 v0, v0, 0x8

    .line 89
    array-length v1, p3

    add-int/lit8 v1, v1, -0x2

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 91
    aget-byte v2, p3, v1

    and-int/lit16 v2, v2, 0xff

    add-int v3, p2, v1

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    add-int/2addr v2, v3

    add-int/2addr v0, v2

    .line 92
    add-int v2, p2, v1

    int-to-byte v3, v0

    aput-byte v3, p1, v2

    .line 93
    ushr-int/lit8 v0, v0, 0x8

    .line 89
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 95
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

    .line 104
    move-object/from16 v0, p0

    move/from16 v1, p2

    iget v2, v0, Lorg/bouncycastle/jce/provider/OldPKCS12ParametersGenerator;->v:I

    new-array v2, v2, [B

    .line 105
    .local v2, "D":[B
    new-array v3, v1, [B

    .line 107
    .local v3, "dKey":[B
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    array-length v5, v2

    if-eq v4, v5, :cond_0

    .line 109
    move/from16 v5, p1

    int-to-byte v6, v5

    aput-byte v6, v2, v4

    .line 107
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    move/from16 v5, p1

    .line 114
    .end local v4    # "i":I
    iget-object v4, v0, Lorg/bouncycastle/jce/provider/OldPKCS12ParametersGenerator;->salt:[B

    const/4 v6, 0x0

    if-eqz v4, :cond_2

    iget-object v4, v0, Lorg/bouncycastle/jce/provider/OldPKCS12ParametersGenerator;->salt:[B

    array-length v4, v4

    if-eqz v4, :cond_2

    .line 116
    iget v4, v0, Lorg/bouncycastle/jce/provider/OldPKCS12ParametersGenerator;->v:I

    iget-object v7, v0, Lorg/bouncycastle/jce/provider/OldPKCS12ParametersGenerator;->salt:[B

    array-length v7, v7

    iget v8, v0, Lorg/bouncycastle/jce/provider/OldPKCS12ParametersGenerator;->v:I

    add-int/2addr v7, v8

    add-int/lit8 v7, v7, -0x1

    iget v8, v0, Lorg/bouncycastle/jce/provider/OldPKCS12ParametersGenerator;->v:I

    div-int/2addr v7, v8

    mul-int v4, v4, v7

    new-array v4, v4, [B

    .line 118
    .local v4, "S":[B
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1
    array-length v8, v4

    if-eq v7, v8, :cond_1

    .line 120
    iget-object v8, v0, Lorg/bouncycastle/jce/provider/OldPKCS12ParametersGenerator;->salt:[B

    iget-object v9, v0, Lorg/bouncycastle/jce/provider/OldPKCS12ParametersGenerator;->salt:[B

    array-length v9, v9

    rem-int v9, v7, v9

    aget-byte v8, v8, v9

    aput-byte v8, v4, v7

    .line 118
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .end local v7    # "i":I
    :cond_1
    goto :goto_2

    .line 125
    .end local v4    # "S":[B
    :cond_2
    new-array v4, v6, [B

    .line 130
    .restart local v4    # "S":[B
    :goto_2
    iget-object v7, v0, Lorg/bouncycastle/jce/provider/OldPKCS12ParametersGenerator;->password:[B

    if-eqz v7, :cond_4

    iget-object v7, v0, Lorg/bouncycastle/jce/provider/OldPKCS12ParametersGenerator;->password:[B

    array-length v7, v7

    if-eqz v7, :cond_4

    .line 132
    iget v7, v0, Lorg/bouncycastle/jce/provider/OldPKCS12ParametersGenerator;->v:I

    iget-object v8, v0, Lorg/bouncycastle/jce/provider/OldPKCS12ParametersGenerator;->password:[B

    array-length v8, v8

    iget v9, v0, Lorg/bouncycastle/jce/provider/OldPKCS12ParametersGenerator;->v:I

    add-int/2addr v8, v9

    add-int/lit8 v8, v8, -0x1

    iget v9, v0, Lorg/bouncycastle/jce/provider/OldPKCS12ParametersGenerator;->v:I

    div-int/2addr v8, v9

    mul-int v7, v7, v8

    new-array v7, v7, [B

    .line 134
    .local v7, "P":[B
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_3
    array-length v9, v7

    if-eq v8, v9, :cond_3

    .line 136
    iget-object v9, v0, Lorg/bouncycastle/jce/provider/OldPKCS12ParametersGenerator;->password:[B

    iget-object v10, v0, Lorg/bouncycastle/jce/provider/OldPKCS12ParametersGenerator;->password:[B

    array-length v10, v10

    rem-int v10, v8, v10

    aget-byte v9, v9, v10

    aput-byte v9, v7, v8

    .line 134
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .end local v8    # "i":I
    :cond_3
    goto :goto_4

    .line 141
    .end local v7    # "P":[B
    :cond_4
    new-array v7, v6, [B

    .line 144
    .restart local v7    # "P":[B
    :goto_4
    array-length v8, v4

    array-length v9, v7

    add-int/2addr v8, v9

    new-array v8, v8, [B

    .line 146
    .local v8, "I":[B
    array-length v9, v4

    invoke-static {v4, v6, v8, v6, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 147
    array-length v9, v4

    array-length v10, v7

    invoke-static {v7, v6, v8, v9, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 149
    iget v9, v0, Lorg/bouncycastle/jce/provider/OldPKCS12ParametersGenerator;->v:I

    new-array v9, v9, [B

    .line 150
    .local v9, "B":[B
    iget v10, v0, Lorg/bouncycastle/jce/provider/OldPKCS12ParametersGenerator;->u:I

    add-int/2addr v10, v1

    add-int/lit8 v10, v10, -0x1

    iget v11, v0, Lorg/bouncycastle/jce/provider/OldPKCS12ParametersGenerator;->u:I

    div-int/2addr v10, v11

    .line 152
    .local v10, "c":I
    const/4 v11, 0x1

    .local v11, "i":I
    :goto_5
    if-gt v11, v10, :cond_9

    .line 154
    iget v12, v0, Lorg/bouncycastle/jce/provider/OldPKCS12ParametersGenerator;->u:I

    new-array v12, v12, [B

    .line 156
    .local v12, "A":[B
    iget-object v13, v0, Lorg/bouncycastle/jce/provider/OldPKCS12ParametersGenerator;->digest:Lorg/bouncycastle/crypto/Digest;

    array-length v14, v2

    invoke-interface {v13, v2, v6, v14}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    .line 157
    iget-object v13, v0, Lorg/bouncycastle/jce/provider/OldPKCS12ParametersGenerator;->digest:Lorg/bouncycastle/crypto/Digest;

    array-length v14, v8

    invoke-interface {v13, v8, v6, v14}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    .line 158
    iget-object v13, v0, Lorg/bouncycastle/jce/provider/OldPKCS12ParametersGenerator;->digest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v13, v12, v6}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    .line 159
    const/4 v13, 0x1

    .local v13, "j":I
    :goto_6
    iget v14, v0, Lorg/bouncycastle/jce/provider/OldPKCS12ParametersGenerator;->iterationCount:I

    if-eq v13, v14, :cond_5

    .line 161
    iget-object v14, v0, Lorg/bouncycastle/jce/provider/OldPKCS12ParametersGenerator;->digest:Lorg/bouncycastle/crypto/Digest;

    array-length v15, v12

    invoke-interface {v14, v12, v6, v15}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    .line 162
    iget-object v14, v0, Lorg/bouncycastle/jce/provider/OldPKCS12ParametersGenerator;->digest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v14, v12, v6}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    .line 159
    add-int/lit8 v13, v13, 0x1

    goto :goto_6

    .line 165
    .end local v13    # "j":I
    :cond_5
    const/4 v13, 0x0

    .restart local v13    # "j":I
    :goto_7
    array-length v14, v9

    if-eq v13, v14, :cond_6

    .line 167
    array-length v14, v12

    rem-int v14, v13, v14

    aget-byte v14, v12, v14

    aput-byte v14, v9, v11

    .line 165
    add-int/lit8 v13, v13, 0x1

    goto :goto_7

    .line 170
    .end local v13    # "j":I
    :cond_6
    const/4 v13, 0x0

    .restart local v13    # "j":I
    :goto_8
    array-length v14, v8

    iget v15, v0, Lorg/bouncycastle/jce/provider/OldPKCS12ParametersGenerator;->v:I

    div-int/2addr v14, v15

    if-eq v13, v14, :cond_7

    .line 172
    iget v14, v0, Lorg/bouncycastle/jce/provider/OldPKCS12ParametersGenerator;->v:I

    mul-int v14, v14, v13

    invoke-direct {v0, v8, v14, v9}, Lorg/bouncycastle/jce/provider/OldPKCS12ParametersGenerator;->adjust([BI[B)V

    .line 170
    add-int/lit8 v13, v13, 0x1

    goto :goto_8

    .line 175
    .end local v13    # "j":I
    :cond_7
    if-ne v11, v10, :cond_8

    .line 177
    add-int/lit8 v13, v11, -0x1

    iget v14, v0, Lorg/bouncycastle/jce/provider/OldPKCS12ParametersGenerator;->u:I

    mul-int v13, v13, v14

    array-length v14, v3

    add-int/lit8 v15, v11, -0x1

    iget v6, v0, Lorg/bouncycastle/jce/provider/OldPKCS12ParametersGenerator;->u:I

    mul-int v15, v15, v6

    sub-int/2addr v14, v15

    const/4 v6, 0x0

    invoke-static {v12, v6, v3, v13, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_9

    .line 181
    :cond_8
    add-int/lit8 v13, v11, -0x1

    iget v14, v0, Lorg/bouncycastle/jce/provider/OldPKCS12ParametersGenerator;->u:I

    mul-int v13, v13, v14

    array-length v14, v12

    invoke-static {v12, v6, v3, v13, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 152
    .end local v12    # "A":[B
    :goto_9
    add-int/lit8 v11, v11, 0x1

    goto :goto_5

    .line 185
    .end local v11    # "i":I
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

    .line 238
    div-int/lit8 p1, p1, 0x8

    .line 240
    const/4 v0, 0x3

    invoke-direct {p0, v0, p1}, Lorg/bouncycastle/jce/provider/OldPKCS12ParametersGenerator;->generateDerivedKey(II)[B

    move-result-object v0

    .line 242
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

    .line 198
    div-int/lit8 p1, p1, 0x8

    .line 200
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lorg/bouncycastle/jce/provider/OldPKCS12ParametersGenerator;->generateDerivedKey(II)[B

    move-result-object v0

    .line 202
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

    .line 218
    div-int/lit8 p1, p1, 0x8

    .line 219
    div-int/lit8 p2, p2, 0x8

    .line 221
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lorg/bouncycastle/jce/provider/OldPKCS12ParametersGenerator;->generateDerivedKey(II)[B

    move-result-object v0

    .line 223
    .local v0, "dKey":[B
    const/4 v1, 0x2

    invoke-direct {p0, v1, p2}, Lorg/bouncycastle/jce/provider/OldPKCS12ParametersGenerator;->generateDerivedKey(II)[B

    move-result-object v1

    .line 225
    .local v1, "iv":[B
    new-instance v2, Lorg/bouncycastle/crypto/params/ParametersWithIV;

    new-instance v3, Lorg/bouncycastle/crypto/params/KeyParameter;

    const/4 v4, 0x0

    invoke-direct {v3, v0, v4, p1}, Lorg/bouncycastle/crypto/params/KeyParameter;-><init>([BII)V

    invoke-direct {v2, v3, v1, v4, p2}, Lorg/bouncycastle/crypto/params/ParametersWithIV;-><init>(Lorg/bouncycastle/crypto/CipherParameters;[BII)V

    return-object v2
.end method
