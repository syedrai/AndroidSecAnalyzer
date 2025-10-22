.class Lorg/bouncycastle/math/ec/ECCurve$1;
.super Lorg/bouncycastle/math/ec/AbstractECLookupTable;
.source "ECCurve.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/bouncycastle/math/ec/ECCurve;->createCacheSafeLookupTable([Lorg/bouncycastle/math/ec/ECPoint;II)Lorg/bouncycastle/math/ec/ECLookupTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/bouncycastle/math/ec/ECCurve;

.field final synthetic val$FE_BYTES:I

.field final synthetic val$len:I

.field final synthetic val$table:[B


# direct methods
.method constructor <init>(Lorg/bouncycastle/math/ec/ECCurve;II[B)V
    .locals 0
    .param p1, "this$0"    # Lorg/bouncycastle/math/ec/ECCurve;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$len",
            "val$FE_BYTES",
            "val$table"
        }
    .end annotation

    .line 486
    iput p2, p0, Lorg/bouncycastle/math/ec/ECCurve$1;->val$len:I

    iput p3, p0, Lorg/bouncycastle/math/ec/ECCurve$1;->val$FE_BYTES:I

    iput-object p4, p0, Lorg/bouncycastle/math/ec/ECCurve$1;->val$table:[B

    iput-object p1, p0, Lorg/bouncycastle/math/ec/ECCurve$1;->this$0:Lorg/bouncycastle/math/ec/ECCurve;

    invoke-direct {p0}, Lorg/bouncycastle/math/ec/AbstractECLookupTable;-><init>()V

    return-void
.end method

.method private createPoint([B[B)Lorg/bouncycastle/math/ec/ECPoint;
    .locals 5
    .param p1, "x"    # [B
    .param p2, "y"    # [B
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

    .line 529
    iget-object v0, p0, Lorg/bouncycastle/math/ec/ECCurve$1;->this$0:Lorg/bouncycastle/math/ec/ECCurve;

    iget-object v1, p0, Lorg/bouncycastle/math/ec/ECCurve$1;->this$0:Lorg/bouncycastle/math/ec/ECCurve;

    new-instance v2, Ljava/math/BigInteger;

    const/4 v3, 0x1

    invoke-direct {v2, v3, p1}, Ljava/math/BigInteger;-><init>(I[B)V

    invoke-virtual {v1, v2}, Lorg/bouncycastle/math/ec/ECCurve;->fromBigInteger(Ljava/math/BigInteger;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v1

    iget-object v2, p0, Lorg/bouncycastle/math/ec/ECCurve$1;->this$0:Lorg/bouncycastle/math/ec/ECCurve;

    new-instance v4, Ljava/math/BigInteger;

    invoke-direct {v4, v3, p2}, Ljava/math/BigInteger;-><init>(I[B)V

    invoke-virtual {v2, v4}, Lorg/bouncycastle/math/ec/ECCurve;->fromBigInteger(Ljava/math/BigInteger;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/bouncycastle/math/ec/ECCurve;->createRawPoint(Lorg/bouncycastle/math/ec/ECFieldElement;Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getSize()I
    .locals 1

    .line 489
    iget v0, p0, Lorg/bouncycastle/math/ec/ECCurve$1;->val$len:I

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

    .line 494
    iget v0, p0, Lorg/bouncycastle/math/ec/ECCurve$1;->val$FE_BYTES:I

    new-array v0, v0, [B

    .local v0, "x":[B
    iget v1, p0, Lorg/bouncycastle/math/ec/ECCurve$1;->val$FE_BYTES:I

    new-array v1, v1, [B

    .line 495
    .local v1, "y":[B
    const/4 v2, 0x0

    .line 497
    .local v2, "pos":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget v4, p0, Lorg/bouncycastle/math/ec/ECCurve$1;->val$len:I

    if-ge v3, v4, :cond_1

    .line 499
    xor-int v4, v3, p1

    add-int/lit8 v4, v4, -0x1

    shr-int/lit8 v4, v4, 0x1f

    .line 501
    .local v4, "MASK":I
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_1
    iget v6, p0, Lorg/bouncycastle/math/ec/ECCurve$1;->val$FE_BYTES:I

    if-ge v5, v6, :cond_0

    .line 503
    aget-byte v6, v0, v5

    iget-object v7, p0, Lorg/bouncycastle/math/ec/ECCurve$1;->val$table:[B

    add-int v8, v2, v5

    aget-byte v7, v7, v8

    and-int/2addr v7, v4

    xor-int/2addr v6, v7

    int-to-byte v6, v6

    aput-byte v6, v0, v5

    .line 504
    aget-byte v6, v1, v5

    iget-object v7, p0, Lorg/bouncycastle/math/ec/ECCurve$1;->val$table:[B

    iget v8, p0, Lorg/bouncycastle/math/ec/ECCurve$1;->val$FE_BYTES:I

    add-int/2addr v8, v2

    add-int/2addr v8, v5

    aget-byte v7, v7, v8

    and-int/2addr v7, v4

    xor-int/2addr v6, v7

    int-to-byte v6, v6

    aput-byte v6, v1, v5

    .line 501
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 507
    .end local v5    # "j":I
    :cond_0
    iget v5, p0, Lorg/bouncycastle/math/ec/ECCurve$1;->val$FE_BYTES:I

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v2, v5

    .line 497
    .end local v4    # "MASK":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 510
    .end local v3    # "i":I
    :cond_1
    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/math/ec/ECCurve$1;->createPoint([B[B)Lorg/bouncycastle/math/ec/ECPoint;

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

    .line 515
    iget v0, p0, Lorg/bouncycastle/math/ec/ECCurve$1;->val$FE_BYTES:I

    new-array v0, v0, [B

    .local v0, "x":[B
    iget v1, p0, Lorg/bouncycastle/math/ec/ECCurve$1;->val$FE_BYTES:I

    new-array v1, v1, [B

    .line 516
    .local v1, "y":[B
    iget v2, p0, Lorg/bouncycastle/math/ec/ECCurve$1;->val$FE_BYTES:I

    mul-int v2, v2, p1

    mul-int/lit8 v2, v2, 0x2

    .line 518
    .local v2, "pos":I
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_0
    iget v4, p0, Lorg/bouncycastle/math/ec/ECCurve$1;->val$FE_BYTES:I

    if-ge v3, v4, :cond_0

    .line 520
    iget-object v4, p0, Lorg/bouncycastle/math/ec/ECCurve$1;->val$table:[B

    add-int v5, v2, v3

    aget-byte v4, v4, v5

    aput-byte v4, v0, v3

    .line 521
    iget-object v4, p0, Lorg/bouncycastle/math/ec/ECCurve$1;->val$table:[B

    iget v5, p0, Lorg/bouncycastle/math/ec/ECCurve$1;->val$FE_BYTES:I

    add-int/2addr v5, v2

    add-int/2addr v5, v3

    aget-byte v4, v4, v5

    aput-byte v4, v1, v3

    .line 518
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 524
    .end local v3    # "j":I
    :cond_0
    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/math/ec/ECCurve$1;->createPoint([B[B)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v3

    return-object v3
.end method
