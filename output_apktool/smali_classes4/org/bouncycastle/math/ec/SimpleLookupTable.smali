.class public Lorg/bouncycastle/math/ec/SimpleLookupTable;
.super Lorg/bouncycastle/math/ec/AbstractECLookupTable;
.source "SimpleLookupTable.java"


# instance fields
.field private final points:[Lorg/bouncycastle/math/ec/ECPoint;


# direct methods
.method public constructor <init>([Lorg/bouncycastle/math/ec/ECPoint;II)V
    .locals 1
    .param p1, "points"    # [Lorg/bouncycastle/math/ec/ECPoint;
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "points",
            "off",
            "len"
        }
    .end annotation

    .line 19
    invoke-direct {p0}, Lorg/bouncycastle/math/ec/AbstractECLookupTable;-><init>()V

    .line 20
    invoke-static {p1, p2, p3}, Lorg/bouncycastle/math/ec/SimpleLookupTable;->copy([Lorg/bouncycastle/math/ec/ECPoint;II)[Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/math/ec/SimpleLookupTable;->points:[Lorg/bouncycastle/math/ec/ECPoint;

    .line 21
    return-void
.end method

.method private static copy([Lorg/bouncycastle/math/ec/ECPoint;II)[Lorg/bouncycastle/math/ec/ECPoint;
    .locals 3
    .param p0, "points"    # [Lorg/bouncycastle/math/ec/ECPoint;
    .param p1, "off"    # I
    .param p2, "len"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "points",
            "off",
            "len"
        }
    .end annotation

    .line 8
    new-array v0, p2, [Lorg/bouncycastle/math/ec/ECPoint;

    .line 9
    .local v0, "result":[Lorg/bouncycastle/math/ec/ECPoint;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p2, :cond_0

    .line 11
    add-int v2, p1, v1

    aget-object v2, p0, v2

    aput-object v2, v0, v1

    .line 9
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 13
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method


# virtual methods
.method public getSize()I
    .locals 1

    .line 25
    iget-object v0, p0, Lorg/bouncycastle/math/ec/SimpleLookupTable;->points:[Lorg/bouncycastle/math/ec/ECPoint;

    array-length v0, v0

    return v0
.end method

.method public lookup(I)Lorg/bouncycastle/math/ec/ECPoint;
    .locals 2
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 30
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Constant-time lookup not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public lookupVar(I)Lorg/bouncycastle/math/ec/ECPoint;
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 35
    iget-object v0, p0, Lorg/bouncycastle/math/ec/SimpleLookupTable;->points:[Lorg/bouncycastle/math/ec/ECPoint;

    aget-object v0, v0, p1

    return-object v0
.end method
