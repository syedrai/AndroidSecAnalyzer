.class public abstract Lorg/bouncycastle/pqc/math/ntru/Polynomial;
.super Ljava/lang/Object;
.source "Polynomial.java"


# instance fields
.field public coeffs:[S

.field protected params:Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;)V
    .locals 1
    .param p1, "params"    # Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "params"
        }
    .end annotation

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    invoke-virtual {p1}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;->n()I

    move-result v0

    new-array v0, v0, [S

    iput-object v0, p0, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->coeffs:[S

    .line 21
    iput-object p1, p0, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->params:Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;

    .line 22
    return-void
.end method

.method static bothNegativeMask(SS)S
    .locals 1
    .param p0, "x"    # S
    .param p1, "y"    # S
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "x",
            "y"
        }
    .end annotation

    .line 34
    and-int v0, p0, p1

    ushr-int/lit8 v0, v0, 0xf

    int-to-short v0, v0

    return v0
.end method

.method static mod3(B)B
    .locals 1
    .param p0, "a"    # B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "a"
        }
    .end annotation

    .line 47
    and-int/lit16 v0, p0, 0xff

    rem-int/lit8 v0, v0, 0x3

    int-to-byte v0, v0

    return v0
.end method

.method static mod3(S)S
    .locals 1
    .param p0, "a"    # S
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "a"
        }
    .end annotation

    .line 41
    const v0, 0xffff

    and-int/2addr v0, p0

    rem-int/lit8 v0, v0, 0x3

    int-to-short v0, v0

    return v0
.end method

.method static modQ(II)I
    .locals 1
    .param p0, "x"    # I
    .param p1, "q"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "x",
            "q"
        }
    .end annotation

    .line 53
    rem-int v0, p0, p1

    return v0
.end method

