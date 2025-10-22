.class public Lorg/bouncycastle/crypto/modes/kgcm/Tables4kKGCMMultiplier_128;
.super Ljava/lang/Object;
.source "Tables4kKGCMMultiplier_128.java"

# interfaces
.implements Lorg/bouncycastle/crypto/modes/kgcm/KGCMMultiplier;


# instance fields
.field private T:[[J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public init([J)V
    .locals 7
    .param p1, "H"    # [J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "H"
        }
    .end annotation

    .line 10
    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/kgcm/Tables4kKGCMMultiplier_128;->T:[[J

    const/16 v1, 0x100

    const/4 v2, 0x1

    if-nez v0, :cond_0

    .line 12
    const/4 v0, 0x2

    new-array v3, v0, [I

    aput v0, v3, v2

    const/4 v0, 0x0

    aput v1, v3, v0

    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {v0, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[J

    iput-object v0, p0, Lorg/bouncycastle/crypto/modes/kgcm/Tables4kKGCMMultiplier_128;->T:[[J

    goto :goto_0

    .line 14
    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/kgcm/Tables4kKGCMMultiplier_128;->T:[[J

    aget-object v0, v0, v2

    invoke-static {p1, v0}, Lorg/bouncycastle/crypto/modes/kgcm/KGCMUtil_128;->equal([J[J)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 16
    return-void

    .line 22
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/kgcm/Tables4kKGCMMultiplier_128;->T:[[J

    aget-object v0, v0, v2

    invoke-static {p1, v0}, Lorg/bouncycastle/crypto/modes/kgcm/KGCMUtil_128;->copy([J[J)V

    .line 24
    const/4 v0, 0x2

    .local v0, "n":I
    :goto_1
    if-ge v0, v1, :cond_2

    .line 27
    iget-object v3, p0, Lorg/bouncycastle/crypto/modes/kgcm/Tables4kKGCMMultiplier_128;->T:[[J

    shr-int/lit8 v4, v0, 0x1

    aget-object v3, v3, v4

    iget-object v4, p0, Lorg/bouncycastle/crypto/modes/kgcm/Tables4kKGCMMultiplier_128;->T:[[J

    aget-object v4, v4, v0

    invoke-static {v3, v4}, Lorg/bouncycastle/crypto/modes/kgcm/KGCMUtil_128;->multiplyX([J[J)V

    .line 30
    iget-object v3, p0, Lorg/bouncycastle/crypto/modes/kgcm/Tables4kKGCMMultiplier_128;->T:[[J

    aget-object v3, v3, v0

    iget-object v4, p0, Lorg/bouncycastle/crypto/modes/kgcm/Tables4kKGCMMultiplier_128;->T:[[J

    aget-object v4, v4, v2

    iget-object v5, p0, Lorg/bouncycastle/crypto/modes/kgcm/Tables4kKGCMMultiplier_128;->T:[[J

    add-int/lit8 v6, v0, 0x1

    aget-object v5, v5, v6

    invoke-static {v3, v4, v5}, Lorg/bouncycastle/crypto/modes/kgcm/KGCMUtil_128;->add([J[J[J)V

    .line 24
    add-int/lit8 v0, v0, 0x2

    goto :goto_1

    .line 32
    .end local v0    # "n":I
    :cond_2
    return-void
.end method

.method public multiplyH([J)V
    .locals 6
    .param p1, "z"    # [J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "z"
        }
    .end annotation

    .line 36
    const/4 v0, 0x2

    new-array v0, v0, [J

    .line 37
    .local v0, "r":[J
    iget-object v1, p0, Lorg/bouncycastle/crypto/modes/kgcm/Tables4kKGCMMultiplier_128;->T:[[J

    const/4 v2, 0x1

    aget-wide v2, p1, v2

    const/16 v4, 0x38

    ushr-long/2addr v2, v4

    long-to-int v3, v2

    and-int/lit16 v2, v3, 0xff

    aget-object v1, v1, v2

    invoke-static {v1, v0}, Lorg/bouncycastle/crypto/modes/kgcm/KGCMUtil_128;->copy([J[J)V

    .line 38
    const/16 v1, 0xe

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 40
    invoke-static {v0, v0}, Lorg/bouncycastle/crypto/modes/kgcm/KGCMUtil_128;->multiplyX8([J[J)V

    .line 41
    iget-object v2, p0, Lorg/bouncycastle/crypto/modes/kgcm/Tables4kKGCMMultiplier_128;->T:[[J

    ushr-int/lit8 v3, v1, 0x3

    aget-wide v3, p1, v3

    and-int/lit8 v5, v1, 0x7

    shl-int/lit8 v5, v5, 0x3

    ushr-long/2addr v3, v5

    long-to-int v4, v3

    and-int/lit16 v3, v4, 0xff

    aget-object v2, v2, v3

    invoke-static {v2, v0, v0}, Lorg/bouncycastle/crypto/modes/kgcm/KGCMUtil_128;->add([J[J[J)V

    .line 38
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 43
    .end local v1    # "i":I
    :cond_0
    invoke-static {v0, p1}, Lorg/bouncycastle/crypto/modes/kgcm/KGCMUtil_128;->copy([J[J)V

    .line 44
    return-void
.end method
