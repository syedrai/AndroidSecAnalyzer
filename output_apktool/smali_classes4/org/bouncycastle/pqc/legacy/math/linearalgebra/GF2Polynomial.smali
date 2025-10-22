.class public Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;
.super Ljava/lang/Object;
.source "GF2Polynomial.java"


# static fields
.field private static final bitMask:[I

.field private static final parity:[Z

.field private static rand:Ljava/util/Random;

.field private static final reverseRightMask:[I

.field private static final squaringTable:[S


# instance fields
.field private blocks:I

.field private len:I

.field private value:[I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 31
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->rand:Ljava/util/Random;

    .line 34
    const/16 v0, 0x100

    new-array v1, v0, [Z

    fill-array-data v1, :array_0

    sput-object v1, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->parity:[Z

    .line 63
    new-array v0, v0, [S

    fill-array-data v0, :array_1

    sput-object v0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->squaringTable:[S

    .line 98
    const/16 v0, 0x21

    new-array v1, v0, [I

    fill-array-data v1, :array_2

    sput-object v1, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->bitMask:[I

    .line 107
    new-array v0, v0, [I

    fill-array-data v0, :array_3

    sput-object v0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->reverseRightMask:[I

    return-void

    :array_0
    .array-data 1
        0x0t
        0x1t
        0x1t
        0x0t
        0x1t
        0x0t
        0x0t
        0x1t
        0x1t
        0x0t
        0x0t
        0x1t
        0x0t
        0x1t
        0x1t
        0x0t
        0x1t
        0x0t
        0x0t
        0x1t
        0x0t
        0x1t
        0x1t
        0x0t
        0x0t
        0x1t
        0x1t
        0x0t
        0x1t
        0x0t
        0x0t
        0x1t
        0x1t
        0x0t
        0x0t
        0x1t
        0x0t
        0x1t
        0x1t
        0x0t
        0x0t
        0x1t
        0x1t
        0x0t
        0x1t
        0x0t
        0x0t
        0x1t
        0x0t
        0x1t
        0x1t
        0x0t
        0x1t
        0x0t
        0x0t
        0x1t
        0x1t
        0x0t
        0x0t
        0x1t
        0x0t
        0x1t
        0x1t
        0x0t
        0x1t
        0x0t
        0x0t
        0x1t
        0x0t
        0x1t
        0x1t
        0x0t
        0x0t
        0x1t
        0x1t
        0x0t
        0x1t
        0x0t
        0x0t
        0x1t
        0x0t
        0x1t
        0x1t
        0x0t
        0x1t
        0x0t
        0x0t
        0x1t
        0x1t
        0x0t
        0x0t
        0x1t
        0x0t
        0x1t
        0x1t
        0x0t
        0x0t
        0x1t
        0x1t
        0x0t
        0x1t
        0x0t
        0x0t
        0x1t
        0x1t
        0x0t
        0x0t
        0x1t
        0x0t
        0x1t
        0x1t
        0x0t
        0x1t
        0x0t
        0x0t
        0x1t
        0x0t
        0x1t
        0x1t
        0x0t
        0x0t
        0x1t
        0x1t
        0x0t
        0x1t
        0x0t
        0x0t
        0x1t
        0x1t
        0x0t
        0x0t
        0x1t
        0x0t
        0x1t
        0x1t
        0x0t
        0x0t
        0x1t
        0x1t
        0x0t
        0x1t
        0x0t
        0x0t
        0x1t
        0x0t
        0x1t
        0x1t
        0x0t
        0x1t
        0x0t
        0x0t
        0x1t
        0x1t
        0x0t
        0x0t
        0x1t
        0x0t
        0x1t
        0x1t
        0x0t
        0x0t
        0x1t
        0x1t
        0x0t
        0x1t
        0x0t
        0x0t
        0x1t
        0x1t
        0x0t
        0x0t
        0x1t
        0x0t
        0x1t
        0x1t
        0x0t
        0x1t
        0x0t
        0x0t
        0x1t
        0x0t
        0x1t
        0x1t
        0x0t
        0x0t
        0x1t
        0x1t
        0x0t
        0x1t
        0x0t
        0x0t
        0x1t
        0x0t
        0x1t
        0x1t
        0x0t
        0x1t
        0x0t
        0x0t
        0x1t
        0x1t
        0x0t
        0x0t
        0x1t
        0x0t
        0x1t
        0x1t
        0x0t
        0x1t
        0x0t
        0x0t
        0x1t
        0x0t
        0x1t
        0x1t
        0x0t
        0x0t
        0x1t
        0x1t
        0x0t
        0x1t
        0x0t
        0x0t
        0x1t
        0x1t
        0x0t
        0x0t
        0x1t
        0x0t
        0x1t
        0x1t
        0x0t
        0x0t
        0x1t
        0x1t
        0x0t
        0x1t
        0x0t
        0x0t
        0x1t
        0x0t
        0x1t
        0x1t
        0x0t
        0x1t
        0x0t
        0x0t
        0x1t
        0x1t
        0x0t
        0x0t
        0x1t
        0x0t
        0x1t
        0x1t
        0x0t
    .end array-data

    :array_1
    .array-data 2
        0x0s
        0x1s
        0x4s
        0x5s
        0x10s
        0x11s
        0x14s
        0x15s
        0x40s
        0x41s
        0x44s
        0x45s
        0x50s
        0x51s
        0x54s
        0x55s
        0x100s
        0x101s
        0x104s
        0x105s
        0x110s
        0x111s
        0x114s
        0x115s
        0x140s
        0x141s
        0x144s
        0x145s
        0x150s
        0x151s
        0x154s
        0x155s
        0x400s
        0x401s
        0x404s
        0x405s
        0x410s
        0x411s
        0x414s
        0x415s
        0x440s
        0x441s
        0x444s
        0x445s
        0x450s
        0x451s
        0x454s
        0x455s
        0x500s
        0x501s
        0x504s
        0x505s
        0x510s
        0x511s
        0x514s
        0x515s
        0x540s
        0x541s
        0x544s
        0x545s
        0x550s
        0x551s
        0x554s
        0x555s
        0x1000s
        0x1001s
        0x1004s
        0x1005s
        0x1010s
        0x1011s
        0x1014s
        0x1015s
        0x1040s
        0x1041s
        0x1044s
        0x1045s
        0x1050s
        0x1051s
        0x1054s
        0x1055s
        0x1100s
        0x1101s
        0x1104s
        0x1105s
        0x1110s
        0x1111s
        0x1114s
        0x1115s
        0x1140s
        0x1141s
        0x1144s
        0x1145s
        0x1150s
        0x1151s
        0x1154s
        0x1155s
        0x1400s
        0x1401s
        0x1404s
        0x1405s
        0x1410s
        0x1411s
        0x1414s
        0x1415s
        0x1440s
        0x1441s
        0x1444s
        0x1445s
        0x1450s
        0x1451s
        0x1454s
        0x1455s
        0x1500s
        0x1501s
        0x1504s
        0x1505s
        0x1510s
        0x1511s
        0x1514s
        0x1515s
        0x1540s
        0x1541s
        0x1544s
        0x1545s
        0x1550s
        0x1551s
        0x1554s
        0x1555s
        0x4000s
        0x4001s
        0x4004s
        0x4005s
        0x4010s
        0x4011s
        0x4014s
        0x4015s
        0x4040s
        0x4041s
        0x4044s
        0x4045s
        0x4050s
        0x4051s
        0x4054s
        0x4055s
        0x4100s
        0x4101s
        0x4104s
        0x4105s
        0x4110s
        0x4111s
        0x4114s
        0x4115s
        0x4140s
        0x4141s
        0x4144s
        0x4145s
        0x4150s
        0x4151s
        0x4154s
        0x4155s
        0x4400s
        0x4401s
        0x4404s
        0x4405s
        0x4410s
        0x4411s
        0x4414s
        0x4415s
        0x4440s
        0x4441s
        0x4444s
        0x4445s
        0x4450s
        0x4451s
        0x4454s
        0x4455s
        0x4500s
        0x4501s
        0x4504s
        0x4505s
        0x4510s
        0x4511s
        0x4514s
        0x4515s
        0x4540s
        0x4541s
        0x4544s
        0x4545s
        0x4550s
        0x4551s
        0x4554s
        0x4555s
        0x5000s
        0x5001s
        0x5004s
        0x5005s
        0x5010s
        0x5011s
        0x5014s
        0x5015s
        0x5040s
        0x5041s
        0x5044s
        0x5045s
        0x5050s
        0x5051s
        0x5054s
        0x5055s
        0x5100s
        0x5101s
        0x5104s
        0x5105s
        0x5110s
        0x5111s
        0x5114s
        0x5115s
        0x5140s
        0x5141s
        0x5144s
        0x5145s
        0x5150s
        0x5151s
        0x5154s
        0x5155s
        0x5400s
        0x5401s
        0x5404s
        0x5405s
        0x5410s
        0x5411s
        0x5414s
        0x5415s
        0x5440s
        0x5441s
        0x5444s
        0x5445s
        0x5450s
        0x5451s
        0x5454s
        0x5455s
        0x5500s
        0x5501s
        0x5504s
        0x5505s
        0x5510s
        0x5511s
        0x5514s
        0x5515s
        0x5540s
        0x5541s
        0x5544s
        0x5545s
        0x5550s
        0x5551s
        0x5554s
        0x5555s
    .end array-data

    :array_2
    .array-data 4
        0x1
        0x2
        0x4
        0x8
        0x10
        0x20
        0x40
        0x80
        0x100
        0x200
        0x400
        0x800
        0x1000
        0x2000
        0x4000
        0x8000
        0x10000
        0x20000
        0x40000
        0x80000
        0x100000
        0x200000
        0x400000
        0x800000
        0x1000000
        0x2000000
        0x4000000
        0x8000000
        0x10000000
        0x20000000
        0x40000000    # 2.0f
        -0x80000000
        0x0
    .end array-data

    :array_3
    .array-data 4
        0x0
        0x1
        0x3
        0x7
        0xf
        0x1f
        0x3f
        0x7f
        0xff
        0x1ff
        0x3ff
        0x7ff
        0xfff
        0x1fff
        0x3fff
        0x7fff
        0xffff
        0x1ffff
        0x3ffff
        0x7ffff
        0xfffff
        0x1fffff
        0x3fffff
        0x7fffff
        0xffffff
        0x1ffffff
        0x3ffffff
        0x7ffffff
        0xfffffff
        0x1fffffff
        0x3fffffff    # 1.9999999f
        0x7fffffff
        -0x1
    .end array-data
.end method

.method public constructor <init>(I)V
    .locals 3
    .param p1, "length"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "length"
        }
    .end annotation

    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 123
    move v0, p1

    .line 124
    .local v0, "l":I
    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    .line 126
    const/4 v0, 0x1

    .line 128
    :cond_0
    add-int/lit8 v2, v0, -0x1

    shr-int/lit8 v2, v2, 0x5

    add-int/2addr v2, v1

    iput v2, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->blocks:I

    .line 129
    iget v1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->blocks:I

    new-array v1, v1, [I

    iput-object v1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->value:[I

    .line 130
    iput v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->len:I

    .line 131
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 4
    .param p1, "length"    # I
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "length",
            "value"
        }
    .end annotation

    .line 167
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 168
    move v0, p1

    .line 169
    .local v0, "l":I
    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    .line 171
    const/4 v0, 0x1

    .line 173
    :cond_0
    add-int/lit8 v2, v0, -0x1

    shr-int/lit8 v2, v2, 0x5

    add-int/2addr v2, v1

    iput v2, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->blocks:I

    .line 174
    iget v1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->blocks:I

    new-array v1, v1, [I

    iput-object v1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->value:[I

    .line 175
    iput v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->len:I

    .line 176
    const-string v1, "ZERO"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 178
    invoke-virtual {p0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->assignZero()V

    goto :goto_0

    .line 180
    :cond_1
    const-string v1, "ONE"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 182
    invoke-virtual {p0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->assignOne()V

    goto :goto_0

    .line 184
    :cond_2
    const-string v1, "RANDOM"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 186
    invoke-virtual {p0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->randomize()V

    goto :goto_0

    .line 188
    :cond_3
    const-string v1, "X"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 190
    invoke-virtual {p0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->assignX()V

    goto :goto_0

    .line 192
    :cond_4
    const-string v1, "ALL"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 194
    invoke-virtual {p0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->assignAll()V

    .line 203
    :goto_0
    return-void

    .line 198
    :cond_5
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error: GF2Polynomial was called using "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " as value!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public constructor <init>(ILjava/math/BigInteger;)V
    .locals 11
    .param p1, "length"    # I
    .param p2, "bi"    # Ljava/math/BigInteger;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "length",
            "bi"
        }
    .end annotation

    .line 283
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 284
    move v0, p1

    .line 285
    .local v0, "l":I
    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    .line 287
    const/4 v0, 0x1

    .line 289
    :cond_0
    add-int/lit8 v2, v0, -0x1

    shr-int/lit8 v2, v2, 0x5

    add-int/2addr v2, v1

    iput v2, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->blocks:I

    .line 290
    iget v2, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->blocks:I

    new-array v2, v2, [I

    iput-object v2, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->value:[I

    .line 291
    iput v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->len:I

    .line 293
    invoke-virtual {p2}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v2

    .line 294
    .local v2, "val":[B
    const/4 v3, 0x0

    aget-byte v4, v2, v3

    if-nez v4, :cond_1

    .line 296
    array-length v4, v2

    sub-int/2addr v4, v1

    new-array v4, v4, [B

    .line 297
    .local v4, "dummy":[B
    array-length v5, v4

    invoke-static {v2, v1, v4, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 298
    move-object v2, v4

    .line 300
    .end local v4    # "dummy":[B
    :cond_1
    array-length v3, v2

    and-int/lit8 v3, v3, 0x3

    .line 301
    .local v3, "ov":I
    array-length v4, v2

    sub-int/2addr v4, v1

    shr-int/lit8 v4, v4, 0x2

    add-int/2addr v4, v1

    .line 302
    .local v4, "k":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v3, :cond_2

    .line 304
    iget-object v6, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->value:[I

    add-int/lit8 v7, v4, -0x1

    aget v8, v6, v7

    aget-byte v9, v2, v5

    and-int/lit16 v9, v9, 0xff

    add-int/lit8 v10, v3, -0x1

    sub-int/2addr v10, v5

    shl-int/lit8 v10, v10, 0x3

    shl-int/2addr v9, v10

    or-int/2addr v8, v9

    aput v8, v6, v7

    .line 302
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 306
    :cond_2
    const/4 v6, 0x0

    .line 307
    .local v6, "m":I
    const/4 v5, 0x0

    :goto_1
    array-length v7, v2

    add-int/lit8 v7, v7, -0x4

    shr-int/lit8 v7, v7, 0x2

    if-gt v5, v7, :cond_3

    .line 309
    array-length v7, v2

    sub-int/2addr v7, v1

    shl-int/lit8 v8, v5, 0x2

    sub-int v6, v7, v8

    .line 310
    iget-object v7, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->value:[I

    aget-byte v8, v2, v6

    and-int/lit16 v8, v8, 0xff

    aput v8, v7, v5

    .line 311
    iget-object v7, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->value:[I

    aget v8, v7, v5

    add-int/lit8 v9, v6, -0x1

    aget-byte v9, v2, v9

    shl-int/lit8 v9, v9, 0x8

    const v10, 0xff00

    and-int/2addr v9, v10

    or-int/2addr v8, v9

    aput v8, v7, v5

    .line 312
    iget-object v7, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->value:[I

    aget v8, v7, v5

    add-int/lit8 v9, v6, -0x2

    aget-byte v9, v2, v9

    shl-int/lit8 v9, v9, 0x10

    const/high16 v10, 0xff0000

    and-int/2addr v9, v10

    or-int/2addr v8, v9

    aput v8, v7, v5

    .line 313
    iget-object v7, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->value:[I

    aget v8, v7, v5

    add-int/lit8 v9, v6, -0x3

    aget-byte v9, v2, v9

    shl-int/lit8 v9, v9, 0x18

    const/high16 v10, -0x1000000

    and-int/2addr v9, v10

    or-int/2addr v8, v9

    aput v8, v7, v5

    .line 307
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 315
    :cond_3
    iget v7, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->len:I

    and-int/lit8 v7, v7, 0x1f

    if-eqz v7, :cond_4

    .line 317
    iget-object v7, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->value:[I

    iget v8, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->blocks:I

    sub-int/2addr v8, v1

    aget v1, v7, v8

    sget-object v9, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->reverseRightMask:[I

    iget v10, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->len:I

    and-int/lit8 v10, v10, 0x1f

    aget v9, v9, v10

    and-int/2addr v1, v9

    aput v1, v7, v8

    .line 319
    :cond_4
    invoke-virtual {p0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->reduceN()V

    .line 320
    return-void
.end method

.method public constructor <init>(ILjava/util/Random;)V
    .locals 3
    .param p1, "length"    # I
    .param p2, "rand"    # Ljava/util/Random;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "length",
            "rand"
        }
    .end annotation

    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 141
    move v0, p1

    .line 142
    .local v0, "l":I
    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    .line 144
    const/4 v0, 0x1

    .line 146
    :cond_0
    add-int/lit8 v2, v0, -0x1

    shr-int/lit8 v2, v2, 0x5

    add-int/2addr v2, v1

    iput v2, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->blocks:I

    .line 147
    iget v1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->blocks:I

    new-array v1, v1, [I

    iput-object v1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->value:[I

    .line 148
    iput v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->len:I

    .line 149
    invoke-virtual {p0, p2}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->randomize(Ljava/util/Random;)V

    .line 150
    return-void
.end method

.method public constructor <init>(I[B)V
    .locals 12
    .param p1, "length"    # I
    .param p2, "os"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "length",
            "os"
        }
    .end annotation

    .line 236
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 237
    move v0, p1

    .line 238
    .local v0, "l":I
    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    .line 240
    const/4 v0, 0x1

    .line 242
    :cond_0
    add-int/lit8 v2, v0, -0x1

    shr-int/lit8 v2, v2, 0x5

    add-int/2addr v2, v1

    iput v2, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->blocks:I

    .line 243
    iget v2, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->blocks:I

    new-array v2, v2, [I

    iput-object v2, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->value:[I

    .line 244
    iput v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->len:I

    .line 246
    array-length v2, p2

    sub-int/2addr v2, v1

    const/4 v3, 0x2

    shr-int/2addr v2, v3

    add-int/2addr v2, v1

    iget v4, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->blocks:I

    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 247
    .local v2, "k":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    add-int/lit8 v5, v2, -0x1

    const/high16 v6, -0x1000000

    const/high16 v7, 0xff0000

    const v8, 0xff00

    if-ge v4, v5, :cond_1

    .line 249
    array-length v5, p2

    shl-int/lit8 v9, v4, 0x2

    sub-int/2addr v5, v9

    sub-int/2addr v5, v1

    .line 250
    .local v5, "m":I
    iget-object v9, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->value:[I

    aget-byte v10, p2, v5

    and-int/lit16 v10, v10, 0xff

    aput v10, v9, v4

    .line 251
    iget-object v9, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->value:[I

    aget v10, v9, v4

    add-int/lit8 v11, v5, -0x1

    aget-byte v11, p2, v11

    shl-int/lit8 v11, v11, 0x8

    and-int/2addr v8, v11

    or-int/2addr v8, v10

    aput v8, v9, v4

    .line 252
    iget-object v8, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->value:[I

    aget v9, v8, v4

    add-int/lit8 v10, v5, -0x2

    aget-byte v10, p2, v10

    shl-int/lit8 v10, v10, 0x10

    and-int/2addr v7, v10

    or-int/2addr v7, v9

    aput v7, v8, v4

    .line 253
    iget-object v7, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->value:[I

    aget v8, v7, v4

    add-int/lit8 v9, v5, -0x3

    aget-byte v9, p2, v9

    shl-int/lit8 v9, v9, 0x18

    and-int/2addr v6, v9

    or-int/2addr v6, v8

    aput v6, v7, v4

    .line 247
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 255
    .end local v5    # "m":I
    :cond_1
    add-int/lit8 v4, v2, -0x1

    .line 256
    array-length v5, p2

    shl-int/lit8 v9, v4, 0x2

    sub-int/2addr v5, v9

    sub-int/2addr v5, v1

    .line 257
    .restart local v5    # "m":I
    iget-object v9, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->value:[I

    aget-byte v10, p2, v5

    and-int/lit16 v10, v10, 0xff

    aput v10, v9, v4

    .line 258
    if-lez v5, :cond_2

    .line 260
    iget-object v9, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->value:[I

    aget v10, v9, v4

    add-int/lit8 v11, v5, -0x1

    aget-byte v11, p2, v11

    shl-int/lit8 v11, v11, 0x8

    and-int/2addr v8, v11

    or-int/2addr v8, v10

    aput v8, v9, v4

    .line 262
    :cond_2
    if-le v5, v1, :cond_3

    .line 264
    iget-object v1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->value:[I

    aget v8, v1, v4

    add-int/lit8 v9, v5, -0x2

    aget-byte v9, p2, v9

    shl-int/lit8 v9, v9, 0x10

    and-int/2addr v7, v9

    or-int/2addr v7, v8

    aput v7, v1, v4

    .line 266
    :cond_3
    if-le v5, v3, :cond_4

    .line 268
    iget-object v1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->value:[I

    aget v3, v1, v4

    add-int/lit8 v7, v5, -0x3

    aget-byte v7, p2, v7

    shl-int/lit8 v7, v7, 0x18

    and-int/2addr v6, v7

    or-int/2addr v3, v6

    aput v3, v1, v4

    .line 270
    :cond_4
    invoke-direct {p0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->zeroUnusedBits()V

    .line 271
    invoke-virtual {p0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->reduceN()V

    .line 272
    return-void
.end method

.method public constructor <init>(I[I)V
    .locals 4
    .param p1, "length"    # I
    .param p2, "bs"    # [I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "length",
            "bs"
        }
    .end annotation

    .line 213
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 214
    move v0, p1

    .line 215
    .local v0, "leng":I
    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    .line 217
    const/4 v0, 0x1

    .line 219
    :cond_0
    add-int/lit8 v2, v0, -0x1

    shr-int/lit8 v2, v2, 0x5

    add-int/2addr v2, v1

    iput v2, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->blocks:I

    .line 220
    iget v1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->blocks:I

    new-array v1, v1, [I

    iput-object v1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->value:[I

    .line 221
    iput v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->len:I

    .line 222
    iget v1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->blocks:I

    array-length v2, p2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 223
    .local v1, "l":I
    iget-object v2, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->value:[I

    const/4 v3, 0x0

    invoke-static {p2, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 224
    invoke-direct {p0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->zeroUnusedBits()V

    .line 225
    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;)V
    .locals 1
    .param p1, "b"    # Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "b"
        }
    .end annotation

    .line 328
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 329
    iget v0, p1, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->len:I

    iput v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->len:I

    .line 330
    iget v0, p1, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->blocks:I

    iput v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->blocks:I

    .line 331
    iget-object v0, p1, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->value:[I

    invoke-static {v0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/IntUtils;->clone([I)[I

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->value:[I

    .line 332
    return-void
.end method

.method private doShiftBlocksLeft(I)V
    .locals 5
    .param p1, "b"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "b"
        }
    .end annotation

    .line 1970
    iget v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->blocks:I

    iget-object v1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->value:[I

    array-length v1, v1

    const/4 v2, 0x0

    if-gt v0, v1, :cond_2

    .line 1973
    iget v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->blocks:I

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-lt v0, p1, :cond_0

    .line 1975
    iget-object v1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->value:[I

    iget-object v3, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->value:[I

    sub-int v4, v0, p1

    aget v3, v3, v4

    aput v3, v1, v0

    .line 1973
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1977
    :cond_0
    const/4 v0, 0x0

    :goto_1
    if-ge v0, p1, :cond_1

    .line 1979
    iget-object v1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->value:[I

    aput v2, v1, v0

    .line 1977
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1981
    .end local v0    # "i":I
    :cond_1
    goto :goto_2

    .line 1984
    :cond_2
    iget v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->blocks:I

    new-array v0, v0, [I

    .line 1985
    .local v0, "result":[I
    iget-object v1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->value:[I

    iget v3, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->blocks:I

    sub-int/2addr v3, p1

    invoke-static {v1, v2, v0, p1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1986
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->value:[I

    .line 1987
    iput-object v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->value:[I

    .line 1989
    .end local v0    # "result":[I
    :goto_2
    return-void
.end method

.method private karaMult(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;)Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;
    .locals 10
    .param p1, "b"    # Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "b"
        }
    .end annotation

    .line 750
    new-instance v0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;

    iget v1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->len:I

    shl-int/lit8 v1, v1, 0x1

    invoke-direct {v0, v1}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;-><init>(I)V

    .line 751
    .local v0, "result":Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;
    iget v1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->len:I

    const/16 v2, 0x20

    if-gt v1, v2, :cond_0

    .line 753
    iget-object v1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->value:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    iget-object v3, p1, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->value:[I

    aget v2, v3, v2

    invoke-static {v1, v2}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->mult32(II)[I

    move-result-object v1

    iput-object v1, v0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->value:[I

    .line 754
    return-object v0

    .line 756
    :cond_0
    iget v1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->len:I

    const/16 v2, 0x40

    if-gt v1, v2, :cond_1

    .line 758
    iget-object v1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->value:[I

    iget-object v2, p1, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->value:[I

    invoke-static {v1, v2}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->mult64([I[I)[I

    move-result-object v1

    iput-object v1, v0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->value:[I

    .line 759
    return-object v0

    .line 761
    :cond_1
    iget v1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->len:I

    const/16 v2, 0x80

    if-gt v1, v2, :cond_2

    .line 763
    iget-object v1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->value:[I

    iget-object v2, p1, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->value:[I

    invoke-static {v1, v2}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->mult128([I[I)[I

    move-result-object v1

    iput-object v1, v0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->value:[I

    .line 764
    return-object v0

    .line 766
    :cond_2
    iget v1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->len:I

    const/16 v2, 0x100

    if-gt v1, v2, :cond_3

    .line 768
    iget-object v1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->value:[I

    iget-object v2, p1, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->value:[I

    invoke-static {v1, v2}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->mult256([I[I)[I

    move-result-object v1

    iput-object v1, v0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->value:[I

    .line 769
    return-object v0

    .line 771
    :cond_3
    iget v1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->len:I

    const/16 v2, 0x200

    if-gt v1, v2, :cond_4

    .line 773
    iget-object v1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->value:[I

    iget-object v2, p1, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->value:[I

    invoke-static {v1, v2}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->mult512([I[I)[I

    move-result-object v1

    iput-object v1, v0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->value:[I

    .line 774
    return-object v0

    .line 777
    :cond_4
    iget v1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->len:I

    add-int/lit8 v1, v1, -0x1

    invoke-static {v1}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/IntegerFunctions;->floorLog(I)I

    move-result v1

    .line 778
    .local v1, "n":I
    sget-object v2, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->bitMask:[I

    aget v1, v2, v1

    .line 780
    add-int/lit8 v2, v1, -0x1

    shr-int/lit8 v2, v2, 0x5

    add-int/lit8 v2, v2, 0x1

    invoke-direct {p0, v2}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->lower(I)Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;

    move-result-object v2

    .line 781
    .local v2, "a0":Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;
    add-int/lit8 v3, v1, -0x1

    shr-int/lit8 v3, v3, 0x5

    add-int/lit8 v3, v3, 0x1

    invoke-direct {p0, v3}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->upper(I)Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;

    move-result-object v3

    .line 782
    .local v3, "a1":Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;
    add-int/lit8 v4, v1, -0x1

    shr-int/lit8 v4, v4, 0x5

    add-int/lit8 v4, v4, 0x1

    invoke-direct {p1, v4}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->lower(I)Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;

    move-result-object v4

    .line 783
    .local v4, "b0":Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;
    add-int/lit8 v5, v1, -0x1

    shr-int/lit8 v5, v5, 0x5

    add-int/lit8 v5, v5, 0x1

    invoke-direct {p1, v5}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->upper(I)Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;

    move-result-object v5

    .line 785
    .local v5, "b1":Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;
    invoke-direct {v3, v5}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->karaMult(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;)Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;

    move-result-object v6

    .line 786
    .local v6, "c":Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;
    invoke-direct {v2, v4}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->karaMult(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;)Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;

    move-result-object v7

    .line 787
    .local v7, "e":Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;
    invoke-virtual {v2, v3}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->addToThis(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;)V

    .line 788
    invoke-virtual {v4, v5}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->addToThis(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;)V

    .line 789
    invoke-direct {v2, v4}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->karaMult(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;)Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;

    move-result-object v8

    .line 791
    .local v8, "d":Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;
    shl-int/lit8 v9, v1, 0x1

    invoke-virtual {v0, v6, v9}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->shiftLeftAddThis(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;I)V

    .line 792
    invoke-virtual {v0, v6, v1}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->shiftLeftAddThis(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;I)V

    .line 793
    invoke-virtual {v0, v8, v1}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->shiftLeftAddThis(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;I)V

    .line 794
    invoke-virtual {v0, v7, v1}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->shiftLeftAddThis(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;I)V

    .line 795
    invoke-virtual {v0, v7}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->addToThis(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;)V

    .line 796
    return-object v0
.end method

.method private lower(I)Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;
    .locals 5
    .param p1, "k"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "k"
        }
    .end annotation

    .line 1173
    new-instance v0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;

    shl-int/lit8 v1, p1, 0x5

    invoke-direct {v0, v1}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;-><init>(I)V

    .line 1174
    .local v0, "result":Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;
    iget-object v1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->value:[I

    iget-object v2, v0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->value:[I

    iget v3, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->blocks:I

    invoke-static {p1, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    const/4 v4, 0x0

    invoke-static {v1, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1175
    return-object v0
.end method

.method private static mult128([I[I)[I
    .locals 17
    .param p0, "a"    # [I
    .param p1, "b"    # [I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    .line 1005
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/16 v2, 0x8

    new-array v2, v2, [I

    .line 1006
    .local v2, "result":[I
    const/4 v3, 0x2

    new-array v4, v3, [I

    .line 1007
    .local v4, "a0":[I
    array-length v5, v0

    invoke-static {v3, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    const/4 v6, 0x0

    invoke-static {v0, v6, v4, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1008
    new-array v5, v3, [I

    .line 1009
    .local v5, "a1":[I
    array-length v7, v0

    if-le v7, v3, :cond_0

    .line 1011
    array-length v7, v0

    sub-int/2addr v7, v3

    invoke-static {v3, v7}, Ljava/lang/Math;->min(II)I

    move-result v7

    invoke-static {v0, v3, v5, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1013
    :cond_0
    new-array v7, v3, [I

    .line 1014
    .local v7, "b0":[I
    array-length v8, v1

    invoke-static {v3, v8}, Ljava/lang/Math;->min(II)I

    move-result v8

    invoke-static {v1, v6, v7, v6, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1015
    new-array v8, v3, [I

    .line 1016
    .local v8, "b1":[I
    array-length v9, v1

    if-le v9, v3, :cond_1

    .line 1018
    array-length v9, v1

    sub-int/2addr v9, v3

    invoke-static {v3, v9}, Ljava/lang/Math;->min(II)I

    move-result v9

    invoke-static {v1, v3, v8, v6, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1020
    :cond_1
    const/4 v9, 0x1

    aget v10, v5, v9

    const/4 v11, 0x4

    const/4 v12, 0x5

    const/4 v13, 0x3

    if-nez v10, :cond_3

    aget v10, v8, v9

    if-nez v10, :cond_3

    .line 1022
    aget v10, v5, v6

    if-nez v10, :cond_2

    aget v10, v8, v6

    if-eqz v10, :cond_4

    .line 1024
    :cond_2
    aget v10, v5, v6

    aget v14, v8, v6

    invoke-static {v10, v14}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->mult32(II)[I

    move-result-object v10

    .line 1025
    .local v10, "c":[I
    aget v14, v2, v12

    aget v15, v10, v9

    xor-int/2addr v14, v15

    aput v14, v2, v12

    .line 1026
    aget v14, v2, v11

    aget v15, v10, v6

    xor-int/2addr v14, v15

    aput v14, v2, v11

    .line 1027
    aget v14, v2, v13

    aget v15, v10, v9

    xor-int/2addr v14, v15

    aput v14, v2, v13

    .line 1028
    aget v14, v2, v3

    aget v15, v10, v6

    xor-int/2addr v14, v15

    aput v14, v2, v3

    .line 1029
    .end local v10    # "c":[I
    goto :goto_0

    .line 1033
    :cond_3
    invoke-static {v5, v8}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->mult64([I[I)[I

    move-result-object v10

    .line 1034
    .restart local v10    # "c":[I
    const/4 v14, 0x7

    aget v15, v2, v14

    aget v16, v10, v13

    xor-int v15, v15, v16

    aput v15, v2, v14

    .line 1035
    const/4 v14, 0x6

    aget v15, v2, v14

    aget v16, v10, v3

    xor-int v15, v15, v16

    aput v15, v2, v14

    .line 1036
    aget v14, v2, v12

    aget v15, v10, v9

    aget v16, v10, v13

    xor-int v15, v15, v16

    xor-int/2addr v14, v15

    aput v14, v2, v12

    .line 1037
    aget v14, v2, v11

    aget v15, v10, v6

    aget v16, v10, v3

    xor-int v15, v15, v16

    xor-int/2addr v14, v15

    aput v14, v2, v11

    .line 1038
    aget v14, v2, v13

    aget v15, v10, v9

    xor-int/2addr v14, v15

    aput v14, v2, v13

    .line 1039
    aget v14, v2, v3

    aget v15, v10, v6

    xor-int/2addr v14, v15

    aput v14, v2, v3

    .line 1041
    .end local v10    # "c":[I
    :cond_4
    :goto_0
    aget v10, v5, v6

    aget v14, v4, v6

    xor-int/2addr v10, v14

    aput v10, v5, v6

    .line 1042
    aget v10, v5, v9

    aget v14, v4, v9

    xor-int/2addr v10, v14

    aput v10, v5, v9

    .line 1043
    aget v10, v8, v6

    aget v14, v7, v6

    xor-int/2addr v10, v14

    aput v10, v8, v6

    .line 1044
    aget v10, v8, v9

    aget v14, v7, v9

    xor-int/2addr v10, v14

    aput v10, v8, v9

    .line 1045
    aget v10, v5, v9

    if-nez v10, :cond_5

    aget v10, v8, v9

    if-nez v10, :cond_5

    .line 1047
    aget v10, v5, v6

    aget v14, v8, v6

    invoke-static {v10, v14}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->mult32(II)[I

    move-result-object v10

    .line 1048
    .local v10, "d":[I
    aget v14, v2, v13

    aget v15, v10, v9

    xor-int/2addr v14, v15

    aput v14, v2, v13

    .line 1049
    aget v14, v2, v3

    aget v15, v10, v6

    xor-int/2addr v14, v15

    aput v14, v2, v3

    .line 1050
    .end local v10    # "d":[I
    goto :goto_1

    .line 1053
    :cond_5
    invoke-static {v5, v8}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->mult64([I[I)[I

    move-result-object v10

    .line 1054
    .restart local v10    # "d":[I
    aget v14, v2, v12

    aget v15, v10, v13

    xor-int/2addr v14, v15

    aput v14, v2, v12

    .line 1055
    aget v14, v2, v11

    aget v15, v10, v3

    xor-int/2addr v14, v15

    aput v14, v2, v11

    .line 1056
    aget v14, v2, v13

    aget v15, v10, v9

    xor-int/2addr v14, v15

    aput v14, v2, v13

    .line 1057
    aget v14, v2, v3

    aget v15, v10, v6

    xor-int/2addr v14, v15

    aput v14, v2, v3

    .line 1059
    .end local v10    # "d":[I
    :goto_1
    aget v10, v4, v9

    if-nez v10, :cond_6

    aget v10, v7, v9

    if-nez v10, :cond_6

    .line 1061
    aget v10, v4, v6

    aget v11, v7, v6

    invoke-static {v10, v11}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->mult32(II)[I

    move-result-object v10

    .line 1062
    .local v10, "e":[I
    aget v11, v2, v13

    aget v12, v10, v9

    xor-int/2addr v11, v12

    aput v11, v2, v13

    .line 1063
    aget v11, v2, v3

    aget v12, v10, v6

    xor-int/2addr v11, v12

    aput v11, v2, v3

    .line 1064
    aget v3, v2, v9

    aget v11, v10, v9

    xor-int/2addr v3, v11

    aput v3, v2, v9

    .line 1065
    aget v3, v2, v6

    aget v9, v10, v6

    xor-int/2addr v3, v9

    aput v3, v2, v6

    .line 1066
    .end local v10    # "e":[I
    goto :goto_2

    .line 1069
    :cond_6
    invoke-static {v4, v7}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->mult64([I[I)[I

    move-result-object v10

    .line 1070
    .restart local v10    # "e":[I
    aget v14, v2, v12

    aget v15, v10, v13

    xor-int/2addr v14, v15

    aput v14, v2, v12

    .line 1071
    aget v12, v2, v11

    aget v14, v10, v3

    xor-int/2addr v12, v14

    aput v12, v2, v11

    .line 1072
    aget v11, v2, v13

    aget v12, v10, v9

    aget v14, v10, v13

    xor-int/2addr v12, v14

    xor-int/2addr v11, v12

    aput v11, v2, v13

    .line 1073
    aget v11, v2, v3

    aget v12, v10, v6

    aget v13, v10, v3

    xor-int/2addr v12, v13

    xor-int/2addr v11, v12

    aput v11, v2, v3

    .line 1074
    aget v3, v2, v9

    aget v11, v10, v9

    xor-int/2addr v3, v11

    aput v3, v2, v9

    .line 1075
    aget v3, v2, v6

    aget v9, v10, v6

    xor-int/2addr v3, v9

    aput v3, v2, v6

    .line 1077
    .end local v10    # "e":[I
    :goto_2
    return-object v2
.end method

.method private static mult256([I[I)[I
    .locals 23
    .param p0, "a"    # [I
    .param p1, "b"    # [I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    .line 910
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/16 v2, 0x10

    new-array v2, v2, [I

    .line 911
    .local v2, "result":[I
    const/4 v3, 0x4

    new-array v4, v3, [I

    .line 912
    .local v4, "a0":[I
    array-length v5, v0

    invoke-static {v3, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    const/4 v6, 0x0

    invoke-static {v0, v6, v4, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 913
    new-array v5, v3, [I

    .line 914
    .local v5, "a1":[I
    array-length v7, v0

    if-le v7, v3, :cond_0

    .line 916
    array-length v7, v0

    sub-int/2addr v7, v3

    invoke-static {v3, v7}, Ljava/lang/Math;->min(II)I

    move-result v7

    invoke-static {v0, v3, v5, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 918
    :cond_0
    new-array v7, v3, [I

    .line 919
    .local v7, "b0":[I
    array-length v8, v1

    invoke-static {v3, v8}, Ljava/lang/Math;->min(II)I

    move-result v8

    invoke-static {v1, v6, v7, v6, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 920
    new-array v8, v3, [I

    .line 921
    .local v8, "b1":[I
    array-length v9, v1

    if-le v9, v3, :cond_1

    .line 923
    array-length v9, v1

    sub-int/2addr v9, v3

    invoke-static {v3, v9}, Ljava/lang/Math;->min(II)I

    move-result v9

    invoke-static {v1, v3, v8, v6, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 925
    :cond_1
    const/4 v9, 0x3

    aget v10, v5, v9

    const/16 v11, 0xa

    const/16 v12, 0xb

    const/16 v13, 0x8

    const/16 v14, 0x9

    const/4 v15, 0x6

    const/16 v16, 0x7

    const/16 v17, 0x5

    const/16 v18, 0x2

    const/16 v19, 0x1

    if-nez v10, :cond_5

    aget v10, v5, v18

    if-nez v10, :cond_5

    aget v10, v8, v9

    if-nez v10, :cond_5

    aget v10, v8, v18

    if-nez v10, :cond_5

    .line 927
    aget v10, v5, v19

    if-nez v10, :cond_4

    aget v10, v8, v19

    if-nez v10, :cond_4

    .line 929
    aget v10, v5, v6

    if-nez v10, :cond_3

    aget v10, v8, v6

    if-eqz v10, :cond_2

    goto :goto_0

    :cond_2
    const/16 v20, 0x4

    goto/16 :goto_1

    .line 931
    :cond_3
    :goto_0
    aget v10, v5, v6

    const/16 v20, 0x4

    aget v3, v8, v6

    invoke-static {v10, v3}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->mult32(II)[I

    move-result-object v3

    .line 932
    .local v3, "c":[I
    aget v10, v2, v14

    aget v21, v3, v19

    xor-int v10, v10, v21

    aput v10, v2, v14

    .line 933
    aget v10, v2, v13

    aget v21, v3, v6

    xor-int v10, v10, v21

    aput v10, v2, v13

    .line 934
    aget v10, v2, v17

    aget v21, v3, v19

    xor-int v10, v10, v21

    aput v10, v2, v17

    .line 935
    aget v10, v2, v20

    aget v21, v3, v6

    xor-int v10, v10, v21

    aput v10, v2, v20

    .line 936
    .end local v3    # "c":[I
    goto/16 :goto_1

    .line 927
    :cond_4
    const/16 v20, 0x4

    .line 940
    invoke-static {v5, v8}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->mult64([I[I)[I

    move-result-object v3

    .line 941
    .restart local v3    # "c":[I
    aget v10, v2, v12

    aget v21, v3, v9

    xor-int v10, v10, v21

    aput v10, v2, v12

    .line 942
    aget v10, v2, v11

    aget v21, v3, v18

    xor-int v10, v10, v21

    aput v10, v2, v11

    .line 943
    aget v10, v2, v14

    aget v21, v3, v19

    xor-int v10, v10, v21

    aput v10, v2, v14

    .line 944
    aget v10, v2, v13

    aget v21, v3, v6

    xor-int v10, v10, v21

    aput v10, v2, v13

    .line 945
    aget v10, v2, v16

    aget v21, v3, v9

    xor-int v10, v10, v21

    aput v10, v2, v16

    .line 946
    aget v10, v2, v15

    aget v21, v3, v18

    xor-int v10, v10, v21

    aput v10, v2, v15

    .line 947
    aget v10, v2, v17

    aget v21, v3, v19

    xor-int v10, v10, v21

    aput v10, v2, v17

    .line 948
    aget v10, v2, v20

    aget v21, v3, v6

    xor-int v10, v10, v21

    aput v10, v2, v20

    .line 949
    .end local v3    # "c":[I
    goto/16 :goto_1

    .line 925
    :cond_5
    const/16 v20, 0x4

    .line 953
    invoke-static {v5, v8}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->mult128([I[I)[I

    move-result-object v3

    .line 954
    .restart local v3    # "c":[I
    const/16 v10, 0xf

    aget v21, v2, v10

    aget v22, v3, v16

    xor-int v21, v21, v22

    aput v21, v2, v10

    .line 955
    const/16 v10, 0xe

    aget v21, v2, v10

    aget v22, v3, v15

    xor-int v21, v21, v22

    aput v21, v2, v10

    .line 956
    const/16 v10, 0xd

    aget v21, v2, v10

    aget v22, v3, v17

    xor-int v21, v21, v22

    aput v21, v2, v10

    .line 957
    const/16 v10, 0xc

    aget v21, v2, v10

    aget v22, v3, v20

    xor-int v21, v21, v22

    aput v21, v2, v10

    .line 958
    aget v10, v2, v12

    aget v21, v3, v9

    aget v22, v3, v16

    xor-int v21, v21, v22

    xor-int v10, v10, v21

    aput v10, v2, v12

    .line 959
    aget v10, v2, v11

    aget v21, v3, v18

    aget v22, v3, v15

    xor-int v21, v21, v22

    xor-int v10, v10, v21

    aput v10, v2, v11

    .line 960
    aget v10, v2, v14

    aget v21, v3, v19

    aget v22, v3, v17

    xor-int v21, v21, v22

    xor-int v10, v10, v21

    aput v10, v2, v14

    .line 961
    aget v10, v2, v13

    aget v21, v3, v6

    aget v22, v3, v20

    xor-int v21, v21, v22

    xor-int v10, v10, v21

    aput v10, v2, v13

    .line 962
    aget v10, v2, v16

    aget v21, v3, v9

    xor-int v10, v10, v21

    aput v10, v2, v16

    .line 963
    aget v10, v2, v15

    aget v21, v3, v18

    xor-int v10, v10, v21

    aput v10, v2, v15

    .line 964
    aget v10, v2, v17

    aget v21, v3, v19

    xor-int v10, v10, v21

    aput v10, v2, v17

    .line 965
    aget v10, v2, v20

    aget v21, v3, v6

    xor-int v10, v10, v21

    aput v10, v2, v20

    .line 967
    .end local v3    # "c":[I
    :goto_1
    aget v3, v5, v6

    aget v10, v4, v6

    xor-int/2addr v3, v10

    aput v3, v5, v6

    .line 968
    aget v3, v5, v19

    aget v10, v4, v19

    xor-int/2addr v3, v10

    aput v3, v5, v19

    .line 969
    aget v3, v5, v18

    aget v10, v4, v18

    xor-int/2addr v3, v10

    aput v3, v5, v18

    .line 970
    aget v3, v5, v9

    aget v10, v4, v9

    xor-int/2addr v3, v10

    aput v3, v5, v9

    .line 971
    aget v3, v8, v6

    aget v10, v7, v6

    xor-int/2addr v3, v10

    aput v3, v8, v6

    .line 972
    aget v3, v8, v19

    aget v10, v7, v19

    xor-int/2addr v3, v10

    aput v3, v8, v19

    .line 973
    aget v3, v8, v18

    aget v10, v7, v18

    xor-int/2addr v3, v10

    aput v3, v8, v18

    .line 974
    aget v3, v8, v9

    aget v10, v7, v9

    xor-int/2addr v3, v10

    aput v3, v8, v9

    .line 975
    invoke-static {v5, v8}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->mult128([I[I)[I

    move-result-object v3

    .line 976
    .local v3, "d":[I
    aget v10, v2, v12

    aget v21, v3, v16

    xor-int v10, v10, v21

    aput v10, v2, v12

    .line 977
    aget v10, v2, v11

    aget v21, v3, v15

    xor-int v10, v10, v21

    aput v10, v2, v11

    .line 978
    aget v10, v2, v14

    aget v21, v3, v17

    xor-int v10, v10, v21

    aput v10, v2, v14

    .line 979
    aget v10, v2, v13

    aget v21, v3, v20

    xor-int v10, v10, v21

    aput v10, v2, v13

    .line 980
    aget v10, v2, v16

    aget v21, v3, v9

    xor-int v10, v10, v21

    aput v10, v2, v16

    .line 981
    aget v10, v2, v15

    aget v21, v3, v18

    xor-int v10, v10, v21

    aput v10, v2, v15

    .line 982
    aget v10, v2, v17

    aget v21, v3, v19

    xor-int v10, v10, v21

    aput v10, v2, v17

    .line 983
    aget v10, v2, v20

    aget v21, v3, v6

    xor-int v10, v10, v21

    aput v10, v2, v20

    .line 984
    invoke-static {v4, v7}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->mult128([I[I)[I

    move-result-object v10

    .line 985
    .local v10, "e":[I
    aget v21, v2, v12

    aget v22, v10, v16

    xor-int v21, v21, v22

    aput v21, v2, v12

    .line 986
    aget v12, v2, v11

    aget v21, v10, v15

    xor-int v12, v12, v21

    aput v12, v2, v11

    .line 987
    aget v11, v2, v14

    aget v12, v10, v17

    xor-int/2addr v11, v12

    aput v11, v2, v14

    .line 988
    aget v11, v2, v13

    aget v12, v10, v20

    xor-int/2addr v11, v12

    aput v11, v2, v13

    .line 989
    aget v11, v2, v16

    aget v12, v10, v9

    aget v13, v10, v16

    xor-int/2addr v12, v13

    xor-int/2addr v11, v12

    aput v11, v2, v16

    .line 990
    aget v11, v2, v15

    aget v12, v10, v18

    aget v13, v10, v15

    xor-int/2addr v12, v13

    xor-int/2addr v11, v12

    aput v11, v2, v15

    .line 991
    aget v11, v2, v17

    aget v12, v10, v19

    aget v13, v10, v17

    xor-int/2addr v12, v13

    xor-int/2addr v11, v12

    aput v11, v2, v17

    .line 992
    aget v11, v2, v20

    aget v12, v10, v6

    aget v13, v10, v20

    xor-int/2addr v12, v13

    xor-int/2addr v11, v12

    aput v11, v2, v20

    .line 993
    aget v11, v2, v9

    aget v12, v10, v9

    xor-int/2addr v11, v12

    aput v11, v2, v9

    .line 994
    aget v9, v2, v18

    aget v11, v10, v18

    xor-int/2addr v9, v11

    aput v9, v2, v18

    .line 995
    aget v9, v2, v19

    aget v11, v10, v19

    xor-int/2addr v9, v11

    aput v9, v2, v19

    .line 996
    aget v9, v2, v6

    aget v11, v10, v6

    xor-int/2addr v9, v11

    aput v9, v2, v6

    .line 997
    return-object v2
.end method

.method private static mult32(II)[I
    .locals 12
    .param p0, "a"    # I
    .param p1, "b"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    .line 1120
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 1121
    .local v0, "result":[I
    if-eqz p0, :cond_3

    if-nez p1, :cond_0

    goto :goto_1

    .line 1125
    :cond_0
    int-to-long v1, p1

    .line 1126
    .local v1, "b2":J
    const-wide v3, 0xffffffffL

    and-long/2addr v1, v3

    .line 1128
    const-wide/16 v5, 0x0

    .line 1129
    .local v5, "h":J
    const/4 v7, 0x1

    .local v7, "i":I
    :goto_0
    const/16 v8, 0x20

    const/4 v9, 0x1

    if-gt v7, v8, :cond_2

    .line 1131
    sget-object v8, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->bitMask:[I

    add-int/lit8 v10, v7, -0x1

    aget v8, v8, v10

    and-int/2addr v8, p0

    if-eqz v8, :cond_1

    .line 1133
    xor-long/2addr v5, v1

    .line 1135
    :cond_1
    shl-long/2addr v1, v9

    .line 1129
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 1137
    :cond_2
    ushr-long v10, v5, v8

    long-to-int v8, v10

    aput v8, v0, v9

    .line 1138
    and-long/2addr v3, v5

    long-to-int v4, v3

    const/4 v3, 0x0

    aput v4, v0, v3

    .line 1139
    return-object v0

    .line 1123
    .end local v1    # "b2":J
    .end local v5    # "h":J
    .end local v7    # "i":I
    :cond_3
    :goto_1
    return-object v0
.end method

.method private static mult512([I[I)[I
    .locals 34
    .param p0, "a"    # [I
    .param p1, "b"    # [I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    .line 804
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/16 v2, 0x20

    new-array v2, v2, [I

    .line 805
    .local v2, "result":[I
    const/16 v3, 0x8

    new-array v4, v3, [I

    .line 806
    .local v4, "a0":[I
    array-length v5, v0

    invoke-static {v3, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    const/4 v6, 0x0

    invoke-static {v0, v6, v4, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 807
    new-array v5, v3, [I

    .line 808
    .local v5, "a1":[I
    array-length v7, v0

    if-le v7, v3, :cond_0

    .line 810
    array-length v7, v0

    sub-int/2addr v7, v3

    invoke-static {v3, v7}, Ljava/lang/Math;->min(II)I

    move-result v7

    invoke-static {v0, v3, v5, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 812
    :cond_0
    new-array v7, v3, [I

    .line 813
    .local v7, "b0":[I
    array-length v8, v1

    invoke-static {v3, v8}, Ljava/lang/Math;->min(II)I

    move-result v8

    invoke-static {v1, v6, v7, v6, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 814
    new-array v8, v3, [I

    .line 815
    .local v8, "b1":[I
    array-length v9, v1

    if-le v9, v3, :cond_1

    .line 817
    array-length v9, v1

    sub-int/2addr v9, v3

    invoke-static {v3, v9}, Ljava/lang/Math;->min(II)I

    move-result v9

    invoke-static {v1, v3, v8, v6, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 819
    :cond_1
    invoke-static {v5, v8}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->mult256([I[I)[I

    move-result-object v9

    .line 820
    .local v9, "c":[I
    const/16 v10, 0x1f

    aget v11, v2, v10

    const/16 v12, 0xf

    aget v13, v9, v12

    xor-int/2addr v11, v13

    aput v11, v2, v10

    .line 821
    const/16 v10, 0x1e

    aget v11, v2, v10

    const/16 v13, 0xe

    aget v14, v9, v13

    xor-int/2addr v11, v14

    aput v11, v2, v10

    .line 822
    const/16 v10, 0x1d

    aget v11, v2, v10

    const/16 v14, 0xd

    aget v15, v9, v14

    xor-int/2addr v11, v15

    aput v11, v2, v10

    .line 823
    const/16 v10, 0x1c

    aget v11, v2, v10

    const/16 v15, 0xc

    aget v16, v9, v15

    xor-int v11, v11, v16

    aput v11, v2, v10

    .line 824
    const/16 v10, 0x1b

    aget v11, v2, v10

    const/16 v16, 0xb

    aget v17, v9, v16

    xor-int v11, v11, v17

    aput v11, v2, v10

    .line 825
    const/16 v10, 0x1a

    aget v11, v2, v10

    const/16 v17, 0xa

    aget v18, v9, v17

    xor-int v11, v11, v18

    aput v11, v2, v10

    .line 826
    const/16 v10, 0x19

    aget v11, v2, v10

    const/16 v18, 0x9

    aget v19, v9, v18

    xor-int v11, v11, v19

    aput v11, v2, v10

    .line 827
    const/16 v10, 0x18

    aget v11, v2, v10

    aget v19, v9, v3

    xor-int v11, v11, v19

    aput v11, v2, v10

    .line 828
    const/16 v10, 0x17

    aget v11, v2, v10

    const/16 v19, 0x7

    aget v20, v9, v19

    aget v21, v9, v12

    xor-int v20, v20, v21

    xor-int v11, v11, v20

    aput v11, v2, v10

    .line 829
    const/16 v11, 0x16

    aget v20, v2, v11

    const/16 v21, 0x6

    aget v22, v9, v21

    aget v23, v9, v13

    xor-int v22, v22, v23

    xor-int v20, v20, v22

    aput v20, v2, v11

    .line 830
    const/16 v20, 0x15

    aget v22, v2, v20

    const/16 v23, 0x5

    aget v24, v9, v23

    aget v25, v9, v14

    xor-int v24, v24, v25

    xor-int v22, v22, v24

    aput v22, v2, v20

    .line 831
    const/16 v22, 0x14

    aget v24, v2, v22

    const/16 v25, 0x4

    aget v26, v9, v25

    aget v27, v9, v15

    xor-int v26, v26, v27

    xor-int v24, v24, v26

    aput v24, v2, v22

    .line 832
    const/16 v24, 0x13

    aget v26, v2, v24

    const/16 v27, 0x3

    aget v28, v9, v27

    aget v29, v9, v16

    xor-int v28, v28, v29

    xor-int v26, v26, v28

    aput v26, v2, v24

    .line 833
    const/16 v26, 0x12

    aget v28, v2, v26

    const/16 v29, 0x2

    aget v30, v9, v29

    aget v31, v9, v17

    xor-int v30, v30, v31

    xor-int v28, v28, v30

    aput v28, v2, v26

    .line 834
    const/16 v28, 0x11

    aget v30, v2, v28

    const/16 v31, 0x1

    aget v32, v9, v31

    aget v33, v9, v18

    xor-int v32, v32, v33

    xor-int v30, v30, v32

    aput v30, v2, v28

    .line 835
    const/16 v28, 0x10

    aget v30, v2, v28

    aget v32, v9, v6

    aget v33, v9, v3

    xor-int v32, v32, v33

    xor-int v30, v30, v32

    aput v30, v2, v28

    .line 836
    aget v28, v2, v12

    aget v30, v9, v19

    xor-int v28, v28, v30

    aput v28, v2, v12

    .line 837
    aget v28, v2, v13

    aget v30, v9, v21

    xor-int v28, v28, v30

    aput v28, v2, v13

    .line 838
    aget v28, v2, v14

    aget v30, v9, v23

    xor-int v28, v28, v30

    aput v28, v2, v14

    .line 839
    aget v28, v2, v15

    aget v30, v9, v25

    xor-int v28, v28, v30

    aput v28, v2, v15

    .line 840
    aget v28, v2, v16

    aget v30, v9, v27

    xor-int v28, v28, v30

    aput v28, v2, v16

    .line 841
    aget v28, v2, v17

    aget v30, v9, v29

    xor-int v28, v28, v30

    aput v28, v2, v17

    .line 842
    aget v28, v2, v18

    aget v30, v9, v31

    xor-int v28, v28, v30

    aput v28, v2, v18

    .line 843
    aget v28, v2, v3

    aget v30, v9, v6

    xor-int v28, v28, v30

    aput v28, v2, v3

    .line 844
    aget v28, v5, v6

    aget v30, v4, v6

    xor-int v28, v28, v30

    aput v28, v5, v6

    .line 845
    aget v28, v5, v31

    aget v30, v4, v31

    xor-int v28, v28, v30

    aput v28, v5, v31

    .line 846
    aget v28, v5, v29

    aget v30, v4, v29

    xor-int v28, v28, v30

    aput v28, v5, v29

    .line 847
    aget v28, v5, v27

    aget v30, v4, v27

    xor-int v28, v28, v30

    aput v28, v5, v27

    .line 848
    aget v28, v5, v25

    aget v30, v4, v25

    xor-int v28, v28, v30

    aput v28, v5, v25

    .line 849
    aget v28, v5, v23

    aget v30, v4, v23

    xor-int v28, v28, v30

    aput v28, v5, v23

    .line 850
    aget v28, v5, v21

    aget v30, v4, v21

    xor-int v28, v28, v30

    aput v28, v5, v21

    .line 851
    aget v28, v5, v19

    aget v30, v4, v19

    xor-int v28, v28, v30

    aput v28, v5, v19

    .line 852
    aget v28, v8, v6

    aget v30, v7, v6

    xor-int v28, v28, v30

    aput v28, v8, v6

    .line 853
    aget v28, v8, v31

    aget v30, v7, v31

    xor-int v28, v28, v30

    aput v28, v8, v31

    .line 854
    aget v28, v8, v29

    aget v30, v7, v29

    xor-int v28, v28, v30

    aput v28, v8, v29

    .line 855
    aget v28, v8, v27

    aget v30, v7, v27

    xor-int v28, v28, v30

    aput v28, v8, v27

    .line 856
    aget v28, v8, v25

    aget v30, v7, v25

    xor-int v28, v28, v30

    aput v28, v8, v25

    .line 857
    aget v28, v8, v23

    aget v30, v7, v23

    xor-int v28, v28, v30

    aput v28, v8, v23

    .line 858
    aget v28, v8, v21

    aget v30, v7, v21

    xor-int v28, v28, v30

    aput v28, v8, v21

    .line 859
    aget v28, v8, v19

    aget v30, v7, v19

    xor-int v28, v28, v30

    aput v28, v8, v19

    .line 860
    invoke-static {v5, v8}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->mult256([I[I)[I

    move-result-object v28

    .line 861
    .local v28, "d":[I
    aget v30, v2, v10

    aget v32, v28, v12

    xor-int v30, v30, v32

    aput v30, v2, v10

    .line 862
    aget v30, v2, v11

    aget v32, v28, v13

    xor-int v30, v30, v32

    aput v30, v2, v11

    .line 863
    aget v30, v2, v20

    aget v32, v28, v14

    xor-int v30, v30, v32

    aput v30, v2, v20

    .line 864
    aget v30, v2, v22

    aget v32, v28, v15

    xor-int v30, v30, v32

    aput v30, v2, v22

    .line 865
    aget v30, v2, v24

    aget v32, v28, v16

    xor-int v30, v30, v32

    aput v30, v2, v24

    .line 866
    aget v30, v2, v26

    aget v32, v28, v17

    xor-int v30, v30, v32

    aput v30, v2, v26

    .line 867
    const/16 v30, 0x11

    aget v32, v2, v30

    aget v33, v28, v18

    xor-int v32, v32, v33

    aput v32, v2, v30

    .line 868
    const/16 v30, 0x10

    aget v32, v2, v30

    aget v33, v28, v3

    xor-int v32, v32, v33

    aput v32, v2, v30

    .line 869
    aget v30, v2, v12

    aget v32, v28, v19

    xor-int v30, v30, v32

    aput v30, v2, v12

    .line 870
    aget v30, v2, v13

    aget v32, v28, v21

    xor-int v30, v30, v32

    aput v30, v2, v13

    .line 871
    aget v30, v2, v14

    aget v32, v28, v23

    xor-int v30, v30, v32

    aput v30, v2, v14

    .line 872
    aget v30, v2, v15

    aget v32, v28, v25

    xor-int v30, v30, v32

    aput v30, v2, v15

    .line 873
    aget v30, v2, v16

    aget v32, v28, v27

    xor-int v30, v30, v32

    aput v30, v2, v16

    .line 874
    aget v30, v2, v17

    aget v32, v28, v29

    xor-int v30, v30, v32

    aput v30, v2, v17

    .line 875
    aget v30, v2, v18

    aget v32, v28, v31

    xor-int v30, v30, v32

    aput v30, v2, v18

    .line 876
    aget v30, v2, v3

    aget v32, v28, v6

    xor-int v30, v30, v32

    aput v30, v2, v3

    .line 877
    invoke-static {v4, v7}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->mult256([I[I)[I

    move-result-object v30

    .line 878
    .local v30, "e":[I
    aget v32, v2, v10

    aget v33, v30, v12

    xor-int v32, v32, v33

    aput v32, v2, v10

    .line 879
    aget v10, v2, v11

    aget v32, v30, v13

    xor-int v10, v10, v32

    aput v10, v2, v11

    .line 880
    aget v10, v2, v20

    aget v11, v30, v14

    xor-int/2addr v10, v11

    aput v10, v2, v20

    .line 881
    aget v10, v2, v22

    aget v11, v30, v15

    xor-int/2addr v10, v11

    aput v10, v2, v22

    .line 882
    aget v10, v2, v24

    aget v11, v30, v16

    xor-int/2addr v10, v11

    aput v10, v2, v24

    .line 883
    aget v10, v2, v26

    aget v11, v30, v17

    xor-int/2addr v10, v11

    aput v10, v2, v26

    .line 884
    const/16 v10, 0x11

    aget v11, v2, v10

    aget v20, v30, v18

    xor-int v11, v11, v20

    aput v11, v2, v10

    .line 885
    const/16 v10, 0x10

    aget v11, v2, v10

    aget v20, v30, v3

    xor-int v11, v11, v20

    aput v11, v2, v10

    .line 886
    aget v10, v2, v12

    aget v11, v30, v19

    aget v20, v30, v12

    xor-int v11, v11, v20

    xor-int/2addr v10, v11

    aput v10, v2, v12

    .line 887
    aget v10, v2, v13

    aget v11, v30, v21

    aget v12, v30, v13

    xor-int/2addr v11, v12

    xor-int/2addr v10, v11

    aput v10, v2, v13

    .line 888
    aget v10, v2, v14

    aget v11, v30, v23

    aget v12, v30, v14

    xor-int/2addr v11, v12

    xor-int/2addr v10, v11

    aput v10, v2, v14

    .line 889
    aget v10, v2, v15

    aget v11, v30, v25

    aget v12, v30, v15

    xor-int/2addr v11, v12

    xor-int/2addr v10, v11

    aput v10, v2, v15

    .line 890
    aget v10, v2, v16

    aget v11, v30, v27

    aget v12, v30, v16

    xor-int/2addr v11, v12

    xor-int/2addr v10, v11

    aput v10, v2, v16

    .line 891
    aget v10, v2, v17

    aget v11, v30, v29

    aget v12, v30, v17

    xor-int/2addr v11, v12

    xor-int/2addr v10, v11

    aput v10, v2, v17

    .line 892
    aget v10, v2, v18

    aget v11, v30, v31

    aget v12, v30, v18

    xor-int/2addr v11, v12

    xor-int/2addr v10, v11

    aput v10, v2, v18

    .line 893
    aget v10, v2, v3

    aget v11, v30, v6

    aget v12, v30, v3

    xor-int/2addr v11, v12

    xor-int/2addr v10, v11

    aput v10, v2, v3

    .line 894
    aget v3, v2, v19

    aget v10, v30, v19

    xor-int/2addr v3, v10

    aput v3, v2, v19

    .line 895
    aget v3, v2, v21

    aget v10, v30, v21

    xor-int/2addr v3, v10

    aput v3, v2, v21

    .line 896
    aget v3, v2, v23

    aget v10, v30, v23

    xor-int/2addr v3, v10

    aput v3, v2, v23

    .line 897
    aget v3, v2, v25

    aget v10, v30, v25

    xor-int/2addr v3, v10

    aput v3, v2, v25

    .line 898
    aget v3, v2, v27

    aget v10, v30, v27

    xor-int/2addr v3, v10

    aput v3, v2, v27

    .line 899
    aget v3, v2, v29

    aget v10, v30, v29

    xor-int/2addr v3, v10

    aput v3, v2, v29

    .line 900
    aget v3, v2, v31

    aget v10, v30, v31

    xor-int/2addr v3, v10

    aput v3, v2, v31

    .line 901
    aget v3, v2, v6

    aget v10, v30, v6

    xor-int/2addr v3, v10

    aput v3, v2, v6

    .line 902
    return-object v2
.end method

.method private static mult64([I[I)[I
    .locals 12
    .param p0, "a"    # [I
    .param p1, "b"    # [I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    .line 1085
    const/4 v0, 0x4

    new-array v0, v0, [I

    .line 1086
    .local v0, "result":[I
    const/4 v1, 0x0

    aget v2, p0, v1

    .line 1087
    .local v2, "a0":I
    const/4 v3, 0x0

    .line 1088
    .local v3, "a1":I
    array-length v4, p0

    const/4 v5, 0x1

    if-le v4, v5, :cond_0

    .line 1090
    aget v3, p0, v5

    .line 1092
    :cond_0
    aget v4, p1, v1

    .line 1093
    .local v4, "b0":I
    const/4 v6, 0x0

    .line 1094
    .local v6, "b1":I
    array-length v7, p1

    if-le v7, v5, :cond_1

    .line 1096
    aget v6, p1, v5

    .line 1098
    :cond_1
    const/4 v7, 0x2

    if-nez v3, :cond_2

    if-eqz v6, :cond_3

    .line 1100
    :cond_2
    invoke-static {v3, v6}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->mult32(II)[I

    move-result-object v8

    .line 1101
    .local v8, "c":[I
    const/4 v9, 0x3

    aget v10, v0, v9

    aget v11, v8, v5

    xor-int/2addr v10, v11

    aput v10, v0, v9

    .line 1102
    aget v9, v0, v7

    aget v10, v8, v1

    aget v11, v8, v5

    xor-int/2addr v10, v11

    xor-int/2addr v9, v10

    aput v9, v0, v7

    .line 1103
    aget v9, v0, v5

    aget v10, v8, v1

    xor-int/2addr v9, v10

    aput v9, v0, v5

    .line 1105
    .end local v8    # "c":[I
    :cond_3
    xor-int v8, v2, v3

    xor-int v9, v4, v6

    invoke-static {v8, v9}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->mult32(II)[I

    move-result-object v8

    .line 1106
    .local v8, "d":[I
    aget v9, v0, v7

    aget v10, v8, v5

    xor-int/2addr v9, v10

    aput v9, v0, v7

    .line 1107
    aget v9, v0, v5

    aget v10, v8, v1

    xor-int/2addr v9, v10

    aput v9, v0, v5

    .line 1108
    invoke-static {v2, v4}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->mult32(II)[I

    move-result-object v9

    .line 1109
    .local v9, "e":[I
    aget v10, v0, v7

    aget v11, v9, v5

    xor-int/2addr v10, v11

    aput v10, v0, v7

    .line 1110
    aget v7, v0, v5

    aget v10, v9, v1

    aget v11, v9, v5

    xor-int/2addr v10, v11

    xor-int/2addr v7, v10

    aput v7, v0, v5

    .line 1111
    aget v5, v0, v1

    aget v7, v9, v1

    xor-int/2addr v5, v7

    aput v5, v0, v1

    .line 1112
    return-object v0
.end method

.method private upper(I)Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;
    .locals 5
    .param p1, "k"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "k"
        }
    .end annotation

    .line 1153
    iget v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->blocks:I

    sub-int/2addr v0, p1

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 1154
    .local v0, "j":I
    new-instance v1, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;

    shl-int/lit8 v2, v0, 0x5

    invoke-direct {v1, v2}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;-><init>(I)V

    .line 1155
    .local v1, "result":Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;
    iget v2, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->blocks:I

    if-lt v2, p1, :cond_0

    .line 1157
    iget-object v2, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->value:[I

    iget-object v3, v1, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->value:[I

    const/4 v4, 0x0

    invoke-static {v2, p1, v3, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1159
    :cond_0
    return-object v1
.end method

.method private zeroUnusedBits()V
    .locals 5

    .line 1719
    iget v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->len:I

    and-int/lit8 v0, v0, 0x1f

    if-eqz v0, :cond_0

    .line 1721
    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->value:[I

    iget v1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->blocks:I

    add-int/lit8 v1, v1, -0x1

    aget v2, v0, v1

    sget-object v3, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->reverseRightMask:[I

    iget v4, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->len:I

    and-int/lit8 v4, v4, 0x1f

    aget v3, v3, v4

    and-int/2addr v2, v3

    aput v2, v0, v1

    .line 1723
    :cond_0
    return-void
.end method


# virtual methods
.method public add(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;)Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;
    .locals 1
    .param p1, "b"    # Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "b"
        }
    .end annotation

    .line 645
    invoke-virtual {p0, p1}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->xor(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;)Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;

    move-result-object v0

    return-object v0
.end method

.method public addToThis(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;)V
    .locals 1
    .param p1, "b"    # Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "b"
        }
    .end annotation

    .line 632
    iget v0, p1, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->len:I

    invoke-virtual {p0, v0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->expandN(I)V

    .line 633
    invoke-virtual {p0, p1}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->xorThisBy(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;)V

    .line 634
    return-void
.end method

.method public assignAll()V
    .locals 3

    .line 493
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->blocks:I

    if-ge v0, v1, :cond_0

    .line 495
    iget-object v1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->value:[I

    const/4 v2, -0x1

    aput v2, v1, v0

    .line 493
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 497
    :cond_0
    invoke-direct {p0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->zeroUnusedBits()V

    .line 498
    return-void
.end method

.method public assignOne()V
    .locals 4

    .line 467
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->blocks:I

    const/4 v2, 0x0

    if-ge v0, v1, :cond_0

    .line 469
    iget-object v1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->value:[I

    aput v2, v1, v0

    .line 467
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 471
    :cond_0
    iget-object v1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->value:[I

    const/4 v3, 0x1

    aput v3, v1, v2

    .line 472
    return-void
.end method

.method public assignX()V
    .locals 4

    .line 480
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->blocks:I

    const/4 v2, 0x0

    if-ge v0, v1, :cond_0

    .line 482
    iget-object v1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->value:[I

    aput v2, v1, v0

    .line 480
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 484
    :cond_0
    iget-object v1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->value:[I

    const/4 v3, 0x2

    aput v3, v1, v2

    .line 485
    return-void
.end method

.method public assignZero()V
    .locals 3

    .line 506
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->blocks:I

    if-ge v0, v1, :cond_0

    .line 508
    iget-object v1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->value:[I

    const/4 v2, 0x0

    aput v2, v1, v0

    .line 506
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 510
    :cond_0
    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 1

    .line 339
    new-instance v0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;

    invoke-direct {v0, p0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;-><init>(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;)V

    return-object v0
.end method

.method public divide(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;)[Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;
    .locals 10
    .param p1, "g"    # Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "g"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .line 1266
    const/4 v0, 0x2

    new-array v0, v0, [Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;

    .line 1267
    .local v0, "result":[Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;
    new-instance v1, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;

    iget v2, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->len:I

    invoke-direct {v1, v2}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;-><init>(I)V

    .line 1268
    .local v1, "q":Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;
    new-instance v2, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;

    invoke-direct {v2, p0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;-><init>(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;)V

    .line 1269
    .local v2, "a":Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;
    new-instance v3, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;

    invoke-direct {v3, p1}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;-><init>(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;)V

    .line 1272
    .local v3, "b":Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;
    invoke-virtual {v3}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->isZero()Z

    move-result v4

    if-nez v4, :cond_2

    .line 1276
    invoke-virtual {v2}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->reduceN()V

    .line 1277
    invoke-virtual {v3}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->reduceN()V

    .line 1278
    iget v4, v2, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->len:I

    iget v5, v3, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->len:I

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-ge v4, v5, :cond_0

    .line 1280
    new-instance v4, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;

    invoke-direct {v4, v6}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;-><init>(I)V

    aput-object v4, v0, v6

    .line 1281
    aput-object v2, v0, v7

    .line 1282
    return-object v0

    .line 1284
    :cond_0
    iget v4, v2, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->len:I

    iget v5, v3, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->len:I

    sub-int/2addr v4, v5

    .line 1285
    .local v4, "i":I
    add-int/lit8 v5, v4, 0x1

    invoke-virtual {v1, v5}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->expandN(I)V

    .line 1287
    :goto_0
    if-ltz v4, :cond_1

    .line 1289
    invoke-virtual {v3, v4}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->shiftLeft(I)Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;

    move-result-object v5

    .line 1290
    .local v5, "j":Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;
    invoke-virtual {v2, v5}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->subtractFromThis(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;)V

    .line 1291
    invoke-virtual {v2}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->reduceN()V

    .line 1292
    invoke-virtual {v1, v4}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->xorBit(I)V

    .line 1293
    iget v8, v2, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->len:I

    iget v9, v3, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->len:I

    sub-int v4, v8, v9

    goto :goto_0

    .line 1296
    .end local v5    # "j":Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;
    :cond_1
    aput-object v1, v0, v6

    .line 1297
    aput-object v2, v0, v7

    .line 1298
    return-object v0

    .line 1274
    .end local v4    # "i":I
    :cond_2
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4}, Ljava/lang/RuntimeException;-><init>()V

    throw v4
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "other"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "other"
        }
    .end annotation

    .line 551
    const/4 v0, 0x0

    if-eqz p1, :cond_4

    instance-of v1, p1, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;

    if-nez v1, :cond_0

    goto :goto_1

    .line 556
    :cond_0
    move-object v1, p1

    check-cast v1, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;

    .line 558
    .local v1, "otherPol":Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;
    iget v2, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->len:I

    iget v3, v1, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->len:I

    if-eq v2, v3, :cond_1

    .line 560
    return v0

    .line 562
    :cond_1
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget v3, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->blocks:I

    if-ge v2, v3, :cond_3

    .line 564
    iget-object v3, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->value:[I

    aget v3, v3, v2

    iget-object v4, v1, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->value:[I

    aget v4, v4, v2

    if-eq v3, v4, :cond_2

    .line 566
    return v0

    .line 562
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 569
    .end local v2    # "i":I
    :cond_3
    const/4 v0, 0x1

    return v0

    .line 553
    .end local v1    # "otherPol":Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;
    :cond_4
    :goto_1
    return v0
.end method

.method public expandN(I)V
    .locals 5
    .param p1, "i"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "i"
        }
    .end annotation

    .line 1526
    iget v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->len:I

    if-lt v0, p1, :cond_0

    .line 1528
    return-void

    .line 1530
    :cond_0
    iput p1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->len:I

    .line 1531
    add-int/lit8 v0, p1, -0x1

    ushr-int/lit8 v0, v0, 0x5

    add-int/lit8 v0, v0, 0x1

    .line 1532
    .local v0, "k":I
    iget v1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->blocks:I

    if-lt v1, v0, :cond_1

    .line 1534
    return-void

    .line 1536
    :cond_1
    iget-object v1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->value:[I

    array-length v1, v1

    const/4 v2, 0x0

    if-lt v1, v0, :cond_3

    .line 1539
    iget v1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->blocks:I

    .local v1, "j":I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 1541
    iget-object v3, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->value:[I

    aput v2, v3, v1

    .line 1539
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1543
    :cond_2
    iput v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->blocks:I

    .line 1544
    return-void

    .line 1546
    .end local v1    # "j":I
    :cond_3
    new-array v1, v0, [I

    .line 1547
    .local v1, "bs":[I
    iget-object v3, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->value:[I

    iget v4, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->blocks:I

    invoke-static {v3, v2, v1, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1548
    iput v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->blocks:I

    .line 1549
    const/4 v2, 0x0

    iput-object v2, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->value:[I

    .line 1550
    iput-object v1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->value:[I

    .line 1551
    return-void
.end method

.method public gcd(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;)Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;
    .locals 3
    .param p1, "g"    # Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "g"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .line 1312
    invoke-virtual {p0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->isZero()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->isZero()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1314
    :cond_0
    new-instance v0, Ljava/lang/ArithmeticException;

    const-string v1, "Both operands of gcd equal zero."

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1316
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->isZero()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1318
    new-instance v0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;

    invoke-direct {v0, p1}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;-><init>(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;)V

    return-object v0

    .line 1320
    :cond_2
    invoke-virtual {p1}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->isZero()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1322
    new-instance v0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;

    invoke-direct {v0, p0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;-><init>(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;)V

    return-object v0

    .line 1324
    :cond_3
    new-instance v0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;

    invoke-direct {v0, p0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;-><init>(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;)V

    .line 1325
    .local v0, "a":Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;
    new-instance v1, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;

    invoke-direct {v1, p1}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;-><init>(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;)V

    .line 1328
    .local v1, "b":Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;
    :goto_1
    invoke-virtual {v1}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->isZero()Z

    move-result v2

    if-nez v2, :cond_4

    .line 1330
    invoke-virtual {v0, v1}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->remainder(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;)Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;

    move-result-object v2

    .line 1331
    .local v2, "c":Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;
    move-object v0, v1

    .line 1332
    move-object v1, v2

    goto :goto_1

    .line 1335
    .end local v2    # "c":Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;
    :cond_4
    return-object v0
.end method

.method public getBit(I)I
    .locals 5
    .param p1, "i"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "i"
        }
    .end annotation

    .line 1750
    if-ltz p1, :cond_2

    .line 1754
    iget v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->len:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    if-le p1, v0, :cond_0

    .line 1756
    return v2

    .line 1758
    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->value:[I

    ushr-int/lit8 v3, p1, 0x5

    aget v0, v0, v3

    sget-object v3, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->bitMask:[I

    and-int/lit8 v4, p1, 0x1f

    aget v3, v3, v4

    and-int/2addr v0, v3

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 1752
    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public getLength()I
    .locals 1

    .line 350
    iget v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->len:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 577
    iget v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->len:I

    iget-object v1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->value:[I

    invoke-static {v1}, Lorg/bouncycastle/util/Arrays;->hashCode([I)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public increase()Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;
    .locals 1

    .line 689
    new-instance v0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;

    invoke-direct {v0, p0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;-><init>(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;)V

    .line 690
    .local v0, "result":Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;
    invoke-virtual {v0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->increaseThis()V

    .line 691
    return-object v0
.end method

.method public increaseThis()V
    .locals 1

    .line 678
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->xorBit(I)V

    .line 679
    return-void
.end method

.method public isIrreducible()Z
    .locals 10

    .line 1351
    invoke-virtual {p0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->isZero()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1353
    return v1

    .line 1355
    :cond_0
    new-instance v0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;

    invoke-direct {v0, p0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;-><init>(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;)V

    .line 1359
    .local v0, "f":Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;
    invoke-virtual {v0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->reduceN()V

    .line 1360
    iget v2, v0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->len:I

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    .line 1361
    .local v2, "d":I
    new-instance v4, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;

    iget v5, v0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->len:I

    const-string v6, "X"

    invoke-direct {v4, v5, v6}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;-><init>(ILjava/lang/String;)V

    .line 1363
    .local v4, "u":Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;
    const/4 v5, 0x1

    .local v5, "i":I
    :goto_0
    shr-int/lit8 v7, v2, 0x1

    if-gt v5, v7, :cond_3

    .line 1365
    invoke-virtual {v4}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->squareThisPreCalc()V

    .line 1366
    invoke-virtual {v4, v0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->remainder(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;)Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;

    move-result-object v4

    .line 1367
    new-instance v7, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;

    const/16 v8, 0x20

    invoke-direct {v7, v8, v6}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;-><init>(ILjava/lang/String;)V

    invoke-virtual {v4, v7}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->add(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;)Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;

    move-result-object v7

    .line 1368
    .local v7, "dummy":Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;
    invoke-virtual {v7}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->isZero()Z

    move-result v8

    if-nez v8, :cond_2

    .line 1370
    invoke-virtual {v0, v7}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->gcd(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;)Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;

    move-result-object v8

    .line 1371
    .local v8, "g":Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;
    invoke-virtual {v8}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->isOne()Z

    move-result v9

    if-nez v9, :cond_1

    .line 1373
    return v1

    .line 1363
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1378
    .end local v8    # "g":Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;
    :cond_2
    return v1

    .line 1382
    .end local v7    # "dummy":Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;
    :cond_3
    return v3
.end method

.method public isOne()Z
    .locals 4

    .line 610
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->blocks:I

    const/4 v2, 0x0

    if-ge v0, v1, :cond_1

    .line 612
    iget-object v1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->value:[I

    aget v1, v1, v0

    if-eqz v1, :cond_0

    .line 614
    return v2

    .line 610
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 617
    :cond_1
    iget-object v1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->value:[I

    aget v1, v1, v2

    const/4 v3, 0x1

    if-eq v1, v3, :cond_2

    .line 619
    return v2

    .line 621
    :cond_2
    return v3
.end method

.method public isZero()Z
    .locals 3

    .line 588
    iget v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->len:I

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 590
    return v1

    .line 592
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v2, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->blocks:I

    if-ge v0, v2, :cond_2

    .line 594
    iget-object v2, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->value:[I

    aget v2, v2, v0

    if-eqz v2, :cond_1

    .line 596
    const/4 v1, 0x0

    return v1

    .line 592
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 599
    :cond_2
    return v1
.end method

.method public multiply(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;)Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;
    .locals 2
    .param p1, "b"    # Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "b"
        }
    .end annotation

    .line 739
    iget v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->len:I

    iget v1, p1, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->len:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 740
    .local v0, "n":I
    invoke-virtual {p0, v0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->expandN(I)V

    .line 741
    invoke-virtual {p1, v0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->expandN(I)V

    .line 742
    invoke-direct {p0, p1}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->karaMult(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;)Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;

    move-result-object v1

    return-object v1
.end method

.method public multiplyClassic(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;)Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;
    .locals 7
    .param p1, "b"    # Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "b"
        }
    .end annotation

    .line 704
    new-instance v0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;

    iget v1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->len:I

    iget v2, p1, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->len:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    shl-int/lit8 v1, v1, 0x1

    invoke-direct {v0, v1}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;-><init>(I)V

    .line 705
    .local v0, "result":Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;
    const/16 v1, 0x20

    new-array v1, v1, [Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;

    .line 707
    .local v1, "m":[Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;
    new-instance v2, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;

    invoke-direct {v2, p0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;-><init>(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;)V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 708
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_0
    const/16 v3, 0x1f

    if-gt v2, v3, :cond_0

    .line 710
    add-int/lit8 v3, v2, -0x1

    aget-object v3, v1, v3

    invoke-virtual {v3}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->shiftLeft()Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;

    move-result-object v3

    aput-object v3, v1, v2

    .line 708
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 712
    :cond_0
    const/4 v2, 0x0

    :goto_1
    iget v4, p1, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->blocks:I

    if-ge v2, v4, :cond_4

    .line 714
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_2
    if-gt v4, v3, :cond_2

    .line 716
    iget-object v5, p1, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->value:[I

    aget v5, v5, v2

    sget-object v6, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->bitMask:[I

    aget v6, v6, v4

    and-int/2addr v5, v6

    if-eqz v5, :cond_1

    .line 718
    aget-object v5, v1, v4

    invoke-virtual {v0, v5}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->xorThisBy(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;)V

    .line 714
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 721
    :cond_2
    const/4 v4, 0x0

    :goto_3
    if-gt v4, v3, :cond_3

    .line 723
    aget-object v5, v1, v4

    invoke-virtual {v5}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->shiftBlocksLeft()V

    .line 721
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 712
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 726
    .end local v4    # "j":I
    :cond_4
    return-object v0
.end method

.method public quotient(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;)Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;
    .locals 7
    .param p1, "g"    # Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "g"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .line 1225
    new-instance v0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;

    iget v1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->len:I

    invoke-direct {v0, v1}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;-><init>(I)V

    .line 1226
    .local v0, "q":Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;
    new-instance v1, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;

    invoke-direct {v1, p0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;-><init>(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;)V

    .line 1227
    .local v1, "a":Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;
    new-instance v2, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;

    invoke-direct {v2, p1}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;-><init>(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;)V

    .line 1230
    .local v2, "b":Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;
    invoke-virtual {v2}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->isZero()Z

    move-result v3

    if-nez v3, :cond_2

    .line 1234
    invoke-virtual {v1}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->reduceN()V

    .line 1235
    invoke-virtual {v2}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->reduceN()V

    .line 1236
    iget v3, v1, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->len:I

    iget v4, v2, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->len:I

    if-ge v3, v4, :cond_0

    .line 1238
    new-instance v3, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;-><init>(I)V

    return-object v3

    .line 1240
    :cond_0
    iget v3, v1, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->len:I

    iget v4, v2, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->len:I

    sub-int/2addr v3, v4

    .line 1241
    .local v3, "i":I
    add-int/lit8 v4, v3, 0x1

    invoke-virtual {v0, v4}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->expandN(I)V

    .line 1243
    :goto_0
    if-ltz v3, :cond_1

    .line 1245
    invoke-virtual {v2, v3}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->shiftLeft(I)Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;

    move-result-object v4

    .line 1246
    .local v4, "j":Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;
    invoke-virtual {v1, v4}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->subtractFromThis(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;)V

    .line 1247
    invoke-virtual {v1}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->reduceN()V

    .line 1248
    invoke-virtual {v0, v3}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->xorBit(I)V

    .line 1249
    iget v5, v1, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->len:I

    iget v6, v2, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->len:I

    sub-int v3, v5, v6

    goto :goto_0

    .line 1252
    .end local v4    # "j":Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;
    :cond_1
    return-object v0

    .line 1232
    .end local v3    # "i":I
    :cond_2
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3}, Ljava/lang/RuntimeException;-><init>()V

    throw v3
.end method

.method public randomize()V
    .locals 3

    .line 518
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->blocks:I

    if-ge v0, v1, :cond_0

    .line 520
    iget-object v1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->value:[I

    sget-object v2, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->rand:Ljava/util/Random;

    invoke-virtual {v2}, Ljava/util/Random;->nextInt()I

    move-result v2

    aput v2, v1, v0

    .line 518
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 522
    :cond_0
    invoke-direct {p0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->zeroUnusedBits()V

    .line 523
    return-void
.end method

.method public randomize(Ljava/util/Random;)V
    .locals 3
    .param p1, "rand"    # Ljava/util/Random;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "rand"
        }
    .end annotation

    .line 534
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->blocks:I

    if-ge v0, v1, :cond_0

    .line 536
    iget-object v1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->value:[I

    invoke-virtual {p1}, Ljava/util/Random;->nextInt()I

    move-result v2

    aput v2, v1, v0

    .line 534
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 538
    :cond_0
    invoke-direct {p0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->zeroUnusedBits()V

    .line 539
    return-void
.end method

.method public reduceN()V
    .locals 4

    .line 1500
    iget v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->blocks:I

    add-int/lit8 v0, v0, -0x1

    .line 1501
    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->value:[I

    aget v1, v1, v0

    if-nez v1, :cond_0

    if-lez v0, :cond_0

    .line 1503
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1505
    :cond_0
    iget-object v1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->value:[I

    aget v1, v1, v0

    .line 1506
    .local v1, "h":I
    const/4 v2, 0x0

    .line 1507
    .local v2, "j":I
    :goto_1
    if-eqz v1, :cond_1

    .line 1509
    ushr-int/lit8 v1, v1, 0x1

    .line 1510
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1512
    :cond_1
    shl-int/lit8 v3, v0, 0x5

    add-int/2addr v3, v2

    iput v3, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->len:I

    .line 1513
    add-int/lit8 v3, v0, 0x1

    iput v3, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->blocks:I

    .line 1514
    return-void
.end method

.method reducePentanomial(I[I)V
    .locals 24
    .param p1, "m"    # I
    .param p2, "pc"    # [I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "m",
            "pc"
        }
    .end annotation

    .line 1447
    move-object/from16 v0, p0

    move/from16 v1, p1

    ushr-int/lit8 v2, v1, 0x5

    .line 1448
    .local v2, "p0":I
    and-int/lit8 v3, v1, 0x1f

    rsub-int/lit8 v3, v3, 0x20

    .line 1449
    .local v3, "q0":I
    const/4 v4, 0x0

    aget v5, p2, v4

    sub-int v5, v1, v5

    ushr-int/lit8 v5, v5, 0x5

    .line 1450
    .local v5, "p1":I
    aget v6, p2, v4

    sub-int v6, v1, v6

    and-int/lit8 v6, v6, 0x1f

    rsub-int/lit8 v6, v6, 0x20

    .line 1451
    .local v6, "q1":I
    const/4 v7, 0x1

    aget v8, p2, v7

    sub-int v8, v1, v8

    ushr-int/lit8 v8, v8, 0x5

    .line 1452
    .local v8, "p2":I
    aget v9, p2, v7

    sub-int v9, v1, v9

    and-int/lit8 v9, v9, 0x1f

    rsub-int/lit8 v9, v9, 0x20

    .line 1453
    .local v9, "q2":I
    const/4 v10, 0x2

    aget v11, p2, v10

    sub-int v11, v1, v11

    ushr-int/lit8 v11, v11, 0x5

    .line 1454
    .local v11, "p3":I
    aget v12, p2, v10

    sub-int v12, v1, v12

    and-int/lit8 v12, v12, 0x1f

    rsub-int/lit8 v12, v12, 0x20

    .line 1455
    .local v12, "q3":I
    shl-int/lit8 v13, v1, 0x1

    sub-int/2addr v13, v10

    ushr-int/lit8 v10, v13, 0x5

    .line 1456
    .local v10, "max":I
    move v13, v2

    .line 1457
    .local v13, "min":I
    move v14, v10

    .local v14, "i":I
    :goto_0
    const-wide v15, 0xffffffffL

    if-le v14, v13, :cond_0

    .line 1459
    const/16 v17, 0x0

    iget-object v4, v0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->value:[I

    aget v4, v4, v14

    move/from16 v19, v8

    const/16 v18, 0x1

    .end local v8    # "p2":I
    .local v19, "p2":I
    int-to-long v7, v4

    and-long/2addr v7, v15

    .line 1460
    .local v7, "t":J
    iget-object v4, v0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->value:[I

    sub-int v15, v14, v2

    add-int/lit8 v15, v15, -0x1

    aget v16, v4, v15

    move/from16 v20, v2

    move/from16 v21, v3

    .end local v2    # "p0":I
    .end local v3    # "q0":I
    .local v20, "p0":I
    .local v21, "q0":I
    shl-long v2, v7, v21

    long-to-int v3, v2

    xor-int v2, v16, v3

    aput v2, v4, v15

    .line 1461
    iget-object v2, v0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->value:[I

    sub-int v3, v14, v20

    aget v4, v2, v3

    move-object v15, v2

    move/from16 v16, v3

    int-to-long v2, v4

    rsub-int/lit8 v4, v21, 0x20

    ushr-long v22, v7, v4

    xor-long v2, v2, v22

    long-to-int v3, v2

    aput v3, v15, v16

    .line 1462
    iget-object v2, v0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->value:[I

    sub-int v3, v14, v5

    add-int/lit8 v3, v3, -0x1

    aget v4, v2, v3

    move-object v15, v2

    move/from16 v16, v3

    shl-long v2, v7, v6

    long-to-int v3, v2

    xor-int v2, v4, v3

    aput v2, v15, v16

    .line 1463
    iget-object v2, v0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->value:[I

    sub-int v3, v14, v5

    aget v4, v2, v3

    move-object v15, v2

    move/from16 v16, v3

    int-to-long v2, v4

    rsub-int/lit8 v4, v6, 0x20

    ushr-long v22, v7, v4

    xor-long v2, v2, v22

    long-to-int v3, v2

    aput v3, v15, v16

    .line 1464
    iget-object v2, v0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->value:[I

    sub-int v3, v14, v19

    add-int/lit8 v3, v3, -0x1

    aget v4, v2, v3

    move-object v15, v2

    move/from16 v16, v3

    shl-long v2, v7, v9

    long-to-int v3, v2

    xor-int v2, v4, v3

    aput v2, v15, v16

    .line 1465
    iget-object v2, v0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->value:[I

    sub-int v3, v14, v19

    aget v4, v2, v3

    move-object v15, v2

    move/from16 v16, v3

    int-to-long v2, v4

    rsub-int/lit8 v4, v9, 0x20

    ushr-long v22, v7, v4

    xor-long v2, v2, v22

    long-to-int v3, v2

    aput v3, v15, v16

    .line 1466
    iget-object v2, v0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->value:[I

    sub-int v3, v14, v11

    add-int/lit8 v3, v3, -0x1

    aget v4, v2, v3

    move-object v15, v2

    move/from16 v16, v3

    shl-long v2, v7, v12

    long-to-int v3, v2

    xor-int v2, v4, v3

    aput v2, v15, v16

    .line 1467
    iget-object v2, v0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->value:[I

    sub-int v3, v14, v11

    aget v4, v2, v3

    move-object v15, v2

    move/from16 v16, v3

    int-to-long v2, v4

    rsub-int/lit8 v4, v12, 0x20

    ushr-long v22, v7, v4

    xor-long v2, v2, v22

    long-to-int v3, v2

    aput v3, v15, v16

    .line 1468
    iget-object v2, v0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->value:[I

    aput v17, v2, v14

    .line 1457
    add-int/lit8 v14, v14, -0x1

    move/from16 v8, v19

    move/from16 v2, v20

    move/from16 v3, v21

    const/4 v4, 0x0

    const/4 v7, 0x1

    goto/16 :goto_0

    .line 1470
    .end local v7    # "t":J
    .end local v19    # "p2":I
    .end local v20    # "p0":I
    .end local v21    # "q0":I
    .restart local v2    # "p0":I
    .restart local v3    # "q0":I
    .restart local v8    # "p2":I
    :cond_0
    move/from16 v20, v2

    move/from16 v21, v3

    move/from16 v19, v8

    const/16 v17, 0x0

    const/16 v18, 0x1

    .end local v2    # "p0":I
    .end local v3    # "q0":I
    .end local v8    # "p2":I
    .restart local v19    # "p2":I
    .restart local v20    # "p0":I
    .restart local v21    # "q0":I
    iget-object v2, v0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->value:[I

    aget v2, v2, v13

    int-to-long v2, v2

    and-long/2addr v2, v15

    and-int/lit8 v4, v1, 0x1f

    shl-long v7, v15, v4

    and-long/2addr v2, v7

    .line 1471
    .local v2, "t":J
    iget-object v4, v0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->value:[I

    aget v7, v4, v17

    int-to-long v7, v7

    rsub-int/lit8 v15, v21, 0x20

    ushr-long v15, v2, v15

    xor-long/2addr v7, v15

    long-to-int v8, v7

    aput v8, v4, v17

    .line 1472
    sub-int v4, v13, v5

    add-int/lit8 v4, v4, -0x1

    if-ltz v4, :cond_1

    .line 1474
    iget-object v4, v0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->value:[I

    sub-int v7, v13, v5

    add-int/lit8 v7, v7, -0x1

    aget v8, v4, v7

    move-wide v15, v2

    .end local v2    # "t":J
    .local v15, "t":J
    shl-long v2, v15, v6

    long-to-int v3, v2

    xor-int v2, v8, v3

    aput v2, v4, v7

    goto :goto_1

    .line 1472
    .end local v15    # "t":J
    .restart local v2    # "t":J
    :cond_1
    move-wide v15, v2

    .line 1476
    .end local v2    # "t":J
    .restart local v15    # "t":J
    :goto_1
    iget-object v2, v0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->value:[I

    sub-int v3, v13, v5

    aget v4, v2, v3

    int-to-long v7, v4

    rsub-int/lit8 v4, v6, 0x20

    ushr-long v22, v15, v4

    xor-long v7, v7, v22

    long-to-int v4, v7

    aput v4, v2, v3

    .line 1477
    sub-int v2, v13, v19

    add-int/lit8 v2, v2, -0x1

    if-ltz v2, :cond_2

    .line 1479
    iget-object v2, v0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->value:[I

    sub-int v3, v13, v19

    add-int/lit8 v3, v3, -0x1

    aget v4, v2, v3

    shl-long v7, v15, v9

    long-to-int v8, v7

    xor-int/2addr v4, v8

    aput v4, v2, v3

    .line 1481
    :cond_2
    iget-object v2, v0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->value:[I

    sub-int v3, v13, v19

    aget v4, v2, v3

    int-to-long v7, v4

    rsub-int/lit8 v4, v9, 0x20

    ushr-long v22, v15, v4

    xor-long v7, v7, v22

    long-to-int v4, v7

    aput v4, v2, v3

    .line 1482
    sub-int v2, v13, v11

    add-int/lit8 v2, v2, -0x1

    if-ltz v2, :cond_3

    .line 1484
    iget-object v2, v0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->value:[I

    sub-int v3, v13, v11

    add-int/lit8 v3, v3, -0x1

    aget v4, v2, v3

    shl-long v7, v15, v12

    long-to-int v8, v7

    xor-int/2addr v4, v8

    aput v4, v2, v3

    .line 1486
    :cond_3
    iget-object v2, v0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->value:[I

    sub-int v3, v13, v11

    aget v4, v2, v3

    int-to-long v7, v4

    rsub-int/lit8 v4, v12, 0x20

    ushr-long v22, v15, v4

    xor-long v7, v7, v22

    long-to-int v4, v7

    aput v4, v2, v3

    .line 1487
    iget-object v2, v0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->value:[I

    aget v3, v2, v13

    sget-object v4, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->reverseRightMask:[I

    and-int/lit8 v7, v1, 0x1f

    aget v4, v4, v7

    and-int/2addr v3, v4

    aput v3, v2, v13

    .line 1489
    add-int/lit8 v2, v1, -0x1

    ushr-int/lit8 v2, v2, 0x5

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->blocks:I

    .line 1490
    iput v1, v0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->len:I

    .line 1491
    return-void
.end method

.method reduceTrinomial(II)V
    .locals 18
    .param p1, "m"    # I
    .param p2, "tc"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "m",
            "tc"
        }
    .end annotation

    .line 1398
    move-object/from16 v0, p0

    move/from16 v1, p1

    ushr-int/lit8 v2, v1, 0x5

    .line 1399
    .local v2, "p0":I
    and-int/lit8 v3, v1, 0x1f

    rsub-int/lit8 v3, v3, 0x20

    .line 1400
    .local v3, "q0":I
    sub-int v4, v1, p2

    ushr-int/lit8 v4, v4, 0x5

    .line 1401
    .local v4, "p1":I
    sub-int v5, v1, p2

    and-int/lit8 v5, v5, 0x1f

    rsub-int/lit8 v5, v5, 0x20

    .line 1402
    .local v5, "q1":I
    shl-int/lit8 v6, v1, 0x1

    add-int/lit8 v6, v6, -0x2

    ushr-int/lit8 v6, v6, 0x5

    .line 1403
    .local v6, "max":I
    move v7, v2

    .line 1404
    .local v7, "min":I
    move v8, v6

    .local v8, "i":I
    :goto_0
    const-wide v10, 0xffffffffL

    if-le v8, v7, :cond_0

    .line 1408
    iget-object v12, v0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->value:[I

    aget v12, v12, v8

    int-to-long v12, v12

    and-long/2addr v10, v12

    .line 1410
    .local v10, "t":J
    iget-object v12, v0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->value:[I

    sub-int v13, v8, v2

    add-int/lit8 v13, v13, -0x1

    aget v14, v12, v13

    move-wide/from16 v16, v10

    const/4 v15, 0x0

    .end local v10    # "t":J
    .local v16, "t":J
    shl-long v9, v16, v3

    long-to-int v10, v9

    xor-int v9, v14, v10

    aput v9, v12, v13

    .line 1412
    iget-object v9, v0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->value:[I

    sub-int v10, v8, v2

    aget v11, v9, v10

    int-to-long v11, v11

    rsub-int/lit8 v13, v3, 0x20

    ushr-long v13, v16, v13

    xor-long/2addr v11, v13

    long-to-int v12, v11

    aput v12, v9, v10

    .line 1414
    iget-object v9, v0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->value:[I

    sub-int v10, v8, v4

    add-int/lit8 v10, v10, -0x1

    aget v11, v9, v10

    shl-long v12, v16, v5

    long-to-int v13, v12

    xor-int/2addr v11, v13

    aput v11, v9, v10

    .line 1416
    iget-object v9, v0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->value:[I

    sub-int v10, v8, v4

    aget v11, v9, v10

    int-to-long v11, v11

    rsub-int/lit8 v13, v5, 0x20

    ushr-long v13, v16, v13

    xor-long/2addr v11, v13

    long-to-int v12, v11

    aput v12, v9, v10

    .line 1417
    iget-object v9, v0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->value:[I

    aput v15, v9, v8

    .line 1404
    add-int/lit8 v8, v8, -0x1

    goto :goto_0

    .line 1420
    .end local v16    # "t":J
    :cond_0
    const/4 v15, 0x0

    iget-object v9, v0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->value:[I

    aget v9, v9, v7

    int-to-long v12, v9

    and-long/2addr v12, v10

    and-int/lit8 v9, v1, 0x1f

    shl-long v9, v10, v9

    and-long/2addr v9, v12

    .line 1422
    .local v9, "t":J
    iget-object v11, v0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->value:[I

    aget v12, v11, v15

    int-to-long v12, v12

    rsub-int/lit8 v14, v3, 0x20

    ushr-long v16, v9, v14

    xor-long v12, v12, v16

    long-to-int v13, v12

    aput v13, v11, v15

    .line 1423
    sub-int v11, v7, v4

    add-int/lit8 v11, v11, -0x1

    if-ltz v11, :cond_1

    .line 1425
    iget-object v11, v0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->value:[I

    sub-int v12, v7, v4

    add-int/lit8 v12, v12, -0x1

    aget v13, v11, v12

    shl-long v14, v9, v5

    long-to-int v15, v14

    xor-int/2addr v13, v15

    aput v13, v11, v12

    .line 1427
    :cond_1
    iget-object v11, v0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->value:[I

    sub-int v12, v7, v4

    aget v13, v11, v12

    int-to-long v13, v13

    rsub-int/lit8 v15, v5, 0x20

    ushr-long v15, v9, v15

    xor-long/2addr v13, v15

    long-to-int v14, v13

    aput v14, v11, v12

    .line 1429
    iget-object v11, v0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->value:[I

    aget v12, v11, v7

    sget-object v13, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->reverseRightMask:[I

    and-int/lit8 v14, v1, 0x1f

    aget v13, v13, v14

    and-int/2addr v12, v13

    aput v12, v11, v7

    .line 1430
    add-int/lit8 v11, v1, -0x1

    ushr-int/lit8 v11, v11, 0x5

    add-int/lit8 v11, v11, 0x1

    iput v11, v0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->blocks:I

    .line 1431
    iput v1, v0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->len:I

    .line 1432
    return-void
.end method

.method public remainder(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;)Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;
    .locals 6
    .param p1, "g"    # Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "g"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .line 1189
    new-instance v0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;

    invoke-direct {v0, p0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;-><init>(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;)V

    .line 1190
    .local v0, "a":Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;
    new-instance v1, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;

    invoke-direct {v1, p1}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;-><init>(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;)V

    .line 1193
    .local v1, "b":Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;
    invoke-virtual {v1}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->isZero()Z

    move-result v2

    if-nez v2, :cond_2

    .line 1197
    invoke-virtual {v0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->reduceN()V

    .line 1198
    invoke-virtual {v1}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->reduceN()V

    .line 1199
    iget v2, v0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->len:I

    iget v3, v1, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->len:I

    if-ge v2, v3, :cond_0

    .line 1201
    return-object v0

    .line 1203
    :cond_0
    iget v2, v0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->len:I

    iget v3, v1, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->len:I

    sub-int/2addr v2, v3

    .line 1204
    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_1

    .line 1206
    invoke-virtual {v1, v2}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->shiftLeft(I)Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;

    move-result-object v3

    .line 1207
    .local v3, "j":Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;
    invoke-virtual {v0, v3}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->subtractFromThis(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;)V

    .line 1208
    invoke-virtual {v0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->reduceN()V

    .line 1209
    iget v4, v0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->len:I

    iget v5, v1, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->len:I

    sub-int v2, v4, v5

    goto :goto_0

    .line 1211
    .end local v3    # "j":Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;
    :cond_1
    return-object v0

    .line 1195
    .end local v2    # "i":I
    :cond_2
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2}, Ljava/lang/RuntimeException;-><init>()V

    throw v2
.end method

.method public resetBit(I)V
    .locals 5
    .param p1, "i"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "i"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .line 1770
    if-ltz p1, :cond_1

    .line 1774
    iget v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->len:I

    add-int/lit8 v0, v0, -0x1

    if-le p1, v0, :cond_0

    .line 1776
    return-void

    .line 1778
    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->value:[I

    ushr-int/lit8 v1, p1, 0x5

    aget v2, v0, v1

    sget-object v3, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->bitMask:[I

    and-int/lit8 v4, p1, 0x1f

    aget v3, v3, v4

    not-int v3, v3

    and-int/2addr v2, v3

    aput v2, v0, v1

    .line 1779
    return-void

    .line 1772
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public setBit(I)V
    .locals 5
    .param p1, "i"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "i"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .line 1734
    if-ltz p1, :cond_0

    iget v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->len:I

    add-int/lit8 v0, v0, -0x1

    if-gt p1, v0, :cond_0

    .line 1738
    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->value:[I

    ushr-int/lit8 v1, p1, 0x5

    aget v2, v0, v1

    sget-object v3, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->bitMask:[I

    and-int/lit8 v4, p1, 0x1f

    aget v3, v3, v4

    or-int/2addr v2, v3

    aput v2, v0, v1

    .line 1739
    return-void

    .line 1736
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method shiftBlocksLeft()V
    .locals 6

    .line 1941
    iget v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->blocks:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->blocks:I

    .line 1942
    iget v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->len:I

    add-int/lit8 v0, v0, 0x20

    iput v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->len:I

    .line 1943
    iget v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->blocks:I

    iget-object v2, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->value:[I

    array-length v2, v2

    const/4 v3, 0x0

    if-gt v0, v2, :cond_1

    .line 1946
    iget v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->blocks:I

    sub-int/2addr v0, v1

    .local v0, "i":I
    :goto_0
    if-lt v0, v1, :cond_0

    .line 1948
    iget-object v2, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->value:[I

    iget-object v4, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->value:[I

    add-int/lit8 v5, v0, -0x1

    aget v4, v4, v5

    aput v4, v2, v0

    .line 1946
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1950
    :cond_0
    iget-object v1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->value:[I

    aput v3, v1, v3

    .line 1951
    .end local v0    # "i":I
    goto :goto_1

    .line 1954
    :cond_1
    iget v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->blocks:I

    new-array v0, v0, [I

    .line 1955
    .local v0, "result":[I
    iget-object v2, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->value:[I

    iget v4, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->blocks:I

    sub-int/2addr v4, v1

    invoke-static {v2, v3, v0, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1956
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->value:[I

    .line 1957
    iput-object v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->value:[I

    .line 1959
    .end local v0    # "result":[I
    :goto_1
    return-void
.end method

.method public shiftLeft()Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;
    .locals 7

    .line 1824
    new-instance v0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;

    iget v1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->len:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iget-object v3, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->value:[I

    invoke-direct {v0, v1, v3}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;-><init>(I[I)V

    .line 1826
    .local v0, "result":Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;
    iget v1, v0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->blocks:I

    sub-int/2addr v1, v2

    .local v1, "i":I
    :goto_0
    if-lt v1, v2, :cond_0

    .line 1828
    iget-object v3, v0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->value:[I

    aget v4, v3, v1

    shl-int/2addr v4, v2

    aput v4, v3, v1

    .line 1829
    iget-object v3, v0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->value:[I

    aget v4, v3, v1

    iget-object v5, v0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->value:[I

    add-int/lit8 v6, v1, -0x1

    aget v5, v5, v6

    ushr-int/lit8 v5, v5, 0x1f

    or-int/2addr v4, v5

    aput v4, v3, v1

    .line 1826
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 1831
    :cond_0
    iget-object v3, v0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->value:[I

    const/4 v4, 0x0

    aget v5, v3, v4

    shl-int/lit8 v2, v5, 0x1

    aput v2, v3, v4

    .line 1832
    return-object v0
.end method

.method public shiftLeft(I)Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;
    .locals 8
    .param p1, "k"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "k"
        }
    .end annotation

    .line 1885
    new-instance v0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;

    iget v1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->len:I

    add-int/2addr v1, p1

    iget-object v2, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->value:[I

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;-><init>(I[I)V

    .line 1887
    .local v0, "result":Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;
    const/16 v1, 0x20

    if-lt p1, v1, :cond_0

    .line 1889
    ushr-int/lit8 v1, p1, 0x5

    invoke-direct {v0, v1}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->doShiftBlocksLeft(I)V

    .line 1892
    :cond_0
    and-int/lit8 v1, p1, 0x1f

    .line 1893
    .local v1, "remaining":I
    if-eqz v1, :cond_2

    .line 1895
    iget v2, v0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->blocks:I

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    .local v2, "i":I
    :goto_0
    if-lt v2, v3, :cond_1

    .line 1897
    iget-object v4, v0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->value:[I

    aget v5, v4, v2

    shl-int/2addr v5, v1

    aput v5, v4, v2

    .line 1898
    iget-object v4, v0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->value:[I

    aget v5, v4, v2

    iget-object v6, v0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->value:[I

    add-int/lit8 v7, v2, -0x1

    aget v6, v6, v7

    rsub-int/lit8 v7, v1, 0x20

    ushr-int/2addr v6, v7

    or-int/2addr v5, v6

    aput v5, v4, v2

    .line 1895
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 1900
    .end local v2    # "i":I
    :cond_1
    iget-object v2, v0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->value:[I

    const/4 v3, 0x0

    aget v4, v2, v3

    shl-int/2addr v4, v1

    aput v4, v2, v3

    .line 1902
    :cond_2
    return-object v0
.end method

.method public shiftLeftAddThis(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;I)V
    .locals 7
    .param p1, "b"    # Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;
    .param p2, "k"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "b",
            "k"
        }
    .end annotation

    .line 1915
    if-nez p2, :cond_0

    .line 1917
    invoke-virtual {p0, p1}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->addToThis(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;)V

    .line 1918
    return-void

    .line 1921
    :cond_0
    iget v0, p1, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->len:I

    add-int/2addr v0, p2

    invoke-virtual {p0, v0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->expandN(I)V

    .line 1922
    ushr-int/lit8 v0, p2, 0x5

    .line 1923
    .local v0, "d":I
    iget v1, p1, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->blocks:I

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_2

    .line 1925
    add-int v2, v1, v0

    add-int/lit8 v2, v2, 0x1

    iget v3, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->blocks:I

    if-ge v2, v3, :cond_1

    and-int/lit8 v2, p2, 0x1f

    if-eqz v2, :cond_1

    .line 1927
    iget-object v2, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->value:[I

    add-int v3, v1, v0

    add-int/lit8 v3, v3, 0x1

    aget v4, v2, v3

    iget-object v5, p1, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->value:[I

    aget v5, v5, v1

    and-int/lit8 v6, p2, 0x1f

    rsub-int/lit8 v6, v6, 0x20

    ushr-int/2addr v5, v6

    xor-int/2addr v4, v5

    aput v4, v2, v3

    .line 1929
    :cond_1
    iget-object v2, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->value:[I

    add-int v3, v1, v0

    aget v4, v2, v3

    iget-object v5, p1, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->value:[I

    aget v5, v5, v1

    and-int/lit8 v6, p2, 0x1f

    shl-int/2addr v5, v6

    xor-int/2addr v4, v5

    aput v4, v2, v3

    .line 1923
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 1931
    :cond_2
    return-void
.end method

.method public shiftLeftThis()V
    .locals 7

    .line 1842
    iget v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->len:I

    and-int/lit8 v0, v0, 0x1f

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    .line 1844
    iget v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->len:I

    add-int/2addr v0, v2

    iput v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->len:I

    .line 1845
    iget v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->blocks:I

    add-int/2addr v0, v2

    iput v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->blocks:I

    .line 1846
    iget v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->blocks:I

    iget-object v3, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->value:[I

    array-length v3, v3

    if-le v0, v3, :cond_0

    .line 1848
    iget v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->blocks:I

    new-array v0, v0, [I

    .line 1849
    .local v0, "bs":[I
    iget-object v3, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->value:[I

    iget-object v4, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->value:[I

    array-length v4, v4

    invoke-static {v3, v1, v0, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1850
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->value:[I

    .line 1851
    iput-object v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->value:[I

    .line 1853
    .end local v0    # "bs":[I
    :cond_0
    iget v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->blocks:I

    sub-int/2addr v0, v2

    .local v0, "i":I
    :goto_0
    if-lt v0, v2, :cond_3

    .line 1855
    iget-object v1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->value:[I

    aget v3, v1, v0

    iget-object v4, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->value:[I

    add-int/lit8 v5, v0, -0x1

    aget v4, v4, v5

    ushr-int/lit8 v4, v4, 0x1f

    or-int/2addr v3, v4

    aput v3, v1, v0

    .line 1856
    iget-object v1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->value:[I

    add-int/lit8 v3, v0, -0x1

    aget v4, v1, v3

    shl-int/2addr v4, v2

    aput v4, v1, v3

    .line 1853
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1861
    .end local v0    # "i":I
    :cond_1
    iget v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->len:I

    add-int/2addr v0, v2

    iput v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->len:I

    .line 1862
    iget v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->blocks:I

    sub-int/2addr v0, v2

    .restart local v0    # "i":I
    :goto_1
    if-lt v0, v2, :cond_2

    .line 1864
    iget-object v3, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->value:[I

    aget v4, v3, v0

    shl-int/2addr v4, v2

    aput v4, v3, v0

    .line 1865
    iget-object v3, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->value:[I

    aget v4, v3, v0

    iget-object v5, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->value:[I

    add-int/lit8 v6, v0, -0x1

    aget v5, v5, v6

    ushr-int/lit8 v5, v5, 0x1f

    or-int/2addr v4, v5

    aput v4, v3, v0

    .line 1862
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 1867
    :cond_2
    iget-object v3, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->value:[I

    aget v4, v3, v1

    shl-int/lit8 v2, v4, 0x1

    aput v2, v3, v1

    .line 1869
    :cond_3
    return-void
.end method

.method public shiftRight()Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;
    .locals 7

    .line 1998
    new-instance v0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;

    iget v1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->len:I

    add-int/lit8 v1, v1, -0x1

    invoke-direct {v0, v1}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;-><init>(I)V

    .line 2000
    .local v0, "result":Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;
    iget-object v1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->value:[I

    iget-object v2, v0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->value:[I

    iget v3, v0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->blocks:I

    const/4 v4, 0x0

    invoke-static {v1, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2001
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v2, v0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->blocks:I

    add-int/lit8 v2, v2, -0x2

    if-gt v1, v2, :cond_0

    .line 2003
    iget-object v2, v0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->value:[I

    aget v3, v2, v1

    ushr-int/lit8 v3, v3, 0x1

    aput v3, v2, v1

    .line 2004
    iget-object v2, v0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->value:[I

    aget v3, v2, v1

    iget-object v4, v0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->value:[I

    add-int/lit8 v5, v1, 0x1

    aget v4, v4, v5

    shl-int/lit8 v4, v4, 0x1f

    or-int/2addr v3, v4

    aput v3, v2, v1

    .line 2001
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2006
    :cond_0
    iget-object v2, v0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->value:[I

    iget v3, v0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->blocks:I

    add-int/lit8 v3, v3, -0x1

    aget v4, v2, v3

    ushr-int/lit8 v4, v4, 0x1

    aput v4, v2, v3

    .line 2007
    iget v2, v0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->blocks:I

    iget v3, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->blocks:I

    if-ge v2, v3, :cond_1

    .line 2009
    iget-object v2, v0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->value:[I

    iget v3, v0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->blocks:I

    add-int/lit8 v3, v3, -0x1

    aget v4, v2, v3

    iget-object v5, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->value:[I

    iget v6, v0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->blocks:I

    aget v5, v5, v6

    shl-int/lit8 v5, v5, 0x1f

    or-int/2addr v4, v5

    aput v4, v2, v3

    .line 2011
    :cond_1
    return-object v0
.end method

.method public shiftRightThis()V
    .locals 6

    .line 2020
    iget v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->len:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->len:I

    .line 2021
    iget v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->len:I

    add-int/lit8 v0, v0, -0x1

    ushr-int/lit8 v0, v0, 0x5

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->blocks:I

    .line 2022
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->blocks:I

    add-int/lit8 v1, v1, -0x2

    if-gt v0, v1, :cond_0

    .line 2024
    iget-object v1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->value:[I

    aget v2, v1, v0

    ushr-int/lit8 v2, v2, 0x1

    aput v2, v1, v0

    .line 2025
    iget-object v1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->value:[I

    aget v2, v1, v0

    iget-object v3, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->value:[I

    add-int/lit8 v4, v0, 0x1

    aget v3, v3, v4

    shl-int/lit8 v3, v3, 0x1f

    or-int/2addr v2, v3

    aput v2, v1, v0

    .line 2022
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2027
    :cond_0
    iget-object v1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->value:[I

    iget v2, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->blocks:I

    add-int/lit8 v2, v2, -0x1

    aget v3, v1, v2

    ushr-int/lit8 v3, v3, 0x1

    aput v3, v1, v2

    .line 2028
    iget v1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->len:I

    and-int/lit8 v1, v1, 0x1f

    if-nez v1, :cond_1

    .line 2030
    iget-object v1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->value:[I

    iget v2, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->blocks:I

    add-int/lit8 v2, v2, -0x1

    aget v3, v1, v2

    iget-object v4, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->value:[I

    iget v5, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->blocks:I

    aget v4, v4, v5

    shl-int/lit8 v4, v4, 0x1f

    or-int/2addr v3, v4

    aput v3, v1, v2

    .line 2032
    :cond_1
    return-void
.end method

.method public squareThisBitwise()V
    .locals 7

    .line 1563
    invoke-virtual {p0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->isZero()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1565
    return-void

    .line 1567
    :cond_0
    iget v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->blocks:I

    shl-int/lit8 v0, v0, 0x1

    new-array v0, v0, [I

    .line 1568
    .local v0, "result":[I
    iget v1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->blocks:I

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_4

    .line 1570
    iget-object v2, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->value:[I

    aget v2, v2, v1

    .line 1571
    .local v2, "h":I
    const/4 v3, 0x1

    .line 1572
    .local v3, "j":I
    const/4 v4, 0x0

    .local v4, "k":I
    :goto_1
    const/16 v5, 0x10

    if-ge v4, v5, :cond_3

    .line 1574
    and-int/lit8 v5, v2, 0x1

    if-eqz v5, :cond_1

    .line 1576
    shl-int/lit8 v5, v1, 0x1

    aget v6, v0, v5

    or-int/2addr v6, v3

    aput v6, v0, v5

    .line 1578
    :cond_1
    const/high16 v5, 0x10000

    and-int/2addr v5, v2

    if-eqz v5, :cond_2

    .line 1580
    shl-int/lit8 v5, v1, 0x1

    add-int/lit8 v5, v5, 0x1

    aget v6, v0, v5

    or-int/2addr v6, v3

    aput v6, v0, v5

    .line 1582
    :cond_2
    shl-int/lit8 v3, v3, 0x2

    .line 1583
    ushr-int/lit8 v2, v2, 0x1

    .line 1572
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1568
    :cond_3
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 1586
    .end local v2    # "h":I
    .end local v3    # "j":I
    .end local v4    # "k":I
    :cond_4
    const/4 v2, 0x0

    iput-object v2, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->value:[I

    .line 1587
    iput-object v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->value:[I

    .line 1588
    array-length v2, v0

    iput v2, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->blocks:I

    .line 1589
    iget v2, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->len:I

    shl-int/lit8 v2, v2, 0x1

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->len:I

    .line 1590
    return-void
.end method

.method public squareThisPreCalc()V
    .locals 9

    .line 1599
    invoke-virtual {p0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->isZero()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1601
    return-void

    .line 1603
    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->value:[I

    array-length v0, v0

    iget v1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->blocks:I

    shl-int/lit8 v1, v1, 0x1

    const/high16 v2, -0x1000000

    const/high16 v3, 0xff0000

    const v4, 0xff00

    if-lt v0, v1, :cond_2

    .line 1605
    iget v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->blocks:I

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 1607
    iget-object v1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->value:[I

    shl-int/lit8 v5, v0, 0x1

    add-int/lit8 v5, v5, 0x1

    sget-object v6, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->squaringTable:[S

    iget-object v7, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->value:[I

    aget v7, v7, v0

    and-int/2addr v7, v3

    ushr-int/lit8 v7, v7, 0x10

    aget-short v6, v6, v7

    sget-object v7, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->squaringTable:[S

    iget-object v8, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->value:[I

    aget v8, v8, v0

    and-int/2addr v8, v2

    ushr-int/lit8 v8, v8, 0x18

    aget-short v7, v7, v8

    shl-int/lit8 v7, v7, 0x10

    or-int/2addr v6, v7

    aput v6, v1, v5

    .line 1609
    iget-object v1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->value:[I

    shl-int/lit8 v5, v0, 0x1

    sget-object v6, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->squaringTable:[S

    iget-object v7, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->value:[I

    aget v7, v7, v0

    and-int/lit16 v7, v7, 0xff

    aget-short v6, v6, v7

    sget-object v7, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->squaringTable:[S

    iget-object v8, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->value:[I

    aget v8, v8, v0

    and-int/2addr v8, v4

    ushr-int/lit8 v8, v8, 0x8

    aget-short v7, v7, v8

    shl-int/lit8 v7, v7, 0x10

    or-int/2addr v6, v7

    aput v6, v1, v5

    .line 1605
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1612
    :cond_1
    iget v1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->blocks:I

    shl-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->blocks:I

    .line 1613
    iget v1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->len:I

    shl-int/lit8 v1, v1, 0x1

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->len:I

    goto :goto_2

    .line 1617
    .end local v0    # "i":I
    :cond_2
    iget v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->blocks:I

    shl-int/lit8 v0, v0, 0x1

    new-array v0, v0, [I

    .line 1618
    .local v0, "result":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget v5, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->blocks:I

    if-ge v1, v5, :cond_3

    .line 1620
    shl-int/lit8 v5, v1, 0x1

    sget-object v6, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->squaringTable:[S

    iget-object v7, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->value:[I

    aget v7, v7, v1

    and-int/lit16 v7, v7, 0xff

    aget-short v6, v6, v7

    sget-object v7, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->squaringTable:[S

    iget-object v8, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->value:[I

    aget v8, v8, v1

    and-int/2addr v8, v4

    ushr-int/lit8 v8, v8, 0x8

    aget-short v7, v7, v8

    shl-int/lit8 v7, v7, 0x10

    or-int/2addr v6, v7

    aput v6, v0, v5

    .line 1622
    shl-int/lit8 v5, v1, 0x1

    add-int/lit8 v5, v5, 0x1

    sget-object v6, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->squaringTable:[S

    iget-object v7, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->value:[I

    aget v7, v7, v1

    and-int/2addr v7, v3

    ushr-int/lit8 v7, v7, 0x10

    aget-short v6, v6, v7

    sget-object v7, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->squaringTable:[S

    iget-object v8, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->value:[I

    aget v8, v8, v1

    and-int/2addr v8, v2

    ushr-int/lit8 v8, v8, 0x18

    aget-short v7, v7, v8

    shl-int/lit8 v7, v7, 0x10

    or-int/2addr v6, v7

    aput v6, v0, v5

    .line 1618
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1625
    :cond_3
    const/4 v2, 0x0

    iput-object v2, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->value:[I

    .line 1626
    iput-object v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->value:[I

    .line 1627
    iget v2, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->blocks:I

    shl-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->blocks:I

    .line 1628
    iget v2, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->len:I

    shl-int/lit8 v2, v2, 0x1

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->len:I

    move v0, v1

    .line 1630
    .end local v1    # "i":I
    .local v0, "i":I
    :goto_2
    return-void
.end method

.method public subtract(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;)Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;
    .locals 1
    .param p1, "b"    # Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "b"
        }
    .end annotation

    .line 670
    invoke-virtual {p0, p1}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->xor(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;)Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;

    move-result-object v0

    return-object v0
.end method

.method public subtractFromThis(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;)V
    .locals 1
    .param p1, "b"    # Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "b"
        }
    .end annotation

    .line 656
    iget v0, p1, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->len:I

    invoke-virtual {p0, v0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->expandN(I)V

    .line 657
    invoke-virtual {p0, p1}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->xorThisBy(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;)V

    .line 658
    return-void
.end method

.method public testBit(I)Z
    .locals 5
    .param p1, "i"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "i"
        }
    .end annotation

    .line 1806
    if-ltz p1, :cond_2

    .line 1810
    iget v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->len:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    if-le p1, v0, :cond_0

    .line 1812
    return v2

    .line 1814
    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->value:[I

    ushr-int/lit8 v3, p1, 0x5

    aget v0, v0, v3

    sget-object v3, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->bitMask:[I

    and-int/lit8 v4, p1, 0x1f

    aget v3, v3, v4

    and-int/2addr v0, v3

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 1808
    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public toByteArray()[B
    .locals 8

    .line 424
    iget v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->len:I

    add-int/lit8 v0, v0, -0x1

    shr-int/lit8 v0, v0, 0x3

    add-int/lit8 v0, v0, 0x1

    .line 425
    .local v0, "k":I
    and-int/lit8 v1, v0, 0x3

    .line 427
    .local v1, "ov":I
    new-array v2, v0, [B

    .line 429
    .local v2, "res":[B
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    shr-int/lit8 v4, v0, 0x2

    const/16 v5, 0xff

    if-ge v3, v4, :cond_0

    .line 431
    shl-int/lit8 v4, v3, 0x2

    sub-int v4, v0, v4

    add-int/lit8 v4, v4, -0x1

    .line 432
    .local v4, "m":I
    iget-object v6, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->value:[I

    aget v6, v6, v3

    and-int/2addr v5, v6

    int-to-byte v5, v5

    aput-byte v5, v2, v4

    .line 433
    add-int/lit8 v5, v4, -0x1

    iget-object v6, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->value:[I

    aget v6, v6, v3

    const v7, 0xff00

    and-int/2addr v6, v7

    ushr-int/lit8 v6, v6, 0x8

    int-to-byte v6, v6

    aput-byte v6, v2, v5

    .line 434
    add-int/lit8 v5, v4, -0x2

    iget-object v6, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->value:[I

    aget v6, v6, v3

    const/high16 v7, 0xff0000

    and-int/2addr v6, v7

    ushr-int/lit8 v6, v6, 0x10

    int-to-byte v6, v6

    aput-byte v6, v2, v5

    .line 435
    add-int/lit8 v5, v4, -0x3

    iget-object v6, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->value:[I

    aget v6, v6, v3

    const/high16 v7, -0x1000000

    and-int/2addr v6, v7

    ushr-int/lit8 v6, v6, 0x18

    int-to-byte v6, v6

    aput-byte v6, v2, v5

    .line 429
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 437
    .end local v4    # "m":I
    :cond_0
    const/4 v3, 0x0

    :goto_1
    if-ge v3, v1, :cond_1

    .line 439
    sub-int v4, v1, v3

    add-int/lit8 v4, v4, -0x1

    shl-int/lit8 v4, v4, 0x3

    .line 440
    .restart local v4    # "m":I
    iget-object v6, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->value:[I

    iget v7, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->blocks:I

    add-int/lit8 v7, v7, -0x1

    aget v6, v6, v7

    shl-int v7, v5, v4

    and-int/2addr v6, v7

    ushr-int/2addr v6, v4

    int-to-byte v6, v6

    aput-byte v6, v2, v3

    .line 437
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 442
    .end local v4    # "m":I
    :cond_1
    return-object v2
.end method

.method public toFlexiBigInt()Ljava/math/BigInteger;
    .locals 3

    .line 453
    iget v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->len:I

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->isZero()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 457
    :cond_0
    new-instance v0, Ljava/math/BigInteger;

    const/4 v1, 0x1

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->toByteArray()[B

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/math/BigInteger;-><init>(I[B)V

    return-object v0

    .line 455
    :cond_1
    :goto_0
    new-instance v0, Ljava/math/BigInteger;

    const/4 v1, 0x0

    new-array v2, v1, [B

    invoke-direct {v0, v1, v2}, Ljava/math/BigInteger;-><init>(I[B)V

    return-object v0
.end method

.method public toIntegerArray()[I
    .locals 4

    .line 361
    iget v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->blocks:I

    new-array v0, v0, [I

    .line 362
    .local v0, "result":[I
    iget-object v1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->value:[I

    const/4 v2, 0x0

    iget v3, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->blocks:I

    invoke-static {v1, v2, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 363
    return-object v0
.end method

.method public toString(I)Ljava/lang/String;
    .locals 12
    .param p1, "radix"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "radix"
        }
    .end annotation

    .line 375
    const/16 v0, 0x10

    new-array v1, v0, [C

    fill-array-data v1, :array_0

    .line 377
    .local v1, "HEX_CHARS":[C
    new-array v2, v0, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "0000"

    aput-object v4, v2, v3

    const-string v3, "0001"

    const/4 v4, 0x1

    aput-object v3, v2, v4

    const/4 v3, 0x2

    const-string v5, "0010"

    aput-object v5, v2, v3

    const/4 v3, 0x3

    const-string v5, "0011"

    aput-object v5, v2, v3

    const-string v3, "0100"

    const/4 v5, 0x4

    aput-object v3, v2, v5

    const/4 v3, 0x5

    const-string v6, "0101"

    aput-object v6, v2, v3

    const/4 v3, 0x6

    const-string v6, "0110"

    aput-object v6, v2, v3

    const/4 v3, 0x7

    const-string v6, "0111"

    aput-object v6, v2, v3

    const-string v3, "1000"

    const/16 v6, 0x8

    aput-object v3, v2, v6

    const/16 v3, 0x9

    const-string v7, "1001"

    aput-object v7, v2, v3

    const/16 v3, 0xa

    const-string v7, "1010"

    aput-object v7, v2, v3

    const/16 v3, 0xb

    const-string v7, "1011"

    aput-object v7, v2, v3

    const-string v3, "1100"

    const/16 v7, 0xc

    aput-object v3, v2, v7

    const/16 v3, 0xd

    const-string v8, "1101"

    aput-object v8, v2, v3

    const/16 v3, 0xe

    const-string v8, "1110"

    aput-object v8, v2, v3

    const-string v3, "1111"

    const/16 v8, 0xf

    aput-object v3, v2, v8

    .line 382
    .local v2, "BIN_CHARS":[Ljava/lang/String;
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3}, Ljava/lang/String;-><init>()V

    .line 383
    .local v3, "res":Ljava/lang/String;
    const-string v9, " "

    if-ne p1, v0, :cond_0

    .line 385
    iget v10, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->blocks:I

    sub-int/2addr v10, v4

    .local v10, "i":I
    :goto_0
    if-ltz v10, :cond_1

    .line 387
    iget-object v4, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->value:[I

    aget v4, v4, v10

    ushr-int/lit8 v4, v4, 0x1c

    and-int/2addr v4, v8

    aget-char v4, v1, v4

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 388
    iget-object v4, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->value:[I

    aget v4, v4, v10

    ushr-int/lit8 v4, v4, 0x18

    and-int/2addr v4, v8

    aget-char v4, v1, v4

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 389
    iget-object v4, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->value:[I

    aget v4, v4, v10

    ushr-int/lit8 v4, v4, 0x14

    and-int/2addr v4, v8

    aget-char v4, v1, v4

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 390
    iget-object v4, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->value:[I

    aget v4, v4, v10

    ushr-int/2addr v4, v0

    and-int/2addr v4, v8

    aget-char v4, v1, v4

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 391
    iget-object v4, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->value:[I

    aget v4, v4, v10

    ushr-int/2addr v4, v7

    and-int/2addr v4, v8

    aget-char v4, v1, v4

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 392
    iget-object v4, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->value:[I

    aget v4, v4, v10

    ushr-int/2addr v4, v6

    and-int/2addr v4, v8

    aget-char v4, v1, v4

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 393
    iget-object v4, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->value:[I

    aget v4, v4, v10

    ushr-int/2addr v4, v5

    and-int/2addr v4, v8

    aget-char v4, v1, v4

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 394
    iget-object v4, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->value:[I

    aget v4, v4, v10

    and-int/2addr v4, v8

    aget-char v4, v1, v4

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 395
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 385
    add-int/lit8 v10, v10, -0x1

    goto/16 :goto_0

    .line 400
    .end local v10    # "i":I
    :cond_0
    iget v10, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->blocks:I

    sub-int/2addr v10, v4

    .restart local v10    # "i":I
    :goto_1
    if-ltz v10, :cond_1

    .line 402
    iget-object v4, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->value:[I

    aget v4, v4, v10

    ushr-int/lit8 v4, v4, 0x1c

    and-int/2addr v4, v8

    aget-object v4, v2, v4

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 403
    iget-object v4, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->value:[I

    aget v4, v4, v10

    ushr-int/lit8 v4, v4, 0x18

    and-int/2addr v4, v8

    aget-object v4, v2, v4

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 404
    iget-object v4, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->value:[I

    aget v4, v4, v10

    ushr-int/lit8 v4, v4, 0x14

    and-int/2addr v4, v8

    aget-object v4, v2, v4

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 405
    iget-object v4, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->value:[I

    aget v4, v4, v10

    ushr-int/2addr v4, v0

    and-int/2addr v4, v8

    aget-object v4, v2, v4

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 406
    iget-object v4, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->value:[I

    aget v4, v4, v10

    ushr-int/2addr v4, v7

    and-int/2addr v4, v8

    aget-object v4, v2, v4

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 407
    iget-object v4, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->value:[I

    aget v4, v4, v10

    ushr-int/2addr v4, v6

    and-int/2addr v4, v8

    aget-object v4, v2, v4

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 408
    iget-object v4, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->value:[I

    aget v4, v4, v10

    ushr-int/2addr v4, v5

    and-int/2addr v4, v8

    aget-object v4, v2, v4

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 409
    iget-object v4, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->value:[I

    aget v4, v4, v10

    and-int/2addr v4, v8

    aget-object v4, v2, v4

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 410
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 400
    add-int/lit8 v10, v10, -0x1

    goto/16 :goto_1

    .line 413
    :cond_1
    return-object v3

    nop

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
    .end array-data
.end method

.method public vectorMult(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;)Z
    .locals 5
    .param p1, "b"    # Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "b"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .line 1643
    const/4 v0, 0x0

    .line 1644
    .local v0, "result":Z
    iget v1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->len:I

    iget v2, p1, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->len:I

    if-ne v1, v2, :cond_1

    .line 1648
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v2, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->blocks:I

    if-ge v1, v2, :cond_0

    .line 1650
    iget-object v2, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->value:[I

    aget v2, v2, v1

    iget-object v3, p1, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->value:[I

    aget v3, v3, v1

    and-int/2addr v2, v3

    .line 1651
    .local v2, "h":I
    sget-object v3, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->parity:[Z

    and-int/lit16 v4, v2, 0xff

    aget-boolean v3, v3, v4

    xor-int/2addr v0, v3

    .line 1652
    sget-object v3, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->parity:[Z

    ushr-int/lit8 v4, v2, 0x8

    and-int/lit16 v4, v4, 0xff

    aget-boolean v3, v3, v4

    xor-int/2addr v0, v3

    .line 1653
    sget-object v3, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->parity:[Z

    ushr-int/lit8 v4, v2, 0x10

    and-int/lit16 v4, v4, 0xff

    aget-boolean v3, v3, v4

    xor-int/2addr v0, v3

    .line 1654
    sget-object v3, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->parity:[Z

    ushr-int/lit8 v4, v2, 0x18

    and-int/lit16 v4, v4, 0xff

    aget-boolean v3, v3, v4

    xor-int/2addr v0, v3

    .line 1648
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1656
    .end local v2    # "h":I
    :cond_0
    return v0

    .line 1646
    .end local v1    # "i":I
    :cond_1
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1}, Ljava/lang/RuntimeException;-><init>()V

    throw v1
.end method

.method public xor(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;)Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;
    .locals 6
    .param p1, "b"    # Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "b"
        }
    .end annotation

    .line 1670
    iget v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->blocks:I

    iget v1, p1, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->blocks:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 1671
    .local v0, "k":I
    iget v1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->len:I

    iget v2, p1, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->len:I

    if-lt v1, v2, :cond_0

    .line 1673
    new-instance v1, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;

    invoke-direct {v1, p0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;-><init>(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;)V

    .line 1674
    .local v1, "result":Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 1676
    iget-object v3, v1, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->value:[I

    aget v4, v3, v2

    iget-object v5, p1, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->value:[I

    aget v5, v5, v2

    xor-int/2addr v4, v5

    aput v4, v3, v2

    .line 1674
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1681
    .end local v1    # "result":Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;
    .end local v2    # "i":I
    :cond_0
    new-instance v1, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;

    invoke-direct {v1, p1}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;-><init>(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;)V

    .line 1682
    .restart local v1    # "result":Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_1
    if-ge v2, v0, :cond_1

    .line 1684
    iget-object v3, v1, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->value:[I

    aget v4, v3, v2

    iget-object v5, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->value:[I

    aget v5, v5, v2

    xor-int/2addr v4, v5

    aput v4, v3, v2

    .line 1682
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1689
    :cond_1
    invoke-direct {v1}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->zeroUnusedBits()V

    .line 1690
    return-object v1
.end method

.method public xorBit(I)V
    .locals 5
    .param p1, "i"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "i"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .line 1790
    if-ltz p1, :cond_0

    iget v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->len:I

    add-int/lit8 v0, v0, -0x1

    if-gt p1, v0, :cond_0

    .line 1794
    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->value:[I

    ushr-int/lit8 v1, p1, 0x5

    aget v2, v0, v1

    sget-object v3, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->bitMask:[I

    and-int/lit8 v4, p1, 0x1f

    aget v3, v3, v4

    xor-int/2addr v2, v3

    aput v2, v0, v1

    .line 1795
    return-void

    .line 1792
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public xorThisBy(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;)V
    .locals 4
    .param p1, "b"    # Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "b"
        }
    .end annotation

    .line 1703
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->blocks:I

    iget v2, p1, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->blocks:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 1705
    iget-object v1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->value:[I

    aget v2, v1, v0

    iget-object v3, p1, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->value:[I

    aget v3, v3, v0

    xor-int/2addr v2, v3

    aput v2, v1, v0

    .line 1703
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1709
    :cond_0
    invoke-direct {p0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->zeroUnusedBits()V

    .line 1710
    return-void
.end method
