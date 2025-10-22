.class public abstract Lorg/bouncycastle/math/ec/ECFieldElement$AbstractF2m;
.super Lorg/bouncycastle/math/ec/ECFieldElement;
.source "ECFieldElement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/math/ec/ECFieldElement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "AbstractF2m"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 483
    invoke-direct {p0}, Lorg/bouncycastle/math/ec/ECFieldElement;-><init>()V

    return-void
.end method


# virtual methods
.method public halfTrace()Lorg/bouncycastle/math/ec/ECFieldElement;
    .locals 6

    .line 487
    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/ECFieldElement$AbstractF2m;->getFieldSize()I

    move-result v0

    .line 488
    .local v0, "m":I
    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_2

    .line 499
    add-int/lit8 v1, v0, 0x1

    ushr-int/lit8 v1, v1, 0x1

    .line 500
    .local v1, "n":I
    invoke-static {v1}, Lorg/bouncycastle/util/Integers;->numberOfLeadingZeros(I)I

    move-result v2

    rsub-int/lit8 v2, v2, 0x1f

    .line 501
    .local v2, "k":I
    const/4 v3, 0x1

    .line 503
    .local v3, "nk":I
    move-object v4, p0

    .line 504
    .local v4, "ht":Lorg/bouncycastle/math/ec/ECFieldElement;
    :cond_0
    :goto_0
    if-lez v2, :cond_1

    .line 506
    shl-int/lit8 v5, v3, 0x1

    invoke-virtual {v4, v5}, Lorg/bouncycastle/math/ec/ECFieldElement;->squarePow(I)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v5

    invoke-virtual {v5, v4}, Lorg/bouncycastle/math/ec/ECFieldElement;->add(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v4

    .line 507
    add-int/lit8 v2, v2, -0x1

    ushr-int v3, v1, v2

    .line 508
    and-int/lit8 v5, v3, 0x1

    if-eqz v5, :cond_0

    .line 510
    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Lorg/bouncycastle/math/ec/ECFieldElement;->squarePow(I)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v5

    invoke-virtual {v5, p0}, Lorg/bouncycastle/math/ec/ECFieldElement;->add(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v4

    goto :goto_0

    .line 514
    :cond_1
    return-object v4

    .line 490
    .end local v1    # "n":I
    .end local v2    # "k":I
    .end local v3    # "nk":I
    .end local v4    # "ht":Lorg/bouncycastle/math/ec/ECFieldElement;
    :cond_2
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Half-trace only defined for odd m"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public hasFastTrace()Z
    .locals 1

    .line 519
    const/4 v0, 0x0

    return v0
.end method

.method public trace()I
    .locals 6

    .line 524
    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/ECFieldElement$AbstractF2m;->getFieldSize()I

    move-result v0

    .line 532
    .local v0, "m":I
    invoke-static {v0}, Lorg/bouncycastle/util/Integers;->numberOfLeadingZeros(I)I

    move-result v1

    rsub-int/lit8 v1, v1, 0x1f

    .line 533
    .local v1, "k":I
    const/4 v2, 0x1

    .line 535
    .local v2, "mk":I
    move-object v3, p0

    .line 536
    .local v3, "tr":Lorg/bouncycastle/math/ec/ECFieldElement;
    :cond_0
    :goto_0
    if-lez v1, :cond_1

    .line 538
    invoke-virtual {v3, v2}, Lorg/bouncycastle/math/ec/ECFieldElement;->squarePow(I)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v4

    invoke-virtual {v4, v3}, Lorg/bouncycastle/math/ec/ECFieldElement;->add(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v3

    .line 539
    add-int/lit8 v1, v1, -0x1

    ushr-int v2, v0, v1

    .line 540
    and-int/lit8 v4, v2, 0x1

    if-eqz v4, :cond_0

    .line 542
    invoke-virtual {v3}, Lorg/bouncycastle/math/ec/ECFieldElement;->square()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v4

    invoke-virtual {v4, p0}, Lorg/bouncycastle/math/ec/ECFieldElement;->add(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v3

    goto :goto_0

    .line 546
    :cond_1
    invoke-virtual {v3}, Lorg/bouncycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 548
    const/4 v4, 0x0

    return v4

    .line 550
    :cond_2
    invoke-virtual {v3}, Lorg/bouncycastle/math/ec/ECFieldElement;->isOne()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 552
    const/4 v4, 0x1

    return v4

    .line 554
    :cond_3
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "Internal error in trace calculation"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4
.end method
