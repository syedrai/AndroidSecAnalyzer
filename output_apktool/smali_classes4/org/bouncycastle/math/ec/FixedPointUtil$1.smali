.class Lorg/bouncycastle/math/ec/FixedPointUtil$1;
.super Ljava/lang/Object;
.source "FixedPointUtil.java"

# interfaces
.implements Lorg/bouncycastle/math/ec/PreCompCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/bouncycastle/math/ec/FixedPointUtil;->precompute(Lorg/bouncycastle/math/ec/ECPoint;)Lorg/bouncycastle/math/ec/FixedPointPreCompInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$c:Lorg/bouncycastle/math/ec/ECCurve;

.field final synthetic val$p:Lorg/bouncycastle/math/ec/ECPoint;


# direct methods
.method constructor <init>(Lorg/bouncycastle/math/ec/ECCurve;Lorg/bouncycastle/math/ec/ECPoint;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "val$c",
            "val$p"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 25
    iput-object p1, p0, Lorg/bouncycastle/math/ec/FixedPointUtil$1;->val$c:Lorg/bouncycastle/math/ec/ECCurve;

    iput-object p2, p0, Lorg/bouncycastle/math/ec/FixedPointUtil$1;->val$p:Lorg/bouncycastle/math/ec/ECPoint;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private checkExisting(Lorg/bouncycastle/math/ec/FixedPointPreCompInfo;I)Z
    .locals 1
    .param p1, "existingFP"    # Lorg/bouncycastle/math/ec/FixedPointPreCompInfo;
    .param p2, "n"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "existingFP",
            "n"
        }
    .end annotation

    .line 78
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lorg/bouncycastle/math/ec/FixedPointPreCompInfo;->getLookupTable()Lorg/bouncycastle/math/ec/ECLookupTable;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lorg/bouncycastle/math/ec/FixedPointUtil$1;->checkTable(Lorg/bouncycastle/math/ec/ECLookupTable;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private checkTable(Lorg/bouncycastle/math/ec/ECLookupTable;I)Z
    .locals 1
    .param p1, "table"    # Lorg/bouncycastle/math/ec/ECLookupTable;
    .param p2, "n"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "table",
            "n"
        }
    .end annotation

    .line 83
    if-eqz p1, :cond_0

    invoke-interface {p1}, Lorg/bouncycastle/math/ec/ECLookupTable;->getSize()I

    move-result v0

    if-lt v0, p2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public precompute(Lorg/bouncycastle/math/ec/PreCompInfo;)Lorg/bouncycastle/math/ec/PreCompInfo;
    .locals 14
    .param p1, "existing"    # Lorg/bouncycastle/math/ec/PreCompInfo;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "existing"
        }
    .end annotation

    .line 28
    instance-of v0, p1, Lorg/bouncycastle/math/ec/FixedPointPreCompInfo;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lorg/bouncycastle/math/ec/FixedPointPreCompInfo;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 30
    .local v0, "existingFP":Lorg/bouncycastle/math/ec/FixedPointPreCompInfo;
    :goto_0
    iget-object v1, p0, Lorg/bouncycastle/math/ec/FixedPointUtil$1;->val$c:Lorg/bouncycastle/math/ec/ECCurve;

    invoke-static {v1}, Lorg/bouncycastle/math/ec/FixedPointUtil;->getCombSize(Lorg/bouncycastle/math/ec/ECCurve;)I

    move-result v1

    .line 31
    .local v1, "bits":I
    const/16 v2, 0xfa

    if-le v1, v2, :cond_1

    const/4 v2, 0x6

    goto :goto_1

    :cond_1
    const/4 v2, 0x5

    .line 32
    .local v2, "minWidth":I
    :goto_1
    const/4 v3, 0x1

    shl-int v4, v3, v2

    .line 34
    .local v4, "n":I
    invoke-direct {p0, v0, v4}, Lorg/bouncycastle/math/ec/FixedPointUtil$1;->checkExisting(Lorg/bouncycastle/math/ec/FixedPointPreCompInfo;I)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 36
    return-object v0

    .line 39
    :cond_2
    add-int v5, v1, v2

    sub-int/2addr v5, v3

    div-int/2addr v5, v2

    .line 41
    .local v5, "d":I
    add-int/lit8 v6, v2, 0x1

    new-array v6, v6, [Lorg/bouncycastle/math/ec/ECPoint;

    .line 42
    .local v6, "pow2Table":[Lorg/bouncycastle/math/ec/ECPoint;
    iget-object v7, p0, Lorg/bouncycastle/math/ec/FixedPointUtil$1;->val$p:Lorg/bouncycastle/math/ec/ECPoint;

    const/4 v8, 0x0

    aput-object v7, v6, v8

    .line 43
    const/4 v7, 0x1

    .local v7, "i":I
    :goto_2
    if-ge v7, v2, :cond_3

    .line 45
    add-int/lit8 v9, v7, -0x1

    aget-object v9, v6, v9

    invoke-virtual {v9, v5}, Lorg/bouncycastle/math/ec/ECPoint;->timesPow2(I)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v9

    aput-object v9, v6, v7

    .line 43
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 49
    .end local v7    # "i":I
    :cond_3
    aget-object v7, v6, v8

    aget-object v9, v6, v3

    invoke-virtual {v7, v9}, Lorg/bouncycastle/math/ec/ECPoint;->subtract(Lorg/bouncycastle/math/ec/ECPoint;)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v7

    aput-object v7, v6, v2

    .line 51
    iget-object v7, p0, Lorg/bouncycastle/math/ec/FixedPointUtil$1;->val$c:Lorg/bouncycastle/math/ec/ECCurve;

    invoke-virtual {v7, v6}, Lorg/bouncycastle/math/ec/ECCurve;->normalizeAll([Lorg/bouncycastle/math/ec/ECPoint;)V

    .line 53
    new-array v7, v4, [Lorg/bouncycastle/math/ec/ECPoint;

    .line 54
    .local v7, "lookupTable":[Lorg/bouncycastle/math/ec/ECPoint;
    aget-object v9, v6, v8

    aput-object v9, v7, v8

    .line 56
    add-int/lit8 v9, v2, -0x1

    .local v9, "bit":I
    :goto_3
    if-ltz v9, :cond_5

    .line 58
    aget-object v10, v6, v9

    .line 60
    .local v10, "pow2":Lorg/bouncycastle/math/ec/ECPoint;
    shl-int v11, v3, v9

    .line 61
    .local v11, "step":I
    move v12, v11

    .local v12, "i":I
    :goto_4
    if-ge v12, v4, :cond_4

    .line 63
    sub-int v13, v12, v11

    aget-object v13, v7, v13

    invoke-virtual {v13, v10}, Lorg/bouncycastle/math/ec/ECPoint;->add(Lorg/bouncycastle/math/ec/ECPoint;)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v13

    aput-object v13, v7, v12

    .line 61
    shl-int/lit8 v13, v11, 0x1

    add-int/2addr v12, v13

    goto :goto_4

    .line 56
    .end local v10    # "pow2":Lorg/bouncycastle/math/ec/ECPoint;
    .end local v11    # "step":I
    .end local v12    # "i":I
    :cond_4
    add-int/lit8 v9, v9, -0x1

    goto :goto_3

    .line 67
    .end local v9    # "bit":I
    :cond_5
    iget-object v3, p0, Lorg/bouncycastle/math/ec/FixedPointUtil$1;->val$c:Lorg/bouncycastle/math/ec/ECCurve;

    invoke-virtual {v3, v7}, Lorg/bouncycastle/math/ec/ECCurve;->normalizeAll([Lorg/bouncycastle/math/ec/ECPoint;)V

    .line 69
    new-instance v3, Lorg/bouncycastle/math/ec/FixedPointPreCompInfo;

    invoke-direct {v3}, Lorg/bouncycastle/math/ec/FixedPointPreCompInfo;-><init>()V

    .line 70
    .local v3, "result":Lorg/bouncycastle/math/ec/FixedPointPreCompInfo;
    iget-object v9, p0, Lorg/bouncycastle/math/ec/FixedPointUtil$1;->val$c:Lorg/bouncycastle/math/ec/ECCurve;

    array-length v10, v7

    invoke-virtual {v9, v7, v8, v10}, Lorg/bouncycastle/math/ec/ECCurve;->createCacheSafeLookupTable([Lorg/bouncycastle/math/ec/ECPoint;II)Lorg/bouncycastle/math/ec/ECLookupTable;

    move-result-object v8

    invoke-virtual {v3, v8}, Lorg/bouncycastle/math/ec/FixedPointPreCompInfo;->setLookupTable(Lorg/bouncycastle/math/ec/ECLookupTable;)V

    .line 71
    aget-object v8, v6, v2

    invoke-virtual {v3, v8}, Lorg/bouncycastle/math/ec/FixedPointPreCompInfo;->setOffset(Lorg/bouncycastle/math/ec/ECPoint;)V

    .line 72
    invoke-virtual {v3, v2}, Lorg/bouncycastle/math/ec/FixedPointPreCompInfo;->setWidth(I)V

    .line 73
    return-object v3
.end method
