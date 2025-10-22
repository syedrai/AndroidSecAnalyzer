.class Lorg/bouncycastle/math/ec/custom/djb/Curve25519$1;
.super Lorg/bouncycastle/math/ec/AbstractECLookupTable;
.source "Curve25519.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/bouncycastle/math/ec/custom/djb/Curve25519;->createCacheSafeLookupTable([Lorg/bouncycastle/math/ec/ECPoint;II)Lorg/bouncycastle/math/ec/ECLookupTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/bouncycastle/math/ec/custom/djb/Curve25519;

.field final synthetic val$len:I

.field final synthetic val$table:[I


# direct methods
.method constructor <init>(Lorg/bouncycastle/math/ec/custom/djb/Curve25519;I[I)V
    .locals 0
    .param p1, "this$0"    # Lorg/bouncycastle/math/ec/custom/djb/Curve25519;
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

    .line 104
    iput p2, p0, Lorg/bouncycastle/math/ec/custom/djb/Curve25519$1;->val$len:I

    iput-object p3, p0, Lorg/bouncycastle/math/ec/custom/djb/Curve25519$1;->val$table:[I

    iput-object p1, p0, Lorg/bouncycastle/math/ec/custom/djb/Curve25519$1;->this$0:Lorg/bouncycastle/math/ec/custom/djb/Curve25519;

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

    .line 147
    iget-object v0, p0, Lorg/bouncycastle/math/ec/custom/djb/Curve25519$1;->this$0:Lorg/bouncycastle/math/ec/custom/djb/Curve25519;

    new-instance v1, Lorg/bouncycastle/math/ec/custom/djb/Curve25519FieldElement;

    invoke-direct {v1, p1}, Lorg/bouncycastle/math/ec/custom/djb/Curve25519FieldElement;-><init>([I)V

    new-instance v2, Lorg/bouncycastle/math/ec/custom/djb/Curve25519FieldElement;

    invoke-direct {v2, p2}, Lorg/bouncycastle/math/ec/custom/djb/Curve25519FieldElement;-><init>([I)V

    invoke-static {}, Lorg/bouncycastle/math/ec/custom/djb/Curve25519;->-$$Nest$sfgetCURVE25519_AFFINE_ZS()[Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lorg/bouncycastle/math/ec/custom/djb/Curve25519;->createRawPoint(Lorg/bouncycastle/math/ec/ECFieldElement;Lorg/bouncycastle/math/ec/ECFieldElement;[Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getSize()I
    .locals 1

    .line 107
    iget v0, p0, Lorg/bouncycastle/math/ec/custom/djb/Curve25519$1;->val$len:I

    return v0
.end method

.method public lookup(I)Lorg/bouncycastle/math/ec/ECPoint;
    .locals 9
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 112
    invoke-static {}, Lorg/bouncycastle/math/raw/Nat256;->create()[I

    move-result-object v0

    .local v0, "x":[I
    invoke-static {}, Lorg/bouncycastle/math/raw/Nat256;->create()[I

    move-result-object v1

    .line 113
    .local v1, "y":[I
    const/4 v2, 0x0

    .line 115
    .local v2, "pos":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget v4, p0, Lorg/bouncycastle/math/ec/custom/djb/Curve25519$1;->val$len:I

    if-ge v3, v4, :cond_1

    .line 117
    xor-int v4, v3, p1

    add-int/lit8 v4, v4, -0x1

    shr-int/lit8 v4, v4, 0x1f

    .line 119
    .local v4, "MASK":I
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_1
    const/16 v6, 0x8

    if-ge v5, v6, :cond_0

    .line 121
    aget v6, v0, v5

    iget-object v7, p0, Lorg/bouncycastle/math/ec/custom/djb/Curve25519$1;->val$table:[I

    add-int v8, v2, v5

    aget v7, v7, v8

    and-int/2addr v7, v4

    xor-int/2addr v6, v7

    aput v6, v0, v5

    .line 122
    aget v6, v1, v5

    iget-object v7, p0, Lorg/bouncycastle/math/ec/custom/djb/Curve25519$1;->val$table:[I

    add-int/lit8 v8, v2, 0x8

    add-int/2addr v8, v5

    aget v7, v7, v8

    and-int/2addr v7, v4

    xor-int/2addr v6, v7

    aput v6, v1, v5

    .line 119
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 125
    .end local v5    # "j":I
    :cond_0
    nop

    .end local v4    # "MASK":I
    add-int/lit8 v2, v2, 0x10

    .line 115
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 128
    .end local v3    # "i":I
    :cond_1
    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/math/ec/custom/djb/Curve25519$1;->createPoint([I[I)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v3

    return-object v3
.end method

.method public lookupVar(I)Lorg/bouncycastle/math/ec/ECPoint;
    .locals 6
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 133
    invoke-static {}, Lorg/bouncycastle/math/raw/Nat256;->create()[I

    move-result-object v0

    .local v0, "x":[I
    invoke-static {}, Lorg/bouncycastle/math/raw/Nat256;->create()[I

    move-result-object v1

    .line 134
    .local v1, "y":[I
    mul-int/lit8 v2, p1, 0x8

    mul-int/lit8 v2, v2, 0x2

    .line 136
    .local v2, "pos":I
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_0
    const/16 v4, 0x8

    if-ge v3, v4, :cond_0

    .line 138
    iget-object v4, p0, Lorg/bouncycastle/math/ec/custom/djb/Curve25519$1;->val$table:[I

    add-int v5, v2, v3

    aget v4, v4, v5

    aput v4, v0, v3

    .line 139
    iget-object v4, p0, Lorg/bouncycastle/math/ec/custom/djb/Curve25519$1;->val$table:[I

    add-int/lit8 v5, v2, 0x8

    add-int/2addr v5, v3

    aget v4, v4, v5

    aput v4, v1, v3

    .line 136
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 142
    .end local v3    # "j":I
    :cond_0
    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/math/ec/custom/djb/Curve25519$1;->createPoint([I[I)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v3

    return-object v3
.end method
