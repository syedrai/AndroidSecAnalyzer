.class public final Lorg/bouncycastle/crypto/engines/SerpentEngine;
.super Lorg/bouncycastle/crypto/engines/SerpentEngineBase;
.source "SerpentEngine.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
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

    .line 226
    const/4 v0, 0x4

    new-array v2, v0, [I

    .line 228
    .local v2, "X":[I
    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v3, 0x80

    aget v1, v1, v3

    invoke-static {p1, p2}, Lorg/bouncycastle/util/Pack;->littleEndianToInt([BI)I

    move-result v3

    xor-int/2addr v1, v3

    const/4 v7, 0x0

    aput v1, v2, v7

    .line 229
    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v3, 0x81

    aget v1, v1, v3

    add-int/lit8 v3, p2, 0x4

    invoke-static {p1, v3}, Lorg/bouncycastle/util/Pack;->littleEndianToInt([BI)I

    move-result v3

    xor-int/2addr v1, v3

    const/4 v8, 0x1

    aput v1, v2, v8

    .line 230
    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v3, 0x82

    aget v1, v1, v3

    add-int/lit8 v3, p2, 0x8

    invoke-static {p1, v3}, Lorg/bouncycastle/util/Pack;->littleEndianToInt([BI)I

    move-result v3

    xor-int/2addr v1, v3

    const/4 v9, 0x2

    aput v1, v2, v9

    .line 231
    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v3, 0x83

    aget v1, v1, v3

    add-int/lit8 v3, p2, 0xc

    invoke-static {p1, v3}, Lorg/bouncycastle/util/Pack;->littleEndianToInt([BI)I

    move-result v3

    xor-int/2addr v1, v3

    const/4 v10, 0x3

    aput v1, v2, v10

    .line 233
    aget v3, v2, v7

    aget v4, v2, v8

    aget v5, v2, v9

    aget v6, v2, v10

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->ib7([IIIII)V

    .line 234
    aget v3, v2, v7

    iget-object v4, v1, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v5, 0x7c

    aget v4, v4, v5

    xor-int/2addr v3, v4

    aput v3, v2, v7

    aget v3, v2, v8

    iget-object v4, v1, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v5, 0x7d

    aget v4, v4, v5

    xor-int/2addr v3, v4

    aput v3, v2, v8

    aget v3, v2, v9

    iget-object v4, v1, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v5, 0x7e

    aget v4, v4, v5

    xor-int/2addr v3, v4

    aput v3, v2, v9

    aget v3, v2, v10

    iget-object v4, v1, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v5, 0x7f

    aget v4, v4, v5

    xor-int/2addr v3, v4

    aput v3, v2, v10

    .line 235
    invoke-virtual {p0, v2}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->inverseLT([I)V

    aget v3, v2, v7

    aget v4, v2, v8

    aget v5, v2, v9

    aget v6, v2, v10

    invoke-virtual/range {v1 .. v6}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->ib6([IIIII)V

    .line 236
    aget v3, v2, v7

    iget-object v4, v1, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v5, 0x78

    aget v4, v4, v5

    xor-int/2addr v3, v4

    aput v3, v2, v7

    aget v3, v2, v8

    iget-object v4, v1, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v5, 0x79

    aget v4, v4, v5

    xor-int/2addr v3, v4

    aput v3, v2, v8

    aget v3, v2, v9

    iget-object v4, v1, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v5, 0x7a

    aget v4, v4, v5

    xor-int/2addr v3, v4

    aput v3, v2, v9

    aget v3, v2, v10

    iget-object v4, v1, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v5, 0x7b

    aget v4, v4, v5

    xor-int/2addr v3, v4

    aput v3, v2, v10

    .line 237
    invoke-virtual {p0, v2}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->inverseLT([I)V

    aget v3, v2, v7

    aget v4, v2, v8

    aget v5, v2, v9

    aget v6, v2, v10

    invoke-virtual/range {v1 .. v6}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->ib5([IIIII)V

    .line 238
    aget v3, v2, v7

    iget-object v4, v1, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v5, 0x74

    aget v4, v4, v5

    xor-int/2addr v3, v4

    aput v3, v2, v7

    aget v3, v2, v8

    iget-object v4, v1, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v5, 0x75

    aget v4, v4, v5

    xor-int/2addr v3, v4

    aput v3, v2, v8

    aget v3, v2, v9

    iget-object v4, v1, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v5, 0x76

    aget v4, v4, v5

    xor-int/2addr v3, v4

    aput v3, v2, v9

    aget v3, v2, v10

    iget-object v4, v1, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v5, 0x77

    aget v4, v4, v5

    xor-int/2addr v3, v4

    aput v3, v2, v10

    .line 239
    invoke-virtual {p0, v2}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->inverseLT([I)V

    aget v3, v2, v7

    aget v4, v2, v8

    aget v5, v2, v9

    aget v6, v2, v10

    invoke-virtual/range {v1 .. v6}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->ib4([IIIII)V

    .line 240
    aget v3, v2, v7

    iget-object v4, v1, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v5, 0x70

    aget v4, v4, v5

    xor-int/2addr v3, v4

    aput v3, v2, v7

    aget v3, v2, v8

    iget-object v4, v1, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v5, 0x71

    aget v4, v4, v5

    xor-int/2addr v3, v4

    aput v3, v2, v8

    aget v3, v2, v9

    iget-object v4, v1, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v5, 0x72

    aget v4, v4, v5

    xor-int/2addr v3, v4

    aput v3, v2, v9

    aget v3, v2, v10

    iget-object v4, v1, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v5, 0x73

    aget v4, v4, v5

    xor-int/2addr v3, v4

    aput v3, v2, v10

    .line 241
    invoke-virtual {p0, v2}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->inverseLT([I)V

    aget v3, v2, v7

    aget v4, v2, v8

    aget v5, v2, v9

    aget v6, v2, v10

    invoke-virtual/range {v1 .. v6}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->ib3([IIIII)V

    .line 242
    aget v3, v2, v7

    iget-object v4, v1, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v5, 0x6c

    aget v4, v4, v5

    xor-int/2addr v3, v4

    aput v3, v2, v7

    aget v3, v2, v8

    iget-object v4, v1, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v5, 0x6d

    aget v4, v4, v5

    xor-int/2addr v3, v4

    aput v3, v2, v8

    aget v3, v2, v9

    iget-object v4, v1, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v5, 0x6e

    aget v4, v4, v5

    xor-int/2addr v3, v4

    aput v3, v2, v9

    aget v3, v2, v10

    iget-object v4, v1, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v5, 0x6f

    aget v4, v4, v5

    xor-int/2addr v3, v4

    aput v3, v2, v10

    .line 243
    invoke-virtual {p0, v2}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->inverseLT([I)V

    aget v3, v2, v7

    aget v4, v2, v8

    aget v5, v2, v9

    aget v6, v2, v10

    invoke-virtual/range {v1 .. v6}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->ib2([IIIII)V

    .line 244
    aget v3, v2, v7

    iget-object v4, v1, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v5, 0x68

    aget v4, v4, v5

    xor-int/2addr v3, v4

    aput v3, v2, v7

    aget v3, v2, v8

    iget-object v4, v1, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v5, 0x69

    aget v4, v4, v5

    xor-int/2addr v3, v4

    aput v3, v2, v8

    aget v3, v2, v9

    iget-object v4, v1, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v5, 0x6a

    aget v4, v4, v5

    xor-int/2addr v3, v4

    aput v3, v2, v9

    aget v3, v2, v10

    iget-object v4, v1, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v5, 0x6b

    aget v4, v4, v5

    xor-int/2addr v3, v4

    aput v3, v2, v10

    .line 245
    invoke-virtual {p0, v2}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->inverseLT([I)V

    aget v3, v2, v7

    aget v4, v2, v8

    aget v5, v2, v9

    aget v6, v2, v10

    invoke-virtual/range {v1 .. v6}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->ib1([IIIII)V

    .line 246
    aget v3, v2, v7

    iget-object v4, v1, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v5, 0x64

    aget v4, v4, v5

    xor-int/2addr v3, v4

    aput v3, v2, v7

    aget v3, v2, v8

    iget-object v4, v1, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v5, 0x65

    aget v4, v4, v5

    xor-int/2addr v3, v4

    aput v3, v2, v8

    aget v3, v2, v9

    iget-object v4, v1, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v5, 0x66

    aget v4, v4, v5

    xor-int/2addr v3, v4

    aput v3, v2, v9

    aget v3, v2, v10

    iget-object v4, v1, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v5, 0x67

    aget v4, v4, v5

    xor-int/2addr v3, v4

    aput v3, v2, v10

    .line 247
    invoke-virtual {p0, v2}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->inverseLT([I)V

    aget v3, v2, v7

    aget v4, v2, v8

    aget v5, v2, v9

    aget v6, v2, v10

    invoke-virtual/range {v1 .. v6}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->ib0([IIIII)V

    .line 248
    aget v3, v2, v7

    iget-object v4, v1, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v5, 0x60

    aget v4, v4, v5

    xor-int/2addr v3, v4

    aput v3, v2, v7

    aget v3, v2, v8

    iget-object v4, v1, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v5, 0x61

    aget v4, v4, v5

    xor-int/2addr v3, v4

    aput v3, v2, v8

    aget v3, v2, v9

    iget-object v4, v1, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v5, 0x62

    aget v4, v4, v5

    xor-int/2addr v3, v4

    aput v3, v2, v9

    aget v3, v2, v10

    iget-object v4, v1, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v5, 0x63

    aget v4, v4, v5

    xor-int/2addr v3, v4

    aput v3, v2, v10

    .line 249
    invoke-virtual {p0, v2}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->inverseLT([I)V

    aget v3, v2, v7

    aget v4, v2, v8

    aget v5, v2, v9

    aget v6, v2, v10

    invoke-virtual/range {v1 .. v6}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->ib7([IIIII)V

    .line 250
    aget v3, v2, v7

    iget-object v4, v1, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v5, 0x5c

    aget v4, v4, v5

    xor-int/2addr v3, v4

    aput v3, v2, v7

    aget v3, v2, v8

    iget-object v4, v1, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v5, 0x5d

    aget v4, v4, v5

    xor-int/2addr v3, v4

    aput v3, v2, v8

    aget v3, v2, v9

    iget-object v4, v1, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v5, 0x5e

    aget v4, v4, v5

    xor-int/2addr v3, v4

    aput v3, v2, v9

    aget v3, v2, v10

    iget-object v4, v1, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v5, 0x5f

    aget v4, v4, v5

    xor-int/2addr v3, v4

    aput v3, v2, v10

    .line 251
    invoke-virtual {p0, v2}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->inverseLT([I)V

    aget v3, v2, v7

    aget v4, v2, v8

    aget v5, v2, v9

    aget v6, v2, v10

    invoke-virtual/range {v1 .. v6}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->ib6([IIIII)V

    .line 252
    aget v3, v2, v7

    iget-object v4, v1, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v5, 0x58

    aget v4, v4, v5

    xor-int/2addr v3, v4

    aput v3, v2, v7

    aget v3, v2, v8

    iget-object v4, v1, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v5, 0x59

    aget v4, v4, v5

    xor-int/2addr v3, v4

    aput v3, v2, v8

    aget v3, v2, v9

    iget-object v4, v1, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v5, 0x5a

    aget v4, v4, v5

    xor-int/2addr v3, v4

    aput v3, v2, v9

    aget v3, v2, v10

    iget-object v4, v1, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v5, 0x5b

    aget v4, v4, v5

    xor-int/2addr v3, v4

    aput v3, v2, v10

    .line 253
    invoke-virtual {p0, v2}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->inverseLT([I)V

    aget v3, v2, v7

    aget v4, v2, v8

    aget v5, v2, v9

    aget v6, v2, v10

    invoke-virtual/range {v1 .. v6}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->ib5([IIIII)V

    .line 254
    aget v3, v2, v7

    iget-object v4, v1, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v5, 0x54

    aget v4, v4, v5

    xor-int/2addr v3, v4

    aput v3, v2, v7

    aget v3, v2, v8

    iget-object v4, v1, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v5, 0x55

    aget v4, v4, v5

    xor-int/2addr v3, v4

    aput v3, v2, v8

    aget v3, v2, v9

    iget-object v4, v1, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v5, 0x56

    aget v4, v4, v5

    xor-int/2addr v3, v4

    aput v3, v2, v9

    aget v3, v2, v10

    iget-object v4, v1, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v5, 0x57

    aget v4, v4, v5

    xor-int/2addr v3, v4

    aput v3, v2, v10

    .line 255
    invoke-virtual {p0, v2}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->inverseLT([I)V

    aget v3, v2, v7

    aget v4, v2, v8

    aget v5, v2, v9

    aget v6, v2, v10

    invoke-virtual/range {v1 .. v6}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->ib4([IIIII)V

    .line 256
    aget v3, v2, v7

    iget-object v4, v1, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v5, 0x50

    aget v4, v4, v5

    xor-int/2addr v3, v4

    aput v3, v2, v7

    aget v3, v2, v8

    iget-object v4, v1, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v5, 0x51

    aget v4, v4, v5

    xor-int/2addr v3, v4

    aput v3, v2, v8

    aget v3, v2, v9

    iget-object v4, v1, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v5, 0x52

    aget v4, v4, v5

    xor-int/2addr v3, v4

    aput v3, v2, v9

    aget v3, v2, v10

    iget-object v4, v1, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v5, 0x53

    aget v4, v4, v5

    xor-int/2addr v3, v4

    aput v3, v2, v10

    .line 257
    invoke-virtual {p0, v2}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->inverseLT([I)V

    aget v3, v2, v7

    aget v4, v2, v8

    aget v5, v2, v9

    aget v6, v2, v10

    invoke-virtual/range {v1 .. v6}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->ib3([IIIII)V

    .line 258
    aget v3, v2, v7

    iget-object v4, v1, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v5, 0x4c

    aget v4, v4, v5

    xor-int/2addr v3, v4

    aput v3, v2, v7

    aget v3, v2, v8

    iget-object v4, v1, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v5, 0x4d

    aget v4, v4, v5

    xor-int/2addr v3, v4

    aput v3, v2, v8

    aget v3, v2, v9

    iget-object v4, v1, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v5, 0x4e

    aget v4, v4, v5

    xor-int/2addr v3, v4

    aput v3, v2, v9

    aget v3, v2, v10

    iget-object v4, v1, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v5, 0x4f

    aget v4, v4, v5

    xor-int/2addr v3, v4

    aput v3, v2, v10

    .line 259
    invoke-virtual {p0, v2}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->inverseLT([I)V

    aget v3, v2, v7

    aget v4, v2, v8

    aget v5, v2, v9

    aget v6, v2, v10

    invoke-virtual/range {v1 .. v6}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->ib2([IIIII)V

    .line 260
    aget v3, v2, v7

    iget-object v4, v1, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v5, 0x48

    aget v4, v4, v5

    xor-int/2addr v3, v4

    aput v3, v2, v7

    aget v3, v2, v8

    iget-object v4, v1, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v5, 0x49

    aget v4, v4, v5

    xor-int/2addr v3, v4

    aput v3, v2, v8

    aget v3, v2, v9

    iget-object v4, v1, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v5, 0x4a

    aget v4, v4, v5

    xor-int/2addr v3, v4

    aput v3, v2, v9

    aget v3, v2, v10

    iget-object v4, v1, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v5, 0x4b

    aget v4, v4, v5

    xor-int/2addr v3, v4

    aput v3, v2, v10

    .line 261
    invoke-virtual {p0, v2}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->inverseLT([I)V

    aget v3, v2, v7

    aget v4, v2, v8

    aget v5, v2, v9

    aget v6, v2, v10

    invoke-virtual/range {v1 .. v6}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->ib1([IIIII)V

    .line 262
    aget v3, v2, v7

    iget-object v4, v1, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v5, 0x44

    aget v4, v4, v5

    xor-int/2addr v3, v4

    aput v3, v2, v7

    aget v3, v2, v8

    iget-object v4, v1, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v5, 0x45

    aget v4, v4, v5

    xor-int/2addr v3, v4

    aput v3, v2, v8

    aget v3, v2, v9

    iget-object v4, v1, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v5, 0x46

    aget v4, v4, v5

    xor-int/2addr v3, v4

    aput v3, v2, v9

    aget v3, v2, v10

    iget-object v4, v1, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v5, 0x47

    aget v4, v4, v5

    xor-int/2addr v3, v4

    aput v3, v2, v10

    .line 263
    invoke-virtual {p0, v2}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->inverseLT([I)V

    aget v3, v2, v7

    aget v4, v2, v8

    aget v5, v2, v9

    aget v6, v2, v10

    invoke-virtual/range {v1 .. v6}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->ib0([IIIII)V

    .line 264
    aget v3, v2, v7

    iget-object v4, v1, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v5, 0x40

    aget v4, v4, v5

    xor-int/2addr v3, v4

    aput v3, v2, v7

    aget v3, v2, v8

    iget-object v4, v1, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v5, 0x41

    aget v4, v4, v5

    xor-int/2addr v3, v4

    aput v3, v2, v8

    aget v3, v2, v9

    iget-object v4, v1, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v5, 0x42

    aget v4, v4, v5

    xor-int/2addr v3, v4

    aput v3, v2, v9

    aget v3, v2, v10

    iget-object v4, v1, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v5, 0x43

    aget v4, v4, v5

    xor-int/2addr v3, v4

    aput v3, v2, v10

    .line 265
    invoke-virtual {p0, v2}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->inverseLT([I)V

    aget v3, v2, v7

    aget v4, v2, v8

    aget v5, v2, v9

    aget v6, v2, v10

    invoke-virtual/range {v1 .. v6}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->ib7([IIIII)V

    .line 266
    aget v3, v2, v7

    iget-object v4, v1, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v5, 0x3c

    aget v4, v4, v5

    xor-int/2addr v3, v4

    aput v3, v2, v7

    aget v3, v2, v8

    iget-object v4, v1, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v5, 0x3d

    aget v4, v4, v5

    xor-int/2addr v3, v4

    aput v3, v2, v8

    aget v3, v2, v9

    iget-object v4, v1, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v5, 0x3e

    aget v4, v4, v5

    xor-int/2addr v3, v4

    aput v3, v2, v9

    aget v3, v2, v10

    iget-object v4, v1, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v5, 0x3f

    aget v4, v4, v5

    xor-int/2addr v3, v4

    aput v3, v2, v10

    .line 267
    invoke-virtual {p0, v2}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->inverseLT([I)V

    aget v3, v2, v7

    aget v4, v2, v8

    aget v5, v2, v9

    aget v6, v2, v10

    invoke-virtual/range {v1 .. v6}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->ib6([IIIII)V

    .line 268
    aget v3, v2, v7

    iget-object v4, v1, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v5, 0x38

    aget v4, v4, v5

    xor-int/2addr v3, v4

    aput v3, v2, v7

    aget v3, v2, v8

    iget-object v4, v1, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v5, 0x39

    aget v4, v4, v5

    xor-int/2addr v3, v4

    aput v3, v2, v8

    aget v3, v2, v9

    iget-object v4, v1, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v5, 0x3a

    aget v4, v4, v5

    xor-int/2addr v3, v4

    aput v3, v2, v9

    aget v3, v2, v10

    iget-object v4, v1, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v5, 0x3b

    aget v4, v4, v5

    xor-int/2addr v3, v4

    aput v3, v2, v10

    .line 269
    invoke-virtual {p0, v2}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->inverseLT([I)V

    aget v3, v2, v7

    aget v4, v2, v8

    aget v5, v2, v9

    aget v6, v2, v10

    invoke-virtual/range {v1 .. v6}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->ib5([IIIII)V

    .line 270
    aget v3, v2, v7

    iget-object v4, v1, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v5, 0x34

    aget v4, v4, v5

    xor-int/2addr v3, v4

    aput v3, v2, v7

    aget v3, v2, v8

    iget-object v4, v1, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v5, 0x35

    aget v4, v4, v5

    xor-int/2addr v3, v4

    aput v3, v2, v8

    aget v3, v2, v9

    iget-object v4, v1, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v5, 0x36

    aget v4, v4, v5

    xor-int/2addr v3, v4

    aput v3, v2, v9

    aget v3, v2, v10

    iget-object v4, v1, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v5, 0x37

    aget v4, v4, v5

    xor-int/2addr v3, v4

    aput v3, v2, v10

    .line 271
    invoke-virtual {p0, v2}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->inverseLT([I)V

    aget v3, v2, v7

    aget v4, v2, v8

    aget v5, v2, v9

    aget v6, v2, v10

    invoke-virtual/range {v1 .. v6}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->ib4([IIIII)V

    .line 272
    aget v3, v2, v7

    iget-object v4, v1, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v5, 0x30

    aget v4, v4, v5

    xor-int/2addr v3, v4

    aput v3, v2, v7

    aget v3, v2, v8

    iget-object v4, v1, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v5, 0x31

    aget v4, v4, v5

    xor-int/2addr v3, v4

    aput v3, v2, v8

    aget v3, v2, v9

    iget-object v4, v1, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v5, 0x32

    aget v4, v4, v5

    xor-int/2addr v3, v4

    aput v3, v2, v9

    aget v3, v2, v10

    iget-object v4, v1, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v5, 0x33

    aget v4, v4, v5

    xor-int/2addr v3, v4

    aput v3, v2, v10

    .line 273
    invoke-virtual {p0, v2}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->inverseLT([I)V

    aget v3, v2, v7

    aget v4, v2, v8

    aget v5, v2, v9

    aget v6, v2, v10

    invoke-virtual/range {v1 .. v6}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->ib3([IIIII)V

    .line 274
    aget v3, v2, v7

    iget-object v4, v1, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v5, 0x2c

    aget v4, v4, v5

    xor-int/2addr v3, v4

    aput v3, v2, v7

    aget v3, v2, v8

    iget-object v4, v1, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v5, 0x2d

    aget v4, v4, v5

    xor-int/2addr v3, v4

    aput v3, v2, v8

    aget v3, v2, v9

    iget-object v4, v1, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v5, 0x2e

    aget v4, v4, v5

    xor-int/2addr v3, v4

    aput v3, v2, v9

    aget v3, v2, v10

    iget-object v4, v1, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v5, 0x2f

    aget v4, v4, v5

    xor-int/2addr v3, v4

    aput v3, v2, v10

    .line 275
    invoke-virtual {p0, v2}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->inverseLT([I)V

    aget v3, v2, v7

    aget v4, v2, v8

    aget v5, v2, v9

    aget v6, v2, v10

    invoke-virtual/range {v1 .. v6}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->ib2([IIIII)V

    .line 276
    aget v3, v2, v7

    iget-object v4, v1, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v5, 0x28

    aget v4, v4, v5

    xor-int/2addr v3, v4

    aput v3, v2, v7

    aget v3, v2, v8

    iget-object v4, v1, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v5, 0x29

    aget v4, v4, v5

    xor-int/2addr v3, v4

    aput v3, v2, v8

    aget v3, v2, v9

    iget-object v4, v1, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v5, 0x2a

    aget v4, v4, v5

    xor-int/2addr v3, v4

    aput v3, v2, v9

    aget v3, v2, v10

    iget-object v4, v1, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v5, 0x2b

    aget v4, v4, v5

    xor-int/2addr v3, v4

    aput v3, v2, v10

    .line 277
    invoke-virtual {p0, v2}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->inverseLT([I)V

    aget v3, v2, v7

    aget v4, v2, v8

    aget v5, v2, v9

    aget v6, v2, v10

    invoke-virtual/range {v1 .. v6}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->ib1([IIIII)V

    .line 278
    aget v3, v2, v7

    iget-object v4, v1, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v5, 0x24

    aget v4, v4, v5

    xor-int/2addr v3, v4

    aput v3, v2, v7

    aget v3, v2, v8

    iget-object v4, v1, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v5, 0x25

    aget v4, v4, v5

    xor-int/2addr v3, v4

    aput v3, v2, v8

    aget v3, v2, v9

    iget-object v4, v1, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v5, 0x26

    aget v4, v4, v5

    xor-int/2addr v3, v4

    aput v3, v2, v9

    aget v3, v2, v10

    iget-object v4, v1, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v5, 0x27

    aget v4, v4, v5

    xor-int/2addr v3, v4

    aput v3, v2, v10

    .line 279
    invoke-virtual {p0, v2}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->inverseLT([I)V

    aget v3, v2, v7

    aget v4, v2, v8

    aget v5, v2, v9

    aget v6, v2, v10

    invoke-virtual/range {v1 .. v6}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->ib0([IIIII)V

    .line 280
    aget v3, v2, v7

    iget-object v4, v1, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v5, 0x20

    aget v4, v4, v5

    xor-int/2addr v3, v4

    aput v3, v2, v7

    aget v3, v2, v8

    iget-object v4, v1, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v5, 0x21

    aget v4, v4, v5

    xor-int/2addr v3, v4

    aput v3, v2, v8

    aget v3, v2, v9

    iget-object v4, v1, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v5, 0x22

    aget v4, v4, v5

    xor-int/2addr v3, v4

    aput v3, v2, v9

    aget v3, v2, v10

    iget-object v4, v1, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v5, 0x23

    aget v4, v4, v5

    xor-int/2addr v3, v4

    aput v3, v2, v10

    .line 281
    invoke-virtual {p0, v2}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->inverseLT([I)V

    aget v3, v2, v7

    aget v4, v2, v8

    aget v5, v2, v9

    aget v6, v2, v10

    invoke-virtual/range {v1 .. v6}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->ib7([IIIII)V

    .line 282
    aget v3, v2, v7

    iget-object v4, v1, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v5, 0x1c

    aget v4, v4, v5

    xor-int/2addr v3, v4

    aput v3, v2, v7

    aget v3, v2, v8

    iget-object v4, v1, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v5, 0x1d

    aget v4, v4, v5

    xor-int/2addr v3, v4

    aput v3, v2, v8

    aget v3, v2, v9

    iget-object v4, v1, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v5, 0x1e

    aget v4, v4, v5

    xor-int/2addr v3, v4

    aput v3, v2, v9

    aget v3, v2, v10

    iget-object v4, v1, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v5, 0x1f

    aget v4, v4, v5

    xor-int/2addr v3, v4

    aput v3, v2, v10

    .line 283
    invoke-virtual {p0, v2}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->inverseLT([I)V

    aget v3, v2, v7

    aget v4, v2, v8

    aget v5, v2, v9

    aget v6, v2, v10

    invoke-virtual/range {v1 .. v6}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->ib6([IIIII)V

    .line 284
    aget v3, v2, v7

    iget-object v4, v1, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v5, 0x18

    aget v4, v4, v5

    xor-int/2addr v3, v4

    aput v3, v2, v7

    aget v3, v2, v8

    iget-object v4, v1, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v5, 0x19

    aget v4, v4, v5

    xor-int/2addr v3, v4

    aput v3, v2, v8

    aget v3, v2, v9

    iget-object v4, v1, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v5, 0x1a

    aget v4, v4, v5

    xor-int/2addr v3, v4

    aput v3, v2, v9

    aget v3, v2, v10

    iget-object v4, v1, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v5, 0x1b

    aget v4, v4, v5

    xor-int/2addr v3, v4

    aput v3, v2, v10

    .line 285
    invoke-virtual {p0, v2}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->inverseLT([I)V

    aget v3, v2, v7

    aget v4, v2, v8

    aget v5, v2, v9

    aget v6, v2, v10

    invoke-virtual/range {v1 .. v6}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->ib5([IIIII)V

    .line 286
    aget v3, v2, v7

    iget-object v4, v1, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v5, 0x14

    aget v4, v4, v5

    xor-int/2addr v3, v4

    aput v3, v2, v7

    aget v3, v2, v8

    iget-object v4, v1, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v5, 0x15

    aget v4, v4, v5

    xor-int/2addr v3, v4

    aput v3, v2, v8

    aget v3, v2, v9

    iget-object v4, v1, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v5, 0x16

    aget v4, v4, v5

    xor-int/2addr v3, v4

    aput v3, v2, v9

    aget v3, v2, v10

    iget-object v4, v1, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v5, 0x17

    aget v4, v4, v5

    xor-int/2addr v3, v4

    aput v3, v2, v10

    .line 287
    invoke-virtual {p0, v2}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->inverseLT([I)V

    aget v3, v2, v7

    aget v4, v2, v8

    aget v5, v2, v9

    aget v6, v2, v10

    invoke-virtual/range {v1 .. v6}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->ib4([IIIII)V

    .line 288
    aget v3, v2, v7

    iget-object v4, v1, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v5, 0x10

    aget v4, v4, v5

    xor-int/2addr v3, v4

    aput v3, v2, v7

    aget v3, v2, v8

    iget-object v4, v1, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v5, 0x11

    aget v4, v4, v5

    xor-int/2addr v3, v4

    aput v3, v2, v8

    aget v3, v2, v9

    iget-object v4, v1, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v5, 0x12

    aget v4, v4, v5

    xor-int/2addr v3, v4

    aput v3, v2, v9

    aget v3, v2, v10

    iget-object v4, v1, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v5, 0x13

    aget v4, v4, v5

    xor-int/2addr v3, v4

    aput v3, v2, v10

    .line 289
    invoke-virtual {p0, v2}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->inverseLT([I)V

    aget v3, v2, v7

    aget v4, v2, v8

    aget v5, v2, v9

    aget v6, v2, v10

    invoke-virtual/range {v1 .. v6}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->ib3([IIIII)V

    .line 290
    aget v3, v2, v7

    iget-object v4, v1, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v5, 0xc

    aget v4, v4, v5

    xor-int/2addr v3, v4

    aput v3, v2, v7

    aget v3, v2, v8

    iget-object v4, v1, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v5, 0xd

    aget v4, v4, v5

    xor-int/2addr v3, v4

    aput v3, v2, v8

    aget v3, v2, v9

    iget-object v4, v1, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v5, 0xe

    aget v4, v4, v5

    xor-int/2addr v3, v4

    aput v3, v2, v9

    aget v3, v2, v10

    iget-object v4, v1, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v5, 0xf

    aget v4, v4, v5

    xor-int/2addr v3, v4

    aput v3, v2, v10

    .line 291
    invoke-virtual {p0, v2}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->inverseLT([I)V

    aget v3, v2, v7

    aget v4, v2, v8

    aget v5, v2, v9

    aget v6, v2, v10

    invoke-virtual/range {v1 .. v6}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->ib2([IIIII)V

    .line 292
    aget v3, v2, v7

    iget-object v4, v1, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v5, 0x8

    aget v4, v4, v5

    xor-int/2addr v3, v4

    aput v3, v2, v7

    aget v3, v2, v8

    iget-object v4, v1, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v5, 0x9

    aget v4, v4, v5

    xor-int/2addr v3, v4

    aput v3, v2, v8

    aget v3, v2, v9

    iget-object v4, v1, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v5, 0xa

    aget v4, v4, v5

    xor-int/2addr v3, v4

    aput v3, v2, v9

    aget v3, v2, v10

    iget-object v4, v1, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v5, 0xb

    aget v4, v4, v5

    xor-int/2addr v3, v4

    aput v3, v2, v10

    .line 293
    invoke-virtual {p0, v2}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->inverseLT([I)V

    aget v3, v2, v7

    aget v4, v2, v8

    aget v5, v2, v9

    aget v6, v2, v10

    invoke-virtual/range {v1 .. v6}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->ib1([IIIII)V

    .line 294
    aget v3, v2, v7

    iget-object v4, v1, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    aget v0, v4, v0

    xor-int/2addr v0, v3

    aput v0, v2, v7

    aget v0, v2, v8

    iget-object v3, v1, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/4 v4, 0x5

    aget v3, v3, v4

    xor-int/2addr v0, v3

    aput v0, v2, v8

    aget v0, v2, v9

    iget-object v3, v1, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/4 v4, 0x6

    aget v3, v3, v4

    xor-int/2addr v0, v3

    aput v0, v2, v9

    aget v0, v2, v10

    iget-object v3, v1, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/4 v4, 0x7

    aget v3, v3, v4

    xor-int/2addr v0, v3

    aput v0, v2, v10

    .line 295
    invoke-virtual {p0, v2}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->inverseLT([I)V

    aget v3, v2, v7

    aget v4, v2, v8

    aget v5, v2, v9

    aget v6, v2, v10

    invoke-virtual/range {v1 .. v6}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->ib0([IIIII)V

    .line 297
    aget v0, v2, v7

    iget-object v3, v1, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    aget v3, v3, v7

    xor-int/2addr v0, v3

    invoke-static {v0, p3, p4}, Lorg/bouncycastle/util/Pack;->intToLittleEndian(I[BI)V

    .line 298
    aget v0, v2, v8

    iget-object v3, v1, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    aget v3, v3, v8

    xor-int/2addr v0, v3

    add-int/lit8 v3, p4, 0x4

    invoke-static {v0, p3, v3}, Lorg/bouncycastle/util/Pack;->intToLittleEndian(I[BI)V

    .line 299
    aget v0, v2, v9

    iget-object v3, v1, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    aget v3, v3, v9

    xor-int/2addr v0, v3

    add-int/lit8 v3, p4, 0x8

    invoke-static {v0, p3, v3}, Lorg/bouncycastle/util/Pack;->intToLittleEndian(I[BI)V

    .line 300
    aget v0, v2, v10

    iget-object v3, v1, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    aget v3, v3, v10

    xor-int/2addr v0, v3

    add-int/lit8 v3, p4, 0xc

    invoke-static {v0, p3, v3}, Lorg/bouncycastle/util/Pack;->intToLittleEndian(I[BI)V

    .line 301
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

    .line 166
    const/4 v0, 0x4

    new-array v2, v0, [I

    .line 168
    .local v2, "X":[I
    invoke-static {p1, p2}, Lorg/bouncycastle/util/Pack;->littleEndianToInt([BI)I

    move-result v1

    const/4 v7, 0x0

    aput v1, v2, v7

    .line 169
    add-int/lit8 v1, p2, 0x4

    invoke-static {p1, v1}, Lorg/bouncycastle/util/Pack;->littleEndianToInt([BI)I

    move-result v1

    const/4 v8, 0x1

    aput v1, v2, v8

    .line 170
    add-int/lit8 v1, p2, 0x8

    invoke-static {p1, v1}, Lorg/bouncycastle/util/Pack;->littleEndianToInt([BI)I

    move-result v1

    const/4 v9, 0x2

    aput v1, v2, v9

    .line 171
    add-int/lit8 v1, p2, 0xc

    invoke-static {p1, v1}, Lorg/bouncycastle/util/Pack;->littleEndianToInt([BI)I

    move-result v1

    const/4 v10, 0x3

    aput v1, v2, v10

    .line 173
    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    aget v1, v1, v7

    aget v3, v2, v7

    xor-int/2addr v3, v1

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    aget v1, v1, v8

    aget v4, v2, v8

    xor-int/2addr v4, v1

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    aget v1, v1, v9

    aget v5, v2, v9

    xor-int/2addr v5, v1

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    aget v1, v1, v10

    aget v6, v2, v10

    xor-int/2addr v6, v1

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->sb0([IIIII)V

    invoke-virtual {p0, v2}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->LT([I)V

    .line 174
    iget-object v3, v1, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    aget v0, v3, v0

    aget v3, v2, v7

    xor-int/2addr v3, v0

    iget-object v0, v1, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/4 v4, 0x5

    aget v0, v0, v4

    aget v4, v2, v8

    xor-int/2addr v4, v0

    iget-object v0, v1, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/4 v5, 0x6

    aget v0, v0, v5

    aget v5, v2, v9

    xor-int/2addr v5, v0

    iget-object v0, v1, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/4 v6, 0x7

    aget v0, v0, v6

    aget v6, v2, v10

    xor-int/2addr v6, v0

    invoke-virtual/range {v1 .. v6}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->sb1([IIIII)V

    invoke-virtual {p0, v2}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->LT([I)V

    .line 175
    iget-object v0, v1, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v3, 0x8

    aget v0, v0, v3

    aget v3, v2, v7

    xor-int/2addr v3, v0

    iget-object v0, v1, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v4, 0x9

    aget v0, v0, v4

    aget v4, v2, v8

    xor-int/2addr v4, v0

    iget-object v0, v1, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v5, 0xa

    aget v0, v0, v5

    aget v5, v2, v9

    xor-int/2addr v5, v0

    iget-object v0, v1, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v6, 0xb

    aget v0, v0, v6

    aget v6, v2, v10

    xor-int/2addr v6, v0

    invoke-virtual/range {v1 .. v6}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->sb2([IIIII)V

    invoke-virtual {p0, v2}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->LT([I)V

    .line 176
    iget-object v0, v1, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v3, 0xc

    aget v0, v0, v3

    aget v3, v2, v7

    xor-int/2addr v3, v0

    iget-object v0, v1, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v4, 0xd

    aget v0, v0, v4

    aget v4, v2, v8

    xor-int/2addr v4, v0

    iget-object v0, v1, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v5, 0xe

    aget v0, v0, v5

    aget v5, v2, v9

    xor-int/2addr v5, v0

    iget-object v0, v1, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v6, 0xf

    aget v0, v0, v6

    aget v6, v2, v10

    xor-int/2addr v6, v0

    invoke-virtual/range {v1 .. v6}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->sb3([IIIII)V

    invoke-virtual {p0, v2}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->LT([I)V

    .line 177
    iget-object v0, v1, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v3, 0x10

    aget v0, v0, v3

    aget v3, v2, v7

    xor-int/2addr v3, v0

    iget-object v0, v1, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v4, 0x11

    aget v0, v0, v4

    aget v4, v2, v8

    xor-int/2addr v4, v0

    iget-object v0, v1, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v5, 0x12

    aget v0, v0, v5

    aget v5, v2, v9

    xor-int/2addr v5, v0

    iget-object v0, v1, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v6, 0x13

    aget v0, v0, v6

    aget v6, v2, v10

    xor-int/2addr v6, v0

    invoke-virtual/range {v1 .. v6}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->sb4([IIIII)V

    invoke-virtual {p0, v2}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->LT([I)V

    .line 178
    iget-object v0, v1, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v3, 0x14

    aget v0, v0, v3

    aget v3, v2, v7

    xor-int/2addr v3, v0

    iget-object v0, v1, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v4, 0x15

    aget v0, v0, v4

    aget v4, v2, v8

    xor-int/2addr v4, v0

    iget-object v0, v1, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v5, 0x16

    aget v0, v0, v5

    aget v5, v2, v9

    xor-int/2addr v5, v0

    iget-object v0, v1, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v6, 0x17

    aget v0, v0, v6

    aget v6, v2, v10

    xor-int/2addr v6, v0

    invoke-virtual/range {v1 .. v6}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->sb5([IIIII)V

    invoke-virtual {p0, v2}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->LT([I)V

    .line 179
    iget-object v0, v1, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v3, 0x18

    aget v0, v0, v3

    aget v3, v2, v7

    xor-int/2addr v3, v0

    iget-object v0, v1, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v4, 0x19

    aget v0, v0, v4

    aget v4, v2, v8

    xor-int/2addr v4, v0

    iget-object v0, v1, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v5, 0x1a

    aget v0, v0, v5

    aget v5, v2, v9

    xor-int/2addr v5, v0

    iget-object v0, v1, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v6, 0x1b

    aget v0, v0, v6

    aget v6, v2, v10

    xor-int/2addr v6, v0

    invoke-virtual/range {v1 .. v6}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->sb6([IIIII)V

    invoke-virtual {p0, v2}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->LT([I)V

    .line 180
    iget-object v0, v1, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v3, 0x1c

    aget v0, v0, v3

    aget v3, v2, v7

    xor-int/2addr v3, v0

    iget-object v0, v1, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v4, 0x1d

    aget v0, v0, v4

    aget v4, v2, v8

    xor-int/2addr v4, v0

    iget-object v0, v1, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v5, 0x1e

    aget v0, v0, v5

    aget v5, v2, v9

    xor-int/2addr v5, v0

    iget-object v0, v1, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v6, 0x1f

    aget v0, v0, v6

    aget v6, v2, v10

    xor-int/2addr v6, v0

    invoke-virtual/range {v1 .. v6}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->sb7([IIIII)V

    invoke-virtual {p0, v2}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->LT([I)V

    .line 181
    iget-object v0, v1, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v3, 0x20

    aget v0, v0, v3

    aget v3, v2, v7

    xor-int/2addr v3, v0

    iget-object v0, v1, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v4, 0x21

    aget v0, v0, v4

    aget v4, v2, v8

    xor-int/2addr v4, v0

    iget-object v0, v1, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v5, 0x22

    aget v0, v0, v5

    aget v5, v2, v9

    xor-int/2addr v5, v0

    iget-object v0, v1, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v6, 0x23

    aget v0, v0, v6

    aget v6, v2, v10

    xor-int/2addr v6, v0

    invoke-virtual/range {v1 .. v6}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->sb0([IIIII)V

    invoke-virtual {p0, v2}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->LT([I)V

    .line 182
    iget-object v0, v1, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v3, 0x24

    aget v0, v0, v3

    aget v3, v2, v7

    xor-int/2addr v3, v0

    iget-object v0, v1, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v4, 0x25

    aget v0, v0, v4

    aget v4, v2, v8

    xor-int/2addr v4, v0

    iget-object v0, v1, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v5, 0x26

    aget v0, v0, v5

    aget v5, v2, v9

    xor-int/2addr v5, v0

    iget-object v0, v1, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v6, 0x27

    aget v0, v0, v6

    aget v6, v2, v10

    xor-int/2addr v6, v0

    invoke-virtual/range {v1 .. v6}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->sb1([IIIII)V

    invoke-virtual {p0, v2}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->LT([I)V

    .line 183
    iget-object v0, v1, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v3, 0x28

    aget v0, v0, v3

    aget v3, v2, v7

    xor-int/2addr v3, v0

    iget-object v0, v1, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v4, 0x29

    aget v0, v0, v4

    aget v4, v2, v8

    xor-int/2addr v4, v0

    iget-object v0, v1, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v5, 0x2a

    aget v0, v0, v5

    aget v5, v2, v9

    xor-int/2addr v5, v0

    iget-object v0, v1, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v6, 0x2b

    aget v0, v0, v6

    aget v6, v2, v10

    xor-int/2addr v6, v0

    invoke-virtual/range {v1 .. v6}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->sb2([IIIII)V

    invoke-virtual {p0, v2}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->LT([I)V

    .line 184
    iget-object v0, v1, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v3, 0x2c

    aget v0, v0, v3

    aget v3, v2, v7

    xor-int/2addr v3, v0

    iget-object v0, v1, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v4, 0x2d

    aget v0, v0, v4

    aget v4, v2, v8

    xor-int/2addr v4, v0

    iget-object v0, v1, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v5, 0x2e

    aget v0, v0, v5

    aget v5, v2, v9

    xor-int/2addr v5, v0

    iget-object v0, v1, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v6, 0x2f

    aget v0, v0, v6

    aget v6, v2, v10

    xor-int/2addr v6, v0

    invoke-virtual/range {v1 .. v6}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->sb3([IIIII)V

    invoke-virtual {p0, v2}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->LT([I)V

    .line 185
    iget-object v0, v1, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v3, 0x30

    aget v0, v0, v3

    aget v3, v2, v7

    xor-int/2addr v3, v0

    iget-object v0, v1, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v4, 0x31

    aget v0, v0, v4

    aget v4, v2, v8

    xor-int/2addr v4, v0

    iget-object v0, v1, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v5, 0x32

    aget v0, v0, v5

    aget v5, v2, v9

    xor-int/2addr v5, v0

    iget-object v0, v1, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v6, 0x33

    aget v0, v0, v6

    aget v6, v2, v10

    xor-int/2addr v6, v0

    invoke-virtual/range {v1 .. v6}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->sb4([IIIII)V

    invoke-virtual {p0, v2}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->LT([I)V

    .line 186
    iget-object v0, v1, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v3, 0x34

    aget v0, v0, v3

    aget v3, v2, v7

    xor-int/2addr v3, v0

    iget-object v0, v1, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v4, 0x35

    aget v0, v0, v4

    aget v4, v2, v8

    xor-int/2addr v4, v0

    iget-object v0, v1, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v5, 0x36

    aget v0, v0, v5

    aget v5, v2, v9

    xor-int/2addr v5, v0

    iget-object v0, v1, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v6, 0x37

    aget v0, v0, v6

    aget v6, v2, v10

    xor-int/2addr v6, v0

    invoke-virtual/range {v1 .. v6}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->sb5([IIIII)V

    invoke-virtual {p0, v2}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->LT([I)V

    .line 187
    iget-object v0, v1, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v3, 0x38

    aget v0, v0, v3

    aget v3, v2, v7

    xor-int/2addr v3, v0

    iget-object v0, v1, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v4, 0x39

    aget v0, v0, v4

    aget v4, v2, v8

    xor-int/2addr v4, v0

    iget-object v0, v1, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v5, 0x3a

    aget v0, v0, v5

    aget v5, v2, v9

    xor-int/2addr v5, v0

    iget-object v0, v1, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v6, 0x3b

    aget v0, v0, v6

    aget v6, v2, v10

    xor-int/2addr v6, v0

    invoke-virtual/range {v1 .. v6}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->sb6([IIIII)V

    invoke-virtual {p0, v2}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->LT([I)V

    .line 188
    iget-object v0, v1, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v3, 0x3c

    aget v0, v0, v3

    aget v3, v2, v7

    xor-int/2addr v3, v0

    iget-object v0, v1, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v4, 0x3d

    aget v0, v0, v4

    aget v4, v2, v8

    xor-int/2addr v4, v0

    iget-object v0, v1, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v5, 0x3e

    aget v0, v0, v5

    aget v5, v2, v9

    xor-int/2addr v5, v0

    iget-object v0, v1, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v6, 0x3f

    aget v0, v0, v6

    aget v6, v2, v10

    xor-int/2addr v6, v0

    invoke-virtual/range {v1 .. v6}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->sb7([IIIII)V

    invoke-virtual {p0, v2}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->LT([I)V

    .line 189
    iget-object v0, v1, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v3, 0x40

    aget v0, v0, v3

    aget v3, v2, v7

    xor-int/2addr v3, v0

    iget-object v0, v1, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v4, 0x41

    aget v0, v0, v4

    aget v4, v2, v8

    xor-int/2addr v4, v0

    iget-object v0, v1, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v5, 0x42

    aget v0, v0, v5

    aget v5, v2, v9

    xor-int/2addr v5, v0

    iget-object v0, v1, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v6, 0x43

    aget v0, v0, v6

    aget v6, v2, v10

    xor-int/2addr v6, v0

    invoke-virtual/range {v1 .. v6}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->sb0([IIIII)V

    invoke-virtual {p0, v2}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->LT([I)V

    .line 190
    iget-object v0, v1, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v3, 0x44

    aget v0, v0, v3

    aget v3, v2, v7

    xor-int/2addr v3, v0

    iget-object v0, v1, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v4, 0x45

    aget v0, v0, v4

    aget v4, v2, v8

    xor-int/2addr v4, v0

    iget-object v0, v1, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v5, 0x46

    aget v0, v0, v5

    aget v5, v2, v9

    xor-int/2addr v5, v0

    iget-object v0, v1, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v6, 0x47

    aget v0, v0, v6

    aget v6, v2, v10

    xor-int/2addr v6, v0

    invoke-virtual/range {v1 .. v6}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->sb1([IIIII)V

    invoke-virtual {p0, v2}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->LT([I)V

    .line 191
    iget-object v0, v1, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v3, 0x48

    aget v0, v0, v3

    aget v3, v2, v7

    xor-int/2addr v3, v0

    iget-object v0, v1, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v4, 0x49

    aget v0, v0, v4

    aget v4, v2, v8

    xor-int/2addr v4, v0

    iget-object v0, v1, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v5, 0x4a

    aget v0, v0, v5

    aget v5, v2, v9

    xor-int/2addr v5, v0

    iget-object v0, v1, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v6, 0x4b

    aget v0, v0, v6

    aget v6, v2, v10

    xor-int/2addr v6, v0

    invoke-virtual/range {v1 .. v6}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->sb2([IIIII)V

    invoke-virtual {p0, v2}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->LT([I)V

    .line 192
    iget-object v0, v1, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v3, 0x4c

    aget v0, v0, v3

    aget v3, v2, v7

    xor-int/2addr v3, v0

    iget-object v0, v1, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v4, 0x4d

    aget v0, v0, v4

    aget v4, v2, v8

    xor-int/2addr v4, v0

    iget-object v0, v1, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v5, 0x4e

    aget v0, v0, v5

    aget v5, v2, v9

    xor-int/2addr v5, v0

    iget-object v0, v1, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v6, 0x4f

    aget v0, v0, v6

    aget v6, v2, v10

    xor-int/2addr v6, v0

    invoke-virtual/range {v1 .. v6}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->sb3([IIIII)V

    invoke-virtual {p0, v2}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->LT([I)V

    .line 193
    iget-object v0, v1, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v3, 0x50

    aget v0, v0, v3

    aget v3, v2, v7

    xor-int/2addr v3, v0

    iget-object v0, v1, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v4, 0x51

    aget v0, v0, v4

    aget v4, v2, v8

    xor-int/2addr v4, v0

    iget-object v0, v1, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v5, 0x52

    aget v0, v0, v5

    aget v5, v2, v9

    xor-int/2addr v5, v0

    iget-object v0, v1, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v6, 0x53

    aget v0, v0, v6

    aget v6, v2, v10

    xor-int/2addr v6, v0

    invoke-virtual/range {v1 .. v6}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->sb4([IIIII)V

    invoke-virtual {p0, v2}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->LT([I)V

    .line 194
    iget-object v0, v1, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v3, 0x54

    aget v0, v0, v3

    aget v3, v2, v7

    xor-int/2addr v3, v0

    iget-object v0, v1, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v4, 0x55

    aget v0, v0, v4

    aget v4, v2, v8

    xor-int/2addr v4, v0

    iget-object v0, v1, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v5, 0x56

    aget v0, v0, v5

    aget v5, v2, v9

    xor-int/2addr v5, v0

    iget-object v0, v1, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v6, 0x57

    aget v0, v0, v6

    aget v6, v2, v10

    xor-int/2addr v6, v0

    invoke-virtual/range {v1 .. v6}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->sb5([IIIII)V

    invoke-virtual {p0, v2}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->LT([I)V

    .line 195
    iget-object v0, v1, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v3, 0x58

    aget v0, v0, v3

    aget v3, v2, v7

    xor-int/2addr v3, v0

    iget-object v0, v1, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v4, 0x59

    aget v0, v0, v4

    aget v4, v2, v8

    xor-int/2addr v4, v0

    iget-object v0, v1, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v5, 0x5a

    aget v0, v0, v5

    aget v5, v2, v9

    xor-int/2addr v5, v0

    iget-object v0, v1, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v6, 0x5b

    aget v0, v0, v6

    aget v6, v2, v10

    xor-int/2addr v6, v0

    invoke-virtual/range {v1 .. v6}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->sb6([IIIII)V

    invoke-virtual {p0, v2}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->LT([I)V

    .line 196
    iget-object v0, v1, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v3, 0x5c

    aget v0, v0, v3

    aget v3, v2, v7

    xor-int/2addr v3, v0

    iget-object v0, v1, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v4, 0x5d

    aget v0, v0, v4

    aget v4, v2, v8

    xor-int/2addr v4, v0

    iget-object v0, v1, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v5, 0x5e

    aget v0, v0, v5

    aget v5, v2, v9

    xor-int/2addr v5, v0

    iget-object v0, v1, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v6, 0x5f

    aget v0, v0, v6

    aget v6, v2, v10

    xor-int/2addr v6, v0

    invoke-virtual/range {v1 .. v6}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->sb7([IIIII)V

    invoke-virtual {p0, v2}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->LT([I)V

    .line 197
    iget-object v0, v1, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v3, 0x60

    aget v0, v0, v3

    aget v3, v2, v7

    xor-int/2addr v3, v0

    iget-object v0, v1, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v4, 0x61

    aget v0, v0, v4

    aget v4, v2, v8

    xor-int/2addr v4, v0

    iget-object v0, v1, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v5, 0x62

    aget v0, v0, v5

    aget v5, v2, v9

    xor-int/2addr v5, v0

    iget-object v0, v1, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v6, 0x63

    aget v0, v0, v6

    aget v6, v2, v10

    xor-int/2addr v6, v0

    invoke-virtual/range {v1 .. v6}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->sb0([IIIII)V

    invoke-virtual {p0, v2}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->LT([I)V

    .line 198
    iget-object v0, v1, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v3, 0x64

    aget v0, v0, v3

    aget v3, v2, v7

    xor-int/2addr v3, v0

    iget-object v0, v1, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v4, 0x65

    aget v0, v0, v4

    aget v4, v2, v8

    xor-int/2addr v4, v0

    iget-object v0, v1, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v5, 0x66

    aget v0, v0, v5

    aget v5, v2, v9

    xor-int/2addr v5, v0

    iget-object v0, v1, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v6, 0x67

    aget v0, v0, v6

    aget v6, v2, v10

    xor-int/2addr v6, v0

    invoke-virtual/range {v1 .. v6}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->sb1([IIIII)V

    invoke-virtual {p0, v2}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->LT([I)V

    .line 199
    iget-object v0, v1, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v3, 0x68

    aget v0, v0, v3

    aget v3, v2, v7

    xor-int/2addr v3, v0

    iget-object v0, v1, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v4, 0x69

    aget v0, v0, v4

    aget v4, v2, v8

    xor-int/2addr v4, v0

    iget-object v0, v1, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v5, 0x6a

    aget v0, v0, v5

    aget v5, v2, v9

    xor-int/2addr v5, v0

    iget-object v0, v1, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v6, 0x6b

    aget v0, v0, v6

    aget v6, v2, v10

    xor-int/2addr v6, v0

    invoke-virtual/range {v1 .. v6}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->sb2([IIIII)V

    invoke-virtual {p0, v2}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->LT([I)V

    .line 200
    iget-object v0, v1, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v3, 0x6c

    aget v0, v0, v3

    aget v3, v2, v7

    xor-int/2addr v3, v0

    iget-object v0, v1, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v4, 0x6d

    aget v0, v0, v4

    aget v4, v2, v8

    xor-int/2addr v4, v0

    iget-object v0, v1, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v5, 0x6e

    aget v0, v0, v5

    aget v5, v2, v9

    xor-int/2addr v5, v0

    iget-object v0, v1, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v6, 0x6f

    aget v0, v0, v6

    aget v6, v2, v10

    xor-int/2addr v6, v0

    invoke-virtual/range {v1 .. v6}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->sb3([IIIII)V

    invoke-virtual {p0, v2}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->LT([I)V

    .line 201
    iget-object v0, v1, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v3, 0x70

    aget v0, v0, v3

    aget v3, v2, v7

    xor-int/2addr v3, v0

    iget-object v0, v1, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v4, 0x71

    aget v0, v0, v4

    aget v4, v2, v8

    xor-int/2addr v4, v0

    iget-object v0, v1, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v5, 0x72

    aget v0, v0, v5

    aget v5, v2, v9

    xor-int/2addr v5, v0

    iget-object v0, v1, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v6, 0x73

    aget v0, v0, v6

    aget v6, v2, v10

    xor-int/2addr v6, v0

    invoke-virtual/range {v1 .. v6}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->sb4([IIIII)V

    invoke-virtual {p0, v2}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->LT([I)V

    .line 202
    iget-object v0, v1, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v3, 0x74

    aget v0, v0, v3

    aget v3, v2, v7

    xor-int/2addr v3, v0

    iget-object v0, v1, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v4, 0x75

    aget v0, v0, v4

    aget v4, v2, v8

    xor-int/2addr v4, v0

    iget-object v0, v1, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v5, 0x76

    aget v0, v0, v5

    aget v5, v2, v9

    xor-int/2addr v5, v0

    iget-object v0, v1, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v6, 0x77

    aget v0, v0, v6

    aget v6, v2, v10

    xor-int/2addr v6, v0

    invoke-virtual/range {v1 .. v6}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->sb5([IIIII)V

    invoke-virtual {p0, v2}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->LT([I)V

    .line 203
    iget-object v0, v1, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v3, 0x78

    aget v0, v0, v3

    aget v3, v2, v7

    xor-int/2addr v3, v0

    iget-object v0, v1, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v4, 0x79

    aget v0, v0, v4

    aget v4, v2, v8

    xor-int/2addr v4, v0

    iget-object v0, v1, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v5, 0x7a

    aget v0, v0, v5

    aget v5, v2, v9

    xor-int/2addr v5, v0

    iget-object v0, v1, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v6, 0x7b

    aget v0, v0, v6

    aget v6, v2, v10

    xor-int/2addr v6, v0

    invoke-virtual/range {v1 .. v6}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->sb6([IIIII)V

    invoke-virtual {p0, v2}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->LT([I)V

    .line 204
    iget-object v0, v1, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v3, 0x7c

    aget v0, v0, v3

    aget v3, v2, v7

    xor-int/2addr v3, v0

    iget-object v0, v1, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v4, 0x7d

    aget v0, v0, v4

    aget v4, v2, v8

    xor-int/2addr v4, v0

    iget-object v0, v1, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v5, 0x7e

    aget v0, v0, v5

    aget v5, v2, v9

    xor-int/2addr v5, v0

    iget-object v0, v1, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v6, 0x7f

    aget v0, v0, v6

    aget v6, v2, v10

    xor-int/2addr v6, v0

    invoke-virtual/range {v1 .. v6}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->sb7([IIIII)V

    .line 206
    iget-object v0, v1, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v3, 0x80

    aget v0, v0, v3

    aget v3, v2, v7

    xor-int/2addr v0, v3

    invoke-static {v0, p3, p4}, Lorg/bouncycastle/util/Pack;->intToLittleEndian(I[BI)V

    .line 207
    iget-object v0, v1, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v3, 0x81

    aget v0, v0, v3

    aget v3, v2, v8

    xor-int/2addr v0, v3

    add-int/lit8 v3, p4, 0x4

    invoke-static {v0, p3, v3}, Lorg/bouncycastle/util/Pack;->intToLittleEndian(I[BI)V

    .line 208
    iget-object v0, v1, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v3, 0x82

    aget v0, v0, v3

    aget v3, v2, v9

    xor-int/2addr v0, v3

    add-int/lit8 v3, p4, 0x8

    invoke-static {v0, p3, v3}, Lorg/bouncycastle/util/Pack;->intToLittleEndian(I[BI)V

    .line 209
    iget-object v0, v1, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v3, 0x83

    aget v0, v0, v3

    aget v3, v2, v10

    xor-int/2addr v0, v3

    add-int/lit8 v3, p4, 0xc

    invoke-static {v0, p3, v3}, Lorg/bouncycastle/util/Pack;->intToLittleEndian(I[BI)V

    .line 210
    return-void
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

    .line 31
    move-object/from16 v0, p1

    const/16 v1, 0x10

    new-array v2, v1, [I

    .line 32
    .local v2, "kPad":[I
    const/4 v3, 0x0

    .line 33
    .local v3, "off":I
    const/4 v4, 0x0

    .line 35
    .local v4, "length":I
    const/4 v3, 0x0

    :goto_0
    add-int/lit8 v5, v3, 0x4

    array-length v6, v0

    if-ge v5, v6, :cond_0

    .line 37
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "length":I
    .local v5, "length":I
    invoke-static {v0, v3}, Lorg/bouncycastle/util/Pack;->littleEndianToInt([BI)I

    move-result v6

    aput v6, v2, v4

    .line 35
    add-int/lit8 v3, v3, 0x4

    move v4, v5

    goto :goto_0

    .line 40
    .end local v5    # "length":I
    .restart local v4    # "length":I
    :cond_0
    rem-int/lit8 v5, v3, 0x4

    if-nez v5, :cond_4

    .line 42
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "length":I
    .restart local v5    # "length":I
    invoke-static {v0, v3}, Lorg/bouncycastle/util/Pack;->littleEndianToInt([BI)I

    move-result v6

    aput v6, v2, v4

    .line 43
    const/16 v4, 0x8

    const/4 v6, 0x1

    if-ge v5, v4, :cond_1

    .line 45
    aput v6, v2, v5

    .line 56
    :cond_1
    const/16 v7, 0x84

    .line 57
    .local v7, "amount":I
    new-array v8, v7, [I

    .line 62
    .local v8, "w":[I
    const/16 v9, 0x8

    .local v9, "i":I
    :goto_1
    const v10, -0x61c88647

    const/16 v11, 0xb

    if-ge v9, v1, :cond_2

    .line 64
    add-int/lit8 v12, v9, -0x8

    aget v12, v2, v12

    add-int/lit8 v13, v9, -0x5

    aget v13, v2, v13

    xor-int/2addr v12, v13

    add-int/lit8 v13, v9, -0x3

    aget v13, v2, v13

    xor-int/2addr v12, v13

    add-int/lit8 v13, v9, -0x1

    aget v13, v2, v13

    xor-int/2addr v12, v13

    xor-int/2addr v10, v12

    add-int/lit8 v12, v9, -0x8

    xor-int/2addr v10, v12

    invoke-static {v10, v11}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->rotateLeft(II)I

    move-result v10

    aput v10, v2, v9

    .line 62
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 67
    .end local v9    # "i":I
    :cond_2
    const/4 v9, 0x0

    invoke-static {v2, v4, v8, v9, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 72
    const/16 v12, 0x8

    .local v12, "i":I
    :goto_2
    if-ge v12, v7, :cond_3

    .line 74
    add-int/lit8 v13, v12, -0x8

    aget v13, v8, v13

    add-int/lit8 v14, v12, -0x5

    aget v14, v8, v14

    xor-int/2addr v13, v14

    add-int/lit8 v14, v12, -0x3

    aget v14, v8, v14

    xor-int/2addr v13, v14

    add-int/lit8 v14, v12, -0x1

    aget v14, v8, v14

    xor-int/2addr v13, v14

    xor-int/2addr v13, v10

    xor-int/2addr v13, v12

    invoke-static {v13, v11}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->rotateLeft(II)I

    move-result v13

    aput v13, v8, v12

    .line 72
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    .line 80
    .end local v12    # "i":I
    :cond_3
    const/4 v10, 0x4

    new-array v13, v10, [I

    .line 82
    .local v13, "X":[I
    aget v14, v8, v9

    aget v15, v8, v6

    const/16 v18, 0x2

    aget v16, v8, v18

    const/16 v19, 0x3

    aget v17, v8, v19

    move-object/from16 v12, p0

    invoke-virtual/range {v12 .. v17}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->sb3([IIIII)V

    .line 83
    aget v12, v13, v9

    aput v12, v8, v9

    aget v12, v13, v6

    aput v12, v8, v6

    aget v12, v13, v18

    aput v12, v8, v18

    aget v12, v13, v19

    aput v12, v8, v19

    .line 84
    aget v14, v8, v10

    const/16 v20, 0x5

    aget v15, v8, v20

    const/16 v21, 0x6

    aget v16, v8, v21

    const/16 v22, 0x7

    aget v17, v8, v22

    move-object/from16 v12, p0

    invoke-virtual/range {v12 .. v17}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->sb2([IIIII)V

    .line 85
    aget v12, v13, v9

    aput v12, v8, v10

    aget v10, v13, v6

    aput v10, v8, v20

    aget v10, v13, v18

    aput v10, v8, v21

    aget v10, v13, v19

    aput v10, v8, v22

    .line 86
    aget v14, v8, v4

    const/16 v10, 0x9

    aget v15, v8, v10

    const/16 v20, 0xa

    aget v16, v8, v20

    aget v17, v8, v11

    move-object/from16 v12, p0

    invoke-virtual/range {v12 .. v17}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->sb1([IIIII)V

    .line 87
    aget v12, v13, v9

    aput v12, v8, v4

    aget v4, v13, v6

    aput v4, v8, v10

    aget v4, v13, v18

    aput v4, v8, v20

    aget v4, v13, v19

    aput v4, v8, v11

    .line 88
    const/16 v4, 0xc

    aget v14, v8, v4

    const/16 v10, 0xd

    aget v15, v8, v10

    const/16 v11, 0xe

    aget v16, v8, v11

    const/16 v20, 0xf

    aget v17, v8, v20

    move-object/from16 v12, p0

    invoke-virtual/range {v12 .. v17}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->sb0([IIIII)V

    .line 89
    aget v12, v13, v9

    aput v12, v8, v4

    aget v4, v13, v6

    aput v4, v8, v10

    aget v4, v13, v18

    aput v4, v8, v11

    aget v4, v13, v19

    aput v4, v8, v20

    .line 90
    aget v14, v8, v1

    const/16 v4, 0x11

    aget v15, v8, v4

    const/16 v10, 0x12

    aget v16, v8, v10

    const/16 v11, 0x13

    aget v17, v8, v11

    move-object/from16 v12, p0

    invoke-virtual/range {v12 .. v17}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->sb7([IIIII)V

    .line 91
    aget v12, v13, v9

    aput v12, v8, v1

    aget v1, v13, v6

    aput v1, v8, v4

    aget v1, v13, v18

    aput v1, v8, v10

    aget v1, v13, v19

    aput v1, v8, v11

    .line 92
    const/16 v1, 0x14

    aget v14, v8, v1

    const/16 v4, 0x15

    aget v15, v8, v4

    const/16 v4, 0x16

    aget v16, v8, v4

    const/16 v4, 0x17

    aget v17, v8, v4

    move-object/from16 v12, p0

    invoke-virtual/range {v12 .. v17}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->sb6([IIIII)V

    .line 93
    aget v4, v13, v9

    aput v4, v8, v1

    const/16 v1, 0x15

    aget v4, v13, v6

    aput v4, v8, v1

    const/16 v1, 0x16

    aget v4, v13, v18

    aput v4, v8, v1

    const/16 v1, 0x17

    aget v4, v13, v19

    aput v4, v8, v1

    .line 94
    const/16 v1, 0x18

    aget v14, v8, v1

    const/16 v1, 0x19

    aget v15, v8, v1

    const/16 v1, 0x1a

    aget v16, v8, v1

    const/16 v1, 0x1b

    aget v17, v8, v1

    invoke-virtual/range {v12 .. v17}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->sb5([IIIII)V

    .line 95
    const/16 v1, 0x18

    aget v4, v13, v9

    aput v4, v8, v1

    const/16 v1, 0x19

    aget v4, v13, v6

    aput v4, v8, v1

    const/16 v1, 0x1a

    aget v4, v13, v18

    aput v4, v8, v1

    const/16 v1, 0x1b

    aget v4, v13, v19

    aput v4, v8, v1

    .line 96
    const/16 v1, 0x1c

    aget v14, v8, v1

    const/16 v1, 0x1d

    aget v15, v8, v1

    const/16 v1, 0x1e

    aget v16, v8, v1

    const/16 v1, 0x1f

    aget v17, v8, v1

    invoke-virtual/range {v12 .. v17}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->sb4([IIIII)V

    .line 97
    const/16 v1, 0x1c

    aget v4, v13, v9

    aput v4, v8, v1

    const/16 v1, 0x1d

    aget v4, v13, v6

    aput v4, v8, v1

    const/16 v1, 0x1e

    aget v4, v13, v18

    aput v4, v8, v1

    const/16 v1, 0x1f

    aget v4, v13, v19

    aput v4, v8, v1

    .line 98
    const/16 v1, 0x20

    aget v14, v8, v1

    const/16 v1, 0x21

    aget v15, v8, v1

    const/16 v1, 0x22

    aget v16, v8, v1

    const/16 v1, 0x23

    aget v17, v8, v1

    invoke-virtual/range {v12 .. v17}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->sb3([IIIII)V

    .line 99
    const/16 v1, 0x20

    aget v4, v13, v9

    aput v4, v8, v1

    const/16 v1, 0x21

    aget v4, v13, v6

    aput v4, v8, v1

    const/16 v1, 0x22

    aget v4, v13, v18

    aput v4, v8, v1

    const/16 v1, 0x23

    aget v4, v13, v19

    aput v4, v8, v1

    .line 100
    const/16 v1, 0x24

    aget v14, v8, v1

    const/16 v1, 0x25

    aget v15, v8, v1

    const/16 v1, 0x26

    aget v16, v8, v1

    const/16 v1, 0x27

    aget v17, v8, v1

    invoke-virtual/range {v12 .. v17}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->sb2([IIIII)V

    .line 101
    const/16 v1, 0x24

    aget v4, v13, v9

    aput v4, v8, v1

    const/16 v1, 0x25

    aget v4, v13, v6

    aput v4, v8, v1

    const/16 v1, 0x26

    aget v4, v13, v18

    aput v4, v8, v1

    const/16 v1, 0x27

    aget v4, v13, v19

    aput v4, v8, v1

    .line 102
    const/16 v1, 0x28

    aget v14, v8, v1

    const/16 v1, 0x29

    aget v15, v8, v1

    const/16 v1, 0x2a

    aget v16, v8, v1

    const/16 v1, 0x2b

    aget v17, v8, v1

    invoke-virtual/range {v12 .. v17}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->sb1([IIIII)V

    .line 103
    const/16 v1, 0x28

    aget v4, v13, v9

    aput v4, v8, v1

    const/16 v1, 0x29

    aget v4, v13, v6

    aput v4, v8, v1

    const/16 v1, 0x2a

    aget v4, v13, v18

    aput v4, v8, v1

    const/16 v1, 0x2b

    aget v4, v13, v19

    aput v4, v8, v1

    .line 104
    const/16 v1, 0x2c

    aget v14, v8, v1

    const/16 v1, 0x2d

    aget v15, v8, v1

    const/16 v1, 0x2e

    aget v16, v8, v1

    const/16 v1, 0x2f

    aget v17, v8, v1

    invoke-virtual/range {v12 .. v17}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->sb0([IIIII)V

    .line 105
    const/16 v1, 0x2c

    aget v4, v13, v9

    aput v4, v8, v1

    const/16 v1, 0x2d

    aget v4, v13, v6

    aput v4, v8, v1

    const/16 v1, 0x2e

    aget v4, v13, v18

    aput v4, v8, v1

    const/16 v1, 0x2f

    aget v4, v13, v19

    aput v4, v8, v1

    .line 106
    const/16 v1, 0x30

    aget v14, v8, v1

    const/16 v1, 0x31

    aget v15, v8, v1

    const/16 v1, 0x32

    aget v16, v8, v1

    const/16 v1, 0x33

    aget v17, v8, v1

    invoke-virtual/range {v12 .. v17}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->sb7([IIIII)V

    .line 107
    const/16 v1, 0x30

    aget v4, v13, v9

    aput v4, v8, v1

    const/16 v1, 0x31

    aget v4, v13, v6

    aput v4, v8, v1

    const/16 v1, 0x32

    aget v4, v13, v18

    aput v4, v8, v1

    const/16 v1, 0x33

    aget v4, v13, v19

    aput v4, v8, v1

    .line 108
    const/16 v1, 0x34

    aget v14, v8, v1

    const/16 v1, 0x35

    aget v15, v8, v1

    const/16 v1, 0x36

    aget v16, v8, v1

    const/16 v1, 0x37

    aget v17, v8, v1

    invoke-virtual/range {v12 .. v17}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->sb6([IIIII)V

    .line 109
    const/16 v1, 0x34

    aget v4, v13, v9

    aput v4, v8, v1

    const/16 v1, 0x35

    aget v4, v13, v6

    aput v4, v8, v1

    const/16 v1, 0x36

    aget v4, v13, v18

    aput v4, v8, v1

    const/16 v1, 0x37

    aget v4, v13, v19

    aput v4, v8, v1

    .line 110
    const/16 v1, 0x38

    aget v14, v8, v1

    const/16 v1, 0x39

    aget v15, v8, v1

    const/16 v1, 0x3a

    aget v16, v8, v1

    const/16 v1, 0x3b

    aget v17, v8, v1

    invoke-virtual/range {v12 .. v17}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->sb5([IIIII)V

    .line 111
    const/16 v1, 0x38

    aget v4, v13, v9

    aput v4, v8, v1

    const/16 v1, 0x39

    aget v4, v13, v6

    aput v4, v8, v1

    const/16 v1, 0x3a

    aget v4, v13, v18

    aput v4, v8, v1

    const/16 v1, 0x3b

    aget v4, v13, v19

    aput v4, v8, v1

    .line 112
    const/16 v1, 0x3c

    aget v14, v8, v1

    const/16 v1, 0x3d

    aget v15, v8, v1

    const/16 v1, 0x3e

    aget v16, v8, v1

    const/16 v1, 0x3f

    aget v17, v8, v1

    invoke-virtual/range {v12 .. v17}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->sb4([IIIII)V

    .line 113
    const/16 v1, 0x3c

    aget v4, v13, v9

    aput v4, v8, v1

    const/16 v1, 0x3d

    aget v4, v13, v6

    aput v4, v8, v1

    const/16 v1, 0x3e

    aget v4, v13, v18

    aput v4, v8, v1

    const/16 v1, 0x3f

    aget v4, v13, v19

    aput v4, v8, v1

    .line 114
    const/16 v1, 0x40

    aget v14, v8, v1

    const/16 v1, 0x41

    aget v15, v8, v1

    const/16 v1, 0x42

    aget v16, v8, v1

    const/16 v1, 0x43

    aget v17, v8, v1

    invoke-virtual/range {v12 .. v17}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->sb3([IIIII)V

    .line 115
    const/16 v1, 0x40

    aget v4, v13, v9

    aput v4, v8, v1

    const/16 v1, 0x41

    aget v4, v13, v6

    aput v4, v8, v1

    const/16 v1, 0x42

    aget v4, v13, v18

    aput v4, v8, v1

    const/16 v1, 0x43

    aget v4, v13, v19

    aput v4, v8, v1

    .line 116
    const/16 v1, 0x44

    aget v14, v8, v1

    const/16 v1, 0x45

    aget v15, v8, v1

    const/16 v1, 0x46

    aget v16, v8, v1

    const/16 v1, 0x47

    aget v17, v8, v1

    invoke-virtual/range {v12 .. v17}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->sb2([IIIII)V

    .line 117
    const/16 v1, 0x44

    aget v4, v13, v9

    aput v4, v8, v1

    const/16 v1, 0x45

    aget v4, v13, v6

    aput v4, v8, v1

    const/16 v1, 0x46

    aget v4, v13, v18

    aput v4, v8, v1

    const/16 v1, 0x47

    aget v4, v13, v19

    aput v4, v8, v1

    .line 118
    const/16 v1, 0x48

    aget v14, v8, v1

    const/16 v1, 0x49

    aget v15, v8, v1

    const/16 v1, 0x4a

    aget v16, v8, v1

    const/16 v1, 0x4b

    aget v17, v8, v1

    invoke-virtual/range {v12 .. v17}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->sb1([IIIII)V

    .line 119
    const/16 v1, 0x48

    aget v4, v13, v9

    aput v4, v8, v1

    const/16 v1, 0x49

    aget v4, v13, v6

    aput v4, v8, v1

    const/16 v1, 0x4a

    aget v4, v13, v18

    aput v4, v8, v1

    const/16 v1, 0x4b

    aget v4, v13, v19

    aput v4, v8, v1

    .line 120
    const/16 v1, 0x4c

    aget v14, v8, v1

    const/16 v1, 0x4d

    aget v15, v8, v1

    const/16 v1, 0x4e

    aget v16, v8, v1

    const/16 v1, 0x4f

    aget v17, v8, v1

    invoke-virtual/range {v12 .. v17}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->sb0([IIIII)V

    .line 121
    const/16 v1, 0x4c

    aget v4, v13, v9

    aput v4, v8, v1

    const/16 v1, 0x4d

    aget v4, v13, v6

    aput v4, v8, v1

    const/16 v1, 0x4e

    aget v4, v13, v18

    aput v4, v8, v1

    const/16 v1, 0x4f

    aget v4, v13, v19

    aput v4, v8, v1

    .line 122
    const/16 v1, 0x50

    aget v14, v8, v1

    const/16 v1, 0x51

    aget v15, v8, v1

    const/16 v1, 0x52

    aget v16, v8, v1

    const/16 v1, 0x53

    aget v17, v8, v1

    invoke-virtual/range {v12 .. v17}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->sb7([IIIII)V

    .line 123
    const/16 v1, 0x50

    aget v4, v13, v9

    aput v4, v8, v1

    const/16 v1, 0x51

    aget v4, v13, v6

    aput v4, v8, v1

    const/16 v1, 0x52

    aget v4, v13, v18

    aput v4, v8, v1

    const/16 v1, 0x53

    aget v4, v13, v19

    aput v4, v8, v1

    .line 124
    const/16 v1, 0x54

    aget v14, v8, v1

    const/16 v1, 0x55

    aget v15, v8, v1

    const/16 v1, 0x56

    aget v16, v8, v1

    const/16 v1, 0x57

    aget v17, v8, v1

    invoke-virtual/range {v12 .. v17}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->sb6([IIIII)V

    .line 125
    const/16 v1, 0x54

    aget v4, v13, v9

    aput v4, v8, v1

    const/16 v1, 0x55

    aget v4, v13, v6

    aput v4, v8, v1

    const/16 v1, 0x56

    aget v4, v13, v18

    aput v4, v8, v1

    const/16 v1, 0x57

    aget v4, v13, v19

    aput v4, v8, v1

    .line 126
    const/16 v1, 0x58

    aget v14, v8, v1

    const/16 v1, 0x59

    aget v15, v8, v1

    const/16 v1, 0x5a

    aget v16, v8, v1

    const/16 v1, 0x5b

    aget v17, v8, v1

    invoke-virtual/range {v12 .. v17}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->sb5([IIIII)V

    .line 127
    const/16 v1, 0x58

    aget v4, v13, v9

    aput v4, v8, v1

    const/16 v1, 0x59

    aget v4, v13, v6

    aput v4, v8, v1

    const/16 v1, 0x5a

    aget v4, v13, v18

    aput v4, v8, v1

    const/16 v1, 0x5b

    aget v4, v13, v19

    aput v4, v8, v1

    .line 128
    const/16 v1, 0x5c

    aget v14, v8, v1

    const/16 v1, 0x5d

    aget v15, v8, v1

    const/16 v1, 0x5e

    aget v16, v8, v1

    const/16 v1, 0x5f

    aget v17, v8, v1

    invoke-virtual/range {v12 .. v17}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->sb4([IIIII)V

    .line 129
    const/16 v1, 0x5c

    aget v4, v13, v9

    aput v4, v8, v1

    const/16 v1, 0x5d

    aget v4, v13, v6

    aput v4, v8, v1

    const/16 v1, 0x5e

    aget v4, v13, v18

    aput v4, v8, v1

    const/16 v1, 0x5f

    aget v4, v13, v19

    aput v4, v8, v1

    .line 130
    const/16 v1, 0x60

    aget v14, v8, v1

    const/16 v1, 0x61

    aget v15, v8, v1

    const/16 v1, 0x62

    aget v16, v8, v1

    const/16 v1, 0x63

    aget v17, v8, v1

    invoke-virtual/range {v12 .. v17}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->sb3([IIIII)V

    .line 131
    const/16 v1, 0x60

    aget v4, v13, v9

    aput v4, v8, v1

    const/16 v1, 0x61

    aget v4, v13, v6

    aput v4, v8, v1

    const/16 v1, 0x62

    aget v4, v13, v18

    aput v4, v8, v1

    const/16 v1, 0x63

    aget v4, v13, v19

    aput v4, v8, v1

    .line 132
    const/16 v1, 0x64

    aget v14, v8, v1

    const/16 v1, 0x65

    aget v15, v8, v1

    const/16 v1, 0x66

    aget v16, v8, v1

    const/16 v1, 0x67

    aget v17, v8, v1

    invoke-virtual/range {v12 .. v17}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->sb2([IIIII)V

    .line 133
    const/16 v1, 0x64

    aget v4, v13, v9

    aput v4, v8, v1

    const/16 v1, 0x65

    aget v4, v13, v6

    aput v4, v8, v1

    const/16 v1, 0x66

    aget v4, v13, v18

    aput v4, v8, v1

    const/16 v1, 0x67

    aget v4, v13, v19

    aput v4, v8, v1

    .line 134
    const/16 v1, 0x68

    aget v14, v8, v1

    const/16 v1, 0x69

    aget v15, v8, v1

    const/16 v1, 0x6a

    aget v16, v8, v1

    const/16 v1, 0x6b

    aget v17, v8, v1

    invoke-virtual/range {v12 .. v17}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->sb1([IIIII)V

    .line 135
    const/16 v1, 0x68

    aget v4, v13, v9

    aput v4, v8, v1

    const/16 v1, 0x69

    aget v4, v13, v6

    aput v4, v8, v1

    const/16 v1, 0x6a

    aget v4, v13, v18

    aput v4, v8, v1

    const/16 v1, 0x6b

    aget v4, v13, v19

    aput v4, v8, v1

    .line 136
    const/16 v1, 0x6c

    aget v14, v8, v1

    const/16 v1, 0x6d

    aget v15, v8, v1

    const/16 v1, 0x6e

    aget v16, v8, v1

    const/16 v1, 0x6f

    aget v17, v8, v1

    invoke-virtual/range {v12 .. v17}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->sb0([IIIII)V

    .line 137
    const/16 v1, 0x6c

    aget v4, v13, v9

    aput v4, v8, v1

    const/16 v1, 0x6d

    aget v4, v13, v6

    aput v4, v8, v1

    const/16 v1, 0x6e

    aget v4, v13, v18

    aput v4, v8, v1

    const/16 v1, 0x6f

    aget v4, v13, v19

    aput v4, v8, v1

    .line 138
    const/16 v1, 0x70

    aget v14, v8, v1

    const/16 v1, 0x71

    aget v15, v8, v1

    const/16 v1, 0x72

    aget v16, v8, v1

    const/16 v1, 0x73

    aget v17, v8, v1

    invoke-virtual/range {v12 .. v17}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->sb7([IIIII)V

    .line 139
    const/16 v1, 0x70

    aget v4, v13, v9

    aput v4, v8, v1

    const/16 v1, 0x71

    aget v4, v13, v6

    aput v4, v8, v1

    const/16 v1, 0x72

    aget v4, v13, v18

    aput v4, v8, v1

    const/16 v1, 0x73

    aget v4, v13, v19

    aput v4, v8, v1

    .line 140
    const/16 v1, 0x74

    aget v14, v8, v1

    const/16 v1, 0x75

    aget v15, v8, v1

    const/16 v1, 0x76

    aget v16, v8, v1

    const/16 v1, 0x77

    aget v17, v8, v1

    invoke-virtual/range {v12 .. v17}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->sb6([IIIII)V

    .line 141
    const/16 v1, 0x74

    aget v4, v13, v9

    aput v4, v8, v1

    const/16 v1, 0x75

    aget v4, v13, v6

    aput v4, v8, v1

    const/16 v1, 0x76

    aget v4, v13, v18

    aput v4, v8, v1

    const/16 v1, 0x77

    aget v4, v13, v19

    aput v4, v8, v1

    .line 142
    const/16 v1, 0x78

    aget v14, v8, v1

    const/16 v1, 0x79

    aget v15, v8, v1

    const/16 v1, 0x7a

    aget v16, v8, v1

    const/16 v1, 0x7b

    aget v17, v8, v1

    invoke-virtual/range {v12 .. v17}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->sb5([IIIII)V

    .line 143
    const/16 v1, 0x78

    aget v4, v13, v9

    aput v4, v8, v1

    const/16 v1, 0x79

    aget v4, v13, v6

    aput v4, v8, v1

    const/16 v1, 0x7a

    aget v4, v13, v18

    aput v4, v8, v1

    const/16 v1, 0x7b

    aget v4, v13, v19

    aput v4, v8, v1

    .line 144
    const/16 v1, 0x7c

    aget v14, v8, v1

    const/16 v1, 0x7d

    aget v15, v8, v1

    const/16 v1, 0x7e

    aget v16, v8, v1

    const/16 v1, 0x7f

    aget v17, v8, v1

    invoke-virtual/range {v12 .. v17}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->sb4([IIIII)V

    .line 145
    const/16 v1, 0x7c

    aget v4, v13, v9

    aput v4, v8, v1

    const/16 v1, 0x7d

    aget v4, v13, v6

    aput v4, v8, v1

    const/16 v1, 0x7e

    aget v4, v13, v18

    aput v4, v8, v1

    const/16 v1, 0x7f

    aget v4, v13, v19

    aput v4, v8, v1

    .line 146
    const/16 v1, 0x80

    aget v14, v8, v1

    const/16 v1, 0x81

    aget v15, v8, v1

    const/16 v1, 0x82

    aget v16, v8, v1

    const/16 v1, 0x83

    aget v17, v8, v1

    invoke-virtual/range {v12 .. v17}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->sb3([IIIII)V

    .line 147
    const/16 v1, 0x80

    aget v4, v13, v9

    aput v4, v8, v1

    const/16 v1, 0x81

    aget v4, v13, v6

    aput v4, v8, v1

    const/16 v1, 0x82

    aget v4, v13, v18

    aput v4, v8, v1

    const/16 v1, 0x83

    aget v4, v13, v19

    aput v4, v8, v1

    .line 149
    return-object v8

    .line 50
    .end local v5    # "length":I
    .end local v7    # "amount":I
    .end local v8    # "w":[I
    .end local v13    # "X":[I
    .restart local v4    # "length":I
    :cond_4
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v5, "key must be a multiple of 4 bytes"

    invoke-direct {v1, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