.method private r2InvToRqInv(Lorg/bouncycastle/pqc/math/ntru/Polynomial;Lorg/bouncycastle/pqc/math/ntru/Polynomial;Lorg/bouncycastle/pqc/math/ntru/Polynomial;Lorg/bouncycastle/pqc/math/ntru/Polynomial;Lorg/bouncycastle/pqc/math/ntru/Polynomial;)V
    .locals 5
    .param p1, "ai"    # Lorg/bouncycastle/pqc/math/ntru/Polynomial;
    .param p2, "a"    # Lorg/bouncycastle/pqc/math/ntru/Polynomial;
    .param p3, "b"    # Lorg/bouncycastle/pqc/math/ntru/Polynomial;
    .param p4, "c"    # Lorg/bouncycastle/pqc/math/ntru/Polynomial;
    .param p5, "s"    # Lorg/bouncycastle/pqc/math/ntru/Polynomial;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "ai",
            "a",
            "b",
            "c",
            "s"
        }
    .end annotation

    .line 364
    iget-object v0, p0, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->coeffs:[S

    array-length v0, v0

    .line 366
    .local v0, "n":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 368
    iget-object v2, p3, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->coeffs:[S

    iget-object v3, p2, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->coeffs:[S

    aget-short v3, v3, v1

    neg-int v3, v3

    int-to-short v3, v3

    aput-short v3, v2, v1

    .line 366
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 370
    :cond_0
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_1

    .line 372
    iget-object v2, p0, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->coeffs:[S

    iget-object v3, p1, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->coeffs:[S

    aget-short v3, v3, v1

    aput-short v3, v2, v1

    .line 370
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 375
    :cond_1
    invoke-virtual {p4, p0, p3}, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->rqMul(Lorg/bouncycastle/pqc/math/ntru/Polynomial;Lorg/bouncycastle/pqc/math/ntru/Polynomial;)V

    .line 376
    iget-object v2, p4, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->coeffs:[S

    const/4 v3, 0x0

    aget-short v4, v2, v3

    add-int/lit8 v4, v4, 0x2

    int-to-short v4, v4

    aput-short v4, v2, v3

    .line 377
    invoke-virtual {p5, p4, p0}, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->rqMul(Lorg/bouncycastle/pqc/math/ntru/Polynomial;Lorg/bouncycastle/pqc/math/ntru/Polynomial;)V

    .line 379
    invoke-virtual {p4, p5, p3}, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->rqMul(Lorg/bouncycastle/pqc/math/ntru/Polynomial;Lorg/bouncycastle/pqc/math/ntru/Polynomial;)V

    .line 380
    iget-object v2, p4, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->coeffs:[S

    aget-short v4, v2, v3

    add-int/lit8 v4, v4, 0x2

    int-to-short v4, v4

    aput-short v4, v2, v3

    .line 381
    invoke-virtual {p0, p4, p5}, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->rqMul(Lorg/bouncycastle/pqc/math/ntru/Polynomial;Lorg/bouncycastle/pqc/math/ntru/Polynomial;)V

    .line 383
    invoke-virtual {p4, p0, p3}, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->rqMul(Lorg/bouncycastle/pqc/math/ntru/Polynomial;Lorg/bouncycastle/pqc/math/ntru/Polynomial;)V

    .line 384
    iget-object v2, p4, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->coeffs:[S

    aget-short v4, v2, v3

    add-int/lit8 v4, v4, 0x2

    int-to-short v4, v4

    aput-short v4, v2, v3

    .line 385
    invoke-virtual {p5, p4, p0}, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->rqMul(Lorg/bouncycastle/pqc/math/ntru/Polynomial;Lorg/bouncycastle/pqc/math/ntru/Polynomial;)V

    .line 387
    invoke-virtual {p4, p5, p3}, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->rqMul(Lorg/bouncycastle/pqc/math/ntru/Polynomial;Lorg/bouncycastle/pqc/math/ntru/Polynomial;)V

    .line 388
    iget-object v2, p4, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->coeffs:[S

    aget-short v4, v2, v3

    add-int/lit8 v4, v4, 0x2

    int-to-short v4, v4

    aput-short v4, v2, v3

    .line 389
    invoke-virtual {p0, p4, p5}, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->rqMul(Lorg/bouncycastle/pqc/math/ntru/Polynomial;Lorg/bouncycastle/pqc/math/ntru/Polynomial;)V

    .line 390
    return-void
.end method


# virtual methods
.method public abstract lift(Lorg/bouncycastle/pqc/math/ntru/Polynomial;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "a"
        }
    .end annotation
.end method

.method public mod3PhiN()V
    .locals 6

    .line 60
    iget-object v0, p0, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->params:Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;->n()I

    move-result v0

    .line 61
    .local v0, "n":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 63
    iget-object v2, p0, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->coeffs:[S

    iget-object v3, p0, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->coeffs:[S

    aget-short v3, v3, v1

    iget-object v4, p0, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->coeffs:[S

    add-int/lit8 v5, v0, -0x1

    aget-short v4, v4, v5

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    int-to-short v3, v3

    invoke-static {v3}, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->mod3(S)S

    move-result v3

    aput-short v3, v2, v1

    .line 61
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 65
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method public modQPhiN()V
    .locals 6

    .line 70
    iget-object v0, p0, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->params:Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;->n()I

    move-result v0

    .line 71
    .local v0, "n":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 73
    iget-object v2, p0, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->coeffs:[S

    iget-object v3, p0, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->coeffs:[S

    aget-short v3, v3, v1

    iget-object v4, p0, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->coeffs:[S

    add-int/lit8 v5, v0, -0x1

    aget-short v4, v4, v5

    sub-int/2addr v3, v4

    int-to-short v3, v3

    aput-short v3, v2, v1

    .line 71
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 75
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method public r2Inv(Lorg/bouncycastle/pqc/math/ntru/Polynomial;)V
    .locals 7
    .param p1, "a"    # Lorg/bouncycastle/pqc/math/ntru/Polynomial;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "a"
        }
    .end annotation

    .line 263
    iget-object v0, p0, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->params:Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;->createPolynomial()Lorg/bouncycastle/pqc/math/ntru/Polynomial;

    move-result-object v3

    .line 264
    .local v3, "f":Lorg/bouncycastle/pqc/math/ntru/Polynomial;
    iget-object v0, p0, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->params:Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;->createPolynomial()Lorg/bouncycastle/pqc/math/ntru/Polynomial;

    move-result-object v4

    .line 265
    .local v4, "g":Lorg/bouncycastle/pqc/math/ntru/Polynomial;
    iget-object v0, p0, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->params:Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;->createPolynomial()Lorg/bouncycastle/pqc/math/ntru/Polynomial;

    move-result-object v5

    .line 266
    .local v5, "v":Lorg/bouncycastle/pqc/math/ntru/Polynomial;
    iget-object v0, p0, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->params:Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;->createPolynomial()Lorg/bouncycastle/pqc/math/ntru/Polynomial;

    move-result-object v6

    .line 267
    .local v6, "w":Lorg/bouncycastle/pqc/math/ntru/Polynomial;
    move-object v1, p0

    move-object v2, p1

    .end local p1    # "a":Lorg/bouncycastle/pqc/math/ntru/Polynomial;
    .local v2, "a":Lorg/bouncycastle/pqc/math/ntru/Polynomial;
    invoke-virtual/range {v1 .. v6}, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->r2Inv(Lorg/bouncycastle/pqc/math/ntru/Polynomial;Lorg/bouncycastle/pqc/math/ntru/Polynomial;Lorg/bouncycastle/pqc/math/ntru/Polynomial;Lorg/bouncycastle/pqc/math/ntru/Polynomial;Lorg/bouncycastle/pqc/math/ntru/Polynomial;)V

    .line 268
    return-void
.end method

.method r2Inv(Lorg/bouncycastle/pqc/math/ntru/Polynomial;Lorg/bouncycastle/pqc/math/ntru/Polynomial;Lorg/bouncycastle/pqc/math/ntru/Polynomial;Lorg/bouncycastle/pqc/math/ntru/Polynomial;Lorg/bouncycastle/pqc/math/ntru/Polynomial;)V
    .locals 18
    .param p1, "a"    # Lorg/bouncycastle/pqc/math/ntru/Polynomial;
    .param p2, "f"    # Lorg/bouncycastle/pqc/math/ntru/Polynomial;
    .param p3, "g"    # Lorg/bouncycastle/pqc/math/ntru/Polynomial;
    .param p4, "v"    # Lorg/bouncycastle/pqc/math/ntru/Polynomial;
    .param p5, "w"    # Lorg/bouncycastle/pqc/math/ntru/Polynomial;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "a",
            "f",
            "g",
            "v",
            "w"
        }
    .end annotation

    .line 292
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    iget-object v6, v0, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->coeffs:[S

    array-length v6, v6

    .line 296
    .local v6, "n":I
    iget-object v7, v5, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->coeffs:[S

    const/4 v8, 0x0

    const/4 v9, 0x1

    aput-short v9, v7, v8

    .line 298
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    if-ge v7, v6, :cond_0

    .line 300
    iget-object v10, v2, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->coeffs:[S

    aput-short v9, v10, v7

    .line 298
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 302
    :cond_0
    const/4 v7, 0x0

    :goto_1
    add-int/lit8 v10, v6, -0x1

    if-ge v7, v10, :cond_1

    .line 304
    iget-object v10, v3, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->coeffs:[S

    add-int/lit8 v11, v6, -0x2

    sub-int/2addr v11, v7

    iget-object v12, v1, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->coeffs:[S

    aget-short v12, v12, v7

    iget-object v13, v1, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->coeffs:[S

    add-int/lit8 v14, v6, -0x1

    aget-short v13, v13, v14

    xor-int/2addr v12, v13

    and-int/2addr v12, v9

    int-to-short v12, v12

    aput-short v12, v10, v11

    .line 302
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 306
    :cond_1
    iget-object v10, v3, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->coeffs:[S

    add-int/lit8 v11, v6, -0x1

    aput-short v8, v10, v11

    .line 308
    const/4 v10, 0x1

    .line 310
    .local v10, "delta":S
    const/4 v11, 0x0

    .local v11, "loop":I
    :goto_2
    add-int/lit8 v12, v6, -0x1

    mul-int/lit8 v12, v12, 0x2

    sub-int/2addr v12, v9

    if-ge v11, v12, :cond_7

    .line 312
    add-int/lit8 v7, v6, -0x1

    :goto_3
    if-lez v7, :cond_2

    .line 314
    iget-object v12, v4, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->coeffs:[S

    iget-object v13, v4, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->coeffs:[S

    add-int/lit8 v14, v7, -0x1

    aget-short v13, v13, v14

    aput-short v13, v12, v7

    .line 312
    add-int/lit8 v7, v7, -0x1

    goto :goto_3

    .line 316
    :cond_2
    iget-object v12, v4, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->coeffs:[S

    aput-short v8, v12, v8

    .line 318
    iget-object v12, v3, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->coeffs:[S

    aget-short v12, v12, v8

    iget-object v13, v2, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->coeffs:[S

    aget-short v13, v13, v8

    and-int/2addr v12, v13

    int-to-short v12, v12

    .line 319
    .local v12, "sign":S
    neg-int v13, v10

    int-to-short v13, v13

    iget-object v14, v3, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->coeffs:[S

    aget-short v14, v14, v8

    neg-int v14, v14

    int-to-short v14, v14

    invoke-static {v13, v14}, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->bothNegativeMask(SS)S

    move-result v13

    .line 320
    .local v13, "swap":S
    neg-int v14, v10

    xor-int/2addr v14, v10

    and-int/2addr v14, v13

    xor-int/2addr v14, v10

    int-to-short v10, v14

    .line 321
    add-int/lit8 v14, v10, 0x1

    int-to-short v10, v14

    .line 323
    const/4 v7, 0x0

    :goto_4
    if-ge v7, v6, :cond_3

    .line 325
    iget-object v14, v2, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->coeffs:[S

    aget-short v14, v14, v7

    iget-object v15, v3, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->coeffs:[S

    aget-short v15, v15, v7

    xor-int/2addr v14, v15

    and-int/2addr v14, v13

    int-to-short v14, v14

    .line 326
    .local v14, "t":S
    iget-object v15, v2, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->coeffs:[S

    aget-short v16, v15, v7

    const/16 v17, 0x0

    xor-int v8, v16, v14

    int-to-short v8, v8

    aput-short v8, v15, v7

    .line 327
    iget-object v8, v3, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->coeffs:[S

    aget-short v15, v8, v7

    xor-int/2addr v15, v14

    int-to-short v15, v15

    aput-short v15, v8, v7

    .line 328
    iget-object v8, v4, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->coeffs:[S

    aget-short v8, v8, v7

    iget-object v15, v5, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->coeffs:[S

    aget-short v15, v15, v7

    xor-int/2addr v8, v15

    and-int/2addr v8, v13

    int-to-short v8, v8

    .line 329
    .end local v14    # "t":S
    .local v8, "t":S
    iget-object v14, v4, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->coeffs:[S

    aget-short v15, v14, v7

    xor-int/2addr v15, v8

    int-to-short v15, v15

    aput-short v15, v14, v7

    .line 330
    iget-object v14, v5, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->coeffs:[S

    aget-short v15, v14, v7

    xor-int/2addr v15, v8

    int-to-short v15, v15

    aput-short v15, v14, v7

    .line 323
    add-int/lit8 v7, v7, 0x1

    const/4 v8, 0x0

    goto :goto_4

    .line 333
    .end local v8    # "t":S
    :cond_3
    const/16 v17, 0x0

    const/4 v7, 0x0

    :goto_5
    if-ge v7, v6, :cond_4

    .line 335
    iget-object v8, v3, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->coeffs:[S

    iget-object v14, v3, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->coeffs:[S

    aget-short v14, v14, v7

    iget-object v15, v2, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->coeffs:[S

    aget-short v15, v15, v7

    and-int/2addr v15, v12

    xor-int/2addr v14, v15

    int-to-short v14, v14

    aput-short v14, v8, v7

    .line 333
    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    .line 337
    :cond_4
    const/4 v7, 0x0

    :goto_6
    if-ge v7, v6, :cond_5

    .line 339
    iget-object v8, v5, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->coeffs:[S

    iget-object v14, v5, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->coeffs:[S

    aget-short v14, v14, v7

    iget-object v15, v4, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->coeffs:[S

    aget-short v15, v15, v7

    and-int/2addr v15, v12

    xor-int/2addr v14, v15

    int-to-short v14, v14

    aput-short v14, v8, v7

    .line 337
    add-int/lit8 v7, v7, 0x1

    goto :goto_6

    .line 341
    :cond_5
    const/4 v7, 0x0

    :goto_7
    add-int/lit8 v8, v6, -0x1

    if-ge v7, v8, :cond_6

    .line 343
    iget-object v8, v3, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->coeffs:[S

    iget-object v14, v3, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->coeffs:[S

    add-int/lit8 v15, v7, 0x1

    aget-short v14, v14, v15

    aput-short v14, v8, v7

    .line 341
    add-int/lit8 v7, v7, 0x1

    goto :goto_7

    .line 345
    :cond_6
    iget-object v8, v3, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->coeffs:[S

    add-int/lit8 v14, v6, -0x1

    aput-short v17, v8, v14

    .line 310
    add-int/lit8 v11, v11, 0x1

    const/4 v8, 0x0

    goto/16 :goto_2

    .line 348
    .end local v12    # "sign":S
    .end local v13    # "swap":S
    :cond_7
    const/16 v17, 0x0

    const/4 v7, 0x0

    :goto_8
    add-int/lit8 v8, v6, -0x1

    if-ge v7, v8, :cond_8

    .line 350
    iget-object v8, v0, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->coeffs:[S

    iget-object v9, v4, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->coeffs:[S

    add-int/lit8 v12, v6, -0x2

    sub-int/2addr v12, v7

    aget-short v9, v9, v12

    aput-short v9, v8, v7

    .line 348
    add-int/lit8 v7, v7, 0x1

    goto :goto_8

    .line 352
    :cond_8
    iget-object v8, v0, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->coeffs:[S

    add-int/lit8 v9, v6, -0x1

    aput-short v17, v8, v9

    .line 353
    return-void
.end method

.method public rqInv(Lorg/bouncycastle/pqc/math/ntru/Polynomial;)V
    .locals 7
    .param p1, "a"    # Lorg/bouncycastle/pqc/math/ntru/Polynomial;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "a"
        }
    .end annotation

    .line 273
    iget-object v0, p0, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->params:Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;->createPolynomial()Lorg/bouncycastle/pqc/math/ntru/Polynomial;

    move-result-object v3

    .line 274
    .local v3, "ai2":Lorg/bouncycastle/pqc/math/ntru/Polynomial;
    iget-object v0, p0, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->params:Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;->createPolynomial()Lorg/bouncycastle/pqc/math/ntru/Polynomial;

    move-result-object v4

    .line 275
    .local v4, "b":Lorg/bouncycastle/pqc/math/ntru/Polynomial;
    iget-object v0, p0, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->params:Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;->createPolynomial()Lorg/bouncycastle/pqc/math/ntru/Polynomial;

    move-result-object v5

    .line 276
    .local v5, "c":Lorg/bouncycastle/pqc/math/ntru/Polynomial;
    iget-object v0, p0, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->params:Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;->createPolynomial()Lorg/bouncycastle/pqc/math/ntru/Polynomial;

    move-result-object v6

    .line 277
    .local v6, "s":Lorg/bouncycastle/pqc/math/ntru/Polynomial;
    move-object v1, p0

    move-object v2, p1

    .end local p1    # "a":Lorg/bouncycastle/pqc/math/ntru/Polynomial;
    .local v2, "a":Lorg/bouncycastle/pqc/math/ntru/Polynomial;
    invoke-virtual/range {v1 .. v6}, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->rqInv(Lorg/bouncycastle/pqc/math/ntru/Polynomial;Lorg/bouncycastle/pqc/math/ntru/Polynomial;Lorg/bouncycastle/pqc/math/ntru/Polynomial;Lorg/bouncycastle/pqc/math/ntru/Polynomial;Lorg/bouncycastle/pqc/math/ntru/Polynomial;)V

    .line 278
    return-void
.end method

.method rqInv(Lorg/bouncycastle/pqc/math/ntru/Polynomial;Lorg/bouncycastle/pqc/math/ntru/Polynomial;Lorg/bouncycastle/pqc/math/ntru/Polynomial;Lorg/bouncycastle/pqc/math/ntru/Polynomial;Lorg/bouncycastle/pqc/math/ntru/Polynomial;)V
    .locals 6
    .param p1, "a"    # Lorg/bouncycastle/pqc/math/ntru/Polynomial;
    .param p2, "ai2"    # Lorg/bouncycastle/pqc/math/ntru/Polynomial;
    .param p3, "b"    # Lorg/bouncycastle/pqc/math/ntru/Polynomial;
    .param p4, "c"    # Lorg/bouncycastle/pqc/math/ntru/Polynomial;
    .param p5, "s"    # Lorg/bouncycastle/pqc/math/ntru/Polynomial;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "a",
            "ai2",
            "b",
            "c",
            "s"
        }
    .end annotation

    .line 357
    invoke-virtual {p2, p1}, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->r2Inv(Lorg/bouncycastle/pqc/math/ntru/Polynomial;)V

    .line 358
    move-object v0, p0

    move-object v2, p1

    move-object v1, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .end local p1    # "a":Lorg/bouncycastle/pqc/math/ntru/Polynomial;
    .end local p2    # "ai2":Lorg/bouncycastle/pqc/math/ntru/Polynomial;
    .end local p3    # "b":Lorg/bouncycastle/pqc/math/ntru/Polynomial;
    .end local p4    # "c":Lorg/bouncycastle/pqc/math/ntru/Polynomial;
    .end local p5    # "s":Lorg/bouncycastle/pqc/math/ntru/Polynomial;
    .local v1, "ai2":Lorg/bouncycastle/pqc/math/ntru/Polynomial;
    .local v2, "a":Lorg/bouncycastle/pqc/math/ntru/Polynomial;
    .local v3, "b":Lorg/bouncycastle/pqc/math/ntru/Polynomial;
    .local v4, "c":Lorg/bouncycastle/pqc/math/ntru/Polynomial;
    .local v5, "s":Lorg/bouncycastle/pqc/math/ntru/Polynomial;
    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->r2InvToRqInv(Lorg/bouncycastle/pqc/math/ntru/Polynomial;Lorg/bouncycastle/pqc/math/ntru/Polynomial;Lorg/bouncycastle/pqc/math/ntru/Polynomial;Lorg/bouncycastle/pqc/math/ntru/Polynomial;Lorg/bouncycastle/pqc/math/ntru/Polynomial;)V

    .line 359
    return-void
.end method

.method public rqMul(Lorg/bouncycastle/pqc/math/ntru/Polynomial;Lorg/bouncycastle/pqc/math/ntru/Polynomial;)V
    .locals 8
    .param p1, "a"    # Lorg/bouncycastle/pqc/math/ntru/Polynomial;
    .param p2, "b"    # Lorg/bouncycastle/pqc/math/ntru/Polynomial;
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

    .line 216
    iget-object v0, p0, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->coeffs:[S

    array-length v0, v0

    .line 218
    .local v0, "n":I
    const/4 v1, 0x0

    .local v1, "k":I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 220
    iget-object v2, p0, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->coeffs:[S

    const/4 v3, 0x0

    aput-short v3, v2, v1

    .line 221
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_1
    sub-int v3, v0, v1

    if-ge v2, v3, :cond_0

    .line 223
    iget-object v3, p0, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->coeffs:[S

    aget-short v4, v3, v1

    iget-object v5, p1, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->coeffs:[S

    add-int v6, v1, v2

    aget-short v5, v5, v6

    iget-object v6, p2, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->coeffs:[S

    sub-int v7, v0, v2

    aget-short v6, v6, v7

    mul-int v5, v5, v6

    add-int/2addr v4, v5

    int-to-short v4, v4

    aput-short v4, v3, v1

    .line 221
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 225
    :cond_0
    const/4 v2, 0x0

    :goto_2
    add-int/lit8 v3, v1, 0x1

    if-ge v2, v3, :cond_1

    .line 227
    iget-object v3, p0, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->coeffs:[S

    aget-short v4, v3, v1

    iget-object v5, p1, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->coeffs:[S

    sub-int v6, v1, v2

    aget-short v5, v5, v6

    iget-object v6, p2, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->coeffs:[S

    aget-short v6, v6, v2

    mul-int v5, v5, v6

    add-int/2addr v4, v5

    int-to-short v4, v4

    aput-short v4, v3, v1

    .line 225
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 218
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 230
    .end local v2    # "i":I
    :cond_2
    return-void
.end method

.method public rqSumZeroFromBytes([B)V
    .locals 6
    .param p1, "a"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "a"
        }
    .end annotation

    .line 122
    iget-object v0, p0, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->coeffs:[S

    array-length v0, v0

    .line 124
    .local v0, "n":I
    invoke-virtual {p0, p1}, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->sqFromBytes([B)V

    .line 125
    iget-object v1, p0, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->coeffs:[S

    add-int/lit8 v2, v0, -0x1

    const/4 v3, 0x0

    aput-short v3, v1, v2

    .line 126
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->params:Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;->packDegree()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 128
    iget-object v2, p0, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->coeffs:[S

    add-int/lit8 v3, v0, -0x1

    aget-short v4, v2, v3

    iget-object v5, p0, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->coeffs:[S

    aget-short v5, v5, v1

    sub-int/2addr v4, v5

    int-to-short v4, v4

    aput-short v4, v2, v3

    .line 126
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 130
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method public rqSumZeroToBytes(I)[B
    .locals 1
    .param p1, "len"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "len"
        }
    .end annotation

    .line 109
    invoke-virtual {p0, p1}, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->sqToBytes(I)[B

    move-result-object v0

    return-object v0
.end method

.method public rqToS3(Lorg/bouncycastle/pqc/math/ntru/Polynomial;)V
    .locals 6
    .param p1, "a"    # Lorg/bouncycastle/pqc/math/ntru/Polynomial;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "a"
        }
    .end annotation

    .line 249
    iget-object v0, p0, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->coeffs:[S

    array-length v0, v0

    .line 251
    .local v0, "n":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 253
    iget-object v2, p0, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->coeffs:[S

    iget-object v3, p1, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->coeffs:[S

    aget-short v3, v3, v1

    const v4, 0xffff

    and-int/2addr v3, v4

    iget-object v4, p0, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->params:Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;

    invoke-virtual {v4}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;->q()I

    move-result v4

    invoke-static {v3, v4}, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->modQ(II)I

    move-result v3

    int-to-short v3, v3

    aput-short v3, v2, v1

    .line 254
    iget-object v2, p0, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->coeffs:[S

    aget-short v2, v2, v1

    iget-object v3, p0, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->params:Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;

    invoke-virtual {v3}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;->logQ()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    ushr-int/2addr v2, v3

    int-to-short v2, v2

    .line 255
    .local v2, "flag":S
    iget-object v3, p0, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->coeffs:[S

    aget-short v4, v3, v1

    iget-object v5, p0, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->params:Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;

    invoke-virtual {v5}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;->logQ()I

    move-result v5

    and-int/lit8 v5, v5, 0x1

    rsub-int/lit8 v5, v5, 0x1

    shl-int v5, v2, v5

    add-int/2addr v4, v5

    int-to-short v4, v4

    aput-short v4, v3, v1

    .line 251
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 257
    .end local v1    # "i":I
    .end local v2    # "flag":S
    :cond_0
    invoke-virtual {p0}, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->mod3PhiN()V

    .line 258
    return-void
.end method

.method public s3FromBytes([B)V
    .locals 8
    .param p1, "msg"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "msg"
        }
    .end annotation

    .line 179
    iget-object v0, p0, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->coeffs:[S

    array-length v0, v0

    .line 181
    .local v0, "n":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->params:Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;->packDegree()I

    move-result v2

    div-int/lit8 v2, v2, 0x5

    const/4 v3, 0x0

    if-ge v1, v2, :cond_0

    .line 183
    aget-byte v2, p1, v1

    .line 184
    .local v2, "c":B
    iget-object v4, p0, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->coeffs:[S

    mul-int/lit8 v5, v1, 0x5

    add-int/2addr v5, v3

    int-to-short v3, v2

    aput-short v3, v4, v5

    .line 185
    iget-object v3, p0, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->coeffs:[S

    mul-int/lit8 v4, v1, 0x5

    add-int/lit8 v4, v4, 0x1

    and-int/lit16 v5, v2, 0xff

    mul-int/lit16 v5, v5, 0xab

    ushr-int/lit8 v5, v5, 0x9

    int-to-short v5, v5

    aput-short v5, v3, v4

    .line 186
    iget-object v3, p0, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->coeffs:[S

    mul-int/lit8 v4, v1, 0x5

    add-int/lit8 v4, v4, 0x2

    and-int/lit16 v5, v2, 0xff

    mul-int/lit8 v5, v5, 0x39

    ushr-int/lit8 v5, v5, 0x9

    int-to-short v5, v5

    aput-short v5, v3, v4

    .line 187
    iget-object v3, p0, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->coeffs:[S

    mul-int/lit8 v4, v1, 0x5

    add-int/lit8 v4, v4, 0x3

    and-int/lit16 v5, v2, 0xff

    mul-int/lit8 v5, v5, 0x13

    ushr-int/lit8 v5, v5, 0x9

    int-to-short v5, v5

    aput-short v5, v3, v4

    .line 188
    iget-object v3, p0, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->coeffs:[S

    mul-int/lit8 v4, v1, 0x5

    add-int/lit8 v4, v4, 0x4

    and-int/lit16 v5, v2, 0xff

    mul-int/lit16 v5, v5, 0xcb

    ushr-int/lit8 v5, v5, 0xe

    int-to-short v5, v5

    aput-short v5, v3, v4

    .line 181
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 191
    .end local v1    # "i":I
    .end local v2    # "c":B
    :cond_0
    iget-object v1, p0, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->params:Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;->packDegree()I

    move-result v1

    iget-object v2, p0, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->params:Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;->packDegree()I

    move-result v2

    div-int/lit8 v2, v2, 0x5

    mul-int/lit8 v2, v2, 0x5

    if-le v1, v2, :cond_1

    .line 193
    iget-object v1, p0, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->params:Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;->packDegree()I

    move-result v1

    div-int/lit8 v1, v1, 0x5

    .line 194
    .restart local v1    # "i":I
    aget-byte v2, p1, v1

    .line 195
    .restart local v2    # "c":B
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_1
    mul-int/lit8 v5, v1, 0x5

    add-int/2addr v5, v4

    iget-object v6, p0, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->params:Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;

    invoke-virtual {v6}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;->packDegree()I

    move-result v6

    if-ge v5, v6, :cond_1

    .line 197
    iget-object v5, p0, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->coeffs:[S

    mul-int/lit8 v6, v1, 0x5

    add-int/2addr v6, v4

    int-to-short v7, v2

    aput-short v7, v5, v6

    .line 198
    and-int/lit16 v5, v2, 0xff

    mul-int/lit16 v5, v5, 0xab

    shr-int/lit8 v5, v5, 0x9

    int-to-byte v2, v5

    .line 195
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 201
    .end local v1    # "i":I
    .end local v2    # "c":B
    .end local v4    # "j":I
    :cond_1
    iget-object v1, p0, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->coeffs:[S

    add-int/lit8 v2, v0, -0x1

    aput-short v3, v1, v2

    .line 202
    invoke-virtual {p0}, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->mod3PhiN()V

    .line 203
    return-void
.end method

.method public s3Inv(Lorg/bouncycastle/pqc/math/ntru/Polynomial;)V
    .locals 7
    .param p1, "a"    # Lorg/bouncycastle/pqc/math/ntru/Polynomial;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "a"
        }
    .end annotation

    .line 283
    iget-object v0, p0, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->params:Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;->createPolynomial()Lorg/bouncycastle/pqc/math/ntru/Polynomial;

    move-result-object v3

    .line 284
    .local v3, "f":Lorg/bouncycastle/pqc/math/ntru/Polynomial;
    iget-object v0, p0, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->params:Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;->createPolynomial()Lorg/bouncycastle/pqc/math/ntru/Polynomial;

    move-result-object v4

    .line 285
    .local v4, "g":Lorg/bouncycastle/pqc/math/ntru/Polynomial;
    iget-object v0, p0, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->params:Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;->createPolynomial()Lorg/bouncycastle/pqc/math/ntru/Polynomial;

    move-result-object v5

    .line 286
    .local v5, "v":Lorg/bouncycastle/pqc/math/ntru/Polynomial;
    iget-object v0, p0, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->params:Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;->createPolynomial()Lorg/bouncycastle/pqc/math/ntru/Polynomial;

    move-result-object v6

    .line 287
    .local v6, "w":Lorg/bouncycastle/pqc/math/ntru/Polynomial;
    move-object v1, p0

    move-object v2, p1

    .end local p1    # "a":Lorg/bouncycastle/pqc/math/ntru/Polynomial;
    .local v2, "a":Lorg/bouncycastle/pqc/math/ntru/Polynomial;
    invoke-virtual/range {v1 .. v6}, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->s3Inv(Lorg/bouncycastle/pqc/math/ntru/Polynomial;Lorg/bouncycastle/pqc/math/ntru/Polynomial;Lorg/bouncycastle/pqc/math/ntru/Polynomial;Lorg/bouncycastle/pqc/math/ntru/Polynomial;Lorg/bouncycastle/pqc/math/ntru/Polynomial;)V

    .line 288
    return-void
.end method

.method s3Inv(Lorg/bouncycastle/pqc/math/ntru/Polynomial;Lorg/bouncycastle/pqc/math/ntru/Polynomial;Lorg/bouncycastle/pqc/math/ntru/Polynomial;Lorg/bouncycastle/pqc/math/ntru/Polynomial;Lorg/bouncycastle/pqc/math/ntru/Polynomial;)V
    .locals 18
    .param p1, "a"    # Lorg/bouncycastle/pqc/math/ntru/Polynomial;
    .param p2, "f"    # Lorg/bouncycastle/pqc/math/ntru/Polynomial;
    .param p3, "g"    # Lorg/bouncycastle/pqc/math/ntru/Polynomial;
    .param p4, "v"    # Lorg/bouncycastle/pqc/math/ntru/Polynomial;
    .param p5, "w"    # Lorg/bouncycastle/pqc/math/ntru/Polynomial;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "a",
            "f",
            "g",
            "v",
            "w"
        }
    .end annotation

    .line 394
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    iget-object v6, v0, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->coeffs:[S

    array-length v6, v6

    .line 398
    .local v6, "n":I
    iget-object v7, v5, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->coeffs:[S

    const/4 v8, 0x0

    const/4 v9, 0x1

    aput-short v9, v7, v8

    .line 400
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    if-ge v7, v6, :cond_0

    .line 402
    iget-object v10, v2, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->coeffs:[S

    aput-short v9, v10, v7

    .line 400
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 404
    :cond_0
    const/4 v7, 0x0

    :goto_1
    add-int/lit8 v10, v6, -0x1

    if-ge v7, v10, :cond_1

    .line 406
    iget-object v10, v3, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->coeffs:[S

    add-int/lit8 v11, v6, -0x2

    sub-int/2addr v11, v7

    iget-object v12, v1, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->coeffs:[S

    aget-short v12, v12, v7

    and-int/lit8 v12, v12, 0x3

    iget-object v13, v1, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->coeffs:[S

    add-int/lit8 v14, v6, -0x1

    aget-short v13, v13, v14

    and-int/lit8 v13, v13, 0x3

    mul-int/lit8 v13, v13, 0x2

    add-int/2addr v12, v13

    int-to-short v12, v12

    invoke-static {v12}, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->mod3(S)S

    move-result v12

    aput-short v12, v10, v11

    .line 404
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 408
    :cond_1
    iget-object v10, v3, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->coeffs:[S

    add-int/lit8 v11, v6, -0x1

    aput-short v8, v10, v11

    .line 410
    const/4 v10, 0x1

    .line 412
    .local v10, "delta":S
    const/4 v11, 0x0

    .local v11, "loop":I
    :goto_2
    add-int/lit8 v12, v6, -0x1

    mul-int/lit8 v12, v12, 0x2

    sub-int/2addr v12, v9

    if-ge v11, v12, :cond_7

    .line 414
    add-int/lit8 v7, v6, -0x1

    :goto_3
    if-lez v7, :cond_2

    .line 416
    iget-object v12, v4, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->coeffs:[S

    iget-object v13, v4, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->coeffs:[S

    add-int/lit8 v14, v7, -0x1

    aget-short v13, v13, v14

    aput-short v13, v12, v7

    .line 414
    add-int/lit8 v7, v7, -0x1

    goto :goto_3

    .line 418
    :cond_2
    iget-object v12, v4, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->coeffs:[S

    aput-short v8, v12, v8

    .line 420
    iget-object v12, v3, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->coeffs:[S

    aget-short v12, v12, v8

    mul-int/lit8 v12, v12, 0x2

    iget-object v13, v2, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->coeffs:[S

    aget-short v13, v13, v8

    mul-int v12, v12, v13

    int-to-byte v12, v12

    invoke-static {v12}, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->mod3(B)B

    move-result v12

    int-to-short v12, v12

    .line 421
    .local v12, "sign":S
    neg-int v13, v10

    int-to-short v13, v13

    iget-object v14, v3, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->coeffs:[S

    aget-short v14, v14, v8

    neg-int v14, v14

    int-to-short v14, v14

    invoke-static {v13, v14}, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->bothNegativeMask(SS)S

    move-result v13

    .line 422
    .local v13, "swap":S
    neg-int v14, v10

    xor-int/2addr v14, v10

    and-int/2addr v14, v13

    xor-int/2addr v14, v10

    int-to-short v10, v14

    .line 423
    add-int/lit8 v14, v10, 0x1

    int-to-short v10, v14

    .line 425
    const/4 v7, 0x0

    :goto_4
    if-ge v7, v6, :cond_3

    .line 427
    iget-object v14, v2, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->coeffs:[S

    aget-short v14, v14, v7

    iget-object v15, v3, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->coeffs:[S

    aget-short v15, v15, v7

    xor-int/2addr v14, v15

    and-int/2addr v14, v13

    int-to-short v14, v14

    .line 428
    .local v14, "t":S
    iget-object v15, v2, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->coeffs:[S

    aget-short v16, v15, v7

    const/16 v17, 0x0

    xor-int v8, v16, v14

    int-to-short v8, v8

    aput-short v8, v15, v7

    .line 429
    iget-object v8, v3, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->coeffs:[S

    aget-short v15, v8, v7

    xor-int/2addr v15, v14

    int-to-short v15, v15

    aput-short v15, v8, v7

    .line 430
    iget-object v8, v4, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->coeffs:[S

    aget-short v8, v8, v7

    iget-object v15, v5, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->coeffs:[S

    aget-short v15, v15, v7

    xor-int/2addr v8, v15

    and-int/2addr v8, v13

    int-to-short v8, v8

    .line 431
    .end local v14    # "t":S
    .local v8, "t":S
    iget-object v14, v4, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->coeffs:[S

    aget-short v15, v14, v7

    xor-int/2addr v15, v8

    int-to-short v15, v15

    aput-short v15, v14, v7

    .line 432
    iget-object v14, v5, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->coeffs:[S

    aget-short v15, v14, v7

    xor-int/2addr v15, v8

    int-to-short v15, v15

    aput-short v15, v14, v7

    .line 425
    add-int/lit8 v7, v7, 0x1

    const/4 v8, 0x0

    goto :goto_4

    .line 435
    .end local v8    # "t":S
    :cond_3
    const/16 v17, 0x0

    const/4 v7, 0x0

    :goto_5
    if-ge v7, v6, :cond_4

    .line 437
    iget-object v8, v3, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->coeffs:[S

    iget-object v14, v3, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->coeffs:[S

    aget-short v14, v14, v7

    iget-object v15, v2, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->coeffs:[S

    aget-short v15, v15, v7

    mul-int v15, v15, v12

    add-int/2addr v14, v15

    int-to-byte v14, v14

    invoke-static {v14}, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->mod3(B)B

    move-result v14

    int-to-short v14, v14

    aput-short v14, v8, v7

    .line 435
    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    .line 439
    :cond_4
    const/4 v7, 0x0

    :goto_6
    if-ge v7, v6, :cond_5

    .line 441
    iget-object v8, v5, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->coeffs:[S

    iget-object v14, v5, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->coeffs:[S

    aget-short v14, v14, v7

    iget-object v15, v4, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->coeffs:[S

    aget-short v15, v15, v7

    mul-int v15, v15, v12

    add-int/2addr v14, v15

    int-to-byte v14, v14

    invoke-static {v14}, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->mod3(B)B

    move-result v14

    int-to-short v14, v14

    aput-short v14, v8, v7

    .line 439
    add-int/lit8 v7, v7, 0x1

    goto :goto_6

    .line 443
    :cond_5
    const/4 v7, 0x0

    :goto_7
    add-int/lit8 v8, v6, -0x1

    if-ge v7, v8, :cond_6

    .line 445
    iget-object v8, v3, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->coeffs:[S

    iget-object v14, v3, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->coeffs:[S

    add-int/lit8 v15, v7, 0x1

    aget-short v14, v14, v15

    aput-short v14, v8, v7

    .line 443
    add-int/lit8 v7, v7, 0x1

    goto :goto_7

    .line 447
    :cond_6
    iget-object v8, v3, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->coeffs:[S

    add-int/lit8 v14, v6, -0x1

    aput-short v17, v8, v14

    .line 412
    add-int/lit8 v11, v11, 0x1

    const/4 v8, 0x0

    goto/16 :goto_2

    .line 450
    .end local v12    # "sign":S
    .end local v13    # "swap":S
    :cond_7
    const/16 v17, 0x0

    iget-object v8, v2, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->coeffs:[S

    aget-short v8, v8, v17

    .line 451
    .local v8, "sign":S
    const/4 v7, 0x0

    :goto_8
    add-int/lit8 v9, v6, -0x1

    if-ge v7, v9, :cond_8

    .line 453
    iget-object v9, v0, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->coeffs:[S

    iget-object v12, v4, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->coeffs:[S

    add-int/lit8 v13, v6, -0x2

    sub-int/2addr v13, v7

    aget-short v12, v12, v13

    mul-int v12, v12, v8

    int-to-byte v12, v12

    invoke-static {v12}, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->mod3(B)B

    move-result v12

    int-to-short v12, v12

    aput-short v12, v9, v7

    .line 451
    add-int/lit8 v7, v7, 0x1

    goto :goto_8

    .line 455
    :cond_8
    iget-object v9, v0, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->coeffs:[S

    add-int/lit8 v12, v6, -0x1

    aput-short v17, v9, v12

    .line 456
    return-void
.end method

.method public s3Mul(Lorg/bouncycastle/pqc/math/ntru/Polynomial;Lorg/bouncycastle/pqc/math/ntru/Polynomial;)V
    .locals 0
    .param p1, "a"    # Lorg/bouncycastle/pqc/math/ntru/Polynomial;
    .param p2, "b"    # Lorg/bouncycastle/pqc/math/ntru/Polynomial;
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

    .line 235
    invoke-virtual {p0, p1, p2}, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->rqMul(Lorg/bouncycastle/pqc/math/ntru/Polynomial;Lorg/bouncycastle/pqc/math/ntru/Polynomial;)V

    .line 236
    invoke-virtual {p0}, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->mod3PhiN()V

    .line 237
    return-void
.end method

.method public s3ToBytes(I)[B
    .locals 7
    .param p1, "messageSize"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "messageSize"
        }
    .end annotation

    .line 143
    new-array v0, p1, [B

    .line 146
    .local v0, "msg":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->params:Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;->packDegree()I

    move-result v2

    div-int/lit8 v2, v2, 0x5

    if-ge v1, v2, :cond_0

    .line 148
    iget-object v2, p0, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->coeffs:[S

    mul-int/lit8 v3, v1, 0x5

    add-int/lit8 v3, v3, 0x4

    aget-short v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    .line 149
    .local v2, "c":B
    mul-int/lit8 v3, v2, 0x3

    iget-object v4, p0, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->coeffs:[S

    mul-int/lit8 v5, v1, 0x5

    add-int/lit8 v5, v5, 0x3

    aget-short v4, v4, v5

    add-int/2addr v3, v4

    and-int/lit16 v3, v3, 0xff

    int-to-byte v2, v3

    .line 150
    mul-int/lit8 v3, v2, 0x3

    iget-object v4, p0, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->coeffs:[S

    mul-int/lit8 v5, v1, 0x5

    add-int/lit8 v5, v5, 0x2

    aget-short v4, v4, v5

    add-int/2addr v3, v4

    and-int/lit16 v3, v3, 0xff

    int-to-byte v2, v3

    .line 151
    mul-int/lit8 v3, v2, 0x3

    iget-object v4, p0, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->coeffs:[S

    mul-int/lit8 v5, v1, 0x5

    add-int/lit8 v5, v5, 0x1

    aget-short v4, v4, v5

    add-int/2addr v3, v4

    and-int/lit16 v3, v3, 0xff

    int-to-byte v2, v3

    .line 152
    mul-int/lit8 v3, v2, 0x3

    iget-object v4, p0, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->coeffs:[S

    mul-int/lit8 v5, v1, 0x5

    add-int/lit8 v5, v5, 0x0

    aget-short v4, v4, v5

    add-int/2addr v3, v4

    and-int/lit16 v3, v3, 0xff

    int-to-byte v2, v3

    .line 153
    aput-byte v2, v0, v1

    .line 146
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 157
    .end local v1    # "i":I
    .end local v2    # "c":B
    :cond_0
    iget-object v1, p0, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->params:Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;->packDegree()I

    move-result v1

    iget-object v2, p0, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->params:Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;->packDegree()I

    move-result v2

    div-int/lit8 v2, v2, 0x5

    mul-int/lit8 v2, v2, 0x5

    if-le v1, v2, :cond_2

    .line 159
    iget-object v1, p0, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->params:Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;->packDegree()I

    move-result v1

    div-int/lit8 v1, v1, 0x5

    .line 160
    .restart local v1    # "i":I
    const/4 v2, 0x0

    .line 161
    .restart local v2    # "c":B
    iget-object v3, p0, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->params:Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;

    invoke-virtual {v3}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;->packDegree()I

    move-result v3

    mul-int/lit8 v4, v1, 0x5

    sub-int/2addr v3, v4

    add-int/lit8 v3, v3, -0x1

    .local v3, "j":I
    :goto_1
    if-ltz v3, :cond_1

    .line 163
    mul-int/lit8 v4, v2, 0x3

    iget-object v5, p0, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->coeffs:[S

    mul-int/lit8 v6, v1, 0x5

    add-int/2addr v6, v3

    aget-short v5, v5, v6

    add-int/2addr v4, v5

    and-int/lit16 v4, v4, 0xff

    int-to-byte v2, v4

    .line 161
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 165
    .end local v3    # "j":I
    :cond_1
    aput-byte v2, v0, v1

    .line 167
    .end local v1    # "i":I
    .end local v2    # "c":B
    :cond_2
    return-object v0
.end method

.method public abstract sqFromBytes([B)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "a"
        }
    .end annotation
.end method

.method public sqMul(Lorg/bouncycastle/pqc/math/ntru/Polynomial;Lorg/bouncycastle/pqc/math/ntru/Polynomial;)V
    .locals 0
    .param p1, "a"    # Lorg/bouncycastle/pqc/math/ntru/Polynomial;
    .param p2, "b"    # Lorg/bouncycastle/pqc/math/ntru/Polynomial;
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

    .line 209
    invoke-virtual {p0, p1, p2}, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->rqMul(Lorg/bouncycastle/pqc/math/ntru/Polynomial;Lorg/bouncycastle/pqc/math/ntru/Polynomial;)V

    .line 210
    invoke-virtual {p0}, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->modQPhiN()V

    .line 211
    return-void
.end method

.method public abstract sqToBytes(I)[B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "len"
        }
    .end annotation
.end method

.method public trinaryZqToZ3()V
    .locals 6

    .line 470
    iget-object v0, p0, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->coeffs:[S

    array-length v0, v0

    .line 471
    .local v0, "n":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 473
    iget-object v2, p0, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->coeffs:[S

    iget-object v3, p0, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->coeffs:[S

    aget-short v3, v3, v1

    const v4, 0xffff

    and-int/2addr v3, v4

    iget-object v4, p0, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->params:Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;

    invoke-virtual {v4}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;->q()I

    move-result v4

    invoke-static {v3, v4}, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->modQ(II)I

    move-result v3

    int-to-short v3, v3

    aput-short v3, v2, v1

    .line 474
    iget-object v2, p0, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->coeffs:[S

    iget-object v3, p0, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->coeffs:[S

    aget-short v3, v3, v1

    iget-object v4, p0, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->coeffs:[S

    aget-short v4, v4, v1

    iget-object v5, p0, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->params:Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;

    invoke-virtual {v5}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;->logQ()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    ushr-int/2addr v4, v5

    xor-int/2addr v3, v4

    and-int/lit8 v3, v3, 0x3

    int-to-short v3, v3

    aput-short v3, v2, v1

    .line 471
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 476
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method public z3ToZq()V
    .locals 6

    .line 461
    iget-object v0, p0, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->coeffs:[S

    array-length v0, v0

    .line 462
    .local v0, "n":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 464
    iget-object v2, p0, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->coeffs:[S

    iget-object v3, p0, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->coeffs:[S

    aget-short v3, v3, v1

    iget-object v4, p0, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->coeffs:[S

    aget-short v4, v4, v1

    ushr-int/lit8 v4, v4, 0x1

    neg-int v4, v4

    iget-object v5, p0, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->params:Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;

    invoke-virtual {v5}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;->q()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    and-int/2addr v4, v5

    or-int/2addr v3, v4

    int-to-short v3, v3

    aput-short v3, v2, v1

    .line 462
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 466
    .end local v1    # "i":I
    :cond_0
    return-void
.end method
