.class public Lorg/bouncycastle/crypto/generators/ElGamalParametersGenerator;
.super Ljava/lang/Object;
.source "ElGamalParametersGenerator.java"


# instance fields
.field private certainty:I

.field private random:Ljava/security/SecureRandom;

.field private size:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public generateParameters()Lorg/bouncycastle/crypto/params/ElGamalParameters;
    .locals 5

    .line 37
    iget v0, p0, Lorg/bouncycastle/crypto/generators/ElGamalParametersGenerator;->size:I

    iget v1, p0, Lorg/bouncycastle/crypto/generators/ElGamalParametersGenerator;->certainty:I

    iget-object v2, p0, Lorg/bouncycastle/crypto/generators/ElGamalParametersGenerator;->random:Ljava/security/SecureRandom;

    invoke-static {v0, v1, v2}, Lorg/bouncycastle/crypto/generators/DHParametersHelper;->generateSafePrimes(IILjava/security/SecureRandom;)[Ljava/math/BigInteger;

    move-result-object v0

    .line 39
    .local v0, "safePrimes":[Ljava/math/BigInteger;
    const/4 v1, 0x0

    aget-object v1, v0, v1

    .line 40
    .local v1, "p":Ljava/math/BigInteger;
    const/4 v2, 0x1

    aget-object v2, v0, v2

    .line 41
    .local v2, "q":Ljava/math/BigInteger;
    iget-object v3, p0, Lorg/bouncycastle/crypto/generators/ElGamalParametersGenerator;->random:Ljava/security/SecureRandom;

    invoke-static {v1, v2, v3}, Lorg/bouncycastle/crypto/generators/DHParametersHelper;->selectGenerator(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/security/SecureRandom;)Ljava/math/BigInteger;

    move-result-object v3

    .line 43
    .local v3, "g":Ljava/math/BigInteger;
    new-instance v4, Lorg/bouncycastle/crypto/params/ElGamalParameters;

    invoke-direct {v4, v1, v3}, Lorg/bouncycastle/crypto/params/ElGamalParameters;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    return-object v4
.end method

.method public init(IILjava/security/SecureRandom;)V
    .locals 0
    .param p1, "size"    # I
    .param p2, "certainty"    # I
    .param p3, "random"    # Ljava/security/SecureRandom;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "size",
            "certainty",
            "random"
        }
    .end annotation

    .line 19
    iput p1, p0, Lorg/bouncycastle/crypto/generators/ElGamalParametersGenerator;->size:I

    .line 20
    iput p2, p0, Lorg/bouncycastle/crypto/generators/ElGamalParametersGenerator;->certainty:I

    .line 21
    iput-object p3, p0, Lorg/bouncycastle/crypto/generators/ElGamalParametersGenerator;->random:Ljava/security/SecureRandom;

    .line 22
    return-void
.end method
