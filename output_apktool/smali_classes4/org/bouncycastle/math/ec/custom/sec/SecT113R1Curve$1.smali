.class Lorg/bouncycastle/math/ec/custom/sec/SecT113R1Curve$1;
.super Lorg/bouncycastle/math/ec/AbstractECLookupTable;
.source "SecT113R1Curve.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/bouncycastle/math/ec/custom/sec/SecT113R1Curve;->createCacheSafeLookupTable([Lorg/bouncycastle/math/ec/ECPoint;II)Lorg/bouncycastle/math/ec/ECLookupTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/bouncycastle/math/ec/custom/sec/SecT113R1Curve;

.field final synthetic val$len:I

.field final synthetic val$table:[J


# direct methods
.method constructor <init>(Lorg/bouncycastle/math/ec/custom/sec/SecT113R1Curve;I[J)V
    .locals 0
    .param p1, "this$0"    # Lorg/bouncycastle/math/ec/custom/sec/SecT113R1Curve;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$len",
            "val$table"
        }
    .end annotation

    .line 123
    iput p2, p0, Lorg/bouncycastle/math/ec/custom/sec/SecT113R1Curve$1;->val$len:I

    iput-object p3, p0, Lorg/bouncycastle/math/ec/custom/sec/SecT113R1Curve$1;->val$table:[J

    iput-object p1, p0, Lorg/bouncycastle/math/ec/custom/sec/SecT113R1Curve$1;->this$0:Lorg/bouncycastle/math/ec/custom/sec/SecT113R1Curve;

    invoke-direct {p0}, Lorg/bouncycastle/math/ec/AbstractECLookupTable;-><init>()V

    return-void
.end method

.method private createPoint([J[J)Lorg/bouncycastle/math/ec/ECPoint;
    .locals 4
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

    .line 166
    iget-object v0, p0, Lorg/bouncycastle/math/ec/custom/sec/SecT113R1Curve$1;->this$0:Lorg/bouncycastle/math/ec/custom/sec/SecT113R1Curve;

    new-instance v1, Lorg/bouncycastle/math/ec/custom/sec/SecT113FieldElement;

    invoke-direct {v1, p1}, Lorg/bouncycastle/math/ec/custom/sec/SecT113FieldElement;-><init>([J)V

    new-instance v2, Lorg/bouncycastle/math/ec/custom/sec/SecT113FieldElement;

    invoke-direct {v2, p2}, Lorg/bouncycastle/math/ec/custom/sec/SecT113FieldElement;-><init>([J)V

    invoke-static {}, Lorg/bouncycastle/math/ec/custom/sec/SecT113R1Curve;->-$$Nest$sfgetSECT113R1_AFFINE_ZS()[Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lorg/bouncycastle/math/ec/custom/sec/SecT113R1Curve;->createRawPoint(Lorg/bouncycastle/math/ec/ECFieldElement;Lorg/bouncycastle/math/ec/ECFieldElement;[Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getSize()I
    .locals 1

    .line 126
    iget v0, p0, Lorg/bouncycastle/math/ec/custom/sec/SecT113R1Curve$1;->val$len:I

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

    .line 131
    invoke-static {}, Lorg/bouncycastle/math/raw/Nat128;->create64()[J

    move-result-object v0

    .local v0, "x":[J
    invoke-static {}, Lorg/bouncycastle/math/raw/Nat128;->create64()[J

    move-result-object v1

    .line 132
    .local v1, "y":[J
    const/4 v2, 0x0

    .line 134
    .local v2, "pos":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget v4, p0, Lorg/bouncycastle/math/ec/custom/sec/SecT113R1Curve$1;->val$len:I

    if-ge v3, v4, :cond_1

    .line 136
    xor-int v4, v3, p1

    add-int/lit8 v4, v4, -0x1

    shr-int/lit8 v4, v4, 0x1f

    int-to-long v4, v4

    .line 138
    .local v4, "MASK":J
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_1
    const/4 v7, 0x2

    if-ge v6, v7, :cond_0

    .line 140
    aget-wide v7, v0, v6

    iget-object v9, p0, Lorg/bouncycastle/math/ec/custom/sec/SecT113R1Curve$1;->val$table:[J

    add-int v10, v2, v6

    aget-wide v10, v9, v10

    and-long/2addr v10, v4

    xor-long/2addr v7, v10

    aput-wide v7, v0, v6

    .line 141
    aget-wide v7, v1, v6

    iget-object v9, p0, Lorg/bouncycastle/math/ec/custom/sec/SecT113R1Curve$1;->val$table:[J

    add-int/lit8 v10, v2, 0x2

    add-int/2addr v10, v6

    aget-wide v10, v9, v10

    and-long/2addr v10, v4

    xor-long/2addr v7, v10

    aput-wide v7, v1, v6

    .line 138
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 144
    .end local v6    # "j":I
    :cond_0
    nop

    .end local v4    # "MASK":J
    add-int/lit8 v2, v2, 0x4

    .line 134
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 147
    .end local v3    # "i":I
    :cond_1
    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/math/ec/custom/sec/SecT113R1Curve$1;->createPoint([J[J)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v3

    return-object v3
.end method

.method public lookupVar(I)Lorg/bouncycastle/math/ec/ECPoint;
    .locals 8
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 152
    invoke-static {}, Lorg/bouncycastle/math/raw/Nat128;->create64()[J

    move-result-object v0

    .local v0, "x":[J
    invoke-static {}, Lorg/bouncycastle/math/raw/Nat128;->create64()[J

    move-result-object v1

    .line 153
    .local v1, "y":[J
    mul-int/lit8 v2, p1, 0x2

    const/4 v3, 0x2

    mul-int/lit8 v2, v2, 0x2

    .line 155
    .local v2, "pos":I
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_0
    if-ge v4, v3, :cond_0

    .line 157
    iget-object v5, p0, Lorg/bouncycastle/math/ec/custom/sec/SecT113R1Curve$1;->val$table:[J

    add-int v6, v2, v4

    aget-wide v6, v5, v6

    aput-wide v6, v0, v4

    .line 158
    iget-object v5, p0, Lorg/bouncycastle/math/ec/custom/sec/SecT113R1Curve$1;->val$table:[J

    add-int/lit8 v6, v2, 0x2

    add-int/2addr v6, v4

    aget-wide v6, v5, v6

    aput-wide v6, v1, v4

    .line 155
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 161
    .end local v4    # "j":I
    :cond_0
    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/math/ec/custom/sec/SecT113R1Curve$1;->createPoint([J[J)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v3

    return-object v3
.end method
