.class public Lorg/bouncycastle/crypto/ec/ECPair;
.super Ljava/lang/Object;
.source "ECPair.java"


# instance fields
.field private final x:Lorg/bouncycastle/math/ec/ECPoint;

.field private final y:Lorg/bouncycastle/math/ec/ECPoint;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/math/ec/ECPoint;Lorg/bouncycastle/math/ec/ECPoint;)V
    .locals 0
    .param p1, "x"    # Lorg/bouncycastle/math/ec/ECPoint;
    .param p2, "y"    # Lorg/bouncycastle/math/ec/ECPoint;
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

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lorg/bouncycastle/crypto/ec/ECPair;->x:Lorg/bouncycastle/math/ec/ECPoint;

    .line 13
    iput-object p2, p0, Lorg/bouncycastle/crypto/ec/ECPair;->y:Lorg/bouncycastle/math/ec/ECPoint;

    .line 14
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "other"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "other"
        }
    .end annotation

    .line 33
    instance-of v0, p1, Lorg/bouncycastle/crypto/ec/ECPair;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lorg/bouncycastle/crypto/ec/ECPair;

    invoke-virtual {p0, v0}, Lorg/bouncycastle/crypto/ec/ECPair;->equals(Lorg/bouncycastle/crypto/ec/ECPair;)Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public equals(Lorg/bouncycastle/crypto/ec/ECPair;)Z
    .locals 2
    .param p1, "other"    # Lorg/bouncycastle/crypto/ec/ECPair;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "other"
        }
    .end annotation

    .line 28
    invoke-virtual {p1}, Lorg/bouncycastle/crypto/ec/ECPair;->getX()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/ec/ECPair;->getX()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/bouncycastle/math/ec/ECPoint;->equals(Lorg/bouncycastle/math/ec/ECPoint;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/ec/ECPair;->getY()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/ec/ECPair;->getY()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/bouncycastle/math/ec/ECPoint;->equals(Lorg/bouncycastle/math/ec/ECPoint;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getX()Lorg/bouncycastle/math/ec/ECPoint;
    .locals 1

    .line 18
    iget-object v0, p0, Lorg/bouncycastle/crypto/ec/ECPair;->x:Lorg/bouncycastle/math/ec/ECPoint;

    return-object v0
.end method

.method public getY()Lorg/bouncycastle/math/ec/ECPoint;
    .locals 1

    .line 23
    iget-object v0, p0, Lorg/bouncycastle/crypto/ec/ECPair;->y:Lorg/bouncycastle/math/ec/ECPoint;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 38
    iget-object v0, p0, Lorg/bouncycastle/crypto/ec/ECPair;->x:Lorg/bouncycastle/math/ec/ECPoint;

    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/ECPoint;->hashCode()I

    move-result v0

    iget-object v1, p0, Lorg/bouncycastle/crypto/ec/ECPair;->y:Lorg/bouncycastle/math/ec/ECPoint;

    invoke-virtual {v1}, Lorg/bouncycastle/math/ec/ECPoint;->hashCode()I

    move-result v1

    mul-int/lit8 v1, v1, 0x25

    add-int/2addr v0, v1

    return v0
.end method
