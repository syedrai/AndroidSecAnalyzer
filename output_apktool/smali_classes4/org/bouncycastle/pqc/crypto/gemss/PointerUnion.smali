.class Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;
.super Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
.source "PointerUnion.java"


# instance fields
.field protected remainder:I


# direct methods
.method public constructor <init>(I)V
    .locals 3
    .param p1, "p"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "p"
        }
    .end annotation

    .line 25
    ushr-int/lit8 v0, p1, 0x3

    and-int/lit8 v1, p1, 0x7

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    invoke-direct {p0, v0}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;-><init>(I)V

    .line 26
    iput v2, p0, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->remainder:I

    .line 27
    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;)V
    .locals 1
    .param p1, "p"    # Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "p"
        }
    .end annotation

    .line 37
    invoke-direct {p0, p1}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;-><init>(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;)V

    .line 38
    const/4 v0, 0x0

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->remainder:I

    .line 39
    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;)V
    .locals 1
    .param p1, "p"    # Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "p"
        }
    .end annotation

    .line 31
    invoke-direct {p0, p1}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;-><init>(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;)V

    .line 32
    iget v0, p1, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->remainder:I

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->remainder:I

    .line 33
    return-void
.end method

.method public constructor <init>([B)V
    .locals 11
    .param p1, "arr"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "arr"
        }
    .end annotation

    .line 12
    array-length v0, p1

    shr-int/lit8 v0, v0, 0x3

    array-length v1, p1

    and-int/lit8 v1, v1, 0x7

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    invoke-direct {p0, v0}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;-><init>(I)V

    .line 13
    const/4 v0, 0x0

    .local v0, "i":I
    const/4 v1, 0x0

    .local v1, "q":I
    :goto_1
    array-length v3, p1

    if-ge v0, v3, :cond_2

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->array:[J

    array-length v3, v3

    if-ge v1, v3, :cond_2

    .line 15
    const/4 v3, 0x0

    .local v3, "r":I
    :goto_2
    const/16 v4, 0x8

    if-ge v3, v4, :cond_1

    array-length v4, p1

    if-ge v0, v4, :cond_1

    .line 17
    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->array:[J

    aget-wide v5, v4, v1

    aget-byte v7, p1, v0

    int-to-long v7, v7

    const-wide/16 v9, 0xff

    and-long/2addr v7, v9

    shl-int/lit8 v9, v3, 0x3

    shl-long/2addr v7, v9

    or-long/2addr v5, v7

    aput-wide v5, v4, v1

    .line 15
    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 13
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 20
    .end local v0    # "i":I
    .end local v1    # "q":I
    .end local v3    # "r":I
    :cond_2
    iput v2, p0, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->remainder:I

    .line 21
    return-void
.end method


# virtual methods
.method public changeIndex(Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;)V
    .locals 1
    .param p1, "p"    # Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "p"
        }
    .end annotation

    .line 328
    iget-object v0, p1, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->array:[J

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->array:[J

    .line 329
    iget v0, p1, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->cp:I

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->cp:I

    .line 330
    iget v0, p1, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->remainder:I

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->remainder:I

    .line 331
    return-void
.end method

.method public fill(I[BII)V
    .locals 10
    .param p1, "shift"    # I
    .param p2, "arr"    # [B
    .param p3, "input_cp"    # I
    .param p4, "len"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "shift",
            "arr",
            "input_cp",
            "len"
        }
    .end annotation

    .line 282
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->remainder:I

    if-eqz v0, :cond_1

    .line 284
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->cp:I

    add-int/2addr v0, p1

    .local v0, "q":I
    iget v1, p0, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->remainder:I

    .line 285
    .local v1, "r":I
    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->array:[J

    aget-wide v3, v2, v0

    shl-int/lit8 v5, v1, 0x3

    const-wide/16 v6, -0x1

    shl-long v5, v6, v5

    not-long v5, v5

    and-long/2addr v3, v5

    aput-wide v3, v2, v0

    .line 286
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    const/16 v3, 0x8

    if-ge v1, v3, :cond_0

    if-ge v2, p4, :cond_0

    .line 288
    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->array:[J

    aget-wide v4, v3, v0

    aget-byte v6, p2, p3

    int-to-long v6, v6

    const-wide/16 v8, 0xff

    and-long/2addr v6, v8

    shl-int/lit8 v8, v1, 0x3

    shl-long/2addr v6, v8

    or-long/2addr v4, v6

    aput-wide v4, v3, v0

    .line 289
    add-int/lit8 p3, p3, 0x1

    .line 290
    add-int/lit8 v2, v2, 0x1

    .line 286
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 292
    :cond_0
    add-int/lit8 p1, p1, 0x1

    .line 293
    iget v4, p0, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->remainder:I

    sub-int/2addr v3, v4

    sub-int/2addr p4, v3

    .line 295
    .end local v0    # "q":I
    .end local v1    # "r":I
    .end local v2    # "i":I
    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->fill(I[BII)V

    .line 296
    return-void
.end method

.method public fillBytes(I[BII)V
    .locals 10
    .param p1, "shift"    # I
    .param p2, "arr"    # [B
    .param p3, "input_cp"    # I
    .param p4, "len"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "shift",
            "arr",
            "input_cp",
            "len"
        }
    .end annotation

    .line 300
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->remainder:I

    add-int/2addr v0, p1

    .line 301
    .local v0, "r":I
    iget v1, p0, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->cp:I

    ushr-int/lit8 v2, v0, 0x3

    add-int/2addr v1, v2

    .line 302
    .local v1, "q":I
    and-int/lit8 v0, v0, 0x7

    .line 303
    if-eqz v0, :cond_1

    .line 305
    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->array:[J

    aget-wide v3, v2, v1

    shl-int/lit8 v5, v0, 0x3

    const-wide/16 v6, -0x1

    shl-long v5, v6, v5

    not-long v5, v5

    and-long/2addr v3, v5

    aput-wide v3, v2, v1

    .line 306
    const/4 v2, 0x0

    .line 307
    .local v2, "i":I
    :goto_0
    const/16 v3, 0x8

    if-ge v0, v3, :cond_0

    if-ge v2, p4, :cond_0

    .line 309
    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->array:[J

    aget-wide v4, v3, v1

    aget-byte v6, p2, p3

    int-to-long v6, v6

    const-wide/16 v8, 0xff

    and-long/2addr v6, v8

    shl-int/lit8 v8, v0, 0x3

    shl-long/2addr v6, v8

    or-long/2addr v4, v6

    aput-wide v4, v3, v1

    .line 310
    add-int/lit8 p3, p3, 0x1

    .line 311
    add-int/lit8 v2, v2, 0x1

    .line 307
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 313
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 314
    sub-int/2addr p4, v2

    .line 316
    .end local v2    # "i":I
    :cond_1
    iget v2, p0, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->cp:I

    sub-int v2, v1, v2

    invoke-super {p0, v2, p2, p3, p4}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->fill(I[BII)V

    .line 317
    return-void
.end method

.method public fillRandomBytes(ILjava/security/SecureRandom;I)V
    .locals 3
    .param p1, "shift"    # I
    .param p2, "random"    # Ljava/security/SecureRandom;
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "shift",
            "random",
            "length"
        }
    .end annotation

    .line 321
    new-array v0, p3, [B

    .line 322
    .local v0, "rv":[B
    invoke-virtual {p2, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 323
    const/4 v1, 0x0

    array-length v2, v0

    invoke-virtual {p0, p1, v0, v1, v2}, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->fillBytes(I[BII)V

    .line 324
    return-void
.end method

.method public get()J
    .locals 5

    .line 58
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->remainder:I

    if-nez v0, :cond_0

    .line 60
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->array:[J

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->cp:I

    aget-wide v1, v0, v1

    return-wide v1

    .line 62
    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->array:[J

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->cp:I

    aget-wide v1, v0, v1

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->remainder:I

    shl-int/lit8 v0, v0, 0x3

    ushr-long v0, v1, v0

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->array:[J

    iget v3, p0, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->cp:I

    add-int/lit8 v3, v3, 0x1

    aget-wide v3, v2, v3

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->remainder:I

    rsub-int/lit8 v2, v2, 0x8

    shl-int/lit8 v2, v2, 0x3

    shl-long v2, v3, v2

    or-long/2addr v0, v2

    return-wide v0
.end method

.method public get(I)J
    .locals 5
    .param p1, "q"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "q"
        }
    .end annotation

    .line 103
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->remainder:I

    if-nez v0, :cond_0

    .line 105
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->array:[J

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->cp:I

    add-int/2addr v1, p1

    aget-wide v1, v0, v1

    return-wide v1

    .line 107
    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->array:[J

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->cp:I

    add-int/2addr v1, p1

    aget-wide v1, v0, v1

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->remainder:I

    shl-int/lit8 v0, v0, 0x3

    ushr-long v0, v1, v0

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->array:[J

    iget v3, p0, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->cp:I

    add-int/2addr v3, p1

    add-int/lit8 v3, v3, 0x1

    aget-wide v3, v2, v3

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->remainder:I

    rsub-int/lit8 v2, v2, 0x8

    shl-int/lit8 v2, v2, 0x3

    shl-long v2, v3, v2

    or-long/2addr v0, v2

    return-wide v0
.end method

.method public getByte()B
    .locals 3

    .line 112
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->array:[J

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->cp:I

    aget-wide v1, v0, v1

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->remainder:I

    shl-int/lit8 v0, v0, 0x3

    ushr-long v0, v1, v0

    long-to-int v1, v0

    int-to-byte v0, v1

    return v0
.end method

.method public getByte(I)B
    .locals 5
    .param p1, "p"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "p"
        }
    .end annotation

    .line 117
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->cp:I

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->remainder:I

    add-int/2addr v1, p1

    ushr-int/lit8 v1, v1, 0x3

    add-int/2addr v0, v1

    .line 118
    .local v0, "q":I
    iget v1, p0, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->remainder:I

    add-int/2addr v1, p1

    and-int/lit8 v1, v1, 0x7

    .line 119
    .local v1, "r":I
    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->array:[J

    aget-wide v3, v2, v0

    shl-int/lit8 v2, v1, 0x3

    ushr-long v2, v3, v2

    long-to-int v3, v2

    int-to-byte v2, v3

    return v2
.end method

.method public getWithCheck()J
    .locals 5

    .line 67
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->cp:I

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->array:[J

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 69
    const-wide/16 v0, 0x0

    return-wide v0

    .line 71
    :cond_0
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->remainder:I

    if-nez v0, :cond_1

    .line 73
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->array:[J

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->cp:I

    aget-wide v1, v0, v1

    return-wide v1

    .line 75
    :cond_1
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->cp:I

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->array:[J

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_2

    .line 77
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->array:[J

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->cp:I

    aget-wide v1, v0, v1

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->remainder:I

    shl-int/lit8 v0, v0, 0x3

    ushr-long v0, v1, v0

    return-wide v0

    .line 79
    :cond_2
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->array:[J

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->cp:I

    aget-wide v1, v0, v1

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->remainder:I

    shl-int/lit8 v0, v0, 0x3

    ushr-long v0, v1, v0

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->array:[J

    iget v3, p0, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->cp:I

    add-int/lit8 v3, v3, 0x1

    aget-wide v3, v2, v3

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->remainder:I

    rsub-int/lit8 v2, v2, 0x8

    shl-int/lit8 v2, v2, 0x3

    shl-long v2, v3, v2

    or-long/2addr v0, v2

    return-wide v0
.end method

.method public getWithCheck(I)J
    .locals 5
    .param p1, "p"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "p"
        }
    .end annotation

    .line 84
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->cp:I

    add-int/2addr p1, v0

    .line 85
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->array:[J

    array-length v0, v0

    if-lt p1, v0, :cond_0

    .line 87
    const-wide/16 v0, 0x0

    return-wide v0

    .line 89
    :cond_0
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->remainder:I

    if-nez v0, :cond_1

    .line 91
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->array:[J

    aget-wide v1, v0, p1

    return-wide v1

    .line 93
    :cond_1
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->array:[J

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_2

    .line 95
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->array:[J

    aget-wide v1, v0, p1

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->remainder:I

    shl-int/lit8 v0, v0, 0x3

    ushr-long v0, v1, v0

    return-wide v0

    .line 97
    :cond_2
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->array:[J

    aget-wide v1, v0, p1

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->remainder:I

    shl-int/lit8 v0, v0, 0x3

    ushr-long v0, v1, v0

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->array:[J

    add-int/lit8 v3, p1, 0x1

    aget-wide v3, v2, v3

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->remainder:I

    rsub-int/lit8 v2, v2, 0x8

    shl-int/lit8 v2, v2, 0x3

    shl-long v2, v3, v2

    or-long/2addr v0, v2

    return-wide v0
.end method

.method public indexReset()V
    .locals 1

    .line 155
    const/4 v0, 0x0

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->cp:I

    .line 156
    iput v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->remainder:I

    .line 157
    return-void
.end method

.method public moveNextByte()V
    .locals 2

    .line 50
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->remainder:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->remainder:I

    .line 51
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->cp:I

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->remainder:I

    ushr-int/lit8 v1, v1, 0x3

    add-int/2addr v0, v1

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->cp:I

    .line 52
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->remainder:I

    and-int/lit8 v0, v0, 0x7

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->remainder:I

    .line 53
    return-void
.end method

.method public moveNextBytes(I)V
    .locals 2
    .param p1, "p"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "p"
        }
    .end annotation

    .line 43
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->remainder:I

    add-int/2addr v0, p1

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->remainder:I

    .line 44
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->cp:I

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->remainder:I

    ushr-int/lit8 v1, v1, 0x3

    add-int/2addr v0, v1

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->cp:I

    .line 45
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->remainder:I

    and-int/lit8 v0, v0, 0x7

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->remainder:I

    .line 46
    return-void
.end method

.method public set(IJ)V
    .locals 13
    .param p1, "p"    # I
    .param p2, "v"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "p",
            "v"
        }
    .end annotation

    .line 262
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->remainder:I

    if-nez v0, :cond_0

    .line 264
    invoke-super/range {p0 .. p3}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->setXor(IJ)V

    goto :goto_0

    .line 268
    :cond_0
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->remainder:I

    shl-int/lit8 v0, v0, 0x3

    .local v0, "shift1":I
    iget v1, p0, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->remainder:I

    rsub-int/lit8 v1, v1, 0x8

    shl-int/lit8 v1, v1, 0x3

    .line 269
    .local v1, "shift2":I
    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->array:[J

    iget v3, p0, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->cp:I

    add-int/2addr v3, p1

    shl-long v4, p2, v0

    iget-object v6, p0, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->array:[J

    iget v7, p0, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->cp:I

    add-int/2addr v7, p1

    aget-wide v7, v6, v7

    const-wide/16 v9, -0x1

    ushr-long v11, v9, v1

    and-long/2addr v7, v11

    or-long/2addr v4, v7

    aput-wide v4, v2, v3

    .line 270
    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->array:[J

    iget v3, p0, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->cp:I

    add-int/2addr v3, p1

    add-int/lit8 v3, v3, 0x1

    ushr-long v4, p2, v1

    iget-object v6, p0, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->array:[J

    iget v7, p0, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->cp:I

    add-int/2addr v7, p1

    add-int/lit8 v7, v7, 0x1

    aget-wide v7, v6, v7

    shl-long/2addr v9, v0

    and-long/2addr v7, v9

    or-long/2addr v4, v7

    aput-wide v4, v2, v3

    .line 272
    .end local v0    # "shift1":I
    .end local v1    # "shift2":I
    :goto_0
    return-void
.end method

.method public setAnd(IJ)V
    .locals 12
    .param p1, "p"    # I
    .param p2, "v"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "p",
            "v"
        }
    .end annotation

    .line 140
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->remainder:I

    if-nez v0, :cond_0

    .line 142
    invoke-super {p0, p1, p2, p3}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->setAnd(IJ)V

    goto :goto_0

    .line 146
    :cond_0
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->remainder:I

    shl-int/lit8 v0, v0, 0x3

    .local v0, "shift1":I
    iget v1, p0, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->remainder:I

    rsub-int/lit8 v1, v1, 0x8

    shl-int/lit8 v1, v1, 0x3

    .line 147
    .local v1, "shift2":I
    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->array:[J

    iget v3, p0, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->cp:I

    add-int/2addr v3, p1

    aget-wide v4, v2, v3

    shl-long v6, p2, v0

    const-wide/16 v8, -0x1

    ushr-long v10, v8, v1

    or-long/2addr v6, v10

    and-long/2addr v4, v6

    aput-wide v4, v2, v3

    .line 148
    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->array:[J

    iget v3, p0, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->cp:I

    add-int/2addr v3, p1

    add-int/lit8 v3, v3, 0x1

    aget-wide v4, v2, v3

    ushr-long v6, p2, v1

    shl-long/2addr v8, v0

    or-long/2addr v6, v8

    and-long/2addr v4, v6

    aput-wide v4, v2, v3

    .line 150
    .end local v0    # "shift1":I
    .end local v1    # "shift2":I
    :goto_0
    return-void
.end method

.method public setAndByte(IJ)V
    .locals 10
    .param p1, "p"    # I
    .param p2, "v"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "p",
            "v"
        }
    .end annotation

    .line 244
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->remainder:I

    add-int/2addr v0, p1

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->cp:I

    shl-int/lit8 v1, v1, 0x3

    add-int/2addr v0, v1

    .line 245
    .local v0, "r":I
    ushr-int/lit8 v1, v0, 0x3

    .line 246
    .local v1, "q":I
    and-int/lit8 v0, v0, 0x7

    .line 247
    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->array:[J

    aget-wide v3, v2, v1

    const-wide/16 v5, 0xff

    and-long v7, p2, v5

    shl-int/lit8 v9, v0, 0x3

    shl-long/2addr v7, v9

    shl-int/lit8 v9, v0, 0x3

    shl-long/2addr v5, v9

    not-long v5, v5

    or-long/2addr v5, v7

    and-long/2addr v3, v5

    aput-wide v3, v2, v1

    .line 248
    return-void
.end method

.method public setAndThenXorByte(IJJ)V
    .locals 11
    .param p1, "p"    # I
    .param p2, "v1"    # J
    .param p4, "v2"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "p",
            "v1",
            "v2"
        }
    .end annotation

    .line 252
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->remainder:I

    add-int/2addr v0, p1

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->cp:I

    shl-int/lit8 v1, v1, 0x3

    add-int/2addr v0, v1

    .line 253
    .local v0, "r":I
    ushr-int/lit8 v1, v0, 0x3

    .line 254
    .local v1, "q":I
    and-int/lit8 v0, v0, 0x7

    .line 255
    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->array:[J

    aget-wide v3, v2, v1

    const-wide/16 v5, 0xff

    and-long v7, p2, v5

    shl-int/lit8 v9, v0, 0x3

    shl-long/2addr v7, v9

    shl-int/lit8 v9, v0, 0x3

    shl-long v9, v5, v9

    not-long v9, v9

    or-long/2addr v7, v9

    and-long/2addr v3, v7

    aput-wide v3, v2, v1

    .line 256
    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->array:[J

    aget-wide v3, v2, v1

    and-long/2addr v5, p4

    shl-int/lit8 v7, v0, 0x3

    shl-long/2addr v5, v7

    xor-long/2addr v3, v5

    aput-wide v3, v2, v1

    .line 257
    return-void
.end method

.method public setByte(I)V
    .locals 9
    .param p1, "v"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    .line 276
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->array:[J

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->cp:I

    int-to-long v2, p1

    const-wide/16 v4, 0xff

    and-long/2addr v2, v4

    iget v4, p0, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->remainder:I

    shl-int/lit8 v4, v4, 0x3

    shl-long/2addr v2, v4

    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->array:[J

    iget v5, p0, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->cp:I

    aget-wide v5, v4, v5

    iget v4, p0, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->remainder:I

    rsub-int/lit8 v4, v4, 0x8

    shl-int/lit8 v4, v4, 0x3

    const-wide/16 v7, -0x1

    ushr-long/2addr v7, v4

    and-long/2addr v5, v7

    or-long/2addr v2, v5

    aput-wide v2, v0, v1

    .line 277
    return-void
.end method

.method public setByteIndex(I)V
    .locals 1
    .param p1, "p"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "p"
        }
    .end annotation

    .line 161
    and-int/lit8 v0, p1, 0x7

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->remainder:I

    .line 162
    ushr-int/lit8 v0, p1, 0x3

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->cp:I

    .line 163
    return-void
.end method

.method public setRangeClear(II)V
    .locals 9
    .param p1, "startPos"    # I
    .param p2, "endPos"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "startPos",
            "endPos"
        }
    .end annotation

    .line 125
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->remainder:I

    if-nez v0, :cond_0

    .line 127
    invoke-super {p0, p1, p2}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->setRangeClear(II)V

    goto :goto_0

    .line 131
    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->array:[J

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->cp:I

    add-int/2addr v1, p1

    aget-wide v2, v0, v1

    iget v4, p0, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->remainder:I

    rsub-int/lit8 v4, v4, 0x8

    shl-int/lit8 v4, v4, 0x3

    const-wide/16 v5, -0x1

    ushr-long v7, v5, v4

    and-long/2addr v2, v7

    aput-wide v2, v0, v1

    .line 132
    add-int/lit8 v0, p1, 0x1

    invoke-super {p0, v0, p2}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->setRangeClear(II)V

    .line 133
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->array:[J

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->cp:I

    add-int/2addr v1, p2

    add-int/lit8 v1, v1, 0x1

    aget-wide v2, v0, v1

    iget v4, p0, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->remainder:I

    shl-int/lit8 v4, v4, 0x3

    shl-long v4, v5, v4

    and-long/2addr v2, v4

    aput-wide v2, v0, v1

    .line 135
    :goto_0
    return-void
.end method

.method public setXor(IJ)V
    .locals 6
    .param p1, "p"    # I
    .param p2, "v"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "p",
            "v"
        }
    .end annotation

    .line 193
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->remainder:I

    if-nez v0, :cond_0

    .line 195
    invoke-super {p0, p1, p2, p3}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->setXor(IJ)V

    goto :goto_0

    .line 199
    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->array:[J

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->cp:I

    add-int/2addr v1, p1

    aget-wide v2, v0, v1

    iget v4, p0, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->remainder:I

    shl-int/lit8 v4, v4, 0x3

    shl-long v4, p2, v4

    xor-long/2addr v2, v4

    aput-wide v2, v0, v1

    .line 200
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->array:[J

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->cp:I

    add-int/2addr v1, p1

    add-int/lit8 v1, v1, 0x1

    aget-wide v2, v0, v1

    iget v4, p0, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->remainder:I

    rsub-int/lit8 v4, v4, 0x8

    shl-int/lit8 v4, v4, 0x3

    ushr-long v4, p2, v4

    xor-long/2addr v2, v4

    aput-wide v2, v0, v1

    .line 202
    :goto_0
    return-void
.end method

.method public setXor(J)V
    .locals 6
    .param p1, "v"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    .line 207
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->remainder:I

    if-nez v0, :cond_0

    .line 209
    invoke-super {p0, p1, p2}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->setXor(J)V

    goto :goto_0

    .line 213
    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->array:[J

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->cp:I

    aget-wide v2, v0, v1

    iget v4, p0, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->remainder:I

    shl-int/lit8 v4, v4, 0x3

    shl-long v4, p1, v4

    xor-long/2addr v2, v4

    aput-wide v2, v0, v1

    .line 214
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->array:[J

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->cp:I

    add-int/lit8 v1, v1, 0x1

    aget-wide v2, v0, v1

    iget v4, p0, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->remainder:I

    rsub-int/lit8 v4, v4, 0x8

    shl-int/lit8 v4, v4, 0x3

    ushr-long v4, p1, v4

    xor-long/2addr v2, v4

    aput-wide v2, v0, v1

    .line 216
    :goto_0
    return-void
.end method

.method public setXorByte(I)V
    .locals 8
    .param p1, "v"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    .line 239
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->array:[J

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->cp:I

    aget-wide v2, v0, v1

    int-to-long v4, p1

    const-wide/16 v6, 0xff

    and-long/2addr v4, v6

    iget v6, p0, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->remainder:I

    shl-int/lit8 v6, v6, 0x3

    shl-long/2addr v4, v6

    xor-long/2addr v2, v4

    aput-wide v2, v0, v1

    .line 240
    return-void
.end method

.method public setXorRangeAndMask(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;IJ)V
    .locals 16
    .param p1, "p"    # Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .param p2, "len"    # I
    .param p3, "mask"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "p",
            "len",
            "mask"
        }
    .end annotation

    .line 220
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget v2, v0, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->remainder:I

    if-nez v2, :cond_0

    .line 222
    invoke-super/range {p0 .. p4}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->setXorRangeAndMask(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;IJ)V

    .line 223
    return-void

    .line 225
    :cond_0
    iget v2, v0, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->cp:I

    .local v2, "outOff":I
    iget v3, v1, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->cp:I

    .line 227
    .local v3, "inOff":I
    iget v4, v0, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->remainder:I

    shl-int/lit8 v4, v4, 0x3

    .local v4, "left":I
    iget v5, v0, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->remainder:I

    rsub-int/lit8 v5, v5, 0x8

    shl-int/lit8 v5, v5, 0x3

    .line 228
    .local v5, "right":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    move/from16 v7, p2

    if-ge v6, v7, :cond_1

    .line 231
    iget-object v8, v1, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->array:[J

    add-int/lit8 v9, v3, 0x1

    .end local v3    # "inOff":I
    .local v9, "inOff":I
    aget-wide v10, v8, v3

    and-long v10, v10, p3

    .line 232
    .local v10, "v":J
    iget-object v3, v0, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->array:[J

    aget-wide v12, v3, v2

    shl-long v14, v10, v4

    xor-long/2addr v12, v14

    aput-wide v12, v3, v2

    .line 233
    iget-object v3, v0, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->array:[J

    add-int/lit8 v2, v2, 0x1

    aget-wide v12, v3, v2

    ushr-long v14, v10, v5

    xor-long/2addr v12, v14

    aput-wide v12, v3, v2

    .line 228
    add-int/lit8 v6, v6, 0x1

    move v3, v9

    goto :goto_0

    .line 235
    .end local v6    # "i":I
    .end local v9    # "inOff":I
    .end local v10    # "v":J
    .restart local v3    # "inOff":I
    :cond_1
    return-void
.end method

.method public toBytes(I)[B
    .locals 6
    .param p1, "length"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "length"
        }
    .end annotation

    .line 168
    new-array v0, p1, [B

    .line 169
    .local v0, "res":[B
    iget v1, p0, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->remainder:I

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    iget v3, p0, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->remainder:I

    add-int/2addr v2, v3

    if-ge v1, v2, :cond_0

    .line 171
    iget v2, p0, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->remainder:I

    sub-int v2, v1, v2

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->array:[J

    iget v4, p0, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->cp:I

    ushr-int/lit8 v5, v1, 0x3

    add-int/2addr v4, v5

    aget-wide v4, v3, v4

    and-int/lit8 v3, v1, 0x7

    shl-int/lit8 v3, v3, 0x3

    ushr-long v3, v4, v3

    long-to-int v4, v3

    int-to-byte v3, v4

    aput-byte v3, v0, v2

    .line 169
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 173
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method

.method public toBytesMove([BII)I
    .locals 6
    .param p1, "output"    # [B
    .param p2, "outOff"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "output",
            "outOff",
            "length"
        }
    .end annotation

    .line 178
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p3, :cond_1

    .line 180
    add-int/lit8 v1, p2, 0x1

    .end local p2    # "outOff":I
    .local v1, "outOff":I
    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->array:[J

    iget v3, p0, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->cp:I

    aget-wide v3, v2, v3

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->remainder:I

    add-int/lit8 v5, v2, 0x1

    iput v5, p0, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->remainder:I

    shl-int/lit8 v2, v2, 0x3

    ushr-long v2, v3, v2

    long-to-int v3, v2

    int-to-byte v2, v3

    aput-byte v2, p1, p2

    .line 181
    iget p2, p0, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->remainder:I

    const/16 v2, 0x8

    if-ne p2, v2, :cond_0

    .line 183
    const/4 p2, 0x0

    iput p2, p0, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->remainder:I

    .line 184
    iget p2, p0, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->cp:I

    add-int/lit8 p2, p2, 0x1

    iput p2, p0, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->cp:I

    .line 178
    :cond_0
    add-int/lit8 v0, v0, 0x1

    move p2, v1

    goto :goto_0

    .line 187
    .end local v0    # "i":I
    .end local v1    # "outOff":I
    .restart local p2    # "outOff":I
    :cond_1
    return p2
.end method
