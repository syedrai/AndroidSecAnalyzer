.class Lorg/bouncycastle/math/ec/custom/sec/SecP384R1Curve$1;
.super Lorg/bouncycastle/math/ec/AbstractECLookupTable;
.source "SecP384R1Curve.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/bouncycastle/math/ec/custom/sec/SecP384R1Curve;->createCacheSafeLookupTable([Lorg/bouncycastle/math/ec/ECPoint;II)Lorg/bouncycastle/math/ec/ECLookupTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/bouncycastle/math/ec/custom/sec/SecP384R1Curve;

.field final synthetic val$len:I

.field final synthetic val$table:[I


# direct methods
.method constructor <init>(Lorg/bouncycastle/math/ec/custom/sec/SecP384R1Curve;I[I)V
    .locals 0
    .param p1, "this$0"    # Lorg/bouncycastle/math/ec/custom/sec/SecP384R1Curve;
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

    .line 102
    iput p2, p0, Lorg/bouncycastle/math/ec/custom/sec/SecP384R1Curve$1;->val$len:I

    iput-object p3, p0, Lorg/bouncycastle/math/ec/custom/sec/SecP384R1Curve$1;->val$table:[I

    iput-object p1, p0, Lorg/bouncycastle/math/ec/custom/sec/SecP384R1Curve$1;->this$0:Lorg/bouncycastle/math/ec/custom/sec/SecP384R1Curve;

    invoke-direct {p0}, Lorg/bouncycastle/math/ec/AbstractECLookupTable;-><init>()V

    return-void
.end method

.method private createPoint([I[I)Lorg/bouncycastle/math/ec/ECPoint;
    .locals 4
    .param p1, "x"    # [I
    .param p2, "y"    # [I
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

    .line 145
    iget-object v0, p0, Lorg/bouncycastle/math/ec/custom/sec/SecP384R1Curve$1;->this$0:Lorg/bouncycastle/math/ec/custom/sec/SecP384R1Curve;

    new-instance v1, Lorg/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;

    invoke-direct {v1, p1}, Lorg/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;-><init>([I)V

    new-instance v2, Lorg/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;

    invoke-direct {v2, p2}, Lorg/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;-><init>([I)V

    invoke-static {}, Lorg/bouncycastle/math/ec/custom/sec/SecP384R1Curve;->-$$Nest$sfgetSECP384R1_AFFINE_ZS()[Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lorg/bouncycastle/math/ec/custom/sec/SecP384R1Curve;->createRawPoint(Lorg/bouncycastle/math/ec/ECFieldElement;Lorg/bouncycastle/math/ec/ECFieldElement;[Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getSize()I
    .locals 1

    .line 105
    iget v0, p0, Lorg/bouncycastle/math/ec/custom/sec/SecP384R1Curve$1;->val$len:I

    return v0
.end method

.method public lookup(I)Lorg/bouncycastle/math/ec/ECPoint;
    .locals 10
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 110
    const/16 v0, 0xc

    invoke-static {v0}, Lorg/bouncycastle/math/raw/Nat;->create(I)[I

    move-result-object v1

    .local v1, "x":[I
    invoke-static {v0}, Lorg/bouncycastle/math/raw/Nat;->create(I)[I

    move-result-object v2

    .line 111
    .local v2, "y":[I
    const/4 v3, 0x0

    .line 113
    .local v3, "pos":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    iget v5, p0, Lorg/bouncycastle/math/ec/custom/sec/SecP384R1Curve$1;->val$len:I

    if-ge v4, v5, :cond_1

    .line 115
    xor-int v5, v4, p1

    add-int/lit8 v5, v5, -0x1

    shr-int/lit8 v5, v5, 0x1f

    .line 117
    .local v5, "MASK":I
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_1
    if-ge v6, v0, :cond_0

    .line 119
    aget v7, v1, v6

    iget-object v8, p0, Lorg/bouncycastle/math/ec/custom/sec/SecP384R1Curve$1;->val$table:[I

    add-int v9, v3, v6

    aget v8, v8, v9

    and-int/2addr v8, v5

    xor-int/2addr v7, v8

    aput v7, v1, v6

    .line 120
    aget v7, v2, v6

    iget-object v8, p0, Lorg/bouncycastle/math/ec/custom/sec/SecP384R1Curve$1;->val$table:[I

    add-int/lit8 v9, v3, 0xc

    add-int/2addr v9, v6

    aget v8, v8, v9

    and-int/2addr v8, v5

    xor-int/2addr v7, v8

    aput v7, v2, v6

    .line 117
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 123
    .end local v6    # "j":I
    :cond_0
    nop

    .end local v5    # "MASK":I
    add-int/lit8 v3, v3, 0x18

    .line 113
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 126
    .end local v4    # "i":I
    :cond_1
    invoke-direct {p0, v1, v2}, Lorg/bouncycastle/math/ec/custom/sec/SecP384R1Curve$1;->createPoint([I[I)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    return-object v0
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

    .line 131
    const/16 v0, 0xc

    invoke-static {v0}, Lorg/bouncycastle/math/raw/Nat;->create(I)[I

    move-result-object v1

    .local v1, "x":[I
    invoke-static {v0}, Lorg/bouncycastle/math/raw/Nat;->create(I)[I

    move-result-object v2

    .line 132
    .local v2, "y":[I
    mul-int/lit8 v3, p1, 0xc

    mul-int/lit8 v3, v3, 0x2

    .line 134
    .local v3, "pos":I
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_0
    if-ge v4, v0, :cond_0

    .line 136
    iget-object v5, p0, Lorg/bouncycastle/math/ec/custom/sec/SecP384R1Curve$1;->val$table:[I

    add-int v6, v3, v4

    aget v5, v5, v6

    aput v5, v1, v4

    .line 137
    iget-object v5, p0, Lorg/bouncycastle/math/ec/custom/sec/SecP384R1Curve$1;->val$table:[I

    add-int/lit8 v6, v3, 0xc

    add-int/2addr v6, v4

    aget v5, v5, v6

    aput v5, v2, v4

    .line 134
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 140
    .end local v4    # "j":I
    :cond_0
    invoke-direct {p0, v1, v2}, Lorg/bouncycastle/math/ec/custom/sec/SecP384R1Curve$1;->createPoint([I[I)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    return-object v0
.end method
