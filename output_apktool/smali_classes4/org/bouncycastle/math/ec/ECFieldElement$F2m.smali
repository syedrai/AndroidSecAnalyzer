.class public Lorg/bouncycastle/math/ec/ECFieldElement$F2m;
.super Lorg/bouncycastle/math/ec/ECFieldElement$AbstractF2m;
.source "ECFieldElement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/math/ec/ECFieldElement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "F2m"
.end annotation


# static fields
.field public static final GNB:I = 0x1

.field public static final PPB:I = 0x3

.field public static final TPB:I = 0x2


# instance fields
.field private ks:[I

.field private m:I

.field private representation:I

.field x:Lorg/bouncycastle/math/ec/LongArray;


# direct methods
.method constructor <init>(I[ILorg/bouncycastle/math/ec/LongArray;)V
    .locals 2
    .param p1, "m"    # I
    .param p2, "ks"    # [I
    .param p3, "x"    # Lorg/bouncycastle/math/ec/LongArray;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "m",
            "ks",
            "x"
        }
    .end annotation

    .line 603
    invoke-direct {p0}, Lorg/bouncycastle/math/ec/ECFieldElement$AbstractF2m;-><init>()V

    .line 604
    iput p1, p0, Lorg/bouncycastle/math/ec/ECFieldElement$F2m;->m:I

    .line 605
    array-length v0, p2

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :cond_0
    const/4 v0, 0x3

    :goto_0
    iput v0, p0, Lorg/bouncycastle/math/ec/ECFieldElement$F2m;->representation:I

    .line 606
    iput-object p2, p0, Lorg/bouncycastle/math/ec/ECFieldElement$F2m;->ks:[I

    .line 607
    iput-object p3, p0, Lorg/bouncycastle/math/ec/ECFieldElement$F2m;->x:Lorg/bouncycastle/math/ec/LongArray;

    .line 608
    return-void
.end method


# virtual methods
.method public add(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;
    .locals 5
    .param p1, "b"    # Lorg/bouncycastle/math/ec/ECFieldElement;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "b"
        }
    .end annotation

    .line 650
    iget-object v0, p0, Lorg/bouncycastle/math/ec/ECFieldElement$F2m;->x:Lorg/bouncycastle/math/ec/LongArray;

    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/LongArray;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/math/ec/LongArray;

    .line 651
    .local v0, "iarrClone":Lorg/bouncycastle/math/ec/LongArray;
    move-object v1, p1

    check-cast v1, Lorg/bouncycastle/math/ec/ECFieldElement$F2m;

    .line 652
    .local v1, "bF2m":Lorg/bouncycastle/math/ec/ECFieldElement$F2m;
    iget-object v2, v1, Lorg/bouncycastle/math/ec/ECFieldElement$F2m;->x:Lorg/bouncycastle/math/ec/LongArray;

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lorg/bouncycastle/math/ec/LongArray;->addShiftedByWords(Lorg/bouncycastle/math/ec/LongArray;I)V

    .line 653
    new-instance v2, Lorg/bouncycastle/math/ec/ECFieldElement$F2m;

    iget v3, p0, Lorg/bouncycastle/math/ec/ECFieldElement$F2m;->m:I

    iget-object v4, p0, Lorg/bouncycastle/math/ec/ECFieldElement$F2m;->ks:[I

    invoke-direct {v2, v3, v4, v0}, Lorg/bouncycastle/math/ec/ECFieldElement$F2m;-><init>(I[ILorg/bouncycastle/math/ec/LongArray;)V

    return-object v2
.end method

.method public addOne()Lorg/bouncycastle/math/ec/ECFieldElement;
    .locals 4

    .line 658
    new-instance v0, Lorg/bouncycastle/math/ec/ECFieldElement$F2m;

    iget v1, p0, Lorg/bouncycastle/math/ec/ECFieldElement$F2m;->m:I

    iget-object v2, p0, Lorg/bouncycastle/math/ec/ECFieldElement$F2m;->ks:[I

    iget-object v3, p0, Lorg/bouncycastle/math/ec/ECFieldElement$F2m;->x:Lorg/bouncycastle/math/ec/LongArray;

    invoke-virtual {v3}, Lorg/bouncycastle/math/ec/LongArray;->addOne()Lorg/bouncycastle/math/ec/LongArray;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lorg/bouncycastle/math/ec/ECFieldElement$F2m;-><init>(I[ILorg/bouncycastle/math/ec/LongArray;)V

    return-object v0
.end method

.method public bitLength()I
    .locals 1

    .line 612
    iget-object v0, p0, Lorg/bouncycastle/math/ec/ECFieldElement$F2m;->x:Lorg/bouncycastle/math/ec/LongArray;

    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/LongArray;->degree()I

    move-result v0

    return v0
.end method

.method public divide(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;
    .locals 2
    .param p1, "b"    # Lorg/bouncycastle/math/ec/ECFieldElement;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "b"
        }
    .end annotation

    .line 705
    invoke-virtual {p1}, Lorg/bouncycastle/math/ec/ECFieldElement;->invert()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    .line 706
    .local v0, "bInv":Lorg/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {p0, v0}, Lorg/bouncycastle/math/ec/ECFieldElement$F2m;->multiply(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v1

    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "anObject"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "anObject"
        }
    .end annotation

    .line 817
    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    .line 819
    return v0

    .line 822
    :cond_0
    instance-of v1, p1, Lorg/bouncycastle/math/ec/ECFieldElement$F2m;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 824
    return v2

    .line 827
    :cond_1
    move-object v1, p1

    check-cast v1, Lorg/bouncycastle/math/ec/ECFieldElement$F2m;

    .line 829
    .local v1, "b":Lorg/bouncycastle/math/ec/ECFieldElement$F2m;
    iget v3, p0, Lorg/bouncycastle/math/ec/ECFieldElement$F2m;->m:I

    iget v4, v1, Lorg/bouncycastle/math/ec/ECFieldElement$F2m;->m:I

    if-ne v3, v4, :cond_2

    iget v3, p0, Lorg/bouncycastle/math/ec/ECFieldElement$F2m;->representation:I

    iget v4, v1, Lorg/bouncycastle/math/ec/ECFieldElement$F2m;->representation:I

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Lorg/bouncycastle/math/ec/ECFieldElement$F2m;->ks:[I

    iget-object v4, v1, Lorg/bouncycastle/math/ec/ECFieldElement$F2m;->ks:[I

    .line 831
    invoke-static {v3, v4}, Lorg/bouncycastle/util/Arrays;->areEqual([I[I)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lorg/bouncycastle/math/ec/ECFieldElement$F2m;->x:Lorg/bouncycastle/math/ec/LongArray;

    iget-object v4, v1, Lorg/bouncycastle/math/ec/ECFieldElement$F2m;->x:Lorg/bouncycastle/math/ec/LongArray;

    .line 832
    invoke-virtual {v3, v4}, Lorg/bouncycastle/math/ec/LongArray;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 829
    :goto_0
    return v0
.end method

.method public getFieldName()Ljava/lang/String;
    .locals 1

    .line 637
    const-string v0, "F2m"

    return-object v0
.end method

.method public getFieldSize()I
    .locals 1

    .line 642
    iget v0, p0, Lorg/bouncycastle/math/ec/ECFieldElement$F2m;->m:I

    return v0
.end method

.method public getK1()I
    .locals 2

    .line 790
    iget-object v0, p0, Lorg/bouncycastle/math/ec/ECFieldElement$F2m;->ks:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0
.end method

.method public getK2()I
    .locals 2

    .line 801
    iget-object v0, p0, Lorg/bouncycastle/math/ec/ECFieldElement$F2m;->ks:[I

    array-length v0, v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/math/ec/ECFieldElement$F2m;->ks:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getK3()I
    .locals 2

    .line 812
    iget-object v0, p0, Lorg/bouncycastle/math/ec/ECFieldElement$F2m;->ks:[I

    array-length v0, v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/math/ec/ECFieldElement$F2m;->ks:[I

    const/4 v1, 0x2

    aget v0, v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getM()I
    .locals 1

    .line 777
    iget v0, p0, Lorg/bouncycastle/math/ec/ECFieldElement$F2m;->m:I

    return v0
.end method

.method public getRepresentation()I
    .locals 1

    .line 768
    iget v0, p0, Lorg/bouncycastle/math/ec/ECFieldElement$F2m;->representation:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 837
    iget-object v0, p0, Lorg/bouncycastle/math/ec/ECFieldElement$F2m;->x:Lorg/bouncycastle/math/ec/LongArray;

    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/LongArray;->hashCode()I

    move-result v0

    iget v1, p0, Lorg/bouncycastle/math/ec/ECFieldElement$F2m;->m:I

    xor-int/2addr v0, v1

    iget-object v1, p0, Lorg/bouncycastle/math/ec/ECFieldElement$F2m;->ks:[I

    invoke-static {v1}, Lorg/bouncycastle/util/Arrays;->hashCode([I)I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public invert()Lorg/bouncycastle/math/ec/ECFieldElement;
    .locals 6

    .line 750
    new-instance v0, Lorg/bouncycastle/math/ec/ECFieldElement$F2m;

    iget v1, p0, Lorg/bouncycastle/math/ec/ECFieldElement$F2m;->m:I

    iget-object v2, p0, Lorg/bouncycastle/math/ec/ECFieldElement$F2m;->ks:[I

    iget-object v3, p0, Lorg/bouncycastle/math/ec/ECFieldElement$F2m;->x:Lorg/bouncycastle/math/ec/LongArray;

    iget v4, p0, Lorg/bouncycastle/math/ec/ECFieldElement$F2m;->m:I

    iget-object v5, p0, Lorg/bouncycastle/math/ec/ECFieldElement$F2m;->ks:[I

    invoke-virtual {v3, v4, v5}, Lorg/bouncycastle/math/ec/LongArray;->modInverse(I[I)Lorg/bouncycastle/math/ec/LongArray;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lorg/bouncycastle/math/ec/ECFieldElement$F2m;-><init>(I[ILorg/bouncycastle/math/ec/LongArray;)V

    return-object v0
.end method

.method public isOne()Z
    .locals 1

    .line 617
    iget-object v0, p0, Lorg/bouncycastle/math/ec/ECFieldElement$F2m;->x:Lorg/bouncycastle/math/ec/LongArray;

    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/LongArray;->isOne()Z

    move-result v0

    return v0
.end method

.method public isZero()Z
    .locals 1

    .line 622
    iget-object v0, p0, Lorg/bouncycastle/math/ec/ECFieldElement$F2m;->x:Lorg/bouncycastle/math/ec/LongArray;

    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/LongArray;->isZero()Z

    move-result v0

    return v0
.end method

.method public multiply(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;
    .locals 7
    .param p1, "b"    # Lorg/bouncycastle/math/ec/ECFieldElement;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "b"
        }
    .end annotation

    .line 676
    new-instance v0, Lorg/bouncycastle/math/ec/ECFieldElement$F2m;

    iget v1, p0, Lorg/bouncycastle/math/ec/ECFieldElement$F2m;->m:I

    iget-object v2, p0, Lorg/bouncycastle/math/ec/ECFieldElement$F2m;->ks:[I

    iget-object v3, p0, Lorg/bouncycastle/math/ec/ECFieldElement$F2m;->x:Lorg/bouncycastle/math/ec/LongArray;

    move-object v4, p1

    check-cast v4, Lorg/bouncycastle/math/ec/ECFieldElement$F2m;

    iget-object v4, v4, Lorg/bouncycastle/math/ec/ECFieldElement$F2m;->x:Lorg/bouncycastle/math/ec/LongArray;

    iget v5, p0, Lorg/bouncycastle/math/ec/ECFieldElement$F2m;->m:I

    iget-object v6, p0, Lorg/bouncycastle/math/ec/ECFieldElement$F2m;->ks:[I

    invoke-virtual {v3, v4, v5, v6}, Lorg/bouncycastle/math/ec/LongArray;->modMultiply(Lorg/bouncycastle/math/ec/LongArray;I[I)Lorg/bouncycastle/math/ec/LongArray;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lorg/bouncycastle/math/ec/ECFieldElement$F2m;-><init>(I[ILorg/bouncycastle/math/ec/LongArray;)V

    return-object v0
.end method

.method public multiplyMinusProduct(Lorg/bouncycastle/math/ec/ECFieldElement;Lorg/bouncycastle/math/ec/ECFieldElement;Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;
    .locals 1
    .param p1, "b"    # Lorg/bouncycastle/math/ec/ECFieldElement;
    .param p2, "x"    # Lorg/bouncycastle/math/ec/ECFieldElement;
    .param p3, "y"    # Lorg/bouncycastle/math/ec/ECFieldElement;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "b",
            "x",
            "y"
        }
    .end annotation

    .line 681
    invoke-virtual {p0, p1, p2, p3}, Lorg/bouncycastle/math/ec/ECFieldElement$F2m;->multiplyPlusProduct(Lorg/bouncycastle/math/ec/ECFieldElement;Lorg/bouncycastle/math/ec/ECFieldElement;Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    return-object v0
.end method

.method public multiplyPlusProduct(Lorg/bouncycastle/math/ec/ECFieldElement;Lorg/bouncycastle/math/ec/ECFieldElement;Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;
    .locals 9
    .param p1, "b"    # Lorg/bouncycastle/math/ec/ECFieldElement;
    .param p2, "x"    # Lorg/bouncycastle/math/ec/ECFieldElement;
    .param p3, "y"    # Lorg/bouncycastle/math/ec/ECFieldElement;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "b",
            "x",
            "y"
        }
    .end annotation

    .line 686
    iget-object v0, p0, Lorg/bouncycastle/math/ec/ECFieldElement$F2m;->x:Lorg/bouncycastle/math/ec/LongArray;

    .local v0, "ax":Lorg/bouncycastle/math/ec/LongArray;
    move-object v1, p1

    check-cast v1, Lorg/bouncycastle/math/ec/ECFieldElement$F2m;

    iget-object v1, v1, Lorg/bouncycastle/math/ec/ECFieldElement$F2m;->x:Lorg/bouncycastle/math/ec/LongArray;

    .local v1, "bx":Lorg/bouncycastle/math/ec/LongArray;
    move-object v2, p2

    check-cast v2, Lorg/bouncycastle/math/ec/ECFieldElement$F2m;

    iget-object v2, v2, Lorg/bouncycastle/math/ec/ECFieldElement$F2m;->x:Lorg/bouncycastle/math/ec/LongArray;

    .local v2, "xx":Lorg/bouncycastle/math/ec/LongArray;
    move-object v3, p3

    check-cast v3, Lorg/bouncycastle/math/ec/ECFieldElement$F2m;

    iget-object v3, v3, Lorg/bouncycastle/math/ec/ECFieldElement$F2m;->x:Lorg/bouncycastle/math/ec/LongArray;

    .line 688
    .local v3, "yx":Lorg/bouncycastle/math/ec/LongArray;
    iget v4, p0, Lorg/bouncycastle/math/ec/ECFieldElement$F2m;->m:I

    iget-object v5, p0, Lorg/bouncycastle/math/ec/ECFieldElement$F2m;->ks:[I

    invoke-virtual {v0, v1, v4, v5}, Lorg/bouncycastle/math/ec/LongArray;->multiply(Lorg/bouncycastle/math/ec/LongArray;I[I)Lorg/bouncycastle/math/ec/LongArray;

    move-result-object v4

    .line 689
    .local v4, "ab":Lorg/bouncycastle/math/ec/LongArray;
    iget v5, p0, Lorg/bouncycastle/math/ec/ECFieldElement$F2m;->m:I

    iget-object v6, p0, Lorg/bouncycastle/math/ec/ECFieldElement$F2m;->ks:[I

    invoke-virtual {v2, v3, v5, v6}, Lorg/bouncycastle/math/ec/LongArray;->multiply(Lorg/bouncycastle/math/ec/LongArray;I[I)Lorg/bouncycastle/math/ec/LongArray;

    move-result-object v5

    .line 691
    .local v5, "xy":Lorg/bouncycastle/math/ec/LongArray;
    if-eq v4, v0, :cond_0

    if-ne v4, v1, :cond_1

    .line 693
    :cond_0
    invoke-virtual {v4}, Lorg/bouncycastle/math/ec/LongArray;->clone()Ljava/lang/Object;

    move-result-object v6

    move-object v4, v6

    check-cast v4, Lorg/bouncycastle/math/ec/LongArray;

    .line 696
    :cond_1
    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Lorg/bouncycastle/math/ec/LongArray;->addShiftedByWords(Lorg/bouncycastle/math/ec/LongArray;I)V

    .line 697
    iget v6, p0, Lorg/bouncycastle/math/ec/ECFieldElement$F2m;->m:I

    iget-object v7, p0, Lorg/bouncycastle/math/ec/ECFieldElement$F2m;->ks:[I

    invoke-virtual {v4, v6, v7}, Lorg/bouncycastle/math/ec/LongArray;->reduce(I[I)V

    .line 699
    new-instance v6, Lorg/bouncycastle/math/ec/ECFieldElement$F2m;

    iget v7, p0, Lorg/bouncycastle/math/ec/ECFieldElement$F2m;->m:I

    iget-object v8, p0, Lorg/bouncycastle/math/ec/ECFieldElement$F2m;->ks:[I

    invoke-direct {v6, v7, v8, v4}, Lorg/bouncycastle/math/ec/ECFieldElement$F2m;-><init>(I[ILorg/bouncycastle/math/ec/LongArray;)V

    return-object v6
.end method

.method public negate()Lorg/bouncycastle/math/ec/ECFieldElement;
    .locals 0

    .line 712
    return-object p0
.end method

.method public sqrt()Lorg/bouncycastle/math/ec/ECFieldElement;
    .locals 1

    .line 755
    iget-object v0, p0, Lorg/bouncycastle/math/ec/ECFieldElement$F2m;->x:Lorg/bouncycastle/math/ec/LongArray;

    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/LongArray;->isZero()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/bouncycastle/math/ec/ECFieldElement$F2m;->x:Lorg/bouncycastle/math/ec/LongArray;

    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/LongArray;->isOne()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget v0, p0, Lorg/bouncycastle/math/ec/ECFieldElement$F2m;->m:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lorg/bouncycastle/math/ec/ECFieldElement$F2m;->squarePow(I)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    goto :goto_1

    :cond_1
    :goto_0
    move-object v0, p0

    :goto_1
    return-object v0
.end method

.method public square()Lorg/bouncycastle/math/ec/ECFieldElement;
    .locals 6

    .line 717
    new-instance v0, Lorg/bouncycastle/math/ec/ECFieldElement$F2m;

    iget v1, p0, Lorg/bouncycastle/math/ec/ECFieldElement$F2m;->m:I

    iget-object v2, p0, Lorg/bouncycastle/math/ec/ECFieldElement$F2m;->ks:[I

    iget-object v3, p0, Lorg/bouncycastle/math/ec/ECFieldElement$F2m;->x:Lorg/bouncycastle/math/ec/LongArray;

    iget v4, p0, Lorg/bouncycastle/math/ec/ECFieldElement$F2m;->m:I

    iget-object v5, p0, Lorg/bouncycastle/math/ec/ECFieldElement$F2m;->ks:[I

    invoke-virtual {v3, v4, v5}, Lorg/bouncycastle/math/ec/LongArray;->modSquare(I[I)Lorg/bouncycastle/math/ec/LongArray;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lorg/bouncycastle/math/ec/ECFieldElement$F2m;-><init>(I[ILorg/bouncycastle/math/ec/LongArray;)V

    return-object v0
.end method

.method public squareMinusProduct(Lorg/bouncycastle/math/ec/ECFieldElement;Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;
    .locals 1
    .param p1, "x"    # Lorg/bouncycastle/math/ec/ECFieldElement;
    .param p2, "y"    # Lorg/bouncycastle/math/ec/ECFieldElement;
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

    .line 722
    invoke-virtual {p0, p1, p2}, Lorg/bouncycastle/math/ec/ECFieldElement$F2m;->squarePlusProduct(Lorg/bouncycastle/math/ec/ECFieldElement;Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    return-object v0
.end method

.method public squarePlusProduct(Lorg/bouncycastle/math/ec/ECFieldElement;Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;
    .locals 8
    .param p1, "x"    # Lorg/bouncycastle/math/ec/ECFieldElement;
    .param p2, "y"    # Lorg/bouncycastle/math/ec/ECFieldElement;
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

    .line 727
    iget-object v0, p0, Lorg/bouncycastle/math/ec/ECFieldElement$F2m;->x:Lorg/bouncycastle/math/ec/LongArray;

    .local v0, "ax":Lorg/bouncycastle/math/ec/LongArray;
    move-object v1, p1

    check-cast v1, Lorg/bouncycastle/math/ec/ECFieldElement$F2m;

    iget-object v1, v1, Lorg/bouncycastle/math/ec/ECFieldElement$F2m;->x:Lorg/bouncycastle/math/ec/LongArray;

    .local v1, "xx":Lorg/bouncycastle/math/ec/LongArray;
    move-object v2, p2

    check-cast v2, Lorg/bouncycastle/math/ec/ECFieldElement$F2m;

    iget-object v2, v2, Lorg/bouncycastle/math/ec/ECFieldElement$F2m;->x:Lorg/bouncycastle/math/ec/LongArray;

    .line 729
    .local v2, "yx":Lorg/bouncycastle/math/ec/LongArray;
    iget v3, p0, Lorg/bouncycastle/math/ec/ECFieldElement$F2m;->m:I

    iget-object v4, p0, Lorg/bouncycastle/math/ec/ECFieldElement$F2m;->ks:[I

    invoke-virtual {v0, v3, v4}, Lorg/bouncycastle/math/ec/LongArray;->square(I[I)Lorg/bouncycastle/math/ec/LongArray;

    move-result-object v3

    .line 730
    .local v3, "aa":Lorg/bouncycastle/math/ec/LongArray;
    iget v4, p0, Lorg/bouncycastle/math/ec/ECFieldElement$F2m;->m:I

    iget-object v5, p0, Lorg/bouncycastle/math/ec/ECFieldElement$F2m;->ks:[I

    invoke-virtual {v1, v2, v4, v5}, Lorg/bouncycastle/math/ec/LongArray;->multiply(Lorg/bouncycastle/math/ec/LongArray;I[I)Lorg/bouncycastle/math/ec/LongArray;

    move-result-object v4

    .line 732
    .local v4, "xy":Lorg/bouncycastle/math/ec/LongArray;
    if-ne v3, v0, :cond_0

    .line 734
    invoke-virtual {v3}, Lorg/bouncycastle/math/ec/LongArray;->clone()Ljava/lang/Object;

    move-result-object v5

    move-object v3, v5

    check-cast v3, Lorg/bouncycastle/math/ec/LongArray;

    .line 737
    :cond_0
    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lorg/bouncycastle/math/ec/LongArray;->addShiftedByWords(Lorg/bouncycastle/math/ec/LongArray;I)V

    .line 738
    iget v5, p0, Lorg/bouncycastle/math/ec/ECFieldElement$F2m;->m:I

    iget-object v6, p0, Lorg/bouncycastle/math/ec/ECFieldElement$F2m;->ks:[I

    invoke-virtual {v3, v5, v6}, Lorg/bouncycastle/math/ec/LongArray;->reduce(I[I)V

    .line 740
    new-instance v5, Lorg/bouncycastle/math/ec/ECFieldElement$F2m;

    iget v6, p0, Lorg/bouncycastle/math/ec/ECFieldElement$F2m;->m:I

    iget-object v7, p0, Lorg/bouncycastle/math/ec/ECFieldElement$F2m;->ks:[I

    invoke-direct {v5, v6, v7, v3}, Lorg/bouncycastle/math/ec/ECFieldElement$F2m;-><init>(I[ILorg/bouncycastle/math/ec/LongArray;)V

    return-object v5
.end method

.method public squarePow(I)Lorg/bouncycastle/math/ec/ECFieldElement;
    .locals 6
    .param p1, "pow"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pow"
        }
    .end annotation

    .line 745
    const/4 v0, 0x1

    if-ge p1, v0, :cond_0

    move-object v0, p0

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/bouncycastle/math/ec/ECFieldElement$F2m;

    iget v1, p0, Lorg/bouncycastle/math/ec/ECFieldElement$F2m;->m:I

    iget-object v2, p0, Lorg/bouncycastle/math/ec/ECFieldElement$F2m;->ks:[I

    iget-object v3, p0, Lorg/bouncycastle/math/ec/ECFieldElement$F2m;->x:Lorg/bouncycastle/math/ec/LongArray;

    iget v4, p0, Lorg/bouncycastle/math/ec/ECFieldElement$F2m;->m:I

    iget-object v5, p0, Lorg/bouncycastle/math/ec/ECFieldElement$F2m;->ks:[I

    invoke-virtual {v3, p1, v4, v5}, Lorg/bouncycastle/math/ec/LongArray;->modSquareN(II[I)Lorg/bouncycastle/math/ec/LongArray;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lorg/bouncycastle/math/ec/ECFieldElement$F2m;-><init>(I[ILorg/bouncycastle/math/ec/LongArray;)V

    :goto_0
    return-object v0
.end method

.method public subtract(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;
    .locals 1
    .param p1, "b"    # Lorg/bouncycastle/math/ec/ECFieldElement;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "b"
        }
    .end annotation

    .line 664
    invoke-virtual {p0, p1}, Lorg/bouncycastle/math/ec/ECFieldElement$F2m;->add(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    return-object v0
.end method

.method public testBitZero()Z
    .locals 1

    .line 627
    iget-object v0, p0, Lorg/bouncycastle/math/ec/ECFieldElement$F2m;->x:Lorg/bouncycastle/math/ec/LongArray;

    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/LongArray;->testBitZero()Z

    move-result v0

    return v0
.end method

.method public toBigInteger()Ljava/math/BigInteger;
    .locals 1

    .line 632
    iget-object v0, p0, Lorg/bouncycastle/math/ec/ECFieldElement$F2m;->x:Lorg/bouncycastle/math/ec/LongArray;

    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/LongArray;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method
