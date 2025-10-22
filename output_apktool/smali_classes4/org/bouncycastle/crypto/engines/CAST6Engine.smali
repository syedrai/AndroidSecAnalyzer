.class public final Lorg/bouncycastle/crypto/engines/CAST6Engine;
.super Lorg/bouncycastle/crypto/engines/CAST5Engine;
.source "CAST6Engine.java"


# static fields
.field protected static final BLOCK_SIZE:I = 0x10

.field protected static final ROUNDS:I = 0xc


# instance fields
.field protected _Km:[I

.field protected _Kr:[I

.field protected _Tm:[I

.field protected _Tr:[I

.field private _workingKey:[I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 40
    invoke-direct {p0}, Lorg/bouncycastle/crypto/engines/CAST5Engine;-><init>()V

    .line 28
    const/16 v0, 0x30

    new-array v1, v0, [I

    iput-object v1, p0, Lorg/bouncycastle/crypto/engines/CAST6Engine;->_Kr:[I

    .line 29
    new-array v0, v0, [I

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/CAST6Engine;->_Km:[I

    .line 34
    const/16 v0, 0xc0

    new-array v1, v0, [I

    iput-object v1, p0, Lorg/bouncycastle/crypto/engines/CAST6Engine;->_Tr:[I

    .line 35
    new-array v0, v0, [I

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/CAST6Engine;->_Tm:[I

    .line 37
    const/16 v0, 0x8

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/CAST6Engine;->_workingKey:[I

    .line 41
    return-void
.end method


# virtual methods
.method protected final CAST_Decipher(IIII[I)V
    .locals 5
    .param p1, "A"    # I
    .param p2, "B"    # I
    .param p3, "C"    # I
    .param p4, "D"    # I
    .param p5, "result"    # [I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "A",
            "B",
            "C",
            "D",
            "result"
        }
    .end annotation

    .line 268
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x6

    if-ge v0, v1, :cond_0

    .line 270
    rsub-int/lit8 v1, v0, 0xb

    mul-int/lit8 v1, v1, 0x4

    .line 272
    .local v1, "x":I
    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/CAST6Engine;->_Km:[I

    aget v2, v2, v1

    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/CAST6Engine;->_Kr:[I

    aget v3, v3, v1

    invoke-virtual {p0, p4, v2, v3}, Lorg/bouncycastle/crypto/engines/CAST6Engine;->F1(III)I

    move-result v2

    xor-int/2addr p3, v2

    .line 273
    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/CAST6Engine;->_Km:[I

    add-int/lit8 v3, v1, 0x1

    aget v2, v2, v3

    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/CAST6Engine;->_Kr:[I

    add-int/lit8 v4, v1, 0x1

    aget v3, v3, v4

    invoke-virtual {p0, p3, v2, v3}, Lorg/bouncycastle/crypto/engines/CAST6Engine;->F2(III)I

    move-result v2

    xor-int/2addr p2, v2

    .line 274
    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/CAST6Engine;->_Km:[I

    add-int/lit8 v3, v1, 0x2

    aget v2, v2, v3

    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/CAST6Engine;->_Kr:[I

    add-int/lit8 v4, v1, 0x2

    aget v3, v3, v4

    invoke-virtual {p0, p2, v2, v3}, Lorg/bouncycastle/crypto/engines/CAST6Engine;->F3(III)I

    move-result v2

    xor-int/2addr p1, v2

    .line 275
    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/CAST6Engine;->_Km:[I

    add-int/lit8 v3, v1, 0x3

    aget v2, v2, v3

    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/CAST6Engine;->_Kr:[I

    add-int/lit8 v4, v1, 0x3

    aget v3, v3, v4

    invoke-virtual {p0, p1, v2, v3}, Lorg/bouncycastle/crypto/engines/CAST6Engine;->F1(III)I

    move-result v2

    xor-int/2addr p4, v2

    .line 268
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 279
    .end local v0    # "i":I
    .end local v1    # "x":I
    :cond_0
    const/4 v0, 0x6

    .restart local v0    # "i":I
    :goto_1
    const/16 v1, 0xc

    if-ge v0, v1, :cond_1

    .line 281
    rsub-int/lit8 v1, v0, 0xb

    mul-int/lit8 v1, v1, 0x4

    .line 283
    .restart local v1    # "x":I
    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/CAST6Engine;->_Km:[I

    add-int/lit8 v3, v1, 0x3

    aget v2, v2, v3

    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/CAST6Engine;->_Kr:[I

    add-int/lit8 v4, v1, 0x3

    aget v3, v3, v4

    invoke-virtual {p0, p1, v2, v3}, Lorg/bouncycastle/crypto/engines/CAST6Engine;->F1(III)I

    move-result v2

    xor-int/2addr p4, v2

    .line 284
    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/CAST6Engine;->_Km:[I

    add-int/lit8 v3, v1, 0x2

    aget v2, v2, v3

    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/CAST6Engine;->_Kr:[I

    add-int/lit8 v4, v1, 0x2

    aget v3, v3, v4

    invoke-virtual {p0, p2, v2, v3}, Lorg/bouncycastle/crypto/engines/CAST6Engine;->F3(III)I

    move-result v2

    xor-int/2addr p1, v2

    .line 285
    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/CAST6Engine;->_Km:[I

    add-int/lit8 v3, v1, 0x1

    aget v2, v2, v3

    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/CAST6Engine;->_Kr:[I

    add-int/lit8 v4, v1, 0x1

    aget v3, v3, v4

    invoke-virtual {p0, p3, v2, v3}, Lorg/bouncycastle/crypto/engines/CAST6Engine;->F2(III)I

    move-result v2

    xor-int/2addr p2, v2

    .line 286
    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/CAST6Engine;->_Km:[I

    aget v2, v2, v1

    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/CAST6Engine;->_Kr:[I

    aget v3, v3, v1

    invoke-virtual {p0, p4, v2, v3}, Lorg/bouncycastle/crypto/engines/CAST6Engine;->F1(III)I

    move-result v2

    xor-int/2addr p3, v2

    .line 279
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 290
    .end local v0    # "i":I
    .end local v1    # "x":I
    :cond_1
    const/4 v0, 0x0

    aput p1, p5, v0

    .line 291
    const/4 v0, 0x1

    aput p2, p5, v0

    .line 292
    const/4 v0, 0x2

    aput p3, p5, v0

    .line 293
    const/4 v0, 0x3

    aput p4, p5, v0

    .line 294
    return-void
.end method

.method protected final CAST_Encipher(IIII[I)V
    .locals 5
    .param p1, "A"    # I
    .param p2, "B"    # I
    .param p3, "C"    # I
    .param p4, "D"    # I
    .param p5, "result"    # [I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "A",
            "B",
            "C",
            "D",
            "result"
        }
    .end annotation

    .line 228
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x6

    if-ge v0, v1, :cond_0

    .line 230
    mul-int/lit8 v1, v0, 0x4

    .line 232
    .local v1, "x":I
    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/CAST6Engine;->_Km:[I

    aget v2, v2, v1

    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/CAST6Engine;->_Kr:[I

    aget v3, v3, v1

    invoke-virtual {p0, p4, v2, v3}, Lorg/bouncycastle/crypto/engines/CAST6Engine;->F1(III)I

    move-result v2

    xor-int/2addr p3, v2

    .line 233
    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/CAST6Engine;->_Km:[I

    add-int/lit8 v3, v1, 0x1

    aget v2, v2, v3

    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/CAST6Engine;->_Kr:[I

    add-int/lit8 v4, v1, 0x1

    aget v3, v3, v4

    invoke-virtual {p0, p3, v2, v3}, Lorg/bouncycastle/crypto/engines/CAST6Engine;->F2(III)I

    move-result v2

    xor-int/2addr p2, v2

    .line 234
    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/CAST6Engine;->_Km:[I

    add-int/lit8 v3, v1, 0x2

    aget v2, v2, v3

    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/CAST6Engine;->_Kr:[I

    add-int/lit8 v4, v1, 0x2

    aget v3, v3, v4

    invoke-virtual {p0, p2, v2, v3}, Lorg/bouncycastle/crypto/engines/CAST6Engine;->F3(III)I

    move-result v2

    xor-int/2addr p1, v2

    .line 235
    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/CAST6Engine;->_Km:[I

    add-int/lit8 v3, v1, 0x3

    aget v2, v2, v3

    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/CAST6Engine;->_Kr:[I

    add-int/lit8 v4, v1, 0x3

    aget v3, v3, v4

    invoke-virtual {p0, p1, v2, v3}, Lorg/bouncycastle/crypto/engines/CAST6Engine;->F1(III)I

    move-result v2

    xor-int/2addr p4, v2

    .line 228
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 239
    .end local v0    # "i":I
    .end local v1    # "x":I
    :cond_0
    const/4 v0, 0x6

    .restart local v0    # "i":I
    :goto_1
    const/16 v1, 0xc

    if-ge v0, v1, :cond_1

    .line 241
    mul-int/lit8 v1, v0, 0x4

    .line 243
    .restart local v1    # "x":I
    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/CAST6Engine;->_Km:[I

    add-int/lit8 v3, v1, 0x3

    aget v2, v2, v3

    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/CAST6Engine;->_Kr:[I

    add-int/lit8 v4, v1, 0x3

    aget v3, v3, v4

    invoke-virtual {p0, p1, v2, v3}, Lorg/bouncycastle/crypto/engines/CAST6Engine;->F1(III)I

    move-result v2

    xor-int/2addr p4, v2

    .line 244
    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/CAST6Engine;->_Km:[I

    add-int/lit8 v3, v1, 0x2

    aget v2, v2, v3

    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/CAST6Engine;->_Kr:[I

    add-int/lit8 v4, v1, 0x2

    aget v3, v3, v4

    invoke-virtual {p0, p2, v2, v3}, Lorg/bouncycastle/crypto/engines/CAST6Engine;->F3(III)I

    move-result v2

    xor-int/2addr p1, v2

    .line 245
    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/CAST6Engine;->_Km:[I

    add-int/lit8 v3, v1, 0x1

    aget v2, v2, v3

    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/CAST6Engine;->_Kr:[I

    add-int/lit8 v4, v1, 0x1

    aget v3, v3, v4

    invoke-virtual {p0, p3, v2, v3}, Lorg/bouncycastle/crypto/engines/CAST6Engine;->F2(III)I

    move-result v2

    xor-int/2addr p2, v2

    .line 246
    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/CAST6Engine;->_Km:[I

    aget v2, v2, v1

    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/CAST6Engine;->_Kr:[I

    aget v3, v3, v1

    invoke-virtual {p0, p4, v2, v3}, Lorg/bouncycastle/crypto/engines/CAST6Engine;->F1(III)I

    move-result v2

    xor-int/2addr p3, v2

    .line 239
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 250
    .end local v0    # "i":I
    .end local v1    # "x":I
    :cond_1
    const/4 v0, 0x0

    aput p1, p5, v0

    .line 251
    const/4 v0, 0x1

    aput p2, p5, v0

    .line 252
    const/4 v0, 0x2

    aput p3, p5, v0

    .line 253
    const/4 v0, 0x3

    aput p4, p5, v0

    .line 254
    return-void
.end method

.method protected decryptBlock([BI[BI)I
    .locals 8
    .param p1, "src"    # [B
    .param p2, "srcIndex"    # I
    .param p3, "dst"    # [B
    .param p4, "dstIndex"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "src",
            "srcIndex",
            "dst",
            "dstIndex"
        }
    .end annotation

    .line 196
    const/4 v0, 0x4

    new-array v6, v0, [I

    .line 200
    .local v6, "result":[I
    invoke-virtual {p0, p1, p2}, Lorg/bouncycastle/crypto/engines/CAST6Engine;->BytesTo32bits([BI)I

    move-result v2

    .line 201
    .local v2, "A":I
    add-int/lit8 v0, p2, 0x4

    invoke-virtual {p0, p1, v0}, Lorg/bouncycastle/crypto/engines/CAST6Engine;->BytesTo32bits([BI)I

    move-result v3

    .line 202
    .local v3, "B":I
    add-int/lit8 v0, p2, 0x8

    invoke-virtual {p0, p1, v0}, Lorg/bouncycastle/crypto/engines/CAST6Engine;->BytesTo32bits([BI)I

    move-result v4

    .line 203
    .local v4, "C":I
    add-int/lit8 v0, p2, 0xc

    invoke-virtual {p0, p1, v0}, Lorg/bouncycastle/crypto/engines/CAST6Engine;->BytesTo32bits([BI)I

    move-result v5

    .line 205
    .local v5, "D":I
    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lorg/bouncycastle/crypto/engines/CAST6Engine;->CAST_Decipher(IIII[I)V

    .line 208
    const/4 v0, 0x0

    aget v0, v6, v0

    invoke-virtual {p0, v0, p3, p4}, Lorg/bouncycastle/crypto/engines/CAST6Engine;->Bits32ToBytes(I[BI)V

    .line 209
    const/4 v0, 0x1

    aget v0, v6, v0

    add-int/lit8 v7, p4, 0x4

    invoke-virtual {p0, v0, p3, v7}, Lorg/bouncycastle/crypto/engines/CAST6Engine;->Bits32ToBytes(I[BI)V

    .line 210
    const/4 v0, 0x2

    aget v0, v6, v0

    add-int/lit8 v7, p4, 0x8

    invoke-virtual {p0, v0, p3, v7}, Lorg/bouncycastle/crypto/engines/CAST6Engine;->Bits32ToBytes(I[BI)V

    .line 211
    const/4 v0, 0x3

    aget v0, v6, v0

    add-int/lit8 v7, p4, 0xc

    invoke-virtual {p0, v0, p3, v7}, Lorg/bouncycastle/crypto/engines/CAST6Engine;->Bits32ToBytes(I[BI)V

    .line 213
    const/16 v0, 0x10

    return v0
.end method

.method protected encryptBlock([BI[BI)I
    .locals 8
    .param p1, "src"    # [B
    .param p2, "srcIndex"    # I
    .param p3, "dst"    # [B
    .param p4, "dstIndex"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "src",
            "srcIndex",
            "dst",
            "dstIndex"
        }
    .end annotation

    .line 160
    const/4 v0, 0x4

    new-array v6, v0, [I

    .line 165
    .local v6, "result":[I
    invoke-virtual {p0, p1, p2}, Lorg/bouncycastle/crypto/engines/CAST6Engine;->BytesTo32bits([BI)I

    move-result v2

    .line 166
    .local v2, "A":I
    add-int/lit8 v0, p2, 0x4

    invoke-virtual {p0, p1, v0}, Lorg/bouncycastle/crypto/engines/CAST6Engine;->BytesTo32bits([BI)I

    move-result v3

    .line 167
    .local v3, "B":I
    add-int/lit8 v0, p2, 0x8

    invoke-virtual {p0, p1, v0}, Lorg/bouncycastle/crypto/engines/CAST6Engine;->BytesTo32bits([BI)I

    move-result v4

    .line 168
    .local v4, "C":I
    add-int/lit8 v0, p2, 0xc

    invoke-virtual {p0, p1, v0}, Lorg/bouncycastle/crypto/engines/CAST6Engine;->BytesTo32bits([BI)I

    move-result v5

    .line 170
    .local v5, "D":I
    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lorg/bouncycastle/crypto/engines/CAST6Engine;->CAST_Encipher(IIII[I)V

    .line 173
    const/4 v0, 0x0

    aget v0, v6, v0

    invoke-virtual {p0, v0, p3, p4}, Lorg/bouncycastle/crypto/engines/CAST6Engine;->Bits32ToBytes(I[BI)V

    .line 174
    const/4 v0, 0x1

    aget v0, v6, v0

    add-int/lit8 v7, p4, 0x4

    invoke-virtual {p0, v0, p3, v7}, Lorg/bouncycastle/crypto/engines/CAST6Engine;->Bits32ToBytes(I[BI)V

    .line 175
    const/4 v0, 0x2

    aget v0, v6, v0

    add-int/lit8 v7, p4, 0x8

    invoke-virtual {p0, v0, p3, v7}, Lorg/bouncycastle/crypto/engines/CAST6Engine;->Bits32ToBytes(I[BI)V

    .line 176
    const/4 v0, 0x3

    aget v0, v6, v0

    add-int/lit8 v7, p4, 0xc

    invoke-virtual {p0, v0, p3, v7}, Lorg/bouncycastle/crypto/engines/CAST6Engine;->Bits32ToBytes(I[BI)V

    .line 178
    const/16 v0, 0x10

    return v0
.end method

.method public getAlgorithmName()Ljava/lang/String;
    .locals 1

    .line 45
    const-string v0, "CAST6"

    return-object v0
.end method

.method public getBlockSize()I
    .locals 1

    .line 54
    const/16 v0, 0x10

    return v0
.end method

.method public reset()V
    .locals 0

    .line 50
    return-void
.end method

.method protected setKey([B)V
    .locals 25
    .param p1, "key"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "key"
        }
    .end annotation

    .line 69
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const v2, 0x5a827999

    .line 70
    .local v2, "Cm":I
    const v3, 0x6ed9eba1

    .line 71
    .local v3, "Mm":I
    const/16 v4, 0x13

    .line 72
    .local v4, "Cr":I
    const/16 v5, 0x11

    .line 81
    .local v5, "Mr":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    const/16 v7, 0x18

    const/16 v8, 0x8

    if-ge v6, v7, :cond_1

    .line 83
    const/4 v7, 0x0

    .local v7, "j":I
    :goto_1
    if-ge v7, v8, :cond_0

    .line 85
    iget-object v9, v0, Lorg/bouncycastle/crypto/engines/CAST6Engine;->_Tm:[I

    mul-int/lit8 v10, v6, 0x8

    add-int/2addr v10, v7

    aput v2, v9, v10

    .line 86
    add-int/2addr v2, v3

    .line 88
    iget-object v9, v0, Lorg/bouncycastle/crypto/engines/CAST6Engine;->_Tr:[I

    mul-int/lit8 v10, v6, 0x8

    add-int/2addr v10, v7

    aput v4, v9, v10

    .line 89
    add-int v9, v4, v5

    and-int/lit8 v4, v9, 0x1f

    .line 83
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 81
    .end local v7    # "j":I
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 93
    .end local v6    # "i":I
    :cond_1
    const/16 v6, 0x40

    new-array v6, v6, [B

    .line 94
    .local v6, "tmpKey":[B
    array-length v7, v1

    .line 95
    .local v7, "length":I
    const/4 v9, 0x0

    invoke-static {v1, v9, v6, v9, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 98
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_2
    if-ge v10, v8, :cond_2

    .line 100
    iget-object v11, v0, Lorg/bouncycastle/crypto/engines/CAST6Engine;->_workingKey:[I

    mul-int/lit8 v12, v10, 0x4

    invoke-virtual {v0, v6, v12}, Lorg/bouncycastle/crypto/engines/CAST6Engine;->BytesTo32bits([BI)I

    move-result v12

    aput v12, v11, v10

    .line 98
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 104
    .end local v10    # "i":I
    :cond_2
    const/4 v10, 0x0

    .restart local v10    # "i":I
    :goto_3
    const/16 v11, 0xc

    if-ge v10, v11, :cond_3

    .line 107
    mul-int/lit8 v11, v10, 0x2

    mul-int/lit8 v11, v11, 0x8

    .line 108
    .local v11, "i2":I
    iget-object v12, v0, Lorg/bouncycastle/crypto/engines/CAST6Engine;->_workingKey:[I

    const/4 v13, 0x6

    aget v14, v12, v13

    iget-object v15, v0, Lorg/bouncycastle/crypto/engines/CAST6Engine;->_workingKey:[I

    const/16 v16, 0x7

    aget v15, v15, v16

    const/16 v17, 0x8

    iget-object v8, v0, Lorg/bouncycastle/crypto/engines/CAST6Engine;->_Tm:[I

    aget v8, v8, v11

    const/16 v18, 0x0

    iget-object v9, v0, Lorg/bouncycastle/crypto/engines/CAST6Engine;->_Tr:[I

    aget v9, v9, v11

    invoke-virtual {v0, v15, v8, v9}, Lorg/bouncycastle/crypto/engines/CAST6Engine;->F1(III)I

    move-result v8

    xor-int/2addr v8, v14

    aput v8, v12, v13

    .line 109
    iget-object v8, v0, Lorg/bouncycastle/crypto/engines/CAST6Engine;->_workingKey:[I

    const/4 v9, 0x5

    aget v12, v8, v9

    iget-object v14, v0, Lorg/bouncycastle/crypto/engines/CAST6Engine;->_workingKey:[I

    aget v14, v14, v13

    iget-object v15, v0, Lorg/bouncycastle/crypto/engines/CAST6Engine;->_Tm:[I

    add-int/lit8 v19, v11, 0x1

    aget v15, v15, v19

    const/16 v19, 0x5

    iget-object v9, v0, Lorg/bouncycastle/crypto/engines/CAST6Engine;->_Tr:[I

    add-int/lit8 v20, v11, 0x1

    aget v9, v9, v20

    invoke-virtual {v0, v14, v15, v9}, Lorg/bouncycastle/crypto/engines/CAST6Engine;->F2(III)I

    move-result v9

    xor-int/2addr v9, v12

    aput v9, v8, v19

    .line 110
    iget-object v8, v0, Lorg/bouncycastle/crypto/engines/CAST6Engine;->_workingKey:[I

    const/4 v9, 0x4

    aget v12, v8, v9

    iget-object v14, v0, Lorg/bouncycastle/crypto/engines/CAST6Engine;->_workingKey:[I

    aget v14, v14, v19

    iget-object v15, v0, Lorg/bouncycastle/crypto/engines/CAST6Engine;->_Tm:[I

    add-int/lit8 v20, v11, 0x2

    aget v15, v15, v20

    const/16 v20, 0x4

    iget-object v9, v0, Lorg/bouncycastle/crypto/engines/CAST6Engine;->_Tr:[I

    add-int/lit8 v21, v11, 0x2

    aget v9, v9, v21

    invoke-virtual {v0, v14, v15, v9}, Lorg/bouncycastle/crypto/engines/CAST6Engine;->F3(III)I

    move-result v9

    xor-int/2addr v9, v12

    aput v9, v8, v20

    .line 111
    iget-object v8, v0, Lorg/bouncycastle/crypto/engines/CAST6Engine;->_workingKey:[I

    const/4 v9, 0x3

    aget v12, v8, v9

    iget-object v14, v0, Lorg/bouncycastle/crypto/engines/CAST6Engine;->_workingKey:[I

    aget v14, v14, v20

    iget-object v15, v0, Lorg/bouncycastle/crypto/engines/CAST6Engine;->_Tm:[I

    add-int/lit8 v21, v11, 0x3

    aget v15, v15, v21

    const/16 v21, 0x3

    iget-object v9, v0, Lorg/bouncycastle/crypto/engines/CAST6Engine;->_Tr:[I

    add-int/lit8 v22, v11, 0x3

    aget v9, v9, v22

    invoke-virtual {v0, v14, v15, v9}, Lorg/bouncycastle/crypto/engines/CAST6Engine;->F1(III)I

    move-result v9

    xor-int/2addr v9, v12

    aput v9, v8, v21

    .line 112
    iget-object v8, v0, Lorg/bouncycastle/crypto/engines/CAST6Engine;->_workingKey:[I

    const/4 v9, 0x2

    aget v12, v8, v9

    iget-object v14, v0, Lorg/bouncycastle/crypto/engines/CAST6Engine;->_workingKey:[I

    aget v14, v14, v21

    iget-object v15, v0, Lorg/bouncycastle/crypto/engines/CAST6Engine;->_Tm:[I

    add-int/lit8 v22, v11, 0x4

    aget v15, v15, v22

    const/16 v22, 0x2

    iget-object v9, v0, Lorg/bouncycastle/crypto/engines/CAST6Engine;->_Tr:[I

    add-int/lit8 v23, v11, 0x4

    aget v9, v9, v23

    invoke-virtual {v0, v14, v15, v9}, Lorg/bouncycastle/crypto/engines/CAST6Engine;->F2(III)I

    move-result v9

    xor-int/2addr v9, v12

    aput v9, v8, v22

    .line 113
    iget-object v8, v0, Lorg/bouncycastle/crypto/engines/CAST6Engine;->_workingKey:[I

    const/4 v9, 0x1

    aget v12, v8, v9

    iget-object v14, v0, Lorg/bouncycastle/crypto/engines/CAST6Engine;->_workingKey:[I

    aget v14, v14, v22

    iget-object v15, v0, Lorg/bouncycastle/crypto/engines/CAST6Engine;->_Tm:[I

    add-int/lit8 v23, v11, 0x5

    aget v15, v15, v23

    const/16 v23, 0x1

    iget-object v9, v0, Lorg/bouncycastle/crypto/engines/CAST6Engine;->_Tr:[I

    add-int/lit8 v24, v11, 0x5

    aget v9, v9, v24

    invoke-virtual {v0, v14, v15, v9}, Lorg/bouncycastle/crypto/engines/CAST6Engine;->F3(III)I

    move-result v9

    xor-int/2addr v9, v12

    aput v9, v8, v23

    .line 114
    iget-object v8, v0, Lorg/bouncycastle/crypto/engines/CAST6Engine;->_workingKey:[I

    aget v9, v8, v18

    iget-object v12, v0, Lorg/bouncycastle/crypto/engines/CAST6Engine;->_workingKey:[I

    aget v12, v12, v23

    iget-object v14, v0, Lorg/bouncycastle/crypto/engines/CAST6Engine;->_Tm:[I

    add-int/lit8 v15, v11, 0x6

    aget v14, v14, v15

    iget-object v15, v0, Lorg/bouncycastle/crypto/engines/CAST6Engine;->_Tr:[I

    add-int/lit8 v24, v11, 0x6

    aget v15, v15, v24

    invoke-virtual {v0, v12, v14, v15}, Lorg/bouncycastle/crypto/engines/CAST6Engine;->F1(III)I

    move-result v12

    xor-int/2addr v9, v12

    aput v9, v8, v18

    .line 115
    iget-object v8, v0, Lorg/bouncycastle/crypto/engines/CAST6Engine;->_workingKey:[I

    aget v9, v8, v16

    iget-object v12, v0, Lorg/bouncycastle/crypto/engines/CAST6Engine;->_workingKey:[I

    aget v12, v12, v18

    iget-object v14, v0, Lorg/bouncycastle/crypto/engines/CAST6Engine;->_Tm:[I

    add-int/lit8 v15, v11, 0x7

    aget v14, v14, v15

    iget-object v15, v0, Lorg/bouncycastle/crypto/engines/CAST6Engine;->_Tr:[I

    add-int/lit8 v24, v11, 0x7

    aget v15, v15, v24

    invoke-virtual {v0, v12, v14, v15}, Lorg/bouncycastle/crypto/engines/CAST6Engine;->F2(III)I

    move-result v12

    xor-int/2addr v9, v12

    aput v9, v8, v16

    .line 118
    mul-int/lit8 v8, v10, 0x2

    add-int/lit8 v8, v8, 0x1

    mul-int/lit8 v8, v8, 0x8

    .line 119
    .end local v11    # "i2":I
    .local v8, "i2":I
    iget-object v9, v0, Lorg/bouncycastle/crypto/engines/CAST6Engine;->_workingKey:[I

    aget v11, v9, v13

    iget-object v12, v0, Lorg/bouncycastle/crypto/engines/CAST6Engine;->_workingKey:[I

    aget v12, v12, v16

    iget-object v14, v0, Lorg/bouncycastle/crypto/engines/CAST6Engine;->_Tm:[I

    aget v14, v14, v8

    iget-object v15, v0, Lorg/bouncycastle/crypto/engines/CAST6Engine;->_Tr:[I

    aget v15, v15, v8

    invoke-virtual {v0, v12, v14, v15}, Lorg/bouncycastle/crypto/engines/CAST6Engine;->F1(III)I

    move-result v12

    xor-int/2addr v11, v12

    aput v11, v9, v13

    .line 120
    iget-object v9, v0, Lorg/bouncycastle/crypto/engines/CAST6Engine;->_workingKey:[I

    aget v11, v9, v19

    iget-object v12, v0, Lorg/bouncycastle/crypto/engines/CAST6Engine;->_workingKey:[I

    aget v12, v12, v13

    iget-object v14, v0, Lorg/bouncycastle/crypto/engines/CAST6Engine;->_Tm:[I

    add-int/lit8 v15, v8, 0x1

    aget v14, v14, v15

    iget-object v15, v0, Lorg/bouncycastle/crypto/engines/CAST6Engine;->_Tr:[I

    add-int/lit8 v24, v8, 0x1

    aget v15, v15, v24

    invoke-virtual {v0, v12, v14, v15}, Lorg/bouncycastle/crypto/engines/CAST6Engine;->F2(III)I

    move-result v12

    xor-int/2addr v11, v12

    aput v11, v9, v19

    .line 121
    iget-object v9, v0, Lorg/bouncycastle/crypto/engines/CAST6Engine;->_workingKey:[I

    aget v11, v9, v20

    iget-object v12, v0, Lorg/bouncycastle/crypto/engines/CAST6Engine;->_workingKey:[I

    aget v12, v12, v19

    iget-object v14, v0, Lorg/bouncycastle/crypto/engines/CAST6Engine;->_Tm:[I

    add-int/lit8 v15, v8, 0x2

    aget v14, v14, v15

    iget-object v15, v0, Lorg/bouncycastle/crypto/engines/CAST6Engine;->_Tr:[I

    add-int/lit8 v24, v8, 0x2

    aget v15, v15, v24

    invoke-virtual {v0, v12, v14, v15}, Lorg/bouncycastle/crypto/engines/CAST6Engine;->F3(III)I

    move-result v12

    xor-int/2addr v11, v12

    aput v11, v9, v20

    .line 122
    iget-object v9, v0, Lorg/bouncycastle/crypto/engines/CAST6Engine;->_workingKey:[I

    aget v11, v9, v21

    iget-object v12, v0, Lorg/bouncycastle/crypto/engines/CAST6Engine;->_workingKey:[I

    aget v12, v12, v20

    iget-object v14, v0, Lorg/bouncycastle/crypto/engines/CAST6Engine;->_Tm:[I

    add-int/lit8 v15, v8, 0x3

    aget v14, v14, v15

    iget-object v15, v0, Lorg/bouncycastle/crypto/engines/CAST6Engine;->_Tr:[I

    add-int/lit8 v24, v8, 0x3

    aget v15, v15, v24

    invoke-virtual {v0, v12, v14, v15}, Lorg/bouncycastle/crypto/engines/CAST6Engine;->F1(III)I

    move-result v12

    xor-int/2addr v11, v12

    aput v11, v9, v21

    .line 123
    iget-object v9, v0, Lorg/bouncycastle/crypto/engines/CAST6Engine;->_workingKey:[I

    aget v11, v9, v22

    iget-object v12, v0, Lorg/bouncycastle/crypto/engines/CAST6Engine;->_workingKey:[I

    aget v12, v12, v21

    iget-object v14, v0, Lorg/bouncycastle/crypto/engines/CAST6Engine;->_Tm:[I

    add-int/lit8 v15, v8, 0x4

    aget v14, v14, v15

    iget-object v15, v0, Lorg/bouncycastle/crypto/engines/CAST6Engine;->_Tr:[I

    add-int/lit8 v24, v8, 0x4

    aget v15, v15, v24

    invoke-virtual {v0, v12, v14, v15}, Lorg/bouncycastle/crypto/engines/CAST6Engine;->F2(III)I

    move-result v12

    xor-int/2addr v11, v12

    aput v11, v9, v22

    .line 124
    iget-object v9, v0, Lorg/bouncycastle/crypto/engines/CAST6Engine;->_workingKey:[I

    aget v11, v9, v23

    iget-object v12, v0, Lorg/bouncycastle/crypto/engines/CAST6Engine;->_workingKey:[I

    aget v12, v12, v22

    iget-object v14, v0, Lorg/bouncycastle/crypto/engines/CAST6Engine;->_Tm:[I

    add-int/lit8 v15, v8, 0x5

    aget v14, v14, v15

    iget-object v15, v0, Lorg/bouncycastle/crypto/engines/CAST6Engine;->_Tr:[I

    add-int/lit8 v24, v8, 0x5

    aget v15, v15, v24

    invoke-virtual {v0, v12, v14, v15}, Lorg/bouncycastle/crypto/engines/CAST6Engine;->F3(III)I

    move-result v12

    xor-int/2addr v11, v12

    aput v11, v9, v23

    .line 125
    iget-object v9, v0, Lorg/bouncycastle/crypto/engines/CAST6Engine;->_workingKey:[I

    aget v11, v9, v18

    iget-object v12, v0, Lorg/bouncycastle/crypto/engines/CAST6Engine;->_workingKey:[I

    aget v12, v12, v23

    iget-object v14, v0, Lorg/bouncycastle/crypto/engines/CAST6Engine;->_Tm:[I

    add-int/lit8 v15, v8, 0x6

    aget v14, v14, v15

    iget-object v15, v0, Lorg/bouncycastle/crypto/engines/CAST6Engine;->_Tr:[I

    add-int/lit8 v24, v8, 0x6

    aget v15, v15, v24

    invoke-virtual {v0, v12, v14, v15}, Lorg/bouncycastle/crypto/engines/CAST6Engine;->F1(III)I

    move-result v12

    xor-int/2addr v11, v12

    aput v11, v9, v18

    .line 126
    iget-object v9, v0, Lorg/bouncycastle/crypto/engines/CAST6Engine;->_workingKey:[I

    aget v11, v9, v16

    iget-object v12, v0, Lorg/bouncycastle/crypto/engines/CAST6Engine;->_workingKey:[I

    aget v12, v12, v18

    iget-object v14, v0, Lorg/bouncycastle/crypto/engines/CAST6Engine;->_Tm:[I

    add-int/lit8 v15, v8, 0x7

    aget v14, v14, v15

    iget-object v15, v0, Lorg/bouncycastle/crypto/engines/CAST6Engine;->_Tr:[I

    add-int/lit8 v24, v8, 0x7

    aget v15, v15, v24

    invoke-virtual {v0, v12, v14, v15}, Lorg/bouncycastle/crypto/engines/CAST6Engine;->F2(III)I

    move-result v12

    xor-int/2addr v11, v12

    aput v11, v9, v16

    .line 129
    iget-object v9, v0, Lorg/bouncycastle/crypto/engines/CAST6Engine;->_Kr:[I

    mul-int/lit8 v11, v10, 0x4

    iget-object v12, v0, Lorg/bouncycastle/crypto/engines/CAST6Engine;->_workingKey:[I

    aget v12, v12, v18

    and-int/lit8 v12, v12, 0x1f

    aput v12, v9, v11

    .line 130
    iget-object v9, v0, Lorg/bouncycastle/crypto/engines/CAST6Engine;->_Kr:[I

    mul-int/lit8 v11, v10, 0x4

    add-int/lit8 v11, v11, 0x1

    iget-object v12, v0, Lorg/bouncycastle/crypto/engines/CAST6Engine;->_workingKey:[I

    aget v12, v12, v22

    and-int/lit8 v12, v12, 0x1f

    aput v12, v9, v11

    .line 131
    iget-object v9, v0, Lorg/bouncycastle/crypto/engines/CAST6Engine;->_Kr:[I

    mul-int/lit8 v11, v10, 0x4

    add-int/lit8 v11, v11, 0x2

    iget-object v12, v0, Lorg/bouncycastle/crypto/engines/CAST6Engine;->_workingKey:[I

    aget v12, v12, v20

    and-int/lit8 v12, v12, 0x1f

    aput v12, v9, v11

    .line 132
    iget-object v9, v0, Lorg/bouncycastle/crypto/engines/CAST6Engine;->_Kr:[I

    mul-int/lit8 v11, v10, 0x4

    add-int/lit8 v11, v11, 0x3

    iget-object v12, v0, Lorg/bouncycastle/crypto/engines/CAST6Engine;->_workingKey:[I

    aget v12, v12, v13

    and-int/lit8 v12, v12, 0x1f

    aput v12, v9, v11

    .line 136
    iget-object v9, v0, Lorg/bouncycastle/crypto/engines/CAST6Engine;->_Km:[I

    mul-int/lit8 v11, v10, 0x4

    iget-object v12, v0, Lorg/bouncycastle/crypto/engines/CAST6Engine;->_workingKey:[I

    aget v12, v12, v16

    aput v12, v9, v11

    .line 137
    iget-object v9, v0, Lorg/bouncycastle/crypto/engines/CAST6Engine;->_Km:[I

    mul-int/lit8 v11, v10, 0x4

    add-int/lit8 v11, v11, 0x1

    iget-object v12, v0, Lorg/bouncycastle/crypto/engines/CAST6Engine;->_workingKey:[I

    aget v12, v12, v19

    aput v12, v9, v11

    .line 138
    iget-object v9, v0, Lorg/bouncycastle/crypto/engines/CAST6Engine;->_Km:[I

    mul-int/lit8 v11, v10, 0x4

    add-int/lit8 v11, v11, 0x2

    iget-object v12, v0, Lorg/bouncycastle/crypto/engines/CAST6Engine;->_workingKey:[I

    aget v12, v12, v21

    aput v12, v9, v11

    .line 139
    iget-object v9, v0, Lorg/bouncycastle/crypto/engines/CAST6Engine;->_Km:[I

    mul-int/lit8 v11, v10, 0x4

    add-int/lit8 v11, v11, 0x3

    iget-object v12, v0, Lorg/bouncycastle/crypto/engines/CAST6Engine;->_workingKey:[I

    aget v12, v12, v23

    aput v12, v9, v11

    .line 104
    .end local v8    # "i2":I
    add-int/lit8 v10, v10, 0x1

    const/16 v8, 0x8

    const/4 v9, 0x0

    goto/16 :goto_3

    .line 142
    .end local v10    # "i":I
    :cond_3
    return-void
.end method
