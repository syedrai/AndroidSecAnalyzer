.class Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;
.super Ljava/lang/Object;
.source "Poly.java"


# instance fields
.field private coeffs:[I

.field private final dilithiumN:I

.field private final engine:Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;

.field private final polyUniformNBlocks:I

.field private final symmetric:Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Symmetric;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;)V
    .locals 2
    .param p1, "engine"    # Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "engine"
        }
    .end annotation

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const/16 v0, 0x100

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->dilithiumN:I

    .line 18
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->dilithiumN:I

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->coeffs:[I

    .line 19
    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->engine:Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;

    .line 20
    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->GetSymmetric()Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Symmetric;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->symmetric:Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Symmetric;

    .line 21
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->symmetric:Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Symmetric;

    iget v0, v0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Symmetric;->stream128BlockBytes:I

    add-int/lit16 v0, v0, 0x300

    add-int/lit8 v0, v0, -0x1

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->symmetric:Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Symmetric;

    iget v1, v1, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Symmetric;->stream128BlockBytes:I

    div-int/2addr v0, v1

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->polyUniformNBlocks:I

    .line 22
    return-void
.end method

.method private static rejectEta(Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;II[BII)I
    .locals 7
    .param p0, "outputPoly"    # Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;
    .param p1, "coeffOff"    # I
    .param p2, "len"    # I
    .param p3, "buf"    # [B
    .param p4, "buflen"    # I
    .param p5, "eta"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "outputPoly",
            "coeffOff",
            "len",
            "buf",
            "buflen",
            "eta"
        }
    .end annotation

    .line 135
    const/4 v0, 0x0

    move v1, v0

    .line 137
    .local v0, "ctr":I
    .local v1, "pos":I
    :goto_0
    if-ge v0, p2, :cond_5

    if-ge v1, p4, :cond_5

    .line 139
    aget-byte v2, p3, v1

    and-int/lit16 v2, v2, 0xff

    const/16 v3, 0xf

    and-int/2addr v2, v3

    .line 140
    .local v2, "t0":I
    add-int/lit8 v4, v1, 0x1

    .end local v1    # "pos":I
    .local v4, "pos":I
    aget-byte v1, p3, v1

    and-int/lit16 v1, v1, 0xff

    const/4 v5, 0x4

    shr-int/2addr v1, v5

    .line 141
    .local v1, "t1":I
    const/4 v6, 0x2

    if-ne p5, v6, :cond_2

    .line 143
    if-ge v2, v3, :cond_0

    .line 145
    mul-int/lit16 v5, v2, 0xcd

    shr-int/lit8 v5, v5, 0xa

    mul-int/lit8 v5, v5, 0x5

    sub-int/2addr v2, v5

    .line 146
    add-int v5, p1, v0

    rsub-int/lit8 v6, v2, 0x2

    invoke-virtual {p0, v5, v6}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->setCoeffIndex(II)V

    .line 147
    add-int/lit8 v0, v0, 0x1

    .line 149
    :cond_0
    if-ge v1, v3, :cond_1

    if-ge v0, p2, :cond_1

    .line 151
    mul-int/lit16 v3, v1, 0xcd

    shr-int/lit8 v3, v3, 0xa

    mul-int/lit8 v3, v3, 0x5

    sub-int/2addr v1, v3

    .line 152
    add-int v3, p1, v0

    rsub-int/lit8 v5, v1, 0x2

    invoke-virtual {p0, v3, v5}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->setCoeffIndex(II)V

    .line 153
    add-int/lit8 v0, v0, 0x1

    move v1, v4

    goto :goto_0

    .line 137
    .end local v1    # "t1":I
    .end local v2    # "t0":I
    :cond_1
    move v1, v4

    goto :goto_0

    .line 156
    .restart local v1    # "t1":I
    .restart local v2    # "t0":I
    :cond_2
    if-ne p5, v5, :cond_4

    .line 158
    const/16 v3, 0x9

    if-ge v2, v3, :cond_3

    .line 160
    add-int v5, p1, v0

    rsub-int/lit8 v6, v2, 0x4

    invoke-virtual {p0, v5, v6}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->setCoeffIndex(II)V

    .line 161
    add-int/lit8 v0, v0, 0x1

    .line 163
    :cond_3
    if-ge v1, v3, :cond_1

    if-ge v0, p2, :cond_1

    .line 165
    add-int v3, p1, v0

    rsub-int/lit8 v5, v1, 0x4

    invoke-virtual {p0, v3, v5}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->setCoeffIndex(II)V

    .line 166
    add-int/lit8 v0, v0, 0x1

    move v1, v4

    goto :goto_0

    .line 156
    :cond_4
    move v1, v4

    goto :goto_0

    .line 171
    .end local v2    # "t0":I
    .end local v4    # "pos":I
    .local v1, "pos":I
    :cond_5
    return v0
.end method

.method private static rejectUniform(Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;II[BI)I
    .locals 4
    .param p0, "outputPoly"    # Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;
    .param p1, "coeffOff"    # I
    .param p2, "len"    # I
    .param p3, "inpBuf"    # [B
    .param p4, "buflen"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "outputPoly",
            "coeffOff",
            "len",
            "inpBuf",
            "buflen"
        }
    .end annotation

    .line 77
    const/4 v0, 0x0

    move v1, v0

    .line 78
    .local v0, "ctr":I
    .local v1, "pos":I
    :goto_0
    if-ge v0, p2, :cond_1

    add-int/lit8 v2, v1, 0x3

    if-gt v2, p4, :cond_1

    .line 80
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "pos":I
    .local v2, "pos":I
    aget-byte v1, p3, v1

    and-int/lit16 v1, v1, 0xff

    .line 81
    .local v1, "t":I
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "pos":I
    .local v3, "pos":I
    aget-byte v2, p3, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    .line 82
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "pos":I
    .restart local v2    # "pos":I
    aget-byte v3, p3, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v1, v3

    .line 83
    const v3, 0x7fffff

    and-int/2addr v1, v3

    .line 85
    const v3, 0x7fe001

    if-ge v1, v3, :cond_0

    .line 87
    add-int v3, p1, v0

    invoke-virtual {p0, v3, v1}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->setCoeffIndex(II)V

    .line 88
    add-int/lit8 v0, v0, 0x1

    move v1, v2

    goto :goto_0

    .line 85
    :cond_0
    move v1, v2

    goto :goto_0

    .line 92
    .end local v2    # "pos":I
    .local v1, "pos":I
    :cond_1
    return v0
.end method

.method private unpackZ([B)V
    .locals 5
    .param p1, "a"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "a"
        }
    .end annotation

    .line 476
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->engine:Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->getDilithiumGamma1()I

    move-result v0

    const/high16 v1, 0x20000

    if-ne v0, v1, :cond_0

    .line 478
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->dilithiumN:I

    div-int/lit8 v1, v1, 0x4

    if-ge v0, v1, :cond_1

    .line 480
    mul-int/lit8 v1, v0, 0x4

    add-int/lit8 v1, v1, 0x0

    mul-int/lit8 v2, v0, 0x9

    add-int/lit8 v2, v2, 0x0

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    mul-int/lit8 v3, v0, 0x9

    add-int/lit8 v3, v3, 0x1

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v2, v3

    mul-int/lit8 v3, v0, 0x9

    add-int/lit8 v3, v3, 0x2

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v2, v3

    const v3, 0x3ffff

    and-int/2addr v2, v3

    invoke-virtual {p0, v1, v2}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->setCoeffIndex(II)V

    .line 486
    mul-int/lit8 v1, v0, 0x4

    add-int/lit8 v1, v1, 0x1

    mul-int/lit8 v2, v0, 0x9

    add-int/lit8 v2, v2, 0x2

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    shr-int/lit8 v2, v2, 0x2

    mul-int/lit8 v4, v0, 0x9

    add-int/lit8 v4, v4, 0x3

    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x6

    or-int/2addr v2, v4

    mul-int/lit8 v4, v0, 0x9

    add-int/lit8 v4, v4, 0x4

    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0xe

    or-int/2addr v2, v4

    and-int/2addr v2, v3

    invoke-virtual {p0, v1, v2}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->setCoeffIndex(II)V

    .line 492
    mul-int/lit8 v1, v0, 0x4

    add-int/lit8 v1, v1, 0x2

    mul-int/lit8 v2, v0, 0x9

    add-int/lit8 v2, v2, 0x4

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    shr-int/lit8 v2, v2, 0x4

    mul-int/lit8 v4, v0, 0x9

    add-int/lit8 v4, v4, 0x5

    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x4

    or-int/2addr v2, v4

    mul-int/lit8 v4, v0, 0x9

    add-int/lit8 v4, v4, 0x6

    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0xc

    or-int/2addr v2, v4

    and-int/2addr v2, v3

    invoke-virtual {p0, v1, v2}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->setCoeffIndex(II)V

    .line 498
    mul-int/lit8 v1, v0, 0x4

    add-int/lit8 v1, v1, 0x3

    mul-int/lit8 v2, v0, 0x9

    add-int/lit8 v2, v2, 0x6

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    shr-int/lit8 v2, v2, 0x6

    mul-int/lit8 v4, v0, 0x9

    add-int/lit8 v4, v4, 0x7

    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x2

    or-int/2addr v2, v4

    mul-int/lit8 v4, v0, 0x9

    add-int/lit8 v4, v4, 0x8

    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0xa

    or-int/2addr v2, v4

    and-int/2addr v2, v3

    invoke-virtual {p0, v1, v2}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->setCoeffIndex(II)V

    .line 506
    mul-int/lit8 v1, v0, 0x4

    add-int/lit8 v1, v1, 0x0

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->engine:Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->getDilithiumGamma1()I

    move-result v2

    mul-int/lit8 v3, v0, 0x4

    add-int/lit8 v3, v3, 0x0

    invoke-virtual {p0, v3}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->getCoeffIndex(I)I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0, v1, v2}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->setCoeffIndex(II)V

    .line 507
    mul-int/lit8 v1, v0, 0x4

    add-int/lit8 v1, v1, 0x1

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->engine:Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->getDilithiumGamma1()I

    move-result v2

    mul-int/lit8 v3, v0, 0x4

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {p0, v3}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->getCoeffIndex(I)I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0, v1, v2}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->setCoeffIndex(II)V

    .line 508
    mul-int/lit8 v1, v0, 0x4

    add-int/lit8 v1, v1, 0x2

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->engine:Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->getDilithiumGamma1()I

    move-result v2

    mul-int/lit8 v3, v0, 0x4

    add-int/lit8 v3, v3, 0x2

    invoke-virtual {p0, v3}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->getCoeffIndex(I)I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0, v1, v2}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->setCoeffIndex(II)V

    .line 509
    mul-int/lit8 v1, v0, 0x4

    add-int/lit8 v1, v1, 0x3

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->engine:Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->getDilithiumGamma1()I

    move-result v2

    mul-int/lit8 v3, v0, 0x4

    add-int/lit8 v3, v3, 0x3

    invoke-virtual {p0, v3}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->getCoeffIndex(I)I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0, v1, v2}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->setCoeffIndex(II)V

    .line 478
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 512
    .end local v0    # "i":I
    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->engine:Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->getDilithiumGamma1()I

    move-result v0

    const/high16 v1, 0x80000

    if-ne v0, v1, :cond_2

    .line 514
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_1
    iget v1, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->dilithiumN:I

    div-int/lit8 v1, v1, 0x2

    if-ge v0, v1, :cond_1

    .line 516
    mul-int/lit8 v1, v0, 0x2

    add-int/lit8 v1, v1, 0x0

    mul-int/lit8 v2, v0, 0x5

    add-int/lit8 v2, v2, 0x0

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    mul-int/lit8 v3, v0, 0x5

    add-int/lit8 v3, v3, 0x1

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v2, v3

    mul-int/lit8 v3, v0, 0x5

    add-int/lit8 v3, v3, 0x2

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v2, v3

    const v3, 0xfffff

    and-int/2addr v2, v3

    invoke-virtual {p0, v1, v2}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->setCoeffIndex(II)V

    .line 522
    mul-int/lit8 v1, v0, 0x2

    add-int/lit8 v1, v1, 0x1

    mul-int/lit8 v2, v0, 0x5

    add-int/lit8 v2, v2, 0x2

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    shr-int/lit8 v2, v2, 0x4

    mul-int/lit8 v4, v0, 0x5

    add-int/lit8 v4, v4, 0x3

    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x4

    or-int/2addr v2, v4

    mul-int/lit8 v4, v0, 0x5

    add-int/lit8 v4, v4, 0x4

    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0xc

    or-int/2addr v2, v4

    and-int/2addr v2, v3

    invoke-virtual {p0, v1, v2}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->setCoeffIndex(II)V

    .line 529
    mul-int/lit8 v1, v0, 0x2

    add-int/lit8 v1, v1, 0x0

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->engine:Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->getDilithiumGamma1()I

    move-result v2

    mul-int/lit8 v3, v0, 0x2

    add-int/lit8 v3, v3, 0x0

    invoke-virtual {p0, v3}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->getCoeffIndex(I)I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0, v1, v2}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->setCoeffIndex(II)V

    .line 530
    mul-int/lit8 v1, v0, 0x2

    add-int/lit8 v1, v1, 0x1

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->engine:Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->getDilithiumGamma1()I

    move-result v2

    mul-int/lit8 v3, v0, 0x2

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {p0, v3}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->getCoeffIndex(I)I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0, v1, v2}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->setCoeffIndex(II)V

    .line 514
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    .line 537
    :cond_1
    return-void

    .line 535
    .end local v0    # "i":I
    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Wrong Dilithiumn Gamma1!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public addPoly(Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;)V
    .locals 3
    .param p1, "a"    # Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "a"
        }
    .end annotation

    .line 207
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->dilithiumN:I

    if-ge v0, v1, :cond_0

    .line 209
    invoke-virtual {p0, v0}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->getCoeffIndex(I)I

    move-result v1

    invoke-virtual {p1, v0}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->getCoeffIndex(I)I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p0, v0, v1}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->setCoeffIndex(II)V

    .line 207
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 211
    :cond_0
    return-void
