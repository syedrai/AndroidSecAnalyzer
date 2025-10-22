.class public Lorg/bouncycastle/crypto/params/DHPrivateKeyParameters;
.super Lorg/bouncycastle/crypto/params/DHKeyParameters;
.source "DHPrivateKeyParameters.java"


# instance fields
.field private x:Ljava/math/BigInteger;


# direct methods
.method public constructor <init>(Ljava/math/BigInteger;Lorg/bouncycastle/crypto/params/DHParameters;)V
    .locals 1
    .param p1, "x"    # Ljava/math/BigInteger;
    .param p2, "params"    # Lorg/bouncycastle/crypto/params/DHParameters;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "x",
            "params"
        }
    .end annotation

    .line 14
    const/4 v0, 0x1

    invoke-direct {p0, v0, p2}, Lorg/bouncycastle/crypto/params/DHKeyParameters;-><init>(ZLorg/bouncycastle/crypto/params/DHParameters;)V

    .line 16
    iput-object p1, p0, Lorg/bouncycastle/crypto/params/DHPrivateKeyParameters;->x:Ljava/math/BigInteger;

    .line 17
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "obj"
        }
    .end annotation

    .line 32
    instance-of v0, p1, Lorg/bouncycastle/crypto/params/DHPrivateKeyParameters;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 34
    return v1

    .line 37
    :cond_0
    move-object v0, p1

    check-cast v0, Lorg/bouncycastle/crypto/params/DHPrivateKeyParameters;

    .line 39
    .local v0, "other":Lorg/bouncycastle/crypto/params/DHPrivateKeyParameters;
    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/DHPrivateKeyParameters;->getX()Ljava/math/BigInteger;

    move-result-object v2

    iget-object v3, p0, Lorg/bouncycastle/crypto/params/DHPrivateKeyParameters;->x:Ljava/math/BigInteger;

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-super {p0, p1}, Lorg/bouncycastle/crypto/params/DHKeyParameters;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public getX()Ljava/math/BigInteger;
    .locals 1

    .line 21
    iget-object v0, p0, Lorg/bouncycastle/crypto/params/DHPrivateKeyParameters;->x:Ljava/math/BigInteger;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 26
    iget-object v0, p0, Lorg/bouncycastle/crypto/params/DHPrivateKeyParameters;->x:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->hashCode()I

    move-result v0

    invoke-super {p0}, Lorg/bouncycastle/crypto/params/DHKeyParameters;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method
