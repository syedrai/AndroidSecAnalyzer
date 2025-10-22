.class Lorg/bouncycastle/math/ec/ECCurve$F2m$1;
.super Lorg/bouncycastle/math/ec/AbstractECLookupTable;
.source "ECCurve.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/bouncycastle/math/ec/ECCurve$F2m;->createCacheSafeLookupTable([Lorg/bouncycastle/math/ec/ECPoint;II)Lorg/bouncycastle/math/ec/ECLookupTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/bouncycastle/math/ec/ECCurve$F2m;

.field final synthetic val$FE_LONGS:I

.field final synthetic val$ks:[I

.field final synthetic val$len:I

.field final synthetic val$table:[J


# direct methods
.method constructor <init>(Lorg/bouncycastle/math/ec/ECCurve$F2m;II[J[I)V
    .locals 0
    .param p1, "this$0"    # Lorg/bouncycastle/math/ec/ECCurve$F2m;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$len",
            "val$FE_LONGS",
            "val$table",
            "val$ks"
        }
    .end annotation

    .line 1393
    iput p2, p0, Lorg/bouncycastle/math/ec/ECCurve$F2m$1;->val$len:I

    iput p3, p0, Lorg/bouncycastle/math/ec/ECCurve$F2m$1;->val$FE_LONGS:I

    iput-object p4, p0, Lorg/bouncycastle/math/ec/ECCurve$F2m$1;->val$table:[J

    iput-object p5, p0, Lorg/bouncycastle/math/ec/ECCurve$F2m$1;->val$ks:[I

    iput-object p1, p0, Lorg/bouncycastle/math/ec/ECCurve$F2m$1;->this$0:Lorg/bouncycastle/math/ec/ECCurve$F2m;

    invoke-direct {p0}, Lorg/bouncycastle/math/ec/AbstractECLookupTable;-><init>()V

    return-void
.end method

.method private createPoint([J[J)Lorg/bouncycastle/math/ec/ECPoint;
    .locals 5
    .param p1, "x"    # [J
    .param p2, "y"    # [J
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

    .line 1436
    new-instance v0, Lorg/bouncycastle/math/ec/ECFieldElement$F2m;

    iget-object v1, p0, Lorg/bouncycastle/math/ec/ECCurve$F2m$1;->this$0:Lorg/bouncycastle/math/ec/ECCurve$F2m;

    invoke-static {v1}, Lorg/bouncycastle/math/ec/ECCurve$F2m;->-$$Nest$fgetm(Lorg/bouncycastle/math/ec/ECCurve$F2m;)I

    move-result v1

    iget-object v2, p0, Lorg/bouncycastle/math/ec/ECCurve$F2m$1;->val$ks:[I

    new-instance v3, Lorg/bouncycastle/math/ec/LongArray;

    invoke-direct {v3, p1}, Lorg/bouncycastle/math/ec/LongArray;-><init>([J)V

    invoke-direct {v0, v1, v2, v3}, Lorg/bouncycastle/math/ec/ECFieldElement$F2m;-><init>(I[ILorg/bouncycastle/math/ec/LongArray;)V

    .line 1437
    .local v0, "X":Lorg/bouncycastle/math/ec/ECFieldElement$F2m;
    new-instance v1, Lorg/bouncycastle/math/ec/ECFieldElement$F2m;

    iget-object v2, p0, Lorg/bouncycastle/math/ec/ECCurve$F2m$1;->this$0:Lorg/bouncycastle/math/ec/ECCurve$F2m;

    invoke-static {v2}, Lorg/bouncycastle/math/ec/ECCurve$F2m;->-$$Nest$fgetm(Lorg/bouncycastle/math/ec/ECCurve$F2m;)I

    move-result v2

    iget-object v3, p0, Lorg/bouncycastle/math/ec/ECCurve$F2m$1;->val$ks:[I

    new-instance v4, Lorg/bouncycastle/math/ec/LongArray;

    invoke-direct {v4, p2}, Lorg/bouncycastle/math/ec/LongArray;-><init>([J)V

    invoke-direct {v1, v2, v3, v4}, Lorg/bouncycastle/math/ec/ECFieldElement$F2m;-><init>(I[ILorg/bouncycastle/math/ec/LongArray;)V

    .line 1438
    .local v1, "Y":Lorg/bouncycastle/math/ec/ECFieldElement$F2m;
    iget-object v2, p0, Lorg/bouncycastle/math/ec/ECCurve$F2m$1;->this$0:Lorg/bouncycastle/math/ec/ECCurve$F2m;

    invoke-virtual {v2, v0, v1}, Lorg/bouncycastle/math/ec/ECCurve$F2m;->createRawPoint(Lorg/bouncycastle/math/ec/ECFieldElement;Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method public getSize()I
    .locals 1

    .line 1396
    iget v0, p0, Lorg/bouncycastle/math/ec/ECCurve$F2m$1;->val$len:I

    return v0
.end method

.method public lookup(I)Lorg/bouncycastle/math/ec/ECPoint;
    .locals 12
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 1401
    iget v0, p0, Lorg/bouncycastle/math/ec/ECCurve$F2m$1;->val$FE_LONGS:I

    invoke-static {v0}, Lorg/bouncycastle/math/raw/Nat;->create64(I)[J

    move-result-object v0

    .local v0, "x":[J
    iget v1, p0, Lorg/bouncycastle/math/ec/ECCurve$F2m$1;->val$FE_LONGS:I

    invoke-static {v1}, Lorg/bouncycastle/math/raw/Nat;->create64(I)[J

    move-result-object v1

    .line 1402
    .local v1, "y":[J
    const/4 v2, 0x0

    .line 1404
    .local v2, "pos":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget v4, p0, Lorg/bouncycastle/math/ec/ECCurve$F2m$1;->val$len:I

    if-ge v3, v4, :cond_1

    .line 1406
    xor-int v4, v3, p1

    add-int/lit8 v4, v4, -0x1

    shr-int/lit8 v4, v4, 0x1f

    int-to-long v4, v4

    .line 1408
    .local v4, "MASK":J
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_1
    iget v7, p0, Lorg/bouncycastle/math/ec/ECCurve$F2m$1;->val$FE_LONGS:I

    if-ge v6, v7, :cond_0

    .line 1410
    aget-wide v7, v0, v6

    iget-object v9, p0, Lorg/bouncycastle/math/ec/ECCurve$F2m$1;->val$table:[J

    add-int v10, v2, v6

    aget-wide v10, v9, v10

    and-long/2addr v10, v4

    xor-long/2addr v7, v10

    aput-wide v7, v0, v6

    .line 1411
    aget-wide v7, v1, v6

    iget-object v9, p0, Lorg/bouncycastle/math/ec/ECCurve$F2m$1;->val$table:[J

    iget v10, p0, Lorg/bouncycastle/math/ec/ECCurve$F2m$1;->val$FE_LONGS:I

    add-int/2addr v10, v2

    add-int/2addr v10, v6

    aget-wide v10, v9, v10

    and-long/2addr v10, v4

    xor-long/2addr v7, v10

    aput-wide v7, v1, v6

    .line 1408
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 1414
    .end local v6    # "j":I
    :cond_0
    iget v6, p0, Lorg/bouncycastle/math/ec/ECCurve$F2m$1;->val$FE_LONGS:I

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v2, v6

    .line 1404
    .end local v4    # "MASK":J
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1417
    .end local v3    # "i":I
    :cond_1
    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/math/ec/ECCurve$F2m$1;->createPoint([J[J)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v3

    return-object v3
.end method

.method public lookupVar(I)Lorg/bouncycastle/math/ec/ECPoint;
    .locals 7
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 1422
    iget v0, p0, Lorg/bouncycastle/math/ec/ECCurve$F2m$1;->val$FE_LONGS:I

    invoke-static {v0}, Lorg/bouncycastle/math/raw/Nat;->create64(I)[J

    move-result-object v0

    .local v0, "x":[J
    iget v1, p0, Lorg/bouncycastle/math/ec/ECCurve$F2m$1;->val$FE_LONGS:I

    invoke-static {v1}, Lorg/bouncycastle/math/raw/Nat;->create64(I)[J

    move-result-object v1

    .line 1423
    .local v1, "y":[J
    iget v2, p0, Lorg/bouncycastle/math/ec/ECCurve$F2m$1;->val$FE_LONGS:I

    mul-int v2, v2, p1

    mul-int/lit8 v2, v2, 0x2

    .line 1425
    .local v2, "pos":I
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_0
    iget v4, p0, Lorg/bouncycastle/math/ec/ECCurve$F2m$1;->val$FE_LONGS:I

    if-ge v3, v4, :cond_0

    .line 1427
    iget-object v4, p0, Lorg/bouncycastle/math/ec/ECCurve$F2m$1;->val$table:[J

    add-int v5, v2, v3

    aget-wide v5, v4, v5

    aput-wide v5, v0, v3

    .line 1428
    iget-object v4, p0, Lorg/bouncycastle/math/ec/ECCurve$F2m$1;->val$table:[J

    iget v5, p0, Lorg/bouncycastle/math/ec/ECCurve$F2m$1;->val$FE_LONGS:I

    add-int/2addr v5, v2

    add-int/2addr v5, v3

    aget-wide v5, v4, v5

    aput-wide v5, v1, v3

    .line 1425
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1431
    .end local v3    # "j":I
    :cond_0
    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/math/ec/ECCurve$F2m$1;->createPoint([J[J)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v3

    return-object v3
.end method
