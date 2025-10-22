.class public final Lorg/bouncycastle/crypto/engines/TnepresEngine;
.super Lorg/bouncycastle/crypto/engines/SerpentEngineBase;
.source "TnepresEngine.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;-><init>()V

    return-void
.end method


# virtual methods
.method protected decryptBlock([BI[BI)V
    .locals 11
    .param p1, "input"    # [B
    .param p2, "inOff"    # I
    .param p3, "output"    # [B
    .param p4, "outOff"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "input",
            "inOff",
            "output",
            "outOff"
        }
    .end annotation

    .line 233
    const/4 v0, 0x4

    new-array v2, v0, [I

    .line 235
    .local v2, "X":[I
    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v3, 0x83

    aget v1, v1, v3

    invoke-static {p1, p2}, Lorg/bouncycastle/util/Pack;->bigEndianToInt([BI)I

    move-result v3

    xor-int/2addr v1, v3

    const/4 v7, 0x3

    aput v1, v2, v7

    .line 236
    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v3, 0x82

    aget v1, v1, v3

    add-int/lit8 v3, p2, 0x4

    invoke-static {p1, v3}, Lorg/bouncycastle/util/Pack;->bigEndianToInt([BI)I

    move-result v3

    xor-int/2addr v1, v3

    const/4 v8, 0x2

    aput v1, v2, v8

    .line 237
    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v3, 0x81

    aget v1, v1, v3

    add-int/lit8 v3, p2, 0x8

    invoke-static {p1, v3}, Lorg/bouncycastle/util/Pack;->bigEndianToInt([BI)I

    move-result v3

    xor-int/2addr v1, v3

    const/4 v9, 0x1

    aput v1, v2, v9

    .line 238
    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v3, 0x80

    aget v1, v1, v3

    add-int/lit8 v3, p2, 0xc

    invoke-static {p1, v3}, Lorg/bouncycastle/util/Pack;->bigEndianToInt([BI)I

    move-result v3

    xor-int/2addr v1, v3

    const/4 v10, 0x0

    aput v1, v2, v10

    .line 240
    aget v3, v2, v10

    aget v4, v2, v9

    aget v5, v2, v8

    aget v6, v2, v7

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lorg/bouncycastle/crypto/engines/TnepresEngine;->ib7([IIIII)V

    .line 241
    aget v3, v2, v10

    iget-object v4, v1, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v5, 0x7c

    aget v4, v4, v5

    xor-int/2addr v3, v4

    aput v3, v2, v10

    aget v3, v2, v9

    iget-object v4, v1, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v5, 0x7d

    aget v4, v4, v5

    xor-int/2addr v3, v4

    aput v3, v2, v9

    aget v3, v2, v8

    iget-object v4, v1, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v5, 0x7e

    aget v4, v4, v5

    xor-int/2addr v3, v4

    aput v3, v2, v8

    aget v3, v2, v7

    iget-object v4, v1, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v5, 0x7f

    aget v4, v4, v5

    xor-int/2addr v3, v4

    aput v3, v2, v7

    .line 242
    invoke-virtual {p0, v2}, Lorg/bouncycastle/crypto/engines/TnepresEngine;->inverseLT([I)V

    aget v3, v2, v10

    aget v4, v2, v9

    aget v5, v2, v8

    aget v6, v2, v7

    invoke-virtual/range {v1 .. v6}, Lorg/bouncycastle/crypto/engines/TnepresEngine;->ib6([IIIII)V

    .line 243
    aget v3, v2, v10

    iget-object v4, v1, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v5, 0x78

    aget v4, v4, v5

    xor-int/2addr v3, v4

    aput v3, v2, v10

    aget v3, v2, v9

    iget-object v4, v1, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v5, 0x79

    aget v4, v4, v5

    xor-int/2addr v3, v4

    aput v3, v2, v9

    aget v3, v2, v8

    iget-object v4, v1, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v5, 0x7a

    aget v4, v4, v5

    xor-int/2addr v3, v4

    aput v3, v2, v8

    aget v3, v2, v7

    iget-object v4, v1, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v5, 0x7b

    aget v4, v4, v5

    xor-int/2addr v3, v4

    aput v3, v2, v7

    .line 244
    invoke-virtual {p0, v2}, Lorg/bouncycastle/crypto/engines/TnepresEngine;->inverseLT([I)V

    aget v3, v2, v10

    aget v4, v2, v9

    aget v5, v2, v8

    aget v6, v2, v7

    invoke-virtual/range {v1 .. v6}, Lorg/bouncycastle/crypto/engines/TnepresEngine;->ib5([IIIII)V

    .line 245
    aget v3, v2, v10

    iget-object v4, v1, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v5, 0x74

    aget v4, v4, v5

    xor-int/2addr v3, v4

    aput v3, v2, v10

    aget v3, v2, v9

    iget-object v4, v1, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v5, 0x75

    aget v4, v4, v5

    xor-int/2addr v3, v4

    aput v3, v2, v9

    aget v3, v2, v8

    iget-object v4, v1, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v5, 0x76

    aget v4, v4, v5

    xor-int/2addr v3, v4

    aput v3, v2, v8

    aget v3, v2, v7

    iget-object v4, v1, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v5, 0x77

    aget v4, v4, v5

    xor-int/2addr v3, v4

    aput v3, v2, v7

    .line 246
    invoke-virtual {p0, v2}, Lorg/bouncycastle/crypto/engines/TnepresEngine;->inverseLT([I)V

    aget v3, v2, v10

    aget v4, v2, v9

    aget v5, v2, v8

    aget v6, v2, v7

    invoke-virtual/range {v1 .. v6}, Lorg/bouncycastle/crypto/engines/TnepresEngine;->ib4([IIIII)V

    .line 247
    aget v3, v2, v10

    iget-object v4, v1, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v5, 0x70

    aget v4, v4, v5

    xor-int/2addr v3, v4

    aput v3, v2, v10

    aget v3, v2, v9

    iget-object v4, v1, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v5, 0x71

    aget v4, v4, v5

    xor-int/2addr v3, v4

    aput v3, v2, v9

    aget v3, v2, v8

    iget-object v4, v1, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v5, 0x72

    aget v4, v4, v5

    xor-int/2addr v3, v4

    aput v3, v2, v8

    aget v3, v2, v7

    iget-object v4, v1, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v5, 0x73

    aget v4, v4, v5

    xor-int/2addr v3, v4

    aput v3, v2, v7

    .line 248
    invoke-virtual {p0, v2}, Lorg/bouncycastle/crypto/engines/TnepresEngine;->inverseLT([I)V

    aget v3, v2, v10

    aget v4, v2, v9

    aget v5, v2, v8

    aget v6, v2, v7

    invoke-virtual/range {v1 .. v6}, Lorg/bouncycastle/crypto/engines/TnepresEngine;->ib3([IIIII)V

    .line 249
    aget v3, v2, v10

    iget-object v4, v1, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v5, 0x6c

    aget v4, v4, v5

    xor-int/2addr v3, v4

    aput v3, v2, v10

    aget v3, v2, v9

    iget-object v4, v1, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v5, 0x6d

    aget v4, v4, v5

    xor-int/2addr v3, v4

    aput v3, v2, v9

    aget v3, v2, v8

    iget-object v4, v1, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v5, 0x6e

    aget v4, v4, v5

    xor-int/2addr v3, v4

    aput v3, v2, v8

    aget v3, v2, v7

    iget-object v4, v1, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v5, 0x6f

    aget v4, v4, v5

    xor-int/2addr v3, v4

    aput v3, v2, v7

    .line 250
    invoke-virtual {p0, v2}, Lorg/bouncycastle/crypto/engines/TnepresEngine;->inverseLT([I)V

    aget v3, v2, v10

    aget v4, v2, v9

    aget v5, v2, v8

    aget v6, v2, v7

    invoke-virtual/range {v1 .. v6}, Lorg/bouncycastle/crypto/engines/TnepresEngine;->ib2([IIIII)V

    .line 251
    aget v3, v2, v10

    iget-object v4, v1, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v5, 0x68

    aget v4, v4, v5

    xor-int/2addr v3, v4

    aput v3, v2, v10

    aget v3, v2, v9

    iget-object v4, v1, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v5, 0x69

    aget v4, v4, v5

    xor-int/2addr v3, v4

    aput v3, v2, v9

    aget v3, v2, v8

    iget-object v4, v1, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v5, 0x6a

    aget v4, v4, v5

    xor-int/2addr v3, v4

    aput v3, v2, v8

    aget v3, v2, v7

    iget-object v4, v1, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v5, 0x6b

    aget v4, v4, v5

    xor-int/2addr v3, v4

    aput v3, v2, v7

    .line 252
    invoke-virtual {p0, v2}, Lorg/bouncycastle/crypto/engines/TnepresEngine;->inverseLT([I)V

    aget v3, v2, v10

    aget v4, v2, v9

    aget v5, v2, v8

    aget v6, v2, v7

    invoke-virtual/range {v1 .. v6}, Lorg/bouncycastle/crypto/engines/TnepresEngine;->ib1([IIIII)V

    .line 253
    aget v3, v2, v10

    iget-object v4, v1, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v5, 0x64

    aget v4, v4, v5

    xor-int/2addr v3, v4

    aput v3, v2, v10

    aget v3, v2, v9

    iget-object v4, v1, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v5, 0x65

    aget v4, v4, v5

    xor-int/2addr v3, v4

    aput v3, v2, v9

    aget v3, v2, v8

    iget-object v4, v1, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v5, 0x66

    aget v4, v4, v5

    xor-int/2addr v3, v4

    aput v3, v2, v8

    aget v3, v2, v7

    iget-object v4, v1, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v5, 0x67

    aget v4, v4, v5

    xor-int/2addr v3, v4

    aput v3, v2, v7

    .line 254
    invoke-virtual {p0, v2}, Lorg/bouncycastle/crypto/engines/TnepresEngine;->inverseLT([I)V

    aget v3, v2, v10

    aget v4, v2, v9

    aget v5, v2, v8

    aget v6, v2, v7

    invoke-virtual/range {v1 .. v6}, Lorg/bouncycastle/crypto/engines/TnepresEngine;->ib0([IIIII)V

    .line 255
    aget v3, v2, v10

    iget-object v4, v1, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v5, 0x60

    aget v4, v4, v5

    xor-int/2addr v3, v4

    aput v3, v2, v10

    aget v3, v2, v9

    iget-object v4, v1, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v5, 0x61

    aget v4, v4, v5

    xor-int/2addr v3, v4

    aput v3, v2, v9

    aget v3, v2, v8

    iget-object v4, v1, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v5, 0x62

    aget v4, v4, v5

    xor-int/2addr v3, v4

    aput v3, v2, v8

    aget v3, v2, v7

    iget-object v4, v1, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v5, 0x63

    aget v4, v4, v5

    xor-int/2addr v3, v4

    aput v3, v2, v7

    .line 256
    invoke-virtual {p0, v2}, Lorg/bouncycastle/crypto/engines/TnepresEngine;->inverseLT([I)V

    aget v3, v2, v10

    aget v4, v2, v9

    aget v5, v2, v8

    aget v6, v2, v7

    invoke-virtual/range {v1 .. v6}, Lorg/bouncycastle/crypto/engines/TnepresEngine;->ib7([IIIII)V

    .line 257
    aget v3, v2, v10

    iget-object v4, v1, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v5, 0x5c

    aget v4, v4, v5

    xor-int/2addr v3, v4

    aput v3, v2, v10

    aget v3, v2, v9

    iget-object v4, v1, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v5, 0x5d

    aget v4, v4, v5

    xor-int/2addr v3, v4

    aput v3, v2, v9

    aget v3, v2, v8

    iget-object v4, v1, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v5, 0x5e

    aget v4, v4, v5

    xor-int/2addr v3, v4

    aput v3, v2, v8

    aget v3, v2, v7

    iget-object v4, v1, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v5, 0x5f

    aget v4, v4, v5

    xor-int/2addr v3, v4

    aput v3, v2, v7

    .line 258
    invoke-virtual {p0, v2}, Lorg/bouncycastle/crypto/engines/TnepresEngine;->inverseLT([I)V

    aget v3, v2, v10

    aget v4, v2, v9

    aget v5, v2, v8

    aget v6, v2, v7

    invoke-virtual/range {v1 .. v6}, Lorg/bouncycastle/crypto/engines/TnepresEngine;->ib6([IIIII)V

    .line 259
    aget v3, v2, v10

    iget-object v4, v1, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v5, 0x58

    aget v4, v4, v5

    xor-int/2addr v3, v4

    aput v3, v2, v10

    aget v3, v2, v9

    iget-object v4, v1, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v5, 0x59

    aget v4, v4, v5

    xor-int/2addr v3, v4

    aput v3, v2, v9

    aget v3, v2, v8

    iget-object v4, v1, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v5, 0x5a

    aget v4, v4, v5

    xor-int/2addr v3, v4

    aput v3, v2, v8

    aget v3, v2, v7

    iget-object v4, v1, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v5, 0x5b

    aget v4, v4, v5

    xor-int/2addr v3, v4

    aput v3, v2, v7

    .line 260
    invoke-virtual {p0, v2}, Lorg/bouncycastle/crypto/engines/TnepresEngine;->inverseLT([I)V

    aget v3, v2, v10

    aget v4, v2, v9

    aget v5, v2, v8

    aget v6, v2, v7

    invoke-virtual/range {v1 .. v6}, Lorg/bouncycastle/crypto/engines/TnepresEngine;->ib5([IIIII)V

    .line 261
    aget v3, v2, v10

    iget-object v4, v1, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v5, 0x54

    aget v4, v4, v5

    xor-int/2addr v3, v4

    aput v3, v2, v10

    aget v3, v2, v9

    iget-object v4, v1, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v5, 0x55

    aget v4, v4, v5

    xor-int/2addr v3, v4

    aput v3, v2, v9

    aget v3, v2, v8

    iget-object v4, v1, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v5, 0x56

    aget v4, v4, v5

    xor-int/2addr v3, v4

    aput v3, v2, v8

    aget v3, v2, v7

    iget-object v4, v1, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v5, 0x57

    aget v4, v4, v5

    xor-int/2addr v3, v4

    aput v3, v2, v7

    .line 262
    invoke-virtual {p0, v2}, Lorg/bouncycastle/crypto/engines/TnepresEngine;->inverseLT([I)V

    aget v3, v2, v10

    aget v4, v2, v9

    aget v5, v2, v8

    aget v6, v2, v7

    invoke-virtual/range {v1 .. v6}, Lorg/bouncycastle/crypto/engines/TnepresEngine;->ib4([IIIII)V

    .line 263
    aget v3, v2, v10

    iget-object v4, v1, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v5, 0x50

    aget v4, v4, v5

    xor-int/2addr v3, v4

    aput v3, v2, v10

    aget v3, v2, v9

    iget-object v4, v1, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v5, 0x51

    aget v4, v4, v5

    xor-int/2addr v3, v4

    aput v3, v2, v9

    aget v3, v2, v8

    iget-object v4, v1, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v5, 0x52

    aget v4, v4, v5

    xor-int/2addr v3, v4

    aput v3, v2, v8

    aget v3, v2, v7

    iget-object v4, v1, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v5, 0x53

    aget v4, v4, v5

    xor-int/2addr v3, v4

    aput v3, v2, v7

    .line 264
    invoke-virtual {p0, v2}, Lorg/bouncycastle/crypto/engines/TnepresEngine;->inverseLT([I)V

    aget v3, v2, v10

    aget v4, v2, v9

    aget v5, v2, v8

    aget v6, v2, v7

    invoke-virtual/range {v1 .. v6}, Lorg/bouncycastle/crypto/engines/TnepresEngine;->ib3([IIIII)V

    .line 265
    aget v3, v2, v10

    iget-object v4, v1, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v5, 0x4c

    aget v4, v4, v5

    xor-int/2addr v3, v4

    aput v3, v2, v10

    aget v3, v2, v9

    iget-object v4, v1, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v5, 0x4d

    aget v4, v4, v5

    xor-int/2addr v3, v4

    aput v3, v2, v9

    aget v3, v2, v8

    iget-object v4, v1, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v5, 0x4e

    aget v4, v4, v5

    xor-int/2addr v3, v4

    aput v3, v2, v8

    aget v3, v2, v7

    iget-object v4, v1, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v5, 0x4f

    aget v4, v4, v5

    xor-int/2addr v3, v4

    aput v3, v2, v7

    .line 266
    invoke-virtual {p0, v2}, Lorg/bouncycastle/crypto/engines/TnepresEngine;->inverseLT([I)V

    aget v3, v2, v10

    aget v4, v2, v9

    aget v5, v2, v8

    aget v6, v2, v7

    invoke-virtual/range {v1 .. v6}, Lorg/bouncycastle/crypto/engines/TnepresEngine;->ib2([IIIII)V

    .line 267
    aget v3, v2, v10

    iget-object v4, v1, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v5, 0x48

    aget v4, v4, v5

    xor-int/2addr v3, v4

    aput v3, v2, v10

    aget v3, v2, v9

    iget-object v4, v1, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v5, 0x49

    aget v4, v4, v5

    xor-int/2addr v3, v4

    aput v3, v2, v9

    aget v3, v2, v8

    iget-object v4, v1, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v5, 0x4a

    aget v4, v4, v5

    xor-int/2addr v3, v4

    aput v3, v2, v8

    aget v3, v2, v7

    iget-object v4, v1, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v5, 0x4b

    aget v4, v4, v5

    xor-int/2addr v3, v4

    aput v3, v2, v7

    .line 268
    invoke-virtual {p0, v2}, Lorg/bouncycastle/crypto/engines/TnepresEngine;->inverseLT([I)V

    aget v3, v2, v10

    aget v4, v2, v9

    aget v5, v2, v8

    aget v6, v2, v7

    invoke-virtual/range {v1 .. v6}, Lorg/bouncycastle/crypto/engines/TnepresEngine;->ib1([IIIII)V

    .line 269
    aget v3, v2, v10

    iget-object v4, v1, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v5, 0x44

    aget v4, v4, v5

    xor-int/2addr v3, v4

    aput v3, v2, v10

    aget v3, v2, v9

    iget-object v4, v1, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v5, 0x45

    aget v4, v4, v5

    xor-int/2addr v3, v4

    aput v3, v2, v9

    aget v3, v2, v8

    iget-object v4, v1, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v5, 0x46

    aget v4, v4, v5

    xor-int/2addr v3, v4

    aput v3, v2, v8

    aget v3, v2, v7

    iget-object v4, v1, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v5, 0x47

    aget v4, v4, v5

    xor-int/2addr v3, v4

    aput v3, v2, v7

    .line 270
    invoke-virtual {p0, v2}, Lorg/bouncycastle/crypto/engines/TnepresEngine;->inverseLT([I)V

    aget v3, v2, v10

    aget v4, v2, v9

    aget v5, v2, v8

    aget v6, v2, v7

    invoke-virtual/range {v1 .. v6}, Lorg/bouncycastle/crypto/engines/TnepresEngine;->ib0([IIIII)V

    .line 271
    aget v3, v2, v10

    iget-object v4, v1, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v5, 0x40

    aget v4, v4, v5

    xor-int/2addr v3, v4

    aput v3, v2, v10

    aget v3, v2, v9

    iget-object v4, v1, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v5, 0x41

    aget v4, v4, v5

    xor-int/2addr v3, v4

    aput v3, v2, v9

    aget v3, v2, v8

    iget-object v4, v1, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v5, 0x42

    aget v4, v4, v5

    xor-int/2addr v3, v4

    aput v3, v2, v8

    aget v3, v2, v7

    iget-object v4, v1, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v5, 0x43

    aget v4, v4, v5

    xor-int/2addr v3, v4

    aput v3, v2, v7

    .line 272
    invoke-virtual {p0, v2}, Lorg/bouncycastle/crypto/engines/TnepresEngine;->inverseLT([I)V

    aget v3, v2, v10

    aget v4, v2, v9

    aget v5, v2, v8

    aget v6, v2, v7

    invoke-virtual/range {v1 .. v6}, Lorg/bouncycastle/crypto/engines/TnepresEngine;->ib7([IIIII)V

    .line 273
    aget v3, v2, v10

    iget-object v4, v1, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v5, 0x3c

    aget v4, v4, v5

    xor-int/2addr v3, v4

    aput v3, v2, v10

    aget v3, v2, v9

    iget-object v4, v1, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v5, 0x3d

    aget v4, v4, v5

    xor-int/2addr v3, v4

    aput v3, v2, v9

    aget v3, v2, v8

    iget-object v4, v1, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v5, 0x3e

    aget v4, v4, v5

    xor-int/2addr v3, v4

    aput v3, v2, v8

    aget v3, v2, v7

    iget-object v4, v1, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v5, 0x3f

    aget v4, v4, v5

    xor-int/2addr v3, v4

    aput v3, v2, v7

    .line 274
    invoke-virtual {p0, v2}, Lorg/bouncycastle/crypto/engines/TnepresEngine;->inverseLT([I)V

    aget v3, v2, v10

    aget v4, v2, v9

    aget v5, v2, v8

    aget v6, v2, v7

    invoke-virtual/range {v1 .. v6}, Lorg/bouncycastle/crypto/engines/TnepresEngine;->ib6([IIIII)V

    .line 275
    aget v3, v2, v10

    iget-object v4, v1, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v5, 0x38

    aget v4, v4, v5

    xor-int/2addr v3, v4

    aput v3, v2, v10

    aget v3, v2, v9

    iget-object v4, v1, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v5, 0x39

    aget v4, v4, v5

    xor-int/2addr v3, v4

    aput v3, v2, v9

    aget v3, v2, v8

    iget-object v4, v1, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v5, 0x3a

    aget v4, v4, v5

    xor-int/2addr v3, v4

    aput v3, v2, v8

    aget v3, v2, v7

    iget-object v4, v1, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v5, 0x3b

    aget v4, v4, v5

    xor-int/2addr v3, v4

    aput v3, v2, v7

    .line 276
    invoke-virtual {p0, v2}, Lorg/bouncycastle/crypto/engines/TnepresEngine;->inverseLT([I)V

    aget v3, v2, v10

    aget v4, v2, v9

    aget v5, v2, v8

    aget v6, v2, v7

    invoke-virtual/range {v1 .. v6}, Lorg/bouncycastle/crypto/engines/TnepresEngine;->ib5([IIIII)V

    .line 277
    aget v3, v2, v10

    iget-object v4, v1, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v5, 0x34

    aget v4, v4, v5

    xor-int/2addr v3, v4

    aput v3, v2, v10

    aget v3, v2, v9

    iget-object v4, v1, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v5, 0x35

    aget v4, v4, v5

    xor-int/2addr v3, v4

    aput v3, v2, v9

    aget v3, v2, v8

    iget-object v4, v1, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v5, 0x36

    aget v4, v4, v5

    xor-int/2addr v3, v4

    aput v3, v2, v8

    aget v3, v2, v7

    iget-object v4, v1, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v5, 0x37

    aget v4, v4, v5

    xor-int/2addr v3, v4

    aput v3, v2, v7

    .line 278
    invoke-virtual {p0, v2}, Lorg/bouncycastle/crypto/engines/TnepresEngine;->inverseLT([I)V

    aget v3, v2, v10

    aget v4, v2, v9

    aget v5, v2, v8

    aget v6, v2, v7

    invoke-virtual/range {v1 .. v6}, Lorg/bouncycastle/crypto/engines/TnepresEngine;->ib4([IIIII)V

    .line 279
    aget v3, v2, v10

    iget-object v4, v1, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v5, 0x30

    aget v4, v4, v5

    xor-int/2addr v3, v4

    aput v3, v2, v10

    aget v3, v2, v9

    iget-object v4, v1, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v5, 0x31

    aget v4, v4, v5

    xor-int/2addr v3, v4

    aput v3, v2, v9

    aget v3, v2, v8

    iget-object v4, v1, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v5, 0x32

    aget v4, v4, v5

    xor-int/2addr v3, v4

    aput v3, v2, v8

    aget v3, v2, v7

    iget-object v4, v1, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v5, 0x33

    aget v4, v4, v5

    xor-int/2addr v3, v4

    aput v3, v2, v7

    .line 280
    invoke-virtual {p0, v2}, Lorg/bouncycastle/crypto/engines/TnepresEngine;->inverseLT([I)V

    aget v3, v2, v10

    aget v4, v2, v9

    aget v5, v2, v8

    aget v6, v2, v7

    invoke-virtual/range {v1 .. v6}, Lorg/bouncycastle/crypto/engines/TnepresEngine;->ib3([IIIII)V

    .line 281
    aget v3, v2, v10

    iget-object v4, v1, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v5, 0x2c

    aget v4, v4, v5

    xor-int/2addr v3, v4

    aput v3, v2, v10

    aget v3, v2, v9

    iget-object v4, v1, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v5, 0x2d

    aget v4, v4, v5

    xor-int/2addr v3, v4

    aput v3, v2, v9

    aget v3, v2, v8

    iget-object v4, v1, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v5, 0x2e

    aget v4, v4, v5

    xor-int/2addr v3, v4

    aput v3, v2, v8

    aget v3, v2, v7

    iget-object v4, v1, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v5, 0x2f

    aget v4, v4, v5

    xor-int/2addr v3, v4

    aput v3, v2, v7

    .line 282
    invoke-virtual {p0, v2}, Lorg/bouncycastle/crypto/engines/TnepresEngine;->inverseLT([I)V

    aget v3, v2, v10

    aget v4, v2, v9

    aget v5, v2, v8

    aget v6, v2, v7

    invoke-virtual/range {v1 .. v6}, Lorg/bouncycastle/crypto/engines/TnepresEngine;->ib2([IIIII)V

    .line 283
    aget v3, v2, v10

    iget-object v4, v1, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v5, 0x28

    aget v4, v4, v5

    xor-int/2addr v3, v4

    aput v3, v2, v10

    aget v3, v2, v9

    iget-object v4, v1, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v5, 0x29

    aget v4, v4, v5

    xor-int/2addr v3, v4

    aput v3, v2, v9

    aget v3, v2, v8

    iget-object v4, v1, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v5, 0x2a

    aget v4, v4, v5

    xor-int/2addr v3, v4

    aput v3, v2, v8

    aget v3, v2, v7

    iget-object v4, v1, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v5, 0x2b

    aget v4, v4, v5

    xor-int/2addr v3, v4

    aput v3, v2, v7

    .line 284
    invoke-virtual {p0, v2}, Lorg/bouncycastle/crypto/engines/TnepresEngine;->inverseLT([I)V

    aget v3, v2, v10

    aget v4, v2, v9

    aget v5, v2, v8

    aget v6, v2, v7

    invoke-virtual/range {v1 .. v6}, Lorg/bouncycastle/crypto/engines/TnepresEngine;->ib1([IIIII)V

    .line 285
    aget v3, v2, v10

    iget-object v4, v1, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v5, 0x24

    aget v4, v4, v5

    xor-int/2addr v3, v4

    aput v3, v2, v10

    aget v3, v2, v9

    iget-object v4, v1, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v5, 0x25

    aget v4, v4, v5

    xor-int/2addr v3, v4

    aput v3, v2, v9

    aget v3, v2, v8

    iget-object v4, v1, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v5, 0x26

    aget v4, v4, v5

    xor-int/2addr v3, v4

    aput v3, v2, v8

    aget v3, v2, v7

    iget-object v4, v1, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v5, 0x27

    aget v4, v4, v5

    xor-int/2addr v3, v4

    aput v3, v2, v7

    .line 286
    invoke-virtual {p0, v2}, Lorg/bouncycastle/crypto/engines/TnepresEngine;->inverseLT([I)V

    aget v3, v2, v10

    aget v4, v2, v9

    aget v5, v2, v8

    aget v6, v2, v7

    invoke-virtual/range {v1 .. v6}, Lorg/bouncycastle/crypto/engines/TnepresEngine;->ib0([IIIII)V

    .line 287
    aget v3, v2, v10

    iget-object v4, v1, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v5, 0x20

    aget v4, v4, v5

    xor-int/2addr v3, v4

    aput v3, v2, v10

    aget v3, v2, v9

    iget-object v4, v1, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v5, 0x21

    aget v4, v4, v5

    xor-int/2addr v3, v4

    aput v3, v2, v9

    aget v3, v2, v8

    iget-object v4, v1, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v5, 0x22

    aget v4, v4, v5

    xor-int/2addr v3, v4

    aput v3, v2, v8

    aget v3, v2, v7

    iget-object v4, v1, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v5, 0x23

    aget v4, v4, v5

    xor-int/2addr v3, v4

    aput v3, v2, v7

    .line 288
    invoke-virtual {p0, v2}, Lorg/bouncycastle/crypto/engines/TnepresEngine;->inverseLT([I)V

    aget v3, v2, v10

    aget v4, v2, v9

    aget v5, v2, v8

    aget v6, v2, v7

    invoke-virtual/range {v1 .. v6}, Lorg/bouncycastle/crypto/engines/TnepresEngine;->ib7([IIIII)V

    .line 289
    aget v3, v2, v10

    iget-object v4, v1, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v5, 0x1c

    aget v4, v4, v5

    xor-int/2addr v3, v4

    aput v3, v2, v10

    aget v3, v2, v9

    iget-object v4, v1, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v5, 0x1d

    aget v4, v4, v5

    xor-int/2addr v3, v4

    aput v3, v2, v9

    aget v3, v2, v8

    iget-object v4, v1, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v5, 0x1e

    aget v4, v4, v5

    xor-int/2addr v3, v4

    aput v3, v2, v8

    aget v3, v2, v7

    iget-object v4, v1, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v5, 0x1f

    aget v4, v4, v5

    xor-int/2addr v3, v4

    aput v3, v2, v7

    .line 290
    invoke-virtual {p0, v2}, Lorg/bouncycastle/crypto/engines/TnepresEngine;->inverseLT([I)V

    aget v3, v2, v10

    aget v4, v2, v9

    aget v5, v2, v8

    aget v6, v2, v7

    invoke-virtual/range {v1 .. v6}, Lorg/bouncycastle/crypto/engines/TnepresEngine;->ib6([IIIII)V

    .line 291
    aget v3, v2, v10

    iget-object v4, v1, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v5, 0x18

    aget v4, v4, v5

    xor-int/2addr v3, v4

    aput v3, v2, v10

    aget v3, v2, v9

    iget-object v4, v1, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v5, 0x19

    aget v4, v4, v5

    xor-int/2addr v3, v4

    aput v3, v2, v9

    aget v3, v2, v8

    iget-object v4, v1, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v5, 0x1a

    aget v4, v4, v5

    xor-int/2addr v3, v4

    aput v3, v2, v8

    aget v3, v2, v7

    iget-object v4, v1, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v5, 0x1b

    aget v4, v4, v5

    xor-int/2addr v3, v4

    aput v3, v2, v7

    .line 292
    invoke-virtual {p0, v2}, Lorg/bouncycastle/crypto/engines/TnepresEngine;->inverseLT([I)V

    aget v3, v2, v10

    aget v4, v2, v9

    aget v5, v2, v8

    aget v6, v2, v7

    invoke-virtual/range {v1 .. v6}, Lorg/bouncycastle/crypto/engines/TnepresEngine;->ib5([IIIII)V

    .line 293
    aget v3, v2, v10

    iget-object v4, v1, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v5, 0x14

    aget v4, v4, v5

    xor-int/2addr v3, v4

    aput v3, v2, v10

    aget v3, v2, v9

    iget-object v4, v1, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v5, 0x15

    aget v4, v4, v5

    xor-int/2addr v3, v4

    aput v3, v2, v9

    aget v3, v2, v8

    iget-object v4, v1, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v5, 0x16

    aget v4, v4, v5

    xor-int/2addr v3, v4

    aput v3, v2, v8

    aget v3, v2, v7

    iget-object v4, v1, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v5, 0x17

    aget v4, v4, v5

    xor-int/2addr v3, v4

    aput v3, v2, v7

    .line 294
    invoke-virtual {p0, v2}, Lorg/bouncycastle/crypto/engines/TnepresEngine;->inverseLT([I)V

    aget v3, v2, v10

    aget v4, v2, v9

    aget v5, v2, v8

    aget v6, v2, v7

    invoke-virtual/range {v1 .. v6}, Lorg/bouncycastle/crypto/engines/TnepresEngine;->ib4([IIIII)V

    .line 295
    aget v3, v2, v10

    iget-object v4, v1, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v5, 0x10

    aget v4, v4, v5

    xor-int/2addr v3, v4

    aput v3, v2, v10

    aget v3, v2, v9

    iget-object v4, v1, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v5, 0x11

    aget v4, v4, v5

    xor-int/2addr v3, v4

    aput v3, v2, v9

    aget v3, v2, v8

    iget-object v4, v1, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v5, 0x12

    aget v4, v4, v5

    xor-int/2addr v3, v4

    aput v3, v2, v8

    aget v3, v2, v7

    iget-object v4, v1, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v5, 0x13

    aget v4, v4, v5

    xor-int/2addr v3, v4

    aput v3, v2, v7

    .line 296
    invoke-virtual {p0, v2}, Lorg/bouncycastle/crypto/engines/TnepresEngine;->inverseLT([I)V

    aget v3, v2, v10

    aget v4, v2, v9

    aget v5, v2, v8

    aget v6, v2, v7

    invoke-virtual/range {v1 .. v6}, Lorg/bouncycastle/crypto/engines/TnepresEngine;->ib3([IIIII)V

    .line 297
    aget v3, v2, v10

    iget-object v4, v1, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v5, 0xc

    aget v4, v4, v5

    xor-int/2addr v3, v4

    aput v3, v2, v10

    aget v3, v2, v9

    iget-object v4, v1, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v5, 0xd

    aget v4, v4, v5

    xor-int/2addr v3, v4

    aput v3, v2, v9

    aget v3, v2, v8

    iget-object v4, v1, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v5, 0xe

    aget v4, v4, v5

    xor-int/2addr v3, v4

    aput v3, v2, v8

    aget v3, v2, v7

    iget-object v4, v1, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v5, 0xf

    aget v4, v4, v5

    xor-int/2addr v3, v4

    aput v3, v2, v7

    .line 298
    invoke-virtual {p0, v2}, Lorg/bouncycastle/crypto/engines/TnepresEngine;->inverseLT([I)V

    aget v3, v2, v10

    aget v4, v2, v9

    aget v5, v2, v8

    aget v6, v2, v7

    invoke-virtual/range {v1 .. v6}, Lorg/bouncycastle/crypto/engines/TnepresEngine;->ib2([IIIII)V

    .line 299
    aget v3, v2, v10

    iget-object v4, v1, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v5, 0x8

    aget v4, v4, v5

    xor-int/2addr v3, v4

    aput v3, v2, v10

    aget v3, v2, v9

    iget-object v4, v1, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v5, 0x9

    aget v4, v4, v5

    xor-int/2addr v3, v4

    aput v3, v2, v9

    aget v3, v2, v8

    iget-object v4, v1, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v5, 0xa

    aget v4, v4, v5

    xor-int/2addr v3, v4

    aput v3, v2, v8

    aget v3, v2, v7

    iget-object v4, v1, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v5, 0xb

    aget v4, v4, v5

    xor-int/2addr v3, v4

    aput v3, v2, v7

    .line 300
    invoke-virtual {p0, v2}, Lorg/bouncycastle/crypto/engines/TnepresEngine;->inverseLT([I)V

    aget v3, v2, v10

    aget v4, v2, v9

    aget v5, v2, v8

    aget v6, v2, v7

    invoke-virtual/range {v1 .. v6}, Lorg/bouncycastle/crypto/engines/TnepresEngine;->ib1([IIIII)V

    .line 301
    aget v3, v2, v10

    iget-object v4, v1, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    aget v0, v4, v0

    xor-int/2addr v0, v3

    aput v0, v2, v10

    aget v0, v2, v9

    iget-object v3, v1, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/4 v4, 0x5

    aget v3, v3, v4

    xor-int/2addr v0, v3

    aput v0, v2, v9

    aget v0, v2, v8

    iget-object v3, v1, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/4 v4, 0x6

    aget v3, v3, v4

    xor-int/2addr v0, v3

    aput v0, v2, v8

    aget v0, v2, v7

    iget-object v3, v1, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/4 v4, 0x7

    aget v3, v3, v4

    xor-int/2addr v0, v3

    aput v0, v2, v7

    .line 302
    invoke-virtual {p0, v2}, Lorg/bouncycastle/crypto/engines/TnepresEngine;->inverseLT([I)V

    aget v3, v2, v10

    aget v4, v2, v9

    aget v5, v2, v8

    aget v6, v2, v7

    invoke-virtual/range {v1 .. v6}, Lorg/bouncycastle/crypto/engines/TnepresEngine;->ib0([IIIII)V

    .line 304
    aget v0, v2, v7

    iget-object v3, v1, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    aget v3, v3, v7

    xor-int/2addr v0, v3

    invoke-static {v0, p3, p4}, Lorg/bouncycastle/util/Pack;->intToBigEndian(I[BI)V

    .line 305
    aget v0, v2, v8

    iget-object v3, v1, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    aget v3, v3, v8

    xor-int/2addr v0, v3

    add-int/lit8 v3, p4, 0x4

    invoke-static {v0, p3, v3}, Lorg/bouncycastle/util/Pack;->intToBigEndian(I[BI)V

    .line 306
    aget v0, v2, v9

    iget-object v3, v1, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    aget v3, v3, v9

    xor-int/2addr v0, v3

    add-int/lit8 v3, p4, 0x8

    invoke-static {v0, p3, v3}, Lorg/bouncycastle/util/Pack;->intToBigEndian(I[BI)V

    .line 307
    aget v0, v2, v10

    iget-object v3, v1, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    aget v3, v3, v10

    xor-int/2addr v0, v3

    add-int/lit8 v3, p4, 0xc

    invoke-static {v0, p3, v3}, Lorg/bouncycastle/util/Pack;->intToBigEndian(I[BI)V

    .line 308
    return-void
.end method

.method protected encryptBlock([BI[BI)V
    .locals 11
    .param p1, "input"    # [B
    .param p2, "inOff"    # I
    .param p3, "output"    # [B
    .param p4, "outOff"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "input",
            "inOff",
            "output",
            "outOff"
        }
    .end annotation

    .line 173
    const/4 v0, 0x4

    new-array v2, v0, [I

    .line 175
    .local v2, "X":[I
    invoke-static {p1, p2}, Lorg/bouncycastle/util/Pack;->bigEndianToInt([BI)I

    move-result v1

    const/4 v7, 0x3

    aput v1, v2, v7

    .line 176
    add-int/lit8 v1, p2, 0x4

    invoke-static {p1, v1}, Lorg/bouncycastle/util/Pack;->bigEndianToInt([BI)I

    move-result v1

    const/4 v8, 0x2

    aput v1, v2, v8

    .line 177
    add-int/lit8 v1, p2, 0x8

    invoke-static {p1, v1}, Lorg/bouncycastle/util/Pack;->bigEndianToInt([BI)I

    move-result v1

    const/4 v9, 0x1

    aput v1, v2, v9

    .line 178
    add-int/lit8 v1, p2, 0xc

    invoke-static {p1, v1}, Lorg/bouncycastle/util/Pack;->bigEndianToInt([BI)I

    move-result v1

    const/4 v10, 0x0

    aput v1, v2, v10

    .line 180
    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    aget v1, v1, v10

    aget v3, v2, v10

    xor-int/2addr v3, v1

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    aget v1, v1, v9

    aget v4, v2, v9

    xor-int/2addr v4, v1

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    aget v1, v1, v8

    aget v5, v2, v8

    xor-int/2addr v5, v1

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    aget v1, v1, v7

    aget v6, v2, v7

    xor-int/2addr v6, v1

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lorg/bouncycastle/crypto/engines/TnepresEngine;->sb0([IIIII)V

    invoke-virtual {p0, v2}, Lorg/bouncycastle/crypto/engines/TnepresEngine;->LT([I)V

    .line 181
    iget-object v3, v1, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    aget v0, v3, v0

    aget v3, v2, v10

    xor-int/2addr v3, v0

    iget-object v0, v1, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/4 v4, 0x5

    aget v0, v0, v4

    aget v4, v2, v9

    xor-int/2addr v4, v0

    iget-object v0, v1, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/4 v5, 0x6

    aget v0, v0, v5

    aget v5, v2, v8

    xor-int/2addr v5, v0

    iget-object v0, v1, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/4 v6, 0x7

    aget v0, v0, v6

    aget v6, v2, v7

    xor-int/2addr v6, v0

    invoke-virtual/range {v1 .. v6}, Lorg/bouncycastle/crypto/engines/TnepresEngine;->sb1([IIIII)V

    invoke-virtual {p0, v2}, Lorg/bouncycastle/crypto/engines/TnepresEngine;->LT([I)V

    .line 182
    iget-object v0, v1, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v3, 0x8

    aget v0, v0, v3

    aget v3, v2, v10

    xor-int/2addr v3, v0

    iget-object v0, v1, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v4, 0x9

    aget v0, v0, v4

    aget v4, v2, v9

    xor-int/2addr v4, v0

    iget-object v0, v1, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v5, 0xa

    aget v0, v0, v5

    aget v5, v2, v8

    xor-int/2addr v5, v0

    iget-object v0, v1, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v6, 0xb

    aget v0, v0, v6

    aget v6, v2, v7

    xor-int/2addr v6, v0

    invoke-virtual/range {v1 .. v6}, Lorg/bouncycastle/crypto/engines/TnepresEngine;->sb2([IIIII)V

    invoke-virtual {p0, v2}, Lorg/bouncycastle/crypto/engines/TnepresEngine;->LT([I)V

    .line 183
    iget-object v0, v1, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v3, 0xc

    aget v0, v0, v3

    aget v3, v2, v10

    xor-int/2addr v3, v0

    iget-object v0, v1, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v4, 0xd

    aget v0, v0, v4

    aget v4, v2, v9

    xor-int/2addr v4, v0

    iget-object v0, v1, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v5, 0xe

    aget v0, v0, v5

    aget v5, v2, v8

    xor-int/2addr v5, v0

    iget-object v0, v1, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v6, 0xf

    aget v0, v0, v6

    aget v6, v2, v7

    xor-int/2addr v6, v0

    invoke-virtual/range {v1 .. v6}, Lorg/bouncycastle/crypto/engines/TnepresEngine;->sb3([IIIII)V

    invoke-virtual {p0, v2}, Lorg/bouncycastle/crypto/engines/TnepresEngine;->LT([I)V

    .line 184
    iget-object v0, v1, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v3, 0x10

    aget v0, v0, v3

    aget v3, v2, v10

    xor-int/2addr v3, v0

    iget-object v0, v1, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v4, 0x11

    aget v0, v0, v4

    aget v4, v2, v9

    xor-int/2addr v4, v0

    iget-object v0, v1, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v5, 0x12

    aget v0, v0, v5

    aget v5, v2, v8

    xor-int/2addr v5, v0

    iget-object v0, v1, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v6, 0x13

    aget v0, v0, v6

    aget v6, v2, v7

    xor-int/2addr v6, v0

    invoke-virtual/range {v1 .. v6}, Lorg/bouncycastle/crypto/engines/TnepresEngine;->sb4([IIIII)V

    invoke-virtual {p0, v2}, Lorg/bouncycastle/crypto/engines/TnepresEngine;->LT([I)V

    .line 185
    iget-object v0, v1, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v3, 0x14

    aget v0, v0, v3

    aget v3, v2, v10

    xor-int/2addr v3, v0

    iget-object v0, v1, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v4, 0x15

    aget v0, v0, v4

    aget v4, v2, v9

    xor-int/2addr v4, v0

    iget-object v0, v1, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v5, 0x16

    aget v0, v0, v5

    aget v5, v2, v8

    xor-int/2addr v5, v0

    iget-object v0, v1, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v6, 0x17

    aget v0, v0, v6

    aget v6, v2, v7

    xor-int/2addr v6, v0

    invoke-virtual/range {v1 .. v6}, Lorg/bouncycastle/crypto/engines/TnepresEngine;->sb5([IIIII)V

    invoke-virtual {p0, v2}, Lorg/bouncycastle/crypto/engines/TnepresEngine;->LT([I)V

    .line 186
    iget-object v0, v1, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v3, 0x18

    aget v0, v0, v3

    aget v3, v2, v10

    xor-int/2addr v3, v0

    iget-object v0, v1, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v4, 0x19

    aget v0, v0, v4

    aget v4, v2, v9

    xor-int/2addr v4, v0

    iget-object v0, v1, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v5, 0x1a

    aget v0, v0, v5

    aget v5, v2, v8

    xor-int/2addr v5, v0

    iget-object v0, v1, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v6, 0x1b

    aget v0, v0, v6

    aget v6, v2, v7

    xor-int/2addr v6, v0

    invoke-virtual/range {v1 .. v6}, Lorg/bouncycastle/crypto/engines/TnepresEngine;->sb6([IIIII)V

    invoke-virtual {p0, v2}, Lorg/bouncycastle/crypto/engines/TnepresEngine;->LT([I)V

    .line 187
    iget-object v0, v1, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v3, 0x1c

    aget v0, v0, v3

    aget v3, v2, v10

    xor-int/2addr v3, v0

    iget-object v0, v1, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v4, 0x1d

    aget v0, v0, v4

    aget v4, v2, v9

    xor-int/2addr v4, v0

    iget-object v0, v1, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v5, 0x1e

    aget v0, v0, v5

    aget v5, v2, v8

    xor-int/2addr v5, v0

    iget-object v0, v1, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v6, 0x1f

    aget v0, v0, v6

    aget v6, v2, v7

    xor-int/2addr v6, v0

    invoke-virtual/range {v1 .. v6}, Lorg/bouncycastle/crypto/engines/TnepresEngine;->sb7([IIIII)V

    invoke-virtual {p0, v2}, Lorg/bouncycastle/crypto/engines/TnepresEngine;->LT([I)V

    .line 188
    iget-object v0, v1, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v3, 0x20

    aget v0, v0, v3

    aget v3, v2, v10

    xor-int/2addr v3, v0

    iget-object v0, v1, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v4, 0x21

    aget v0, v0, v4

    aget v4, v2, v9

    xor-int/2addr v4, v0

    iget-object v0, v1, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v5, 0x22

    aget v0, v0, v5

    aget v5, v2, v8

    xor-int/2addr v5, v0

    iget-object v0, v1, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v6, 0x23

    aget v0, v0, v6

    aget v6, v2, v7

    xor-int/2addr v6, v0

    invoke-virtual/range {v1 .. v6}, Lorg/bouncycastle/crypto/engines/TnepresEngine;->sb0([IIIII)V

    invoke-virtual {p0, v2}, Lorg/bouncycastle/crypto/engines/TnepresEngine;->LT([I)V

    .line 189
    iget-object v0, v1, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v3, 0x24

    aget v0, v0, v3

    aget v3, v2, v10

    xor-int/2addr v3, v0

    iget-object v0, v1, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v4, 0x25

    aget v0, v0, v4

    aget v4, v2, v9

    xor-int/2addr v4, v0

    iget-object v0, v1, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v5, 0x26

    aget v0, v0, v5

    aget v5, v2, v8

    xor-int/2addr v5, v0

    iget-object v0, v1, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v6, 0x27

    aget v0, v0, v6

    aget v6, v2, v7

    xor-int/2addr v6, v0

    invoke-virtual/range {v1 .. v6}, Lorg/bouncycastle/crypto/engines/TnepresEngine;->sb1([IIIII)V

    invoke-virtual {p0, v2}, Lorg/bouncycastle/crypto/engines/TnepresEngine;->LT([I)V

    .line 190
    iget-object v0, v1, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v3, 0x28

    aget v0, v0, v3

    aget v3, v2, v10

    xor-int/2addr v3, v0

    iget-object v0, v1, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v4, 0x29

    aget v0, v0, v4

    aget v4, v2, v9

    xor-int/2addr v4, v0

    iget-object v0, v1, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v5, 0x2a

    aget v0, v0, v5

    aget v5, v2, v8

    xor-int/2addr v5, v0

    iget-object v0, v1, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v6, 0x2b

    aget v0, v0, v6

    aget v6, v2, v7

    xor-int/2addr v6, v0

    invoke-virtual/range {v1 .. v6}, Lorg/bouncycastle/crypto/engines/TnepresEngine;->sb2([IIIII)V

    invoke-virtual {p0, v2}, Lorg/bouncycastle/crypto/engines/TnepresEngine;->LT([I)V

    .line 191
    iget-object v0, v1, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v3, 0x2c

    aget v0, v0, v3

    aget v3, v2, v10

    xor-int/2addr v3, v0

    iget-object v0, v1, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v4, 0x2d

    aget v0, v0, v4

    aget v4, v2, v9

    xor-int/2addr v4, v0

    iget-object v0, v1, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v5, 0x2e

    aget v0, v0, v5

    aget v5, v2, v8

    xor-int/2addr v5, v0

    iget-object v0, v1, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v6, 0x2f

    aget v0, v0, v6

    aget v6, v2, v7

    xor-int/2addr v6, v0

    invoke-virtual/range {v1 .. v6}, Lorg/bouncycastle/crypto/engines/TnepresEngine;->sb3([IIIII)V

    invoke-virtual {p0, v2}, Lorg/bouncycastle/crypto/engines/TnepresEngine;->LT([I)V

    .line 192
    iget-object v0, v1, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v3, 0x30

    aget v0, v0, v3

    aget v3, v2, v10

    xor-int/2addr v3, v0

    iget-object v0, v1, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v4, 0x31

    aget v0, v0, v4

    aget v4, v2, v9

    xor-int/2addr v4, v0

    iget-object v0, v1, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v5, 0x32

    aget v0, v0, v5

    aget v5, v2, v8

    xor-int/2addr v5, v0

    iget-object v0, v1, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v6, 0x33

    aget v0, v0, v6

    aget v6, v2, v7

    xor-int/2addr v6, v0

    invoke-virtual/range {v1 .. v6}, Lorg/bouncycastle/crypto/engines/TnepresEngine;->sb4([IIIII)V

    invoke-virtual {p0, v2}, Lorg/bouncycastle/crypto/engines/TnepresEngine;->LT([I)V

    .line 193
    iget-object v0, v1, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v3, 0x34

    aget v0, v0, v3

    aget v3, v2, v10

    xor-int/2addr v3, v0

    iget-object v0, v1, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v4, 0x35

    aget v0, v0, v4

    aget v4, v2, v9

    xor-int/2addr v4, v0

    iget-object v0, v1, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v5, 0x36

    aget v0, v0, v5

    aget v5, v2, v8

    xor-int/2addr v5, v0

    iget-object v0, v1, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v6, 0x37

    aget v0, v0, v6

    aget v6, v2, v7

    xor-int/2addr v6, v0

    invoke-virtual/range {v1 .. v6}, Lorg/bouncycastle/crypto/engines/TnepresEngine;->sb5([IIIII)V

    invoke-virtual {p0, v2}, Lorg/bouncycastle/crypto/engines/TnepresEngine;->LT([I)V

    .line 194
    iget-object v0, v1, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v3, 0x38

    aget v0, v0, v3

    aget v3, v2, v10

    xor-int/2addr v3, v0

    iget-object v0, v1, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v4, 0x39

    aget v0, v0, v4

    aget v4, v2, v9

    xor-int/2addr v4, v0

    iget-object v0, v1, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v5, 0x3a

    aget v0, v0, v5

    aget v5, v2, v8

    xor-int/2addr v5, v0

    iget-object v0, v1, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v6, 0x3b

    aget v0, v0, v6

    aget v6, v2, v7

    xor-int/2addr v6, v0

    invoke-virtual/range {v1 .. v6}, Lorg/bouncycastle/crypto/engines/TnepresEngine;->sb6([IIIII)V

    invoke-virtual {p0, v2}, Lorg/bouncycastle/crypto/engines/TnepresEngine;->LT([I)V

    .line 195
    iget-object v0, v1, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v3, 0x3c

    aget v0, v0, v3

    aget v3, v2, v10

    xor-int/2addr v3, v0

    iget-object v0, v1, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v4, 0x3d

    aget v0, v0, v4

    aget v4, v2, v9

    xor-int/2addr v4, v0

    iget-object v0, v1, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v5, 0x3e

    aget v0, v0, v5

    aget v5, v2, v8

    xor-int/2addr v5, v0

    iget-object v0, v1, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v6, 0x3f

    aget v0, v0, v6

    aget v6, v2, v7

    xor-int/2addr v6, v0

    invoke-virtual/range {v1 .. v6}, Lorg/bouncycastle/crypto/engines/TnepresEngine;->sb7([IIIII)V

    invoke-virtual {p0, v2}, Lorg/bouncycastle/crypto/engines/TnepresEngine;->LT([I)V

    .line 196
    iget-object v0, v1, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v3, 0x40

    aget v0, v0, v3

    aget v3, v2, v10

    xor-int/2addr v3, v0

    iget-object v0, v1, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v4, 0x41

    aget v0, v0, v4

    aget v4, v2, v9

    xor-int/2addr v4, v0

    iget-object v0, v1, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v5, 0x42

    aget v0, v0, v5

    aget v5, v2, v8

    xor-int/2addr v5, v0

    iget-object v0, v1, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v6, 0x43

    aget v0, v0, v6

    aget v6, v2, v7

    xor-int/2addr v6, v0

    invoke-virtual/range {v1 .. v6}, Lorg/bouncycastle/crypto/engines/TnepresEngine;->sb0([IIIII)V

    invoke-virtual {p0, v2}, Lorg/bouncycastle/crypto/engines/TnepresEngine;->LT([I)V

    .line 197
    iget-object v0, v1, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v3, 0x44

    aget v0, v0, v3

    aget v3, v2, v10

    xor-int/2addr v3, v0

    iget-object v0, v1, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v4, 0x45

    aget v0, v0, v4

    aget v4, v2, v9

    xor-int/2addr v4, v0

    iget-object v0, v1, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v5, 0x46

    aget v0, v0, v5

    aget v5, v2, v8

    xor-int/2addr v5, v0

    iget-object v0, v1, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v6, 0x47

    aget v0, v0, v6

    aget v6, v2, v7

    xor-int/2addr v6, v0

    invoke-virtual/range {v1 .. v6}, Lorg/bouncycastle/crypto/engines/TnepresEngine;->sb1([IIIII)V

    invoke-virtual {p0, v2}, Lorg/bouncycastle/crypto/engines/TnepresEngine;->LT([I)V

    .line 198
    iget-object v0, v1, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v3, 0x48

    aget v0, v0, v3

    aget v3, v2, v10

    xor-int/2addr v3, v0

    iget-object v0, v1, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v4, 0x49

    aget v0, v0, v4

    aget v4, v2, v9

    xor-int/2addr v4, v0

    iget-object v0, v1, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v5, 0x4a

    aget v0, v0, v5

    aget v5, v2, v8

    xor-int/2addr v5, v0

    iget-object v0, v1, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v6, 0x4b

    aget v0, v0, v6

    aget v6, v2, v7

    xor-int/2addr v6, v0

    invoke-virtual/range {v1 .. v6}, Lorg/bouncycastle/crypto/engines/TnepresEngine;->sb2([IIIII)V

    invoke-virtual {p0, v2}, Lorg/bouncycastle/crypto/engines/TnepresEngine;->LT([I)V

    .line 199
    iget-object v0, v1, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v3, 0x4c

    aget v0, v0, v3

    aget v3, v2, v10

    xor-int/2addr v3, v0

    iget-object v0, v1, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v4, 0x4d

    aget v0, v0, v4

    aget v4, v2, v9

    xor-int/2addr v4, v0

    iget-object v0, v1, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v5, 0x4e

    aget v0, v0, v5

    aget v5, v2, v8

    xor-int/2addr v5, v0

    iget-object v0, v1, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v6, 0x4f

    aget v0, v0, v6

    aget v6, v2, v7

    xor-int/2addr v6, v0

    invoke-virtual/range {v1 .. v6}, Lorg/bouncycastle/crypto/engines/TnepresEngine;->sb3([IIIII)V

    invoke-virtual {p0, v2}, Lorg/bouncycastle/crypto/engines/TnepresEngine;->LT([I)V

    .line 200
    iget-object v0, v1, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v3, 0x50

    aget v0, v0, v3

    aget v3, v2, v10

    xor-int/2addr v3, v0

    iget-object v0, v1, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v4, 0x51

    aget v0, v0, v4

    aget v4, v2, v9

    xor-int/2addr v4, v0

    iget-object v0, v1, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v5, 0x52

    aget v0, v0, v5

    aget v5, v2, v8

    xor-int/2addr v5, v0

    iget-object v0, v1, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v6, 0x53

    aget v0, v0, v6

    aget v6, v2, v7

    xor-int/2addr v6, v0

    invoke-virtual/range {v1 .. v6}, Lorg/bouncycastle/crypto/engines/TnepresEngine;->sb4([IIIII)V

    invoke-virtual {p0, v2}, Lorg/bouncycastle/crypto/engines/TnepresEngine;->LT([I)V

    .line 201
    iget-object v0, v1, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v3, 0x54

    aget v0, v0, v3

    aget v3, v2, v10

    xor-int/2addr v3, v0

    iget-object v0, v1, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v4, 0x55

    aget v0, v0, v4

    aget v4, v2, v9

    xor-int/2addr v4, v0

    iget-object v0, v1, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v5, 0x56

    aget v0, v0, v5

    aget v5, v2, v8

    xor-int/2addr v5, v0

    iget-object v0, v1, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v6, 0x57

    aget v0, v0, v6

    aget v6, v2, v7

    xor-int/2addr v6, v0

    invoke-virtual/range {v1 .. v6}, Lorg/bouncycastle/crypto/engines/TnepresEngine;->sb5([IIIII)V

    invoke-virtual {p0, v2}, Lorg/bouncycastle/crypto/engines/TnepresEngine;->LT([I)V

    .line 202
    iget-object v0, v1, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v3, 0x58

    aget v0, v0, v3

    aget v3, v2, v10

    xor-int/2addr v3, v0

    iget-object v0, v1, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v4, 0x59

    aget v0, v0, v4

    aget v4, v2, v9

    xor-int/2addr v4, v0

    iget-object v0, v1, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v5, 0x5a

    aget v0, v0, v5

    aget v5, v2, v8

    xor-int/2addr v5, v0

    iget-object v0, v1, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v6, 0x5b

    aget v0, v0, v6

    aget v6, v2, v7

    xor-int/2addr v6, v0

    invoke-virtual/range {v1 .. v6}, Lorg/bouncycastle/crypto/engines/TnepresEngine;->sb6([IIIII)V

    invoke-virtual {p0, v2}, Lorg/bouncycastle/crypto/engines/TnepresEngine;->LT([I)V

    .line 203
    iget-object v0, v1, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v3, 0x5c

    aget v0, v0, v3

    aget v3, v2, v10

    xor-int/2addr v3, v0

    iget-object v0, v1, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v4, 0x5d

    aget v0, v0, v4

    aget v4, v2, v9

    xor-int/2addr v4, v0

    iget-object v0, v1, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v5, 0x5e

    aget v0, v0, v5

    aget v5, v2, v8

    xor-int/2addr v5, v0

    iget-object v0, v1, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v6, 0x5f

    aget v0, v0, v6

    aget v6, v2, v7

    xor-int/2addr v6, v0

    invoke-virtual/range {v1 .. v6}, Lorg/bouncycastle/crypto/engines/TnepresEngine;->sb7([IIIII)V

    invoke-virtual {p0, v2}, Lorg/bouncycastle/crypto/engines/TnepresEngine;->LT([I)V

    .line 204
    iget-object v0, v1, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v3, 0x60

    aget v0, v0, v3

    aget v3, v2, v10

    xor-int/2addr v3, v0

    iget-object v0, v1, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v4, 0x61

    aget v0, v0, v4

    aget v4, v2, v9

    xor-int/2addr v4, v0

    iget-object v0, v1, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v5, 0x62

    aget v0, v0, v5

    aget v5, v2, v8

    xor-int/2addr v5, v0

    iget-object v0, v1, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v6, 0x63

    aget v0, v0, v6

    aget v6, v2, v7

    xor-int/2addr v6, v0

    invoke-virtual/range {v1 .. v6}, Lorg/bouncycastle/crypto/engines/TnepresEngine;->sb0([IIIII)V

    invoke-virtual {p0, v2}, Lorg/bouncycastle/crypto/engines/TnepresEngine;->LT([I)V

    .line 205
    iget-object v0, v1, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v3, 0x64

    aget v0, v0, v3

    aget v3, v2, v10

    xor-int/2addr v3, v0

    iget-object v0, v1, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v4, 0x65

    aget v0, v0, v4

    aget v4, v2, v9

    xor-int/2addr v4, v0

    iget-object v0, v1, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v5, 0x66

    aget v0, v0, v5

    aget v5, v2, v8

    xor-int/2addr v5, v0

    iget-object v0, v1, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v6, 0x67

    aget v0, v0, v6

    aget v6, v2, v7

    xor-int/2addr v6, v0

    invoke-virtual/range {v1 .. v6}, Lorg/bouncycastle/crypto/engines/TnepresEngine;->sb1([IIIII)V

    invoke-virtual {p0, v2}, Lorg/bouncycastle/crypto/engines/TnepresEngine;->LT([I)V

    .line 206
    iget-object v0, v1, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v3, 0x68

    aget v0, v0, v3

    aget v3, v2, v10

    xor-int/2addr v3, v0

    iget-object v0, v1, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v4, 0x69

    aget v0, v0, v4

    aget v4, v2, v9

    xor-int/2addr v4, v0

    iget-object v0, v1, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v5, 0x6a

    aget v0, v0, v5

    aget v5, v2, v8

    xor-int/2addr v5, v0

    iget-object v0, v1, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v6, 0x6b

    aget v0, v0, v6

    aget v6, v2, v7

    xor-int/2addr v6, v0

    invoke-virtual/range {v1 .. v6}, Lorg/bouncycastle/crypto/engines/TnepresEngine;->sb2([IIIII)V

    invoke-virtual {p0, v2}, Lorg/bouncycastle/crypto/engines/TnepresEngine;->LT([I)V

    .line 207
    iget-object v0, v1, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v3, 0x6c

    aget v0, v0, v3

    aget v3, v2, v10

    xor-int/2addr v3, v0

    iget-object v0, v1, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v4, 0x6d

    aget v0, v0, v4

    aget v4, v2, v9

    xor-int/2addr v4, v0

    iget-object v0, v1, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v5, 0x6e

    aget v0, v0, v5

    aget v5, v2, v8

    xor-int/2addr v5, v0

    iget-object v0, v1, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v6, 0x6f

    aget v0, v0, v6

    aget v6, v2, v7

    xor-int/2addr v6, v0

    invoke-virtual/range {v1 .. v6}, Lorg/bouncycastle/crypto/engines/TnepresEngine;->sb3([IIIII)V

    invoke-virtual {p0, v2}, Lorg/bouncycastle/crypto/engines/TnepresEngine;->LT([I)V

    .line 208
    iget-object v0, v1, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v3, 0x70

    aget v0, v0, v3

    aget v3, v2, v10

    xor-int/2addr v3, v0

    iget-object v0, v1, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v4, 0x71

    aget v0, v0, v4

    aget v4, v2, v9

    xor-int/2addr v4, v0

    iget-object v0, v1, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v5, 0x72

    aget v0, v0, v5

    aget v5, v2, v8

    xor-int/2addr v5, v0

    iget-object v0, v1, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v6, 0x73

    aget v0, v0, v6

    aget v6, v2, v7

    xor-int/2addr v6, v0

    invoke-virtual/range {v1 .. v6}, Lorg/bouncycastle/crypto/engines/TnepresEngine;->sb4([IIIII)V

    invoke-virtual {p0, v2}, Lorg/bouncycastle/crypto/engines/TnepresEngine;->LT([I)V

    .line 209
    iget-object v0, v1, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v3, 0x74

    aget v0, v0, v3

    aget v3, v2, v10

    xor-int/2addr v3, v0

    iget-object v0, v1, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v4, 0x75

    aget v0, v0, v4

    aget v4, v2, v9

    xor-int/2addr v4, v0

    iget-object v0, v1, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v5, 0x76

    aget v0, v0, v5

    aget v5, v2, v8

    xor-int/2addr v5, v0

    iget-object v0, v1, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v6, 0x77

    aget v0, v0, v6

    aget v6, v2, v7

    xor-int/2addr v6, v0

    invoke-virtual/range {v1 .. v6}, Lorg/bouncycastle/crypto/engines/TnepresEngine;->sb5([IIIII)V

    invoke-virtual {p0, v2}, Lorg/bouncycastle/crypto/engines/TnepresEngine;->LT([I)V

    .line 210
    iget-object v0, v1, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v3, 0x78

    aget v0, v0, v3

    aget v3, v2, v10

    xor-int/2addr v3, v0

    iget-object v0, v1, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v4, 0x79

    aget v0, v0, v4

    aget v4, v2, v9

    xor-int/2addr v4, v0

    iget-object v0, v1, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v5, 0x7a

    aget v0, v0, v5

    aget v5, v2, v8

    xor-int/2addr v5, v0

    iget-object v0, v1, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v6, 0x7b

    aget v0, v0, v6

    aget v6, v2, v7

    xor-int/2addr v6, v0

    invoke-virtual/range {v1 .. v6}, Lorg/bouncycastle/crypto/engines/TnepresEngine;->sb6([IIIII)V

    invoke-virtual {p0, v2}, Lorg/bouncycastle/crypto/engines/TnepresEngine;->LT([I)V

    .line 211
    iget-object v0, v1, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v3, 0x7c

    aget v0, v0, v3

    aget v3, v2, v10

    xor-int/2addr v3, v0

    iget-object v0, v1, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v4, 0x7d

    aget v0, v0, v4

    aget v4, v2, v9

    xor-int/2addr v4, v0

    iget-object v0, v1, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v5, 0x7e

    aget v0, v0, v5

    aget v5, v2, v8

    xor-int/2addr v5, v0

    iget-object v0, v1, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v6, 0x7f

    aget v0, v0, v6

    aget v6, v2, v7

    xor-int/2addr v6, v0

    invoke-virtual/range {v1 .. v6}, Lorg/bouncycastle/crypto/engines/TnepresEngine;->sb7([IIIII)V

    .line 213
    iget-object v0, v1, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v3, 0x83

    aget v0, v0, v3

    aget v3, v2, v7

    xor-int/2addr v0, v3

    invoke-static {v0, p3, p4}, Lorg/bouncycastle/util/Pack;->intToBigEndian(I[BI)V

    .line 214
    iget-object v0, v1, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v3, 0x82

    aget v0, v0, v3

    aget v3, v2, v8

    xor-int/2addr v0, v3

    add-int/lit8 v3, p4, 0x4

    invoke-static {v0, p3, v3}, Lorg/bouncycastle/util/Pack;->intToBigEndian(I[BI)V

    .line 215
    iget-object v0, v1, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v3, 0x81

    aget v0, v0, v3

    aget v3, v2, v9

    xor-int/2addr v0, v3

    add-int/lit8 v3, p4, 0x8

    invoke-static {v0, p3, v3}, Lorg/bouncycastle/util/Pack;->intToBigEndian(I[BI)V

    .line 216
    iget-object v0, v1, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v3, 0x80

    aget v0, v0, v3

    aget v3, v2, v10

    xor-int/2addr v0, v3

    add-int/lit8 v3, p4, 0xc

    invoke-static {v0, p3, v3}, Lorg/bouncycastle/util/Pack;->intToBigEndian(I[BI)V

    .line 217
    return-void
.end method

.method public getAlgorithmName()Ljava/lang/String;
    .locals 1

    .line 22
    const-string v0, "Tnepres"

    return-object v0
.end method

.method protected makeWorkingKey([B)[I
    .locals 23
    .param p1, "key"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "key"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 38
    move-object/from16 v0, p1

    const/16 v1, 0x10

    new-array v2, v1, [I

    .line 39
    .local v2, "kPad":[I
    const/4 v3, 0x0

    .line 40
    .local v3, "off":I
    const/4 v4, 0x0

    .line 42
    .local v4, "length":I
    array-length v5, v0

    const/4 v6, 0x4

    sub-int/2addr v5, v6

    .end local v3    # "off":I
    .local v5, "off":I
    :goto_0
    if-lez v5, :cond_0

    .line 44
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "length":I
    .local v3, "length":I
    invoke-static {v0, v5}, Lorg/bouncycastle/util/Pack;->bigEndianToInt([BI)I

    move-result v7

    aput v7, v2, v4

    .line 42
    add-int/lit8 v5, v5, -0x4

    move v4, v3

    goto :goto_0

    .line 47
    .end local v3    # "length":I
    .restart local v4    # "length":I
    :cond_0
    if-nez v5, :cond_4

    .line 49
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "length":I
    .restart local v3    # "length":I
    const/4 v7, 0x0

    invoke-static {v0, v7}, Lorg/bouncycastle/util/Pack;->bigEndianToInt([BI)I

    move-result v8

    aput v8, v2, v4

    .line 50
    const/16 v4, 0x8

    const/4 v8, 0x1

    if-ge v3, v4, :cond_1

    .line 52
    aput v8, v2, v3

    .line 63
    :cond_1
    const/16 v9, 0x84

    .line 64
    .local v9, "amount":I
    new-array v10, v9, [I

    .line 69
    .local v10, "w":[I
    const/16 v11, 0x8

    .local v11, "i":I
    :goto_1
    const v12, -0x61c88647

    const/16 v13, 0xb

    if-ge v11, v1, :cond_2

    .line 71
    add-int/lit8 v14, v11, -0x8

    aget v14, v2, v14

    add-int/lit8 v15, v11, -0x5

    aget v15, v2, v15

    xor-int/2addr v14, v15

    add-int/lit8 v15, v11, -0x3

    aget v15, v2, v15

    xor-int/2addr v14, v15

    add-int/lit8 v15, v11, -0x1

    aget v15, v2, v15

    xor-int/2addr v14, v15

    xor-int/2addr v12, v14

    add-int/lit8 v14, v11, -0x8

    xor-int/2addr v12, v14

    invoke-static {v12, v13}, Lorg/bouncycastle/crypto/engines/TnepresEngine;->rotateLeft(II)I

    move-result v12

    aput v12, v2, v11

    .line 69
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 74
    .end local v11    # "i":I
    :cond_2
    invoke-static {v2, v4, v10, v7, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 79
    const/16 v11, 0x8

    .restart local v11    # "i":I
    :goto_2
    if-ge v11, v9, :cond_3

    .line 81
    add-int/lit8 v14, v11, -0x8

    aget v14, v10, v14

    add-int/lit8 v15, v11, -0x5

    aget v15, v10, v15

    xor-int/2addr v14, v15

    add-int/lit8 v15, v11, -0x3

    aget v15, v10, v15

    xor-int/2addr v14, v15

    add-int/lit8 v15, v11, -0x1

    aget v15, v10, v15

    xor-int/2addr v14, v15

    xor-int/2addr v14, v12

    xor-int/2addr v14, v11

    invoke-static {v14, v13}, Lorg/bouncycastle/crypto/engines/TnepresEngine;->rotateLeft(II)I

    move-result v14

    aput v14, v10, v11

    .line 79
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 87
    .end local v11    # "i":I
    :cond_3
    new-array v15, v6, [I

    .line 89
    .local v15, "X":[I
    aget v16, v10, v7

    aget v17, v10, v8

    const/4 v11, 0x2

    aget v18, v10, v11

    const/4 v12, 0x3

    aget v19, v10, v12

    move-object/from16 v14, p0

    invoke-virtual/range {v14 .. v19}, Lorg/bouncycastle/crypto/engines/TnepresEngine;->sb3([IIIII)V

    .line 90
    aget v14, v15, v7

    aput v14, v10, v7

    aget v14, v15, v8

    aput v14, v10, v8

    aget v14, v15, v11

    aput v14, v10, v11

    aget v14, v15, v12

    aput v14, v10, v12

    .line 91
    aget v16, v10, v6

    const/16 v20, 0x5

    aget v17, v10, v20

    const/16 v21, 0x6

    aget v18, v10, v21

    const/16 v22, 0x7

    aget v19, v10, v22

    move-object/from16 v14, p0

    invoke-virtual/range {v14 .. v19}, Lorg/bouncycastle/crypto/engines/TnepresEngine;->sb2([IIIII)V

    .line 92
    aget v14, v15, v7

    aput v14, v10, v6

    aget v6, v15, v8

    aput v6, v10, v20

    aget v6, v15, v11

    aput v6, v10, v21

    aget v6, v15, v12

    aput v6, v10, v22

    .line 93
    aget v16, v10, v4

    const/16 v6, 0x9

    aget v17, v10, v6

    const/16 v20, 0xa

    aget v18, v10, v20

    aget v19, v10, v13

    move-object/from16 v14, p0

    invoke-virtual/range {v14 .. v19}, Lorg/bouncycastle/crypto/engines/TnepresEngine;->sb1([IIIII)V

    .line 94
    aget v14, v15, v7

    aput v14, v10, v4

    aget v4, v15, v8

    aput v4, v10, v6

    aget v4, v15, v11

    aput v4, v10, v20

    aget v4, v15, v12

    aput v4, v10, v13

    .line 95
    const/16 v4, 0xc

    aget v16, v10, v4

    const/16 v6, 0xd

    aget v17, v10, v6

    const/16 v13, 0xe

    aget v18, v10, v13

    const/16 v20, 0xf

    aget v19, v10, v20

    move-object/from16 v14, p0

    invoke-virtual/range {v14 .. v19}, Lorg/bouncycastle/crypto/engines/TnepresEngine;->sb0([IIIII)V

    .line 96
    aget v14, v15, v7

    aput v14, v10, v4

    aget v4, v15, v8

    aput v4, v10, v6

    aget v4, v15, v11

    aput v4, v10, v13

    aget v4, v15, v12

    aput v4, v10, v20

    .line 97
    aget v16, v10, v1

    const/16 v4, 0x11

    aget v17, v10, v4

    const/16 v6, 0x12

    aget v18, v10, v6

    const/16 v13, 0x13

    aget v19, v10, v13

    move-object/from16 v14, p0

    invoke-virtual/range {v14 .. v19}, Lorg/bouncycastle/crypto/engines/TnepresEngine;->sb7([IIIII)V

    .line 98
    aget v14, v15, v7

    aput v14, v10, v1

    aget v1, v15, v8

    aput v1, v10, v4

    aget v1, v15, v11

    aput v1, v10, v6

    aget v1, v15, v12

    aput v1, v10, v13

    .line 99
    const/16 v1, 0x14

    aget v16, v10, v1

    const/16 v4, 0x15

    aget v17, v10, v4

    const/16 v4, 0x16

    aget v18, v10, v4

    const/16 v4, 0x17

    aget v19, v10, v4

    move-object/from16 v14, p0

    invoke-virtual/range {v14 .. v19}, Lorg/bouncycastle/crypto/engines/TnepresEngine;->sb6([IIIII)V

    .line 100
    aget v4, v15, v7

    aput v4, v10, v1

    const/16 v1, 0x15

    aget v4, v15, v8

    aput v4, v10, v1

    const/16 v1, 0x16

    aget v4, v15, v11

    aput v4, v10, v1

    const/16 v1, 0x17

    aget v4, v15, v12

    aput v4, v10, v1

    .line 101
    const/16 v1, 0x18

    aget v16, v10, v1

    const/16 v1, 0x19

    aget v17, v10, v1

    const/16 v1, 0x1a

    aget v18, v10, v1

    const/16 v1, 0x1b

    aget v19, v10, v1

    invoke-virtual/range {v14 .. v19}, Lorg/bouncycastle/crypto/engines/TnepresEngine;->sb5([IIIII)V

    .line 102
    const/16 v1, 0x18

    aget v4, v15, v7

    aput v4, v10, v1

    const/16 v1, 0x19

    aget v4, v15, v8

    aput v4, v10, v1

    const/16 v1, 0x1a

    aget v4, v15, v11

    aput v4, v10, v1

    const/16 v1, 0x1b

    aget v4, v15, v12

    aput v4, v10, v1

    .line 103
    const/16 v1, 0x1c

    aget v16, v10, v1

    const/16 v1, 0x1d

    aget v17, v10, v1

    const/16 v1, 0x1e

    aget v18, v10, v1

    const/16 v1, 0x1f

    aget v19, v10, v1

    invoke-virtual/range {v14 .. v19}, Lorg/bouncycastle/crypto/engines/TnepresEngine;->sb4([IIIII)V

    .line 104
    const/16 v1, 0x1c

    aget v4, v15, v7

    aput v4, v10, v1

    const/16 v1, 0x1d

    aget v4, v15, v8

    aput v4, v10, v1

    const/16 v1, 0x1e

    aget v4, v15, v11

    aput v4, v10, v1

    const/16 v1, 0x1f

    aget v4, v15, v12

    aput v4, v10, v1

    .line 105
    const/16 v1, 0x20

    aget v16, v10, v1

    const/16 v1, 0x21

    aget v17, v10, v1

    const/16 v1, 0x22

    aget v18, v10, v1

    const/16 v1, 0x23

    aget v19, v10, v1

    invoke-virtual/range {v14 .. v19}, Lorg/bouncycastle/crypto/engines/TnepresEngine;->sb3([IIIII)V

    .line 106
    const/16 v1, 0x20

    aget v4, v15, v7

    aput v4, v10, v1

    const/16 v1, 0x21

    aget v4, v15, v8

    aput v4, v10, v1

    const/16 v1, 0x22

    aget v4, v15, v11

    aput v4, v10, v1

    const/16 v1, 0x23

    aget v4, v15, v12

    aput v4, v10, v1

    .line 107
    const/16 v1, 0x24

    aget v16, v10, v1

    const/16 v1, 0x25

    aget v17, v10, v1

    const/16 v1, 0x26

    aget v18, v10, v1

    const/16 v1, 0x27

    aget v19, v10, v1

    invoke-virtual/range {v14 .. v19}, Lorg/bouncycastle/crypto/engines/TnepresEngine;->sb2([IIIII)V

    .line 108
    const/16 v1, 0x24

    aget v4, v15, v7

    aput v4, v10, v1

    const/16 v1, 0x25

    aget v4, v15, v8

    aput v4, v10, v1

    const/16 v1, 0x26

    aget v4, v15, v11

    aput v4, v10, v1

    const/16 v1, 0x27

    aget v4, v15, v12

    aput v4, v10, v1

    .line 109
    const/16 v1, 0x28

    aget v16, v10, v1

    const/16 v1, 0x29

    aget v17, v10, v1

    const/16 v1, 0x2a

    aget v18, v10, v1

    const/16 v1, 0x2b

    aget v19, v10, v1

    invoke-virtual/range {v14 .. v19}, Lorg/bouncycastle/crypto/engines/TnepresEngine;->sb1([IIIII)V

    .line 110
    const/16 v1, 0x28

    aget v4, v15, v7

    aput v4, v10, v1

    const/16 v1, 0x29

    aget v4, v15, v8

    aput v4, v10, v1

    const/16 v1, 0x2a

    aget v4, v15, v11

    aput v4, v10, v1

    const/16 v1, 0x2b

    aget v4, v15, v12

    aput v4, v10, v1

    .line 111
    const/16 v1, 0x2c

    aget v16, v10, v1

    const/16 v1, 0x2d

    aget v17, v10, v1

    const/16 v1, 0x2e

    aget v18, v10, v1

    const/16 v1, 0x2f

    aget v19, v10, v1

    invoke-virtual/range {v14 .. v19}, Lorg/bouncycastle/crypto/engines/TnepresEngine;->sb0([IIIII)V

    .line 112
    const/16 v1, 0x2c

    aget v4, v15, v7

    aput v4, v10, v1

    const/16 v1, 0x2d

    aget v4, v15, v8

    aput v4, v10, v1

    const/16 v1, 0x2e

    aget v4, v15, v11

    aput v4, v10, v1

    const/16 v1, 0x2f

    aget v4, v15, v12

    aput v4, v10, v1

    .line 113
    const/16 v1, 0x30

    aget v16, v10, v1

    const/16 v1, 0x31

    aget v17, v10, v1

    const/16 v1, 0x32

    aget v18, v10, v1

    const/16 v1, 0x33

    aget v19, v10, v1

    invoke-virtual/range {v14 .. v19}, Lorg/bouncycastle/crypto/engines/TnepresEngine;->sb7([IIIII)V

    .line 114
    const/16 v1, 0x30

    aget v4, v15, v7

    aput v4, v10, v1

    const/16 v1, 0x31

    aget v4, v15, v8

    aput v4, v10, v1

    const/16 v1, 0x32

    aget v4, v15, v11

    aput v4, v10, v1

    const/16 v1, 0x33

    aget v4, v15, v12

    aput v4, v10, v1

    .line 115
    const/16 v1, 0x34

    aget v16, v10, v1

    const/16 v1, 0x35

    aget v17, v10, v1

    const/16 v1, 0x36

    aget v18, v10, v1

    const/16 v1, 0x37

    aget v19, v10, v1

    invoke-virtual/range {v14 .. v19}, Lorg/bouncycastle/crypto/engines/TnepresEngine;->sb6([IIIII)V

    .line 116
    const/16 v1, 0x34

    aget v4, v15, v7

    aput v4, v10, v1

    const/16 v1, 0x35

    aget v4, v15, v8

    aput v4, v10, v1

    const/16 v1, 0x36

    aget v4, v15, v11

    aput v4, v10, v1

    const/16 v1, 0x37

    aget v4, v15, v12

    aput v4, v10, v1

    .line 117
    const/16 v1, 0x38

    aget v16, v10, v1

    const/16 v1, 0x39

    aget v17, v10, v1

    const/16 v1, 0x3a

    aget v18, v10, v1

    const/16 v1, 0x3b

    aget v19, v10, v1

    invoke-virtual/range {v14 .. v19}, Lorg/bouncycastle/crypto/engines/TnepresEngine;->sb5([IIIII)V

    .line 118
    const/16 v1, 0x38

    aget v4, v15, v7

    aput v4, v10, v1

    const/16 v1, 0x39

    aget v4, v15, v8

    aput v4, v10, v1

    const/16 v1, 0x3a

    aget v4, v15, v11

    aput v4, v10, v1

    const/16 v1, 0x3b

    aget v4, v15, v12

    aput v4, v10, v1

    .line 119
    const/16 v1, 0x3c

    aget v16, v10, v1

    const/16 v1, 0x3d

    aget v17, v10, v1

    const/16 v1, 0x3e

    aget v18, v10, v1

    const/16 v1, 0x3f

    aget v19, v10, v1

    invoke-virtual/range {v14 .. v19}, Lorg/bouncycastle/crypto/engines/TnepresEngine;->sb4([IIIII)V

    .line 120
    const/16 v1, 0x3c

    aget v4, v15, v7

    aput v4, v10, v1

    const/16 v1, 0x3d

    aget v4, v15, v8

    aput v4, v10, v1

    const/16 v1, 0x3e

    aget v4, v15, v11

    aput v4, v10, v1

    const/16 v1, 0x3f

    aget v4, v15, v12

    aput v4, v10, v1

    .line 121
    const/16 v1, 0x40

    aget v16, v10, v1

    const/16 v1, 0x41

    aget v17, v10, v1

    const/16 v1, 0x42

    aget v18, v10, v1

    const/16 v1, 0x43

    aget v19, v10, v1

    invoke-virtual/range {v14 .. v19}, Lorg/bouncycastle/crypto/engines/TnepresEngine;->sb3([IIIII)V

    .line 122
    const/16 v1, 0x40

    aget v4, v15, v7

    aput v4, v10, v1

    const/16 v1, 0x41

    aget v4, v15, v8

    aput v4, v10, v1

    const/16 v1, 0x42

    aget v4, v15, v11

    aput v4, v10, v1

    const/16 v1, 0x43

    aget v4, v15, v12

    aput v4, v10, v1

    .line 123
    const/16 v1, 0x44

    aget v16, v10, v1

    const/16 v1, 0x45

    aget v17, v10, v1

    const/16 v1, 0x46

    aget v18, v10, v1

    const/16 v1, 0x47

    aget v19, v10, v1

    invoke-virtual/range {v14 .. v19}, Lorg/bouncycastle/crypto/engines/TnepresEngine;->sb2([IIIII)V

    .line 124
    const/16 v1, 0x44

    aget v4, v15, v7

    aput v4, v10, v1

    const/16 v1, 0x45

    aget v4, v15, v8

    aput v4, v10, v1

    const/16 v1, 0x46

    aget v4, v15, v11

    aput v4, v10, v1

    const/16 v1, 0x47

    aget v4, v15, v12

    aput v4, v10, v1

    .line 125
    const/16 v1, 0x48

    aget v16, v10, v1

    const/16 v1, 0x49

    aget v17, v10, v1

    const/16 v1, 0x4a

    aget v18, v10, v1

    const/16 v1, 0x4b

    aget v19, v10, v1

    invoke-virtual/range {v14 .. v19}, Lorg/bouncycastle/crypto/engines/TnepresEngine;->sb1([IIIII)V

    .line 126
    const/16 v1, 0x48

    aget v4, v15, v7

    aput v4, v10, v1

    const/16 v1, 0x49

    aget v4, v15, v8

    aput v4, v10, v1

    const/16 v1, 0x4a

    aget v4, v15, v11

    aput v4, v10, v1

    const/16 v1, 0x4b

    aget v4, v15, v12

    aput v4, v10, v1

    .line 127
    const/16 v1, 0x4c

    aget v16, v10, v1

    const/16 v1, 0x4d

    aget v17, v10, v1

    const/16 v1, 0x4e

    aget v18, v10, v1

    const/16 v1, 0x4f

    aget v19, v10, v1

    invoke-virtual/range {v14 .. v19}, Lorg/bouncycastle/crypto/engines/TnepresEngine;->sb0([IIIII)V

    .line 128
    const/16 v1, 0x4c

    aget v4, v15, v7

    aput v4, v10, v1

    const/16 v1, 0x4d

    aget v4, v15, v8

    aput v4, v10, v1

    const/16 v1, 0x4e

    aget v4, v15, v11

    aput v4, v10, v1

    const/16 v1, 0x4f

    aget v4, v15, v12

    aput v4, v10, v1

    .line 129
    const/16 v1, 0x50

    aget v16, v10, v1

    const/16 v1, 0x51

    aget v17, v10, v1

    const/16 v1, 0x52

    aget v18, v10, v1

    const/16 v1, 0x53

    aget v19, v10, v1

    invoke-virtual/range {v14 .. v19}, Lorg/bouncycastle/crypto/engines/TnepresEngine;->sb7([IIIII)V

    .line 130
    const/16 v1, 0x50

    aget v4, v15, v7

    aput v4, v10, v1

    const/16 v1, 0x51

    aget v4, v15, v8

    aput v4, v10, v1

    const/16 v1, 0x52

    aget v4, v15, v11

    aput v4, v10, v1

    const/16 v1, 0x53

    aget v4, v15, v12

    aput v4, v10, v1

    .line 131
    const/16 v1, 0x54

    aget v16, v10, v1

    const/16 v1, 0x55

    aget v17, v10, v1

    const/16 v1, 0x56

    aget v18, v10, v1

    const/16 v1, 0x57

    aget v19, v10, v1

    invoke-virtual/range {v14 .. v19}, Lorg/bouncycastle/crypto/engines/TnepresEngine;->sb6([IIIII)V

    .line 132
    const/16 v1, 0x54

    aget v4, v15, v7

    aput v4, v10, v1

    const/16 v1, 0x55

    aget v4, v15, v8

    aput v4, v10, v1

    const/16 v1, 0x56

    aget v4, v15, v11

    aput v4, v10, v1

    const/16 v1, 0x57

    aget v4, v15, v12

    aput v4, v10, v1

    .line 133
    const/16 v1, 0x58

    aget v16, v10, v1

    const/16 v1, 0x59

    aget v17, v10, v1

    const/16 v1, 0x5a

    aget v18, v10, v1

    const/16 v1, 0x5b

    aget v19, v10, v1

    invoke-virtual/range {v14 .. v19}, Lorg/bouncycastle/crypto/engines/TnepresEngine;->sb5([IIIII)V

    .line 134
    const/16 v1, 0x58

    aget v4, v15, v7

    aput v4, v10, v1

    const/16 v1, 0x59

    aget v4, v15, v8

    aput v4, v10, v1

    const/16 v1, 0x5a

    aget v4, v15, v11

    aput v4, v10, v1

    const/16 v1, 0x5b

    aget v4, v15, v12

    aput v4, v10, v1

    .line 135
    const/16 v1, 0x5c

    aget v16, v10, v1

    const/16 v1, 0x5d

    aget v17, v10, v1

    const/16 v1, 0x5e

    aget v18, v10, v1

    const/16 v1, 0x5f

    aget v19, v10, v1

    invoke-virtual/range {v14 .. v19}, Lorg/bouncycastle/crypto/engines/TnepresEngine;->sb4([IIIII)V

    .line 136
    const/16 v1, 0x5c

    aget v4, v15, v7

    aput v4, v10, v1

    const/16 v1, 0x5d

    aget v4, v15, v8

    aput v4, v10, v1

    const/16 v1, 0x5e

    aget v4, v15, v11

    aput v4, v10, v1

    const/16 v1, 0x5f

    aget v4, v15, v12

    aput v4, v10, v1

    .line 137
    const/16 v1, 0x60

    aget v16, v10, v1

    const/16 v1, 0x61

    aget v17, v10, v1

    const/16 v1, 0x62

    aget v18, v10, v1

    const/16 v1, 0x63

    aget v19, v10, v1

    invoke-virtual/range {v14 .. v19}, Lorg/bouncycastle/crypto/engines/TnepresEngine;->sb3([IIIII)V

    .line 138
    const/16 v1, 0x60

    aget v4, v15, v7

    aput v4, v10, v1

    const/16 v1, 0x61

    aget v4, v15, v8

    aput v4, v10, v1

    const/16 v1, 0x62

    aget v4, v15, v11

    aput v4, v10, v1

    const/16 v1, 0x63

    aget v4, v15, v12

    aput v4, v10, v1

    .line 139
    const/16 v1, 0x64

    aget v16, v10, v1

    const/16 v1, 0x65

    aget v17, v10, v1

    const/16 v1, 0x66

    aget v18, v10, v1

    const/16 v1, 0x67

    aget v19, v10, v1

    invoke-virtual/range {v14 .. v19}, Lorg/bouncycastle/crypto/engines/TnepresEngine;->sb2([IIIII)V

    .line 140
    const/16 v1, 0x64

    aget v4, v15, v7

    aput v4, v10, v1

    const/16 v1, 0x65

    aget v4, v15, v8

    aput v4, v10, v1

    const/16 v1, 0x66

    aget v4, v15, v11

    aput v4, v10, v1

    const/16 v1, 0x67

    aget v4, v15, v12

    aput v4, v10, v1

    .line 141
    const/16 v1, 0x68

    aget v16, v10, v1

    const/16 v1, 0x69

    aget v17, v10, v1

    const/16 v1, 0x6a

    aget v18, v10, v1

    const/16 v1, 0x6b

    aget v19, v10, v1

    invoke-virtual/range {v14 .. v19}, Lorg/bouncycastle/crypto/engines/TnepresEngine;->sb1([IIIII)V

    .line 142
    const/16 v1, 0x68

    aget v4, v15, v7

    aput v4, v10, v1

    const/16 v1, 0x69

    aget v4, v15, v8

    aput v4, v10, v1

    const/16 v1, 0x6a

    aget v4, v15, v11

    aput v4, v10, v1

    const/16 v1, 0x6b

    aget v4, v15, v12

    aput v4, v10, v1

    .line 143
    const/16 v1, 0x6c

    aget v16, v10, v1

    const/16 v1, 0x6d

    aget v17, v10, v1

    const/16 v1, 0x6e

    aget v18, v10, v1

    const/16 v1, 0x6f

    aget v19, v10, v1

    invoke-virtual/range {v14 .. v19}, Lorg/bouncycastle/crypto/engines/TnepresEngine;->sb0([IIIII)V

    .line 144
    const/16 v1, 0x6c

    aget v4, v15, v7

    aput v4, v10, v1

    const/16 v1, 0x6d

    aget v4, v15, v8

    aput v4, v10, v1

    const/16 v1, 0x6e

    aget v4, v15, v11

    aput v4, v10, v1

    const/16 v1, 0x6f

    aget v4, v15, v12

    aput v4, v10, v1

    .line 145
    const/16 v1, 0x70

    aget v16, v10, v1

    const/16 v1, 0x71

    aget v17, v10, v1

    const/16 v1, 0x72

    aget v18, v10, v1

    const/16 v1, 0x73

    aget v19, v10, v1

    invoke-virtual/range {v14 .. v19}, Lorg/bouncycastle/crypto/engines/TnepresEngine;->sb7([IIIII)V

    .line 146
    const/16 v1, 0x70

    aget v4, v15, v7

    aput v4, v10, v1

    const/16 v1, 0x71

    aget v4, v15, v8

    aput v4, v10, v1

    const/16 v1, 0x72

    aget v4, v15, v11

    aput v4, v10, v1

    const/16 v1, 0x73

    aget v4, v15, v12

    aput v4, v10, v1

    .line 147
    const/16 v1, 0x74

    aget v16, v10, v1

    const/16 v1, 0x75

    aget v17, v10, v1

    const/16 v1, 0x76

    aget v18, v10, v1

    const/16 v1, 0x77

    aget v19, v10, v1

    invoke-virtual/range {v14 .. v19}, Lorg/bouncycastle/crypto/engines/TnepresEngine;->sb6([IIIII)V

    .line 148
    const/16 v1, 0x74

    aget v4, v15, v7

    aput v4, v10, v1

    const/16 v1, 0x75

    aget v4, v15, v8

    aput v4, v10, v1

    const/16 v1, 0x76

    aget v4, v15, v11

    aput v4, v10, v1

    const/16 v1, 0x77

    aget v4, v15, v12

    aput v4, v10, v1

    .line 149
    const/16 v1, 0x78

    aget v16, v10, v1

    const/16 v1, 0x79

    aget v17, v10, v1

    const/16 v1, 0x7a

    aget v18, v10, v1

    const/16 v1, 0x7b

    aget v19, v10, v1

    invoke-virtual/range {v14 .. v19}, Lorg/bouncycastle/crypto/engines/TnepresEngine;->sb5([IIIII)V

    .line 150
    const/16 v1, 0x78

    aget v4, v15, v7

    aput v4, v10, v1

    const/16 v1, 0x79

    aget v4, v15, v8

    aput v4, v10, v1

    const/16 v1, 0x7a

    aget v4, v15, v11

    aput v4, v10, v1

    const/16 v1, 0x7b

    aget v4, v15, v12

    aput v4, v10, v1

    .line 151
    const/16 v1, 0x7c

    aget v16, v10, v1

    const/16 v1, 0x7d

    aget v17, v10, v1

    const/16 v1, 0x7e

    aget v18, v10, v1

    const/16 v1, 0x7f

    aget v19, v10, v1

    invoke-virtual/range {v14 .. v19}, Lorg/bouncycastle/crypto/engines/TnepresEngine;->sb4([IIIII)V

    .line 152
    const/16 v1, 0x7c

    aget v4, v15, v7

    aput v4, v10, v1

    const/16 v1, 0x7d

    aget v4, v15, v8

    aput v4, v10, v1

    const/16 v1, 0x7e

    aget v4, v15, v11

    aput v4, v10, v1

    const/16 v1, 0x7f

    aget v4, v15, v12

    aput v4, v10, v1

    .line 153
    const/16 v1, 0x80

    aget v16, v10, v1

    const/16 v1, 0x81

    aget v17, v10, v1

    const/16 v1, 0x82

    aget v18, v10, v1

    const/16 v1, 0x83

    aget v19, v10, v1

    invoke-virtual/range {v14 .. v19}, Lorg/bouncycastle/crypto/engines/TnepresEngine;->sb3([IIIII)V

    .line 154
    const/16 v1, 0x80

    aget v4, v15, v7

    aput v4, v10, v1

    const/16 v1, 0x81

    aget v4, v15, v8

    aput v4, v10, v1

    const/16 v1, 0x82

    aget v4, v15, v11

    aput v4, v10, v1

    const/16 v1, 0x83

    aget v4, v15, v12

    aput v4, v10, v1

    .line 156
    return-object v10

    .line 57
    .end local v3    # "length":I
    .end local v9    # "amount":I
    .end local v10    # "w":[I
    .end local v15    # "X":[I
    .restart local v4    # "length":I
    :cond_4
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v3, "key must be a multiple of 4 bytes"

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
