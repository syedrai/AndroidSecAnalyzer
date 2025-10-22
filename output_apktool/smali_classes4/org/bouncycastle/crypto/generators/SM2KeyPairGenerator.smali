.class public Lorg/bouncycastle/crypto/generators/SM2KeyPairGenerator;
.super Lorg/bouncycastle/crypto/generators/ECKeyPairGenerator;
.source "SM2KeyPairGenerator.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 29
    const-string v0, "SM2KeyGen"

    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/generators/ECKeyPairGenerator;-><init>(Ljava/lang/String;)V

    .line 30
    return-void
.end method


# virtual methods
.method protected isOutOfRangeD(Ljava/math/BigInteger;Ljava/math/BigInteger;)Z
    .locals 1
    .param p1, "d"    # Ljava/math/BigInteger;
    .param p2, "n"    # Ljava/math/BigInteger;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "d",
            "n"
        }
    .end annotation

    .line 34
    sget-object v0, Lorg/bouncycastle/crypto/generators/SM2KeyPairGenerator;->ONE:Ljava/math/BigInteger;

    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-ltz v0, :cond_1

    sget-object v0, Lorg/bouncycastle/util/BigIntegers;->ONE:Ljava/math/BigInteger;

    invoke-virtual {p2, v0}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-ltz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method