.end method

.method public challenge([B)V
    .locals 17
    .param p1, "seed"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "seed"
        }
    .end annotation

    .line 578
    move-object/from16 v0, p0

    const/4 v1, 0x0

    .line 580
    .local v1, "b":I
    iget-object v2, v0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->symmetric:Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Symmetric;

    iget v2, v2, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Symmetric;->stream256BlockBytes:I

    new-array v2, v2, [B

    .line 582
    .local v2, "buf":[B
    new-instance v3, Lorg/bouncycastle/crypto/digests/SHAKEDigest;

    const/16 v4, 0x100

    invoke-direct {v3, v4}, Lorg/bouncycastle/crypto/digests/SHAKEDigest;-><init>(I)V

    .line 583
    .local v3, "shake256Digest":Lorg/bouncycastle/crypto/digests/SHAKEDigest;
    const/16 v4, 0x20

    const/4 v5, 0x0

    move-object/from16 v6, p1

    invoke-virtual {v3, v6, v5, v4}, Lorg/bouncycastle/crypto/digests/SHAKEDigest;->update([BII)V

    .line 584
    iget-object v4, v0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->symmetric:Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Symmetric;

    iget v4, v4, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Symmetric;->stream256BlockBytes:I

    invoke-virtual {v3, v2, v5, v4}, Lorg/bouncycastle/crypto/digests/SHAKEDigest;->doOutput([BII)I

    .line 586
    const-wide/16 v7, 0x0

    .line 587
    .local v7, "signs":J
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    const/16 v9, 0x8

    if-ge v4, v9, :cond_0

    .line 589
    aget-byte v9, v2, v4

    and-int/lit16 v9, v9, 0xff

    int-to-long v9, v9

    mul-int/lit8 v11, v4, 0x8

    shl-long/2addr v9, v11

    or-long/2addr v7, v9

    .line 587
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 592
    :cond_0
    const/16 v9, 0x8

    .line 594
    .local v9, "pos":I
    const/4 v4, 0x0

    :goto_1
    iget v10, v0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->dilithiumN:I

    if-ge v4, v10, :cond_1

    .line 596
    invoke-virtual {v0, v4, v5}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->setCoeffIndex(II)V

    .line 594
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 598
    :cond_1
    iget v10, v0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->dilithiumN:I

    iget-object v11, v0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->engine:Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;

    invoke-virtual {v11}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->getDilithiumTau()I

    move-result v11

    sub-int/2addr v10, v11

    .end local v4    # "i":I
    .local v10, "i":I
    :goto_2
    iget v4, v0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->dilithiumN:I

    if-ge v10, v4, :cond_4

    .line 602
    :goto_3
    iget-object v4, v0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->symmetric:Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Symmetric;

    iget v4, v4, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Symmetric;->stream256BlockBytes:I

    if-lt v9, v4, :cond_2

    .line 604
    iget-object v4, v0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->symmetric:Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Symmetric;

    iget v4, v4, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Symmetric;->stream256BlockBytes:I

    invoke-virtual {v3, v2, v5, v4}, Lorg/bouncycastle/crypto/digests/SHAKEDigest;->doOutput([BII)I

    .line 605
    const/4 v9, 0x0

    .line 607
    :cond_2
    add-int/lit8 v4, v9, 0x1

    .end local v9    # "pos":I
    .local v4, "pos":I
    aget-byte v9, v2, v9

    and-int/lit16 v1, v9, 0xff

    .line 609
    if-gt v1, v10, :cond_3

    .line 611
    invoke-virtual {v0, v1}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->getCoeffIndex(I)I

    move-result v9

    invoke-virtual {v0, v10, v9}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->setCoeffIndex(II)V

    .line 612
    const-wide/16 v11, 0x2

    const-wide/16 v13, 0x1

    and-long v15, v7, v13

    mul-long v15, v15, v11

    sub-long/2addr v13, v15

    long-to-int v9, v13

    invoke-virtual {v0, v1, v9}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->setCoeffIndex(II)V

    .line 613
    const/4 v9, 0x1

    shr-long/2addr v7, v9

    .line 598
    add-int/lit8 v10, v10, 0x1

    move v9, v4

    goto :goto_2

    .line 609
    :cond_3
    move v9, v4

    goto :goto_3

    .line 615
    .end local v4    # "pos":I
    .restart local v9    # "pos":I
    :cond_4
    return-void
.end method

.method public checkNorm(I)Z
    .locals 5
    .param p1, "B"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "B"
        }
    .end annotation

    .line 621
    const v0, 0xffc00

    const/4 v1, 0x1

    if-le p1, v0, :cond_0

    .line 623
    return v1

    .line 626
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v2, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->dilithiumN:I

    if-ge v0, v2, :cond_2

    .line 628
    invoke-virtual {p0, v0}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->getCoeffIndex(I)I

    move-result v2

    shr-int/lit8 v2, v2, 0x1f

    .line 629
    .local v2, "t":I
    invoke-virtual {p0, v0}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->getCoeffIndex(I)I

    move-result v3

    invoke-virtual {p0, v0}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->getCoeffIndex(I)I

    move-result v4

    mul-int/lit8 v4, v4, 0x2

    and-int/2addr v4, v2

    sub-int/2addr v3, v4

    .line 631
    .end local v2    # "t":I
    .local v3, "t":I
    if-lt v3, p1, :cond_1

    .line 633
    return v1

    .line 626
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 636
    .end local v3    # "t":I
    :cond_2
    const/4 v1, 0x0

    return v1
.end method

.method public conditionalAddQ()V
    .locals 2

    .line 229
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->dilithiumN:I

    if-ge v0, v1, :cond_0

    .line 231
    invoke-virtual {p0, v0}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->getCoeffIndex(I)I

    move-result v1

    invoke-static {v1}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Reduce;->conditionalAddQ(I)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->setCoeffIndex(II)V

    .line 229
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 233
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public decompose(Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;)V
    .locals 3
    .param p1, "a"    # Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "a"
        }
    .end annotation

    .line 542
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->dilithiumN:I

    if-ge v0, v1, :cond_0

    .line 544
    invoke-virtual {p0, v0}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->getCoeffIndex(I)I

    move-result v1

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->engine:Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->getDilithiumGamma2()I

    move-result v2

    invoke-static {v1, v2}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Rounding;->decompose(II)[I

    move-result-object v1

    .line 545
    .local v1, "decomp":[I
    const/4 v2, 0x1

    aget v2, v1, v2

    invoke-virtual {p0, v0, v2}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->setCoeffIndex(II)V

    .line 546
    const/4 v2, 0x0

    aget v2, v1, v2

    invoke-virtual {p1, v0, v2}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->setCoeffIndex(II)V

    .line 542
    .end local v1    # "decomp":[I
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 548
    :cond_0
    return-void
.end method

.method public getCoeffIndex(I)I
    .locals 1
    .param p1, "i"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "i"
        }
    .end annotation

    .line 26
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->coeffs:[I

    aget v0, v0, p1

    return v0
.end method

.method public getCoeffs()[I
    .locals 1

    .line 31
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->coeffs:[I

    return-object v0
.end method

.method public invNttToMont()V
    .locals 1

    .line 224
    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->getCoeffs()[I

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Ntt;->invNttToMont([I)[I

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->setCoeffs([I)V

    .line 225
    return-void
.end method

.method public pointwiseAccountMontgomery(Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecL;Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecL;)V
    .locals 4
    .param p1, "u"    # Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecL;
    .param p2, "v"    # Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecL;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "u",
            "v"
        }
    .end annotation

    .line 191
    new-instance v0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->engine:Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;

    invoke-direct {v0, v1}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;-><init>(Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;)V

    .line 193
    .local v0, "t":Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecL;->getVectorIndex(I)Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;

    move-result-object v2

    invoke-virtual {p2, v1}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecL;->getVectorIndex(I)Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;

    move-result-object v1

    invoke-virtual {p0, v2, v1}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->pointwiseMontgomery(Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;)V

    .line 195
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->engine:Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->getDilithiumL()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 197
    invoke-virtual {p1, v1}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecL;->getVectorIndex(I)Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;

    move-result-object v2

    invoke-virtual {p2, v1}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecL;->getVectorIndex(I)Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->pointwiseMontgomery(Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;)V

    .line 198
    invoke-virtual {p0, v0}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->addPoly(Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;)V

    .line 195
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 202
    :cond_0
    return-void
.end method

.method public pointwiseMontgomery(Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;)V
    .locals 5
    .param p1, "v"    # Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;
    .param p2, "w"    # Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "v",
            "w"
        }
    .end annotation

    .line 182
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->dilithiumN:I

    if-ge v0, v1, :cond_0

    .line 184
    invoke-virtual {p1, v0}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->getCoeffIndex(I)I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {p2, v0}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->getCoeffIndex(I)I

    move-result v3

    int-to-long v3, v3

    mul-long v1, v1, v3

    invoke-static {v1, v2}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Reduce;->montgomeryReduce(J)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->setCoeffIndex(II)V

    .line 182
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 186
    :cond_0
    return-void
.end method

.method public polyEtaPack([BI)[B
    .locals 14
    .param p1, "out"    # [B
    .param p2, "outOff"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "out",
            "outOff"
        }
    .end annotation

    .line 276
    const/16 v0, 0x8

    new-array v1, v0, [B

    .line 278
    .local v1, "t":[B
    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->engine:Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->getDilithiumEta()I

    move-result v2

    const/4 v3, 0x4

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x2

    if-ne v2, v6, :cond_0

    .line 280
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget v7, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->dilithiumN:I

    div-int/2addr v7, v0

    if-ge v2, v7, :cond_1

    .line 282
    iget-object v7, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->engine:Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;

    invoke-virtual {v7}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->getDilithiumEta()I

    move-result v7

    mul-int/lit8 v8, v2, 0x8

    add-int/2addr v8, v4

    invoke-virtual {p0, v8}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->getCoeffIndex(I)I

    move-result v8

    sub-int/2addr v7, v8

    int-to-byte v7, v7

    aput-byte v7, v1, v4

    .line 283
    iget-object v7, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->engine:Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;

    invoke-virtual {v7}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->getDilithiumEta()I

    move-result v7

    mul-int/lit8 v8, v2, 0x8

    add-int/2addr v8, v5

    invoke-virtual {p0, v8}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->getCoeffIndex(I)I

    move-result v8

    sub-int/2addr v7, v8

    int-to-byte v7, v7

    aput-byte v7, v1, v5

    .line 284
    iget-object v7, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->engine:Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;

    invoke-virtual {v7}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->getDilithiumEta()I

    move-result v7

    mul-int/lit8 v8, v2, 0x8

    add-int/2addr v8, v6

    invoke-virtual {p0, v8}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->getCoeffIndex(I)I

    move-result v8

    sub-int/2addr v7, v8

    int-to-byte v7, v7

    aput-byte v7, v1, v6

    .line 285
    iget-object v7, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->engine:Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;

    invoke-virtual {v7}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->getDilithiumEta()I

    move-result v7

    mul-int/lit8 v8, v2, 0x8

    const/4 v9, 0x3

    add-int/2addr v8, v9

    invoke-virtual {p0, v8}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->getCoeffIndex(I)I

    move-result v8

    sub-int/2addr v7, v8

    int-to-byte v7, v7

    aput-byte v7, v1, v9

    .line 286
    iget-object v7, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->engine:Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;

    invoke-virtual {v7}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->getDilithiumEta()I

    move-result v7

    mul-int/lit8 v8, v2, 0x8

    add-int/2addr v8, v3

    invoke-virtual {p0, v8}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->getCoeffIndex(I)I

    move-result v8

    sub-int/2addr v7, v8

    int-to-byte v7, v7

    aput-byte v7, v1, v3

    .line 287
    iget-object v7, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->engine:Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;

    invoke-virtual {v7}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->getDilithiumEta()I

    move-result v7

    mul-int/lit8 v8, v2, 0x8

    const/4 v10, 0x5

    add-int/2addr v8, v10

    invoke-virtual {p0, v8}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->getCoeffIndex(I)I

    move-result v8

    sub-int/2addr v7, v8

    int-to-byte v7, v7

    aput-byte v7, v1, v10

    .line 288
    iget-object v7, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->engine:Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;

    invoke-virtual {v7}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->getDilithiumEta()I

    move-result v7

    mul-int/lit8 v8, v2, 0x8

    const/4 v11, 0x6

    add-int/2addr v8, v11

    invoke-virtual {p0, v8}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->getCoeffIndex(I)I

    move-result v8

    sub-int/2addr v7, v8

    int-to-byte v7, v7

    aput-byte v7, v1, v11

    .line 289
    iget-object v7, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->engine:Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;

    invoke-virtual {v7}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->getDilithiumEta()I

    move-result v7

    mul-int/lit8 v8, v2, 0x8

    const/4 v12, 0x7

    add-int/2addr v8, v12

    invoke-virtual {p0, v8}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->getCoeffIndex(I)I

    move-result v8

    sub-int/2addr v7, v8

    int-to-byte v7, v7

    aput-byte v7, v1, v12

    .line 291
    mul-int/lit8 v7, v2, 0x3

    add-int v7, p2, v7

    add-int/2addr v7, v4

    aget-byte v8, v1, v4

    shr-int/2addr v8, v4

    aget-byte v13, v1, v5

    shl-int/2addr v13, v9

    or-int/2addr v8, v13

    aget-byte v13, v1, v6

    shl-int/2addr v13, v11

    or-int/2addr v8, v13

    int-to-byte v8, v8

    aput-byte v8, p1, v7

    .line 292
    mul-int/lit8 v7, v2, 0x3

    add-int v7, p2, v7

    add-int/2addr v7, v5

    aget-byte v8, v1, v6

    shr-int/2addr v8, v6

    aget-byte v9, v1, v9

    shl-int/2addr v9, v5

    or-int/2addr v8, v9

    aget-byte v9, v1, v3

    shl-int/2addr v9, v3

    or-int/2addr v8, v9

    aget-byte v9, v1, v10

    shl-int/2addr v9, v12

    or-int/2addr v8, v9

    int-to-byte v8, v8

    aput-byte v8, p1, v7

    .line 293
    mul-int/lit8 v7, v2, 0x3

    add-int v7, p2, v7

    add-int/2addr v7, v6

    aget-byte v8, v1, v10

    shr-int/2addr v8, v5

    aget-byte v9, v1, v11

    shl-int/2addr v9, v6

    or-int/2addr v8, v9

    aget-byte v9, v1, v12

    shl-int/2addr v9, v10

    or-int/2addr v8, v9

    int-to-byte v8, v8

    aput-byte v8, p1, v7

    .line 280
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 296
    .end local v2    # "i":I
    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->engine:Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->getDilithiumEta()I

    move-result v0

    if-ne v0, v3, :cond_2

    .line 298
    const/4 v0, 0x0

    move v2, v0

    .restart local v2    # "i":I
    :goto_1
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->dilithiumN:I

    div-int/2addr v0, v6

    if-ge v2, v0, :cond_1

    .line 300
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->engine:Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->getDilithiumEta()I

    move-result v0

    mul-int/lit8 v7, v2, 0x2

    add-int/2addr v7, v4

    invoke-virtual {p0, v7}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->getCoeffIndex(I)I

    move-result v7

    sub-int/2addr v0, v7

    int-to-byte v0, v0

    aput-byte v0, v1, v4

    .line 301
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->engine:Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->getDilithiumEta()I

    move-result v0

    mul-int/lit8 v7, v2, 0x2

    add-int/2addr v7, v5

    invoke-virtual {p0, v7}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->getCoeffIndex(I)I

    move-result v7

    sub-int/2addr v0, v7

    int-to-byte v0, v0

    aput-byte v0, v1, v5

    .line 302
    add-int v0, p2, v2

    aget-byte v7, v1, v4

    aget-byte v8, v1, v5

    shl-int/2addr v8, v3

    or-int/2addr v7, v8

    int-to-byte v7, v7

    aput-byte v7, p1, v0

    .line 298
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 309
    :cond_1
    return-object p1

    .line 307
    .end local v2    # "i":I
    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "Eta needs to be 2 or 4!"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public polyEtaUnpack([BI)V
    .locals 8
    .param p1, "a"    # [B
    .param p2, "aOff"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "aOff"
        }
    .end annotation

    .line 314
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->engine:Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->getDilithiumEta()I

    move-result v0

    .line 316
    .local v0, "eta":I
    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->engine:Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->getDilithiumEta()I

    move-result v1

    const/4 v2, 0x4

    const/4 v3, 0x2

    if-ne v1, v3, :cond_0

    .line 318
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v4, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->dilithiumN:I

    div-int/lit8 v4, v4, 0x8

    if-ge v1, v4, :cond_1

    .line 320
    mul-int/lit8 v4, v1, 0x3

    add-int/2addr v4, p2

    .line 321
    .local v4, "base":I
    mul-int/lit8 v5, v1, 0x8

    add-int/lit8 v5, v5, 0x0

    add-int/lit8 v6, v4, 0x0

    aget-byte v6, p1, v6

    and-int/lit16 v6, v6, 0xff

    shr-int/lit8 v6, v6, 0x0

    and-int/lit8 v6, v6, 0x7

    invoke-virtual {p0, v5, v6}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->setCoeffIndex(II)V

    .line 322
    mul-int/lit8 v5, v1, 0x8

    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v6, v4, 0x0

    aget-byte v6, p1, v6

    and-int/lit16 v6, v6, 0xff

    shr-int/lit8 v6, v6, 0x3

    and-int/lit8 v6, v6, 0x7

    invoke-virtual {p0, v5, v6}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->setCoeffIndex(II)V

    .line 323
    mul-int/lit8 v5, v1, 0x8

    add-int/2addr v5, v3

    add-int/lit8 v6, v4, 0x0

    aget-byte v6, p1, v6

    and-int/lit16 v6, v6, 0xff

    shr-int/lit8 v6, v6, 0x6

    add-int/lit8 v7, v4, 0x1

    aget-byte v7, p1, v7

    and-int/lit16 v7, v7, 0xff

    shl-int/2addr v7, v3

    and-int/lit8 v7, v7, 0x7

    or-int/2addr v6, v7

    invoke-virtual {p0, v5, v6}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->setCoeffIndex(II)V

    .line 324
    mul-int/lit8 v5, v1, 0x8

    add-int/lit8 v5, v5, 0x3

    add-int/lit8 v6, v4, 0x1

    aget-byte v6, p1, v6

    and-int/lit16 v6, v6, 0xff

    shr-int/lit8 v6, v6, 0x1

    and-int/lit8 v6, v6, 0x7

    invoke-virtual {p0, v5, v6}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->setCoeffIndex(II)V

    .line 325
    mul-int/lit8 v5, v1, 0x8

    add-int/2addr v5, v2

    add-int/lit8 v6, v4, 0x1

    aget-byte v6, p1, v6

    and-int/lit16 v6, v6, 0xff

    shr-int/2addr v6, v2

    and-int/lit8 v6, v6, 0x7

    invoke-virtual {p0, v5, v6}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->setCoeffIndex(II)V

    .line 326
    mul-int/lit8 v5, v1, 0x8

    add-int/lit8 v5, v5, 0x5

    add-int/lit8 v6, v4, 0x1

    aget-byte v6, p1, v6

    and-int/lit16 v6, v6, 0xff

    shr-int/lit8 v6, v6, 0x7

    add-int/lit8 v7, v4, 0x2

    aget-byte v7, p1, v7

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x1

    and-int/lit8 v7, v7, 0x7

    or-int/2addr v6, v7

    invoke-virtual {p0, v5, v6}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->setCoeffIndex(II)V

    .line 327
    mul-int/lit8 v5, v1, 0x8

    add-int/lit8 v5, v5, 0x6

    add-int/lit8 v6, v4, 0x2

    aget-byte v6, p1, v6

    and-int/lit16 v6, v6, 0xff

    shr-int/2addr v6, v3

    and-int/lit8 v6, v6, 0x7

    invoke-virtual {p0, v5, v6}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->setCoeffIndex(II)V

    .line 328
    mul-int/lit8 v5, v1, 0x8

    add-int/lit8 v5, v5, 0x7

    add-int/lit8 v6, v4, 0x2

    aget-byte v6, p1, v6

    and-int/lit16 v6, v6, 0xff

    shr-int/lit8 v6, v6, 0x5

    and-int/lit8 v6, v6, 0x7

    invoke-virtual {p0, v5, v6}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->setCoeffIndex(II)V

    .line 330
    mul-int/lit8 v5, v1, 0x8

    add-int/lit8 v5, v5, 0x0

    mul-int/lit8 v6, v1, 0x8

    add-int/lit8 v6, v6, 0x0

    invoke-virtual {p0, v6}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->getCoeffIndex(I)I

    move-result v6

    sub-int v6, v0, v6

    invoke-virtual {p0, v5, v6}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->setCoeffIndex(II)V

    .line 331
    mul-int/lit8 v5, v1, 0x8

    add-int/lit8 v5, v5, 0x1

    mul-int/lit8 v6, v1, 0x8

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {p0, v6}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->getCoeffIndex(I)I

    move-result v6

    sub-int v6, v0, v6

    invoke-virtual {p0, v5, v6}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->setCoeffIndex(II)V

    .line 332
    mul-int/lit8 v5, v1, 0x8

    add-int/2addr v5, v3

    mul-int/lit8 v6, v1, 0x8

    add-int/2addr v6, v3

    invoke-virtual {p0, v6}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->getCoeffIndex(I)I

    move-result v6

    sub-int v6, v0, v6

    invoke-virtual {p0, v5, v6}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->setCoeffIndex(II)V

    .line 333
    mul-int/lit8 v5, v1, 0x8

    add-int/lit8 v5, v5, 0x3

    mul-int/lit8 v6, v1, 0x8

    add-int/lit8 v6, v6, 0x3

    invoke-virtual {p0, v6}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->getCoeffIndex(I)I

    move-result v6

    sub-int v6, v0, v6

    invoke-virtual {p0, v5, v6}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->setCoeffIndex(II)V

    .line 334
    mul-int/lit8 v5, v1, 0x8

    add-int/2addr v5, v2

    mul-int/lit8 v6, v1, 0x8

    add-int/2addr v6, v2

    invoke-virtual {p0, v6}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->getCoeffIndex(I)I

    move-result v6

    sub-int v6, v0, v6

    invoke-virtual {p0, v5, v6}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->setCoeffIndex(II)V

    .line 335
    mul-int/lit8 v5, v1, 0x8

    add-int/lit8 v5, v5, 0x5

    mul-int/lit8 v6, v1, 0x8

    add-int/lit8 v6, v6, 0x5

    invoke-virtual {p0, v6}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->getCoeffIndex(I)I

    move-result v6

    sub-int v6, v0, v6

    invoke-virtual {p0, v5, v6}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->setCoeffIndex(II)V

    .line 336
    mul-int/lit8 v5, v1, 0x8

    add-int/lit8 v5, v5, 0x6

    mul-int/lit8 v6, v1, 0x8

    add-int/lit8 v6, v6, 0x6

    invoke-virtual {p0, v6}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->getCoeffIndex(I)I

    move-result v6

    sub-int v6, v0, v6

    invoke-virtual {p0, v5, v6}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->setCoeffIndex(II)V

    .line 337
    mul-int/lit8 v5, v1, 0x8

    add-int/lit8 v5, v5, 0x7

    mul-int/lit8 v6, v1, 0x8

    add-int/lit8 v6, v6, 0x7

    invoke-virtual {p0, v6}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->getCoeffIndex(I)I

    move-result v6

    sub-int v6, v0, v6

    invoke-virtual {p0, v5, v6}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->setCoeffIndex(II)V

    .line 318
    .end local v4    # "base":I
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 340
    .end local v1    # "i":I
    :cond_0
    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->engine:Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->getDilithiumEta()I

    move-result v1

    if-ne v1, v2, :cond_1

    .line 342
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    iget v4, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->dilithiumN:I

    div-int/2addr v4, v3

    if-ge v1, v4, :cond_1

    .line 344
    mul-int/lit8 v4, v1, 0x2

    add-int/lit8 v4, v4, 0x0

    add-int v5, p2, v1

    aget-byte v5, p1, v5

    and-int/lit8 v5, v5, 0xf

    invoke-virtual {p0, v4, v5}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->setCoeffIndex(II)V

    .line 345
    mul-int/lit8 v4, v1, 0x2

    add-int/lit8 v4, v4, 0x1

    add-int v5, p2, v1

    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    shr-int/2addr v5, v2

    invoke-virtual {p0, v4, v5}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->setCoeffIndex(II)V

    .line 346
    mul-int/lit8 v4, v1, 0x2

    add-int/lit8 v4, v4, 0x0

    mul-int/lit8 v5, v1, 0x2

    add-int/lit8 v5, v5, 0x0

    invoke-virtual {p0, v5}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->getCoeffIndex(I)I

    move-result v5

    sub-int v5, v0, v5

    invoke-virtual {p0, v4, v5}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->setCoeffIndex(II)V

    .line 347
    mul-int/lit8 v4, v1, 0x2

    add-int/lit8 v4, v4, 0x1

    mul-int/lit8 v5, v1, 0x2

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {p0, v5}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->getCoeffIndex(I)I

    move-result v5

    sub-int v5, v0, v5

    invoke-virtual {p0, v4, v5}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->setCoeffIndex(II)V

    .line 342
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 350
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method public polyMakeHint(Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;)I
    .locals 5
    .param p1, "a0"    # Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;
    .param p2, "a1"    # Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a0",
            "a1"
        }
    .end annotation

    .line 649
    const/4 v0, 0x0

    .line 651
    .local v0, "s":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v2, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->dilithiumN:I

    if-ge v1, v2, :cond_0

    .line 653
    invoke-virtual {p1, v1}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->getCoeffIndex(I)I

    move-result v2

    invoke-virtual {p2, v1}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->getCoeffIndex(I)I

    move-result v3

    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->engine:Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;

    invoke-static {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Rounding;->makeHint(IILorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;)I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->setCoeffIndex(II)V

    .line 654
    invoke-virtual {p0, v1}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->getCoeffIndex(I)I

    move-result v2

    add-int/2addr v0, v2

    .line 651
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 656
    :cond_0
    return v0
.end method

.method public polyNtt()V
    .locals 1

    .line 176
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->coeffs:[I

    invoke-static {v0}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Ntt;->ntt([I)[I

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->setCoeffs([I)V

    .line 177
    return-void
.end method

.method public polyUseHint(Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;)V
    .locals 4
    .param p1, "a"    # Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;
    .param p2, "h"    # Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "h"
        }
    .end annotation

    .line 661
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->dilithiumN:I

    if-ge v0, v1, :cond_0

    .line 663
    invoke-virtual {p1, v0}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->getCoeffIndex(I)I

    move-result v1

    invoke-virtual {p2, v0}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->getCoeffIndex(I)I

    move-result v2

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->engine:Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;

    invoke-virtual {v3}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->getDilithiumGamma2()I

    move-result v3

    invoke-static {v1, v2, v3}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Rounding;->useHint(III)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->setCoeffIndex(II)V

    .line 661
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 665
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public polyt0Pack([BI)[B
    .locals 14
    .param p1, "out"    # [B
    .param p2, "outOff"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "out",
            "outOff"
        }
    .end annotation

    .line 355
    const/16 v0, 0x8

    new-array v1, v0, [I

    .line 357
    .local v1, "t":[I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget v3, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->dilithiumN:I

    div-int/2addr v3, v0

    if-ge v2, v3, :cond_0

    .line 359
    mul-int/lit8 v3, v2, 0x8

    const/4 v4, 0x0

    add-int/2addr v3, v4

    invoke-virtual {p0, v3}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->getCoeffIndex(I)I

    move-result v3

    rsub-int v3, v3, 0x1000

    aput v3, v1, v4

    .line 360
    mul-int/lit8 v3, v2, 0x8

    const/4 v5, 0x1

    add-int/2addr v3, v5

    invoke-virtual {p0, v3}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->getCoeffIndex(I)I

    move-result v3

    rsub-int v3, v3, 0x1000

    aput v3, v1, v5

    .line 361
    mul-int/lit8 v3, v2, 0x8

    const/4 v6, 0x2

    add-int/2addr v3, v6

    invoke-virtual {p0, v3}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->getCoeffIndex(I)I

    move-result v3

    rsub-int v3, v3, 0x1000

    aput v3, v1, v6

    .line 362
    mul-int/lit8 v3, v2, 0x8

    const/4 v7, 0x3

    add-int/2addr v3, v7

    invoke-virtual {p0, v3}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->getCoeffIndex(I)I

    move-result v3

    rsub-int v3, v3, 0x1000

    aput v3, v1, v7

    .line 363
    mul-int/lit8 v3, v2, 0x8

    const/4 v8, 0x4

    add-int/2addr v3, v8

    invoke-virtual {p0, v3}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->getCoeffIndex(I)I

    move-result v3

    rsub-int v3, v3, 0x1000

    aput v3, v1, v8

    .line 364
    mul-int/lit8 v3, v2, 0x8

    const/4 v9, 0x5

    add-int/2addr v3, v9

    invoke-virtual {p0, v3}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->getCoeffIndex(I)I

    move-result v3

    rsub-int v3, v3, 0x1000

    aput v3, v1, v9

    .line 365
    mul-int/lit8 v3, v2, 0x8

    const/4 v10, 0x6

    add-int/2addr v3, v10

    invoke-virtual {p0, v3}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->getCoeffIndex(I)I

    move-result v3

    rsub-int v3, v3, 0x1000

    aput v3, v1, v10

    .line 366
    mul-int/lit8 v3, v2, 0x8

    const/4 v11, 0x7

    add-int/2addr v3, v11

    invoke-virtual {p0, v3}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->getCoeffIndex(I)I

    move-result v3

    rsub-int v3, v3, 0x1000

    aput v3, v1, v11

    .line 368
    mul-int/lit8 v3, v2, 0xd

    add-int v3, p2, v3

    .line 369
    .local v3, "base":I
    add-int/lit8 v12, v3, 0x0

    aget v13, v1, v4

    int-to-byte v13, v13

    aput-byte v13, p1, v12

    .line 370
    add-int/lit8 v12, v3, 0x1

    aget v4, v1, v4

    shr-int/2addr v4, v0

    int-to-byte v4, v4

    aput-byte v4, p1, v12

    .line 371
    add-int/lit8 v4, v3, 0x1

    add-int/lit8 v12, v3, 0x1

    aget-byte v12, p1, v12

    aget v13, v1, v5

    shl-int/2addr v13, v9

    int-to-byte v13, v13

    or-int/2addr v12, v13

    int-to-byte v12, v12

    aput-byte v12, p1, v4

    .line 372
    add-int/lit8 v4, v3, 0x2

    aget v12, v1, v5

    shr-int/2addr v12, v7

    int-to-byte v12, v12

    aput-byte v12, p1, v4

    .line 373
    add-int/lit8 v4, v3, 0x3

    aget v12, v1, v5

    shr-int/lit8 v12, v12, 0xb

    int-to-byte v12, v12

    aput-byte v12, p1, v4

    .line 374
    add-int/lit8 v4, v3, 0x3

    add-int/lit8 v12, v3, 0x3

    aget-byte v12, p1, v12

    aget v13, v1, v6

    shl-int/2addr v13, v6

    int-to-byte v13, v13

    or-int/2addr v12, v13

    int-to-byte v12, v12

    aput-byte v12, p1, v4

    .line 375
    add-int/lit8 v4, v3, 0x4

    aget v12, v1, v6

    shr-int/2addr v12, v10

    int-to-byte v12, v12

    aput-byte v12, p1, v4

    .line 376
    add-int/lit8 v4, v3, 0x4

    add-int/lit8 v12, v3, 0x4

    aget-byte v12, p1, v12

    aget v13, v1, v7

    shl-int/2addr v13, v11

    int-to-byte v13, v13

    or-int/2addr v12, v13

    int-to-byte v12, v12

    aput-byte v12, p1, v4

    .line 377
    add-int/lit8 v4, v3, 0x5

    aget v12, v1, v7

    shr-int/2addr v12, v5

    int-to-byte v12, v12

    aput-byte v12, p1, v4

    .line 378
    add-int/lit8 v4, v3, 0x6

    aget v12, v1, v7

    shr-int/lit8 v12, v12, 0x9

    int-to-byte v12, v12

    aput-byte v12, p1, v4

    .line 379
    add-int/lit8 v4, v3, 0x6

    add-int/lit8 v12, v3, 0x6

    aget-byte v12, p1, v12

    aget v13, v1, v8

    shl-int/2addr v13, v8

    int-to-byte v13, v13

    or-int/2addr v12, v13

    int-to-byte v12, v12

    aput-byte v12, p1, v4

    .line 380
    add-int/lit8 v4, v3, 0x7

    aget v12, v1, v8

    shr-int/2addr v12, v8

    int-to-byte v12, v12

    aput-byte v12, p1, v4

    .line 381
    add-int/lit8 v4, v3, 0x8

    aget v8, v1, v8

    shr-int/lit8 v8, v8, 0xc

    int-to-byte v8, v8

    aput-byte v8, p1, v4

    .line 382
    add-int/lit8 v4, v3, 0x8

    add-int/lit8 v8, v3, 0x8

    aget-byte v8, p1, v8

    aget v12, v1, v9

    shl-int/lit8 v5, v12, 0x1

    int-to-byte v5, v5

    or-int/2addr v5, v8

    int-to-byte v5, v5

    aput-byte v5, p1, v4

    .line 383
    add-int/lit8 v4, v3, 0x9

    aget v5, v1, v9

    shr-int/2addr v5, v11

    int-to-byte v5, v5

    aput-byte v5, p1, v4

    .line 384
    add-int/lit8 v4, v3, 0x9

    add-int/lit8 v5, v3, 0x9

    aget-byte v5, p1, v5

    aget v8, v1, v10

    shl-int/2addr v8, v10

    int-to-byte v8, v8

    or-int/2addr v5, v8

    int-to-byte v5, v5

    aput-byte v5, p1, v4

    .line 385
    add-int/lit8 v4, v3, 0xa

    aget v5, v1, v10

    shr-int/2addr v5, v6

    int-to-byte v5, v5

    aput-byte v5, p1, v4

    .line 386
    add-int/lit8 v4, v3, 0xb

    aget v5, v1, v10

    shr-int/lit8 v5, v5, 0xa

    int-to-byte v5, v5

    aput-byte v5, p1, v4

    .line 387
    add-int/lit8 v4, v3, 0xb

    add-int/lit8 v5, v3, 0xb

    aget-byte v5, p1, v5

    aget v6, v1, v11

    shl-int/2addr v6, v7

    int-to-byte v6, v6

    or-int/2addr v5, v6

    int-to-byte v5, v5

    aput-byte v5, p1, v4

    .line 388
    add-int/lit8 v4, v3, 0xc

    aget v5, v1, v11

    shr-int/2addr v5, v9

    int-to-byte v5, v5

    aput-byte v5, p1, v4

    .line 357
    .end local v3    # "base":I
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 390
    :cond_0
    return-object p1
.end method

.method public polyt0Unpack([BI)V
    .locals 5
    .param p1, "a"    # [B
    .param p2, "aOff"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "aOff"
        }
    .end annotation

    .line 396
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->dilithiumN:I

    div-int/lit8 v1, v1, 0x8

    if-ge v0, v1, :cond_0

    .line 398
    mul-int/lit8 v1, v0, 0xd

    add-int/2addr v1, p2

    .line 399
    .local v1, "base":I
    mul-int/lit8 v2, v0, 0x8

    add-int/lit8 v2, v2, 0x0

    add-int/lit8 v3, v1, 0x0

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    add-int/lit8 v4, v1, 0x1

    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    or-int/2addr v3, v4

    and-int/lit16 v3, v3, 0x1fff

    invoke-virtual {p0, v2, v3}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->setCoeffIndex(II)V

    .line 404
    mul-int/lit8 v2, v0, 0x8

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v3, v1, 0x1

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    shr-int/lit8 v3, v3, 0x5

    add-int/lit8 v4, v1, 0x2

    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x3

    or-int/2addr v3, v4

    add-int/lit8 v4, v1, 0x3

    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0xb

    or-int/2addr v3, v4

    and-int/lit16 v3, v3, 0x1fff

    invoke-virtual {p0, v2, v3}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->setCoeffIndex(II)V

    .line 411
    mul-int/lit8 v2, v0, 0x8

    add-int/lit8 v2, v2, 0x2

    add-int/lit8 v3, v1, 0x3

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    shr-int/lit8 v3, v3, 0x2

    add-int/lit8 v4, v1, 0x4

    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x6

    or-int/2addr v3, v4

    and-int/lit16 v3, v3, 0x1fff

    invoke-virtual {p0, v2, v3}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->setCoeffIndex(II)V

    .line 417
    mul-int/lit8 v2, v0, 0x8

    add-int/lit8 v2, v2, 0x3

    add-int/lit8 v3, v1, 0x4

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    shr-int/lit8 v3, v3, 0x7

    add-int/lit8 v4, v1, 0x5

    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x1

    or-int/2addr v3, v4

    add-int/lit8 v4, v1, 0x6

    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x9

    or-int/2addr v3, v4

    and-int/lit16 v3, v3, 0x1fff

    invoke-virtual {p0, v2, v3}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->setCoeffIndex(II)V

    .line 424
    mul-int/lit8 v2, v0, 0x8

    add-int/lit8 v2, v2, 0x4

    add-int/lit8 v3, v1, 0x6

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    shr-int/lit8 v3, v3, 0x4

    add-int/lit8 v4, v1, 0x7

    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x4

    or-int/2addr v3, v4

    add-int/lit8 v4, v1, 0x8

    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0xc

    or-int/2addr v3, v4

    and-int/lit16 v3, v3, 0x1fff

    invoke-virtual {p0, v2, v3}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->setCoeffIndex(II)V

    .line 431
    mul-int/lit8 v2, v0, 0x8

    add-int/lit8 v2, v2, 0x5

    add-int/lit8 v3, v1, 0x8

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    shr-int/lit8 v3, v3, 0x1

    add-int/lit8 v4, v1, 0x9

    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x7

    or-int/2addr v3, v4

    and-int/lit16 v3, v3, 0x1fff

    invoke-virtual {p0, v2, v3}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->setCoeffIndex(II)V

    .line 437
    mul-int/lit8 v2, v0, 0x8

    add-int/lit8 v2, v2, 0x6

    add-int/lit8 v3, v1, 0x9

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    shr-int/lit8 v3, v3, 0x6

    add-int/lit8 v4, v1, 0xa

    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x2

    or-int/2addr v3, v4

    add-int/lit8 v4, v1, 0xb

    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0xa

    or-int/2addr v3, v4

    and-int/lit16 v3, v3, 0x1fff

    invoke-virtual {p0, v2, v3}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->setCoeffIndex(II)V

    .line 444
    mul-int/lit8 v2, v0, 0x8

    add-int/lit8 v2, v2, 0x7

    add-int/lit8 v3, v1, 0xb

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    shr-int/lit8 v3, v3, 0x3

    add-int/lit8 v4, v1, 0xc

    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x5

    or-int/2addr v3, v4

    and-int/lit16 v3, v3, 0x1fff

    invoke-virtual {p0, v2, v3}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->setCoeffIndex(II)V

    .line 451
    mul-int/lit8 v2, v0, 0x8

    add-int/lit8 v2, v2, 0x0

    mul-int/lit8 v3, v0, 0x8

    add-int/lit8 v3, v3, 0x0

    invoke-virtual {p0, v3}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->getCoeffIndex(I)I

    move-result v3

    rsub-int v3, v3, 0x1000

    invoke-virtual {p0, v2, v3}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->setCoeffIndex(II)V

    .line 452
    mul-int/lit8 v2, v0, 0x8

    add-int/lit8 v2, v2, 0x1

    mul-int/lit8 v3, v0, 0x8

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {p0, v3}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->getCoeffIndex(I)I

    move-result v3

    rsub-int v3, v3, 0x1000

    invoke-virtual {p0, v2, v3}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->setCoeffIndex(II)V

    .line 453
    mul-int/lit8 v2, v0, 0x8

    add-int/lit8 v2, v2, 0x2

    mul-int/lit8 v3, v0, 0x8

    add-int/lit8 v3, v3, 0x2

    invoke-virtual {p0, v3}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->getCoeffIndex(I)I

    move-result v3

    rsub-int v3, v3, 0x1000

    invoke-virtual {p0, v2, v3}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->setCoeffIndex(II)V

    .line 454
    mul-int/lit8 v2, v0, 0x8

    add-int/lit8 v2, v2, 0x3

    mul-int/lit8 v3, v0, 0x8

    add-int/lit8 v3, v3, 0x3

    invoke-virtual {p0, v3}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->getCoeffIndex(I)I

    move-result v3

    rsub-int v3, v3, 0x1000

    invoke-virtual {p0, v2, v3}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->setCoeffIndex(II)V

    .line 455
    mul-int/lit8 v2, v0, 0x8

    add-int/lit8 v2, v2, 0x4

    mul-int/lit8 v3, v0, 0x8

    add-int/lit8 v3, v3, 0x4

    invoke-virtual {p0, v3}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->getCoeffIndex(I)I

    move-result v3

    rsub-int v3, v3, 0x1000

    invoke-virtual {p0, v2, v3}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->setCoeffIndex(II)V

    .line 456
    mul-int/lit8 v2, v0, 0x8

    add-int/lit8 v2, v2, 0x5

    mul-int/lit8 v3, v0, 0x8

    add-int/lit8 v3, v3, 0x5

    invoke-virtual {p0, v3}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->getCoeffIndex(I)I

    move-result v3

    rsub-int v3, v3, 0x1000

    invoke-virtual {p0, v2, v3}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->setCoeffIndex(II)V

    .line 457
    mul-int/lit8 v2, v0, 0x8

    add-int/lit8 v2, v2, 0x6

    mul-int/lit8 v3, v0, 0x8

    add-int/lit8 v3, v3, 0x6

    invoke-virtual {p0, v3}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->getCoeffIndex(I)I

    move-result v3

    rsub-int v3, v3, 0x1000

    invoke-virtual {p0, v2, v3}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->setCoeffIndex(II)V

    .line 458
    mul-int/lit8 v2, v0, 0x8

    add-int/lit8 v2, v2, 0x7

    mul-int/lit8 v3, v0, 0x8

    add-int/lit8 v3, v3, 0x7

    invoke-virtual {p0, v3}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->getCoeffIndex(I)I

    move-result v3

    rsub-int v3, v3, 0x1000

    invoke-virtual {p0, v2, v3}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->setCoeffIndex(II)V

    .line 396
    .end local v1    # "base":I
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 460
    :cond_0
    return-void
.end method

.method public polyt1Pack()[B
    .locals 6

    .line 247
    const/16 v0, 0x140

    new-array v0, v0, [B

    .line 249
    .local v0, "out":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v2, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->dilithiumN:I

    div-int/lit8 v2, v2, 0x4

    if-ge v1, v2, :cond_0

    .line 251
    mul-int/lit8 v2, v1, 0x5

    add-int/lit8 v2, v2, 0x0

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->coeffs:[I

    mul-int/lit8 v4, v1, 0x4

    add-int/lit8 v4, v4, 0x0

    aget v3, v3, v4

    shr-int/lit8 v3, v3, 0x0

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    .line 252
    mul-int/lit8 v2, v1, 0x5

    add-int/lit8 v2, v2, 0x1

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->coeffs:[I

    mul-int/lit8 v4, v1, 0x4

    add-int/lit8 v4, v4, 0x0

    aget v3, v3, v4

    shr-int/lit8 v3, v3, 0x8

    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->coeffs:[I

    mul-int/lit8 v5, v1, 0x4

    add-int/lit8 v5, v5, 0x1

    aget v4, v4, v5

    shl-int/lit8 v4, v4, 0x2

    or-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    .line 253
    mul-int/lit8 v2, v1, 0x5

    add-int/lit8 v2, v2, 0x2

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->coeffs:[I

    mul-int/lit8 v4, v1, 0x4

    add-int/lit8 v4, v4, 0x1

    aget v3, v3, v4

    shr-int/lit8 v3, v3, 0x6

    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->coeffs:[I

    mul-int/lit8 v5, v1, 0x4

    add-int/lit8 v5, v5, 0x2

    aget v4, v4, v5

    shl-int/lit8 v4, v4, 0x4

    or-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    .line 254
    mul-int/lit8 v2, v1, 0x5

    add-int/lit8 v2, v2, 0x3

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->coeffs:[I

    mul-int/lit8 v4, v1, 0x4

    add-int/lit8 v4, v4, 0x2

    aget v3, v3, v4

    shr-int/lit8 v3, v3, 0x4

    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->coeffs:[I

    mul-int/lit8 v5, v1, 0x4

    add-int/lit8 v5, v5, 0x3

    aget v4, v4, v5

    shl-int/lit8 v4, v4, 0x6

    or-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    .line 255
    mul-int/lit8 v2, v1, 0x5

    add-int/lit8 v2, v2, 0x4

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->coeffs:[I

    mul-int/lit8 v4, v1, 0x4

    add-int/lit8 v4, v4, 0x3

    aget v3, v3, v4

    shr-int/lit8 v3, v3, 0x2

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    .line 249
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 257
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method

.method public polyt1Unpack([B)V
    .locals 4
    .param p1, "a"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "a"
        }
    .end annotation

    .line 264
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->dilithiumN:I

    div-int/lit8 v1, v1, 0x4

    if-ge v0, v1, :cond_0

    .line 266
    mul-int/lit8 v1, v0, 0x4

    add-int/lit8 v1, v1, 0x0

    mul-int/lit8 v2, v0, 0x5

    add-int/lit8 v2, v2, 0x0

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    shr-int/lit8 v2, v2, 0x0

    mul-int/lit8 v3, v0, 0x5

    add-int/lit8 v3, v3, 0x1

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v2, v3

    and-int/lit16 v2, v2, 0x3ff

    invoke-virtual {p0, v1, v2}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->setCoeffIndex(II)V

    .line 267
    mul-int/lit8 v1, v0, 0x4

    add-int/lit8 v1, v1, 0x1

    mul-int/lit8 v2, v0, 0x5

    add-int/lit8 v2, v2, 0x1

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    shr-int/lit8 v2, v2, 0x2

    mul-int/lit8 v3, v0, 0x5

    add-int/lit8 v3, v3, 0x2

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x6

    or-int/2addr v2, v3

    and-int/lit16 v2, v2, 0x3ff

    invoke-virtual {p0, v1, v2}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->setCoeffIndex(II)V

    .line 268
    mul-int/lit8 v1, v0, 0x4

    add-int/lit8 v1, v1, 0x2

    mul-int/lit8 v2, v0, 0x5

    add-int/lit8 v2, v2, 0x2

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    shr-int/lit8 v2, v2, 0x4

    mul-int/lit8 v3, v0, 0x5

    add-int/lit8 v3, v3, 0x3

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x4

    or-int/2addr v2, v3

    and-int/lit16 v2, v2, 0x3ff

    invoke-virtual {p0, v1, v2}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->setCoeffIndex(II)V

    .line 269
    mul-int/lit8 v1, v0, 0x4

    add-int/lit8 v1, v1, 0x3

    mul-int/lit8 v2, v0, 0x5

    add-int/lit8 v2, v2, 0x3

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    shr-int/lit8 v2, v2, 0x6

    mul-int/lit8 v3, v0, 0x5

    add-int/lit8 v3, v3, 0x4

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x2

    or-int/2addr v2, v3

    and-int/lit16 v2, v2, 0x3ff

    invoke-virtual {p0, v1, v2}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->setCoeffIndex(II)V

    .line 264
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 271
    :cond_0
    return-void
.end method

.method public power2Round(Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;)V
    .locals 3
    .param p1, "a"    # Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "a"
        }
    .end annotation

    .line 237
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->dilithiumN:I

    if-ge v0, v1, :cond_0

    .line 239
    invoke-virtual {p0, v0}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->getCoeffIndex(I)I

    move-result v1

    invoke-static {v1}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Rounding;->power2Round(I)[I

    move-result-object v1

    .line 240
    .local v1, "p2r":[I
    const/4 v2, 0x0

    aget v2, v1, v2

    invoke-virtual {p0, v0, v2}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->setCoeffIndex(II)V

    .line 241
    const/4 v2, 0x1

    aget v2, v1, v2

    invoke-virtual {p1, v0, v2}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->setCoeffIndex(II)V

    .line 237
    .end local v1    # "p2r":[I
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 243
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public reduce()V
    .locals 2

    .line 216
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->dilithiumN:I

    if-ge v0, v1, :cond_0

    .line 218
    invoke-virtual {p0, v0}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->getCoeffIndex(I)I

    move-result v1

    invoke-static {v1}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Reduce;->reduce32(I)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->setCoeffIndex(II)V

    .line 216
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 220
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public setCoeffIndex(II)V
    .locals 1
    .param p1, "i"    # I
    .param p2, "val"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "i",
            "val"
        }
    .end annotation

    .line 36
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->coeffs:[I

    aput p2, v0, p1

    .line 37
    return-void
.end method

.method public setCoeffs([I)V
    .locals 0
    .param p1, "coeffs"    # [I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "coeffs"
        }
    .end annotation

    .line 41
    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->coeffs:[I

    .line 42
    return-void
.end method

.method public shiftLeft()V
    .locals 2

    .line 781
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->dilithiumN:I

    if-ge v0, v1, :cond_0

    .line 783
    invoke-virtual {p0, v0}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->getCoeffIndex(I)I

    move-result v1

    shl-int/lit8 v1, v1, 0xd

    invoke-virtual {p0, v0, v1}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->setCoeffIndex(II)V

    .line 781
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 785
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public subtract(Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;)V
    .locals 3
    .param p1, "inpPoly"    # Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "inpPoly"
        }
    .end annotation

    .line 641
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->dilithiumN:I

    if-ge v0, v1, :cond_0

    .line 643
    invoke-virtual {p0, v0}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->getCoeffIndex(I)I

    move-result v1

    invoke-virtual {p1, v0}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->getCoeffIndex(I)I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0, v0, v1}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->setCoeffIndex(II)V

    .line 641
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 645
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 789
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 790
    .local v0, "out":Ljava/lang/StringBuffer;
    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 791
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->coeffs:[I

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 793
    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->coeffs:[I

    aget v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 794
    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->coeffs:[I

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    if-eq v1, v2, :cond_0

    .line 796
    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 791
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 799
    .end local v1    # "i":I
    :cond_1
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 800
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public uniformBlocks([BS)V
    .locals 7
    .param p1, "seed"    # [B
    .param p2, "nonce"    # S
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "seed",
            "nonce"
        }
    .end annotation

    .line 47
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->polyUniformNBlocks:I

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->symmetric:Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Symmetric;

    iget v1, v1, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Symmetric;->stream128BlockBytes:I

    mul-int v0, v0, v1

    .line 48
    .local v0, "buflen":I
    add-int/lit8 v1, v0, 0x2

    new-array v1, v1, [B

    .line 50
    .local v1, "buf":[B
    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->symmetric:Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Symmetric;

    invoke-virtual {v2, p1, p2}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Symmetric;->stream128init([BS)V

    .line 52
    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->symmetric:Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Symmetric;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3, v0}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Symmetric;->stream128squeezeBlocks([BII)V

    .line 54
    iget v2, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->dilithiumN:I

    invoke-static {p0, v3, v2, v1, v0}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->rejectUniform(Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;II[BI)I

    move-result v2

    .line 58
    .local v2, "ctr":I
    :goto_0
    iget v3, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->dilithiumN:I

    if-ge v2, v3, :cond_1

    .line 60
    rem-int/lit8 v3, v0, 0x3

    .line 61
    .local v3, "off":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    if-ge v4, v3, :cond_0

    .line 63
    sub-int v5, v0, v3

    add-int/2addr v5, v4

    aget-byte v5, v1, v5

    aput-byte v5, v1, v4

    .line 61
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 65
    :cond_0
    iget-object v5, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->symmetric:Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Symmetric;

    iget-object v6, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->symmetric:Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Symmetric;

    iget v6, v6, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Symmetric;->stream128BlockBytes:I

    invoke-virtual {v5, v1, v3, v6}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Symmetric;->stream128squeezeBlocks([BII)V

    .line 66
    iget-object v5, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->symmetric:Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Symmetric;

    iget v5, v5, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Symmetric;->stream128BlockBytes:I

    add-int v0, v5, v3

    .line 67
    iget v5, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->dilithiumN:I

    sub-int/2addr v5, v2

    invoke-static {p0, v2, v5, v1, v0}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->rejectUniform(Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;II[BI)I

    move-result v5

    add-int/2addr v2, v5

    goto :goto_0

    .line 70
    .end local v3    # "off":I
    .end local v4    # "i":I
    :cond_1
    return-void
.end method

.method public uniformEta([BS)V
    .locals 9
    .param p1, "seed"    # [B
    .param p2, "nonce"    # S
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "seed",
            "nonce"
        }
    .end annotation

    .line 98
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->engine:Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->getDilithiumEta()I

    move-result v6

    .line 100
    .local v6, "eta":I
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->engine:Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->getDilithiumEta()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 102
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->symmetric:Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Symmetric;

    iget v0, v0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Symmetric;->stream256BlockBytes:I

    add-int/lit16 v0, v0, 0x88

    add-int/lit8 v0, v0, -0x1

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->symmetric:Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Symmetric;

    iget v1, v1, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Symmetric;->stream256BlockBytes:I

    div-int/2addr v0, v1

    .local v0, "polyUniformEtaNBlocks":I
    goto :goto_0

    .line 104
    .end local v0    # "polyUniformEtaNBlocks":I
    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->engine:Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->getDilithiumEta()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    .line 106
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->symmetric:Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Symmetric;

    iget v0, v0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Symmetric;->stream256BlockBytes:I

    add-int/lit16 v0, v0, 0xe3

    add-int/lit8 v0, v0, -0x1

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->symmetric:Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Symmetric;

    iget v1, v1, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Symmetric;->stream256BlockBytes:I

    div-int/2addr v0, v1

    .line 113
    .restart local v0    # "polyUniformEtaNBlocks":I
    :goto_0
    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->symmetric:Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Symmetric;

    iget v1, v1, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Symmetric;->stream256BlockBytes:I

    mul-int v5, v0, v1

    .line 115
    .local v5, "buflen":I
    new-array v4, v5, [B

    .line 117
    .local v4, "buf":[B
    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->symmetric:Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Symmetric;

    invoke-virtual {v1, p1, p2}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Symmetric;->stream256init([BS)V

    .line 118
    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->symmetric:Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Symmetric;

    const/4 v7, 0x0

    invoke-virtual {v1, v4, v7, v5}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Symmetric;->stream256squeezeBlocks([BII)V

    .line 120
    const/4 v2, 0x0

    iget v3, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->dilithiumN:I

    move-object v1, p0

    invoke-static/range {v1 .. v6}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->rejectEta(Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;II[BII)I

    move-result v2

    move v8, v5

    .line 122
    .end local v5    # "buflen":I
    .local v2, "ctr":I
    .local v8, "buflen":I
    :goto_1
    const/16 v3, 0x100

    if-ge v2, v3, :cond_1

    .line 124
    iget-object v3, v1, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->symmetric:Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Symmetric;

    iget-object v5, v1, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->symmetric:Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Symmetric;

    iget v5, v5, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Symmetric;->stream256BlockBytes:I

    invoke-virtual {v3, v4, v7, v5}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Symmetric;->stream256squeezeBlocks([BII)V

    .line 125
    iget v3, v1, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->dilithiumN:I

    sub-int/2addr v3, v2

    iget-object v5, v1, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->symmetric:Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Symmetric;

    iget v5, v5, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Symmetric;->stream256BlockBytes:I

    invoke-static/range {v1 .. v6}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->rejectEta(Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;II[BII)I

    move-result v3

    add-int/2addr v2, v3

    move-object v1, p0

    goto :goto_1

    .line 128
    :cond_1
    return-void

    .line 110
    .end local v0    # "polyUniformEtaNBlocks":I
    .end local v2    # "ctr":I
    .end local v4    # "buf":[B
    .end local v8    # "buflen":I
    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Wrong Dilithium Eta!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public uniformGamma1([BS)V
    .locals 4
    .param p1, "seed"    # [B
    .param p2, "nonce"    # S
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "seed",
            "nonce"
        }
    .end annotation

    .line 465
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->engine:Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->getPolyUniformGamma1NBlocks()I

    move-result v0

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->symmetric:Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Symmetric;

    iget v1, v1, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Symmetric;->stream256BlockBytes:I

    mul-int v0, v0, v1

    new-array v0, v0, [B

    .line 467
    .local v0, "buf":[B
    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->symmetric:Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Symmetric;

    invoke-virtual {v1, p1, p2}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Symmetric;->stream256init([BS)V

    .line 468
    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->symmetric:Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Symmetric;

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->engine:Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->getPolyUniformGamma1NBlocks()I

    move-result v2

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->symmetric:Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Symmetric;

    iget v3, v3, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Symmetric;->stream256BlockBytes:I

    mul-int v2, v2, v3

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3, v2}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Symmetric;->stream256squeezeBlocks([BII)V

    .line 470
    invoke-direct {p0, v0}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->unpackZ([B)V

    .line 471
    return-void
.end method

.method public w1Pack()[B
    .locals 5

    .line 554
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->engine:Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->getDilithiumPolyW1PackedBytes()I

    move-result v0

    new-array v0, v0, [B

    .line 556
    .local v0, "out":[B
    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->engine:Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->getDilithiumGamma2()I

    move-result v1

    const v2, 0x17400

    if-ne v1, v2, :cond_0

    .line 558
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v2, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->dilithiumN:I

    div-int/lit8 v2, v2, 0x4

    if-ge v1, v2, :cond_1

    .line 560
    mul-int/lit8 v2, v1, 0x3

    add-int/lit8 v2, v2, 0x0

    mul-int/lit8 v3, v1, 0x4

    add-int/lit8 v3, v3, 0x0

    invoke-virtual {p0, v3}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->getCoeffIndex(I)I

    move-result v3

    int-to-byte v3, v3

    mul-int/lit8 v4, v1, 0x4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {p0, v4}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->getCoeffIndex(I)I

    move-result v4

    shl-int/lit8 v4, v4, 0x6

    or-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    .line 561
    mul-int/lit8 v2, v1, 0x3

    add-int/lit8 v2, v2, 0x1

    mul-int/lit8 v3, v1, 0x4

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {p0, v3}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->getCoeffIndex(I)I

    move-result v3

    shr-int/lit8 v3, v3, 0x2

    int-to-byte v3, v3

    mul-int/lit8 v4, v1, 0x4

    add-int/lit8 v4, v4, 0x2

    invoke-virtual {p0, v4}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->getCoeffIndex(I)I

    move-result v4

    shl-int/lit8 v4, v4, 0x4

    or-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    .line 562
    mul-int/lit8 v2, v1, 0x3

    add-int/lit8 v2, v2, 0x2

    mul-int/lit8 v3, v1, 0x4

    add-int/lit8 v3, v3, 0x2

    invoke-virtual {p0, v3}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->getCoeffIndex(I)I

    move-result v3

    shr-int/lit8 v3, v3, 0x4

    int-to-byte v3, v3

    mul-int/lit8 v4, v1, 0x4

    add-int/lit8 v4, v4, 0x3

    invoke-virtual {p0, v4}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->getCoeffIndex(I)I

    move-result v4

    shl-int/lit8 v4, v4, 0x2

    or-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    .line 558
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 565
    .end local v1    # "i":I
    :cond_0
    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->engine:Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->getDilithiumGamma2()I

    move-result v1

    const v2, 0x3ff00

    if-ne v1, v2, :cond_1

    .line 567
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    iget v2, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->dilithiumN:I

    div-int/lit8 v2, v2, 0x2

    if-ge v1, v2, :cond_1

    .line 569
    mul-int/lit8 v2, v1, 0x2

    add-int/lit8 v2, v2, 0x0

    invoke-virtual {p0, v2}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->getCoeffIndex(I)I

    move-result v2

    mul-int/lit8 v3, v1, 0x2

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {p0, v3}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->getCoeffIndex(I)I

    move-result v3

    shl-int/lit8 v3, v3, 0x4

    or-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 567
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 573
    .end local v1    # "i":I
    :cond_1
    return-object v0
.end method

.method public zPack()[B
    .locals 11

    .line 669
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->engine:Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->getDilithiumPolyZPackedBytes()I

    move-result v0

    new-array v0, v0, [B

    .line 671
    .local v0, "outBytes":[B
    const/4 v1, 0x4

    new-array v2, v1, [I

    .line 672
    .local v2, "t":[I
    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->engine:Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;

    invoke-virtual {v3}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->getDilithiumGamma1()I

    move-result v3

    const/high16 v4, 0x20000

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v7, 0x2

    const/4 v8, 0x1

    if-ne v3, v4, :cond_0

    .line 674
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget v4, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->dilithiumN:I

    div-int/2addr v4, v1

    if-ge v3, v4, :cond_1

    .line 676
    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->engine:Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;

    invoke-virtual {v4}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->getDilithiumGamma1()I

    move-result v4

    mul-int/lit8 v9, v3, 0x4

    add-int/2addr v9, v6

    invoke-virtual {p0, v9}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->getCoeffIndex(I)I

    move-result v9

    sub-int/2addr v4, v9

    aput v4, v2, v6

    .line 677
    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->engine:Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;

    invoke-virtual {v4}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->getDilithiumGamma1()I

    move-result v4

    mul-int/lit8 v9, v3, 0x4

    add-int/2addr v9, v8

    invoke-virtual {p0, v9}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->getCoeffIndex(I)I

    move-result v9

    sub-int/2addr v4, v9

    aput v4, v2, v8

    .line 678
    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->engine:Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;

    invoke-virtual {v4}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->getDilithiumGamma1()I

    move-result v4

    mul-int/lit8 v9, v3, 0x4

    add-int/2addr v9, v7

    invoke-virtual {p0, v9}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->getCoeffIndex(I)I

    move-result v9

    sub-int/2addr v4, v9

    aput v4, v2, v7

    .line 679
    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->engine:Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;

    invoke-virtual {v4}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->getDilithiumGamma1()I

    move-result v4

    mul-int/lit8 v9, v3, 0x4

    add-int/2addr v9, v5

    invoke-virtual {p0, v9}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->getCoeffIndex(I)I

    move-result v9

    sub-int/2addr v4, v9

    aput v4, v2, v5

    .line 681
    mul-int/lit8 v4, v3, 0x9

    add-int/2addr v4, v6

    aget v9, v2, v6

    int-to-byte v9, v9

    aput-byte v9, v0, v4

    .line 682
    mul-int/lit8 v4, v3, 0x9

    add-int/2addr v4, v8

    aget v9, v2, v6

    shr-int/lit8 v9, v9, 0x8

    int-to-byte v9, v9

    aput-byte v9, v0, v4

    .line 683
    mul-int/lit8 v4, v3, 0x9

    add-int/2addr v4, v7

    aget v9, v2, v6

    shr-int/lit8 v9, v9, 0x10

    int-to-byte v9, v9

    aget v10, v2, v8

    shl-int/2addr v10, v7

    or-int/2addr v9, v10

    int-to-byte v9, v9

    aput-byte v9, v0, v4

    .line 684
    mul-int/lit8 v4, v3, 0x9

    add-int/2addr v4, v5

    aget v9, v2, v8

    shr-int/lit8 v9, v9, 0x6

    int-to-byte v9, v9

    aput-byte v9, v0, v4

    .line 685
    mul-int/lit8 v4, v3, 0x9

    add-int/2addr v4, v1

    aget v9, v2, v8

    shr-int/lit8 v9, v9, 0xe

    int-to-byte v9, v9

    aget v10, v2, v7

    shl-int/2addr v10, v1

    or-int/2addr v9, v10

    int-to-byte v9, v9

    aput-byte v9, v0, v4

    .line 686
    mul-int/lit8 v4, v3, 0x9

    add-int/lit8 v4, v4, 0x5

    aget v9, v2, v7

    shr-int/2addr v9, v1

    int-to-byte v9, v9

    aput-byte v9, v0, v4

    .line 687
    mul-int/lit8 v4, v3, 0x9

    add-int/lit8 v4, v4, 0x6

    aget v9, v2, v7

    shr-int/lit8 v9, v9, 0xc

    int-to-byte v9, v9

    aget v10, v2, v5

    shl-int/lit8 v10, v10, 0x6

    or-int/2addr v9, v10

    int-to-byte v9, v9

    aput-byte v9, v0, v4

    .line 688
    mul-int/lit8 v4, v3, 0x9

    add-int/lit8 v4, v4, 0x7

    aget v9, v2, v5

    shr-int/2addr v9, v7

    int-to-byte v9, v9

    aput-byte v9, v0, v4

    .line 689
    mul-int/lit8 v4, v3, 0x9

    add-int/lit8 v4, v4, 0x8

    aget v9, v2, v5

    shr-int/lit8 v9, v9, 0xa

    int-to-byte v9, v9

    aput-byte v9, v0, v4

    .line 674
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 692
    .end local v3    # "i":I
    :cond_0
    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->engine:Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;

    invoke-virtual {v3}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->getDilithiumGamma1()I

    move-result v3

    const/high16 v4, 0x80000

    if-ne v3, v4, :cond_2

    .line 694
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_1
    iget v4, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->dilithiumN:I

    div-int/2addr v4, v7

    if-ge v3, v4, :cond_1

    .line 696
    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->engine:Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;

    invoke-virtual {v4}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->getDilithiumGamma1()I

    move-result v4

    mul-int/lit8 v9, v3, 0x2

    add-int/2addr v9, v6

    invoke-virtual {p0, v9}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->getCoeffIndex(I)I

    move-result v9

    sub-int/2addr v4, v9

    aput v4, v2, v6

    .line 697
    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->engine:Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;

    invoke-virtual {v4}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->getDilithiumGamma1()I

    move-result v4

    mul-int/lit8 v9, v3, 0x2

    add-int/2addr v9, v8

    invoke-virtual {p0, v9}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->getCoeffIndex(I)I

    move-result v9

    sub-int/2addr v4, v9

    aput v4, v2, v8

    .line 699
    mul-int/lit8 v4, v3, 0x5

    add-int/2addr v4, v6

    aget v9, v2, v6

    int-to-byte v9, v9

    aput-byte v9, v0, v4

    .line 700
    mul-int/lit8 v4, v3, 0x5

    add-int/2addr v4, v8

    aget v9, v2, v6

    shr-int/lit8 v9, v9, 0x8

    int-to-byte v9, v9

    aput-byte v9, v0, v4

    .line 701
    mul-int/lit8 v4, v3, 0x5

    add-int/2addr v4, v7

    aget v9, v2, v6

    shr-int/lit8 v9, v9, 0x10

    int-to-byte v9, v9

    aget v10, v2, v8

    shl-int/2addr v10, v1

    or-int/2addr v9, v10

    int-to-byte v9, v9

    aput-byte v9, v0, v4

    .line 702
    mul-int/lit8 v4, v3, 0x5

    add-int/2addr v4, v5

    aget v9, v2, v8

    shr-int/2addr v9, v1

    int-to-byte v9, v9

    aput-byte v9, v0, v4

    .line 703
    mul-int/lit8 v4, v3, 0x5

    add-int/2addr v4, v1

    aget v9, v2, v8

    shr-int/lit8 v9, v9, 0xc

    int-to-byte v9, v9

    aput-byte v9, v0, v4

    .line 694
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 711
    :cond_1
    return-object v0

    .line 709
    .end local v3    # "i":I
    :cond_2
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v3, "Wrong Dilithium Gamma1!"

    invoke-direct {v1, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method zUnpack([B)V
    .locals 5
    .param p1, "a"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "a"
        }
    .end annotation

    .line 717
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->engine:Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->getDilithiumGamma1()I

    move-result v0

    const/high16 v1, 0x20000

    if-ne v0, v1, :cond_0

    .line 719
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->dilithiumN:I

    div-int/lit8 v1, v1, 0x4

    if-ge v0, v1, :cond_1

    .line 721
    mul-int/lit8 v1, v0, 0x4

    add-int/lit8 v1, v1, 0x0

    mul-int/lit8 v2, v0, 0x9

    add-int/lit8 v2, v2, 0x0

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    mul-int/lit8 v3, v0, 0x9

    add-int/lit8 v3, v3, 0x1

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v2, v3

    mul-int/lit8 v3, v0, 0x9

    add-int/lit8 v3, v3, 0x2

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v2, v3

    const v3, 0x3ffff

    and-int/2addr v2, v3

    invoke-virtual {p0, v1, v2}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->setCoeffIndex(II)V

    .line 727
    mul-int/lit8 v1, v0, 0x4

    add-int/lit8 v1, v1, 0x1

    mul-int/lit8 v2, v0, 0x9

    add-int/lit8 v2, v2, 0x2

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    ushr-int/lit8 v2, v2, 0x2

    mul-int/lit8 v4, v0, 0x9

    add-int/lit8 v4, v4, 0x3

    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x6

    or-int/2addr v2, v4

    mul-int/lit8 v4, v0, 0x9

    add-int/lit8 v4, v4, 0x4

    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0xe

    or-int/2addr v2, v4

    and-int/2addr v2, v3

    invoke-virtual {p0, v1, v2}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->setCoeffIndex(II)V

    .line 733
    mul-int/lit8 v1, v0, 0x4

    add-int/lit8 v1, v1, 0x2

    mul-int/lit8 v2, v0, 0x9

    add-int/lit8 v2, v2, 0x4

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    ushr-int/lit8 v2, v2, 0x4

    mul-int/lit8 v4, v0, 0x9

    add-int/lit8 v4, v4, 0x5

    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x4

    or-int/2addr v2, v4

    mul-int/lit8 v4, v0, 0x9

    add-int/lit8 v4, v4, 0x6

    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0xc

    or-int/2addr v2, v4

    and-int/2addr v2, v3

    invoke-virtual {p0, v1, v2}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->setCoeffIndex(II)V

    .line 739
    mul-int/lit8 v1, v0, 0x4

    add-int/lit8 v1, v1, 0x3

    mul-int/lit8 v2, v0, 0x9

    add-int/lit8 v2, v2, 0x6

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    ushr-int/lit8 v2, v2, 0x6

    mul-int/lit8 v4, v0, 0x9

    add-int/lit8 v4, v4, 0x7

    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x2

    or-int/2addr v2, v4

    mul-int/lit8 v4, v0, 0x9

    add-int/lit8 v4, v4, 0x8

    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0xa

    or-int/2addr v2, v4

    and-int/2addr v2, v3

    invoke-virtual {p0, v1, v2}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->setCoeffIndex(II)V

    .line 745
    mul-int/lit8 v1, v0, 0x4

    add-int/lit8 v1, v1, 0x0

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->engine:Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->getDilithiumGamma1()I

    move-result v2

    mul-int/lit8 v3, v0, 0x4

    add-int/lit8 v3, v3, 0x0

    invoke-virtual {p0, v3}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->getCoeffIndex(I)I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0, v1, v2}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->setCoeffIndex(II)V

    .line 746
    mul-int/lit8 v1, v0, 0x4

    add-int/lit8 v1, v1, 0x1

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->engine:Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->getDilithiumGamma1()I

    move-result v2

    mul-int/lit8 v3, v0, 0x4

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {p0, v3}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->getCoeffIndex(I)I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0, v1, v2}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->setCoeffIndex(II)V

    .line 747
    mul-int/lit8 v1, v0, 0x4

    add-int/lit8 v1, v1, 0x2

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->engine:Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->getDilithiumGamma1()I

    move-result v2

    mul-int/lit8 v3, v0, 0x4

    add-int/lit8 v3, v3, 0x2

    invoke-virtual {p0, v3}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->getCoeffIndex(I)I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0, v1, v2}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->setCoeffIndex(II)V

    .line 748
    mul-int/lit8 v1, v0, 0x4

    add-int/lit8 v1, v1, 0x3

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->engine:Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->getDilithiumGamma1()I

    move-result v2

    mul-int/lit8 v3, v0, 0x4

    add-int/lit8 v3, v3, 0x3

    invoke-virtual {p0, v3}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->getCoeffIndex(I)I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0, v1, v2}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->setCoeffIndex(II)V

    .line 719
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 751
    .end local v0    # "i":I
    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->engine:Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->getDilithiumGamma1()I

    move-result v0

    const/high16 v1, 0x80000

    if-ne v0, v1, :cond_2

    .line 753
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_1
    iget v1, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->dilithiumN:I

    div-int/lit8 v1, v1, 0x2

    if-ge v0, v1, :cond_1

    .line 755
    mul-int/lit8 v1, v0, 0x2

    add-int/lit8 v1, v1, 0x0

    mul-int/lit8 v2, v0, 0x5

    add-int/lit8 v2, v2, 0x0

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    mul-int/lit8 v3, v0, 0x5

    add-int/lit8 v3, v3, 0x1

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v2, v3

    mul-int/lit8 v3, v0, 0x5

    add-int/lit8 v3, v3, 0x2

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v2, v3

    const v3, 0xfffff

    and-int/2addr v2, v3

    invoke-virtual {p0, v1, v2}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->setCoeffIndex(II)V

    .line 762
    mul-int/lit8 v1, v0, 0x2

    add-int/lit8 v1, v1, 0x1

    mul-int/lit8 v2, v0, 0x5

    add-int/lit8 v2, v2, 0x2

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    ushr-int/lit8 v2, v2, 0x4

    mul-int/lit8 v4, v0, 0x5

    add-int/lit8 v4, v4, 0x3

    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x4

    or-int/2addr v2, v4

    mul-int/lit8 v4, v0, 0x5

    add-int/lit8 v4, v4, 0x4

    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0xc

    or-int/2addr v2, v4

    and-int/2addr v2, v3

    invoke-virtual {p0, v1, v2}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->setCoeffIndex(II)V

    .line 769
    mul-int/lit8 v1, v0, 0x2

    add-int/lit8 v1, v1, 0x0

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->engine:Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->getDilithiumGamma1()I

    move-result v2

    mul-int/lit8 v3, v0, 0x2

    add-int/lit8 v3, v3, 0x0

    invoke-virtual {p0, v3}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->getCoeffIndex(I)I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0, v1, v2}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->setCoeffIndex(II)V

    .line 770
    mul-int/lit8 v1, v0, 0x2

    add-int/lit8 v1, v1, 0x1

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->engine:Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->getDilithiumGamma1()I

    move-result v2

    mul-int/lit8 v3, v0, 0x2

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {p0, v3}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->getCoeffIndex(I)I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0, v1, v2}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->setCoeffIndex(II)V

    .line 753
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    .line 777
    :cond_1
    return-void

    .line 775
    .end local v0    # "i":I
    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Wrong Dilithium Gamma1!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
