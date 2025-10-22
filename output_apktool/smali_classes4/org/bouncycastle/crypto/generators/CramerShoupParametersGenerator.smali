.class public Lorg/bouncycastle/crypto/generators/CramerShoupParametersGenerator;
.super Ljava/lang/Object;
.source "CramerShoupParametersGenerator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/crypto/generators/CramerShoupParametersGenerator$ParametersHelper;
    }
.end annotation


# static fields
.field private static final ONE:Ljava/math/BigInteger;


# instance fields
.field private certainty:I

.field private random:Ljava/security/SecureRandom;

.field private size:I


# direct methods
.method static bridge synthetic -$$Nest$sfgetONE()Ljava/math/BigInteger;
    .locals 1

    sget-object v0, Lorg/bouncycastle/crypto/generators/CramerShoupParametersGenerator;->ONE:Ljava/math/BigInteger;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 13
    const-wide/16 v0, 0x1

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/crypto/generators/CramerShoupParametersGenerator;->ONE:Ljava/math/BigInteger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public generateParameters()Lorg/bouncycastle/crypto/params/CramerShoupParameters;
    .locals 6

    .line 48
    iget v0, p0, Lorg/bouncycastle/crypto/generators/CramerShoupParametersGenerator;->size:I

    iget v1, p0, Lorg/bouncycastle/crypto/generators/CramerShoupParametersGenerator;->certainty:I

    iget-object v2, p0, Lorg/bouncycastle/crypto/generators/CramerShoupParametersGenerator;->random:Ljava/security/SecureRandom;

    invoke-static {v0, v1, v2}, Lorg/bouncycastle/crypto/generators/CramerShoupParametersGenerator$ParametersHelper;->generateSafePrimes(IILjava/security/SecureRandom;)[Ljava/math/BigInteger;

    move-result-object v0

    .line 51
    .local v0, "safePrimes":[Ljava/math/BigInteger;
    const/4 v1, 0x1

    aget-object v1, v0, v1

    .line 52
    .local v1, "q":Ljava/math/BigInteger;
    iget-object v2, p0, Lorg/bouncycastle/crypto/generators/CramerShoupParametersGenerator;->random:Ljava/security/SecureRandom;

    invoke-static {v1, v2}, Lorg/bouncycastle/crypto/generators/CramerShoupParametersGenerator$ParametersHelper;->selectGenerator(Ljava/math/BigInteger;Ljava/security/SecureRandom;)Ljava/math/BigInteger;

    move-result-object v2

    .line 53
    .local v2, "g1":Ljava/math/BigInteger;
    iget-object v3, p0, Lorg/bouncycastle/crypto/generators/CramerShoupParametersGenerator;->random:Ljava/security/SecureRandom;

    invoke-static {v1, v3}, Lorg/bouncycastle/crypto/generators/CramerShoupParametersGenerator$ParametersHelper;->selectGenerator(Ljava/math/BigInteger;Ljava/security/SecureRandom;)Ljava/math/BigInteger;

    move-result-object v3

    .line 54
    .local v3, "g2":Ljava/math/BigInteger;
    :goto_0
    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 56
    iget-object v4, p0, Lorg/bouncycastle/crypto/generators/CramerShoupParametersGenerator;->random:Ljava/security/SecureRandom;

    invoke-static {v1, v4}, Lorg/bouncycastle/crypto/generators/CramerShoupParametersGenerator$ParametersHelper;->selectGenerator(Ljava/math/BigInteger;Ljava/security/SecureRandom;)Ljava/math/BigInteger;

    move-result-object v3

    goto :goto_0

    .line 59
    :cond_0
    new-instance v4, Lorg/bouncycastle/crypto/params/CramerShoupParameters;

    invoke-static {}, Lorg/bouncycastle/crypto/digests/SHA256Digest;->newInstance()Lorg/bouncycastle/crypto/SavableDigest;

    move-result-object v5

    invoke-direct {v4, v1, v2, v3, v5}, Lorg/bouncycastle/crypto/params/CramerShoupParameters;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Lorg/bouncycastle/crypto/Digest;)V

    return-object v4
.end method

.method public generateParameters(Lorg/bouncycastle/crypto/params/DHParameters;)Lorg/bouncycastle/crypto/params/CramerShoupParameters;
    .locals 5
    .param p1, "dhParams"    # Lorg/bouncycastle/crypto/params/DHParameters;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dhParams"
        }
    .end annotation

    .line 64
    invoke-virtual {p1}, Lorg/bouncycastle/crypto/params/DHParameters;->getP()Ljava/math/BigInteger;

    move-result-object v0

    .line 65
    .local v0, "p":Ljava/math/BigInteger;
    invoke-virtual {p1}, Lorg/bouncycastle/crypto/params/DHParameters;->getG()Ljava/math/BigInteger;

    move-result-object v1

    .line 68
    .local v1, "g1":Ljava/math/BigInteger;
    iget-object v2, p0, Lorg/bouncycastle/crypto/generators/CramerShoupParametersGenerator;->random:Ljava/security/SecureRandom;

    invoke-static {v0, v2}, Lorg/bouncycastle/crypto/generators/CramerShoupParametersGenerator$ParametersHelper;->selectGenerator(Ljava/math/BigInteger;Ljava/security/SecureRandom;)Ljava/math/BigInteger;

    move-result-object v2

    .line 69
    .local v2, "g2":Ljava/math/BigInteger;
    :goto_0
    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 71
    iget-object v3, p0, Lorg/bouncycastle/crypto/generators/CramerShoupParametersGenerator;->random:Ljava/security/SecureRandom;

    invoke-static {v0, v3}, Lorg/bouncycastle/crypto/generators/CramerShoupParametersGenerator$ParametersHelper;->selectGenerator(Ljava/math/BigInteger;Ljava/security/SecureRandom;)Ljava/math/BigInteger;

    move-result-object v2

    goto :goto_0

    .line 74
    :cond_0
    new-instance v3, Lorg/bouncycastle/crypto/params/CramerShoupParameters;

    invoke-static {}, Lorg/bouncycastle/crypto/digests/SHA256Digest;->newInstance()Lorg/bouncycastle/crypto/SavableDigest;

    move-result-object v4

    invoke-direct {v3, v0, v1, v2, v4}, Lorg/bouncycastle/crypto/params/CramerShoupParameters;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Lorg/bouncycastle/crypto/Digest;)V

    return-object v3
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

    .line 30
    iput p1, p0, Lorg/bouncycastle/crypto/generators/CramerShoupParametersGenerator;->size:I

    .line 31
    iput p2, p0, Lorg/bouncycastle/crypto/generators/CramerShoupParametersGenerator;->certainty:I

    .line 32
    iput-object p3, p0, Lorg/bouncycastle/crypto/generators/CramerShoupParametersGenerator;->random:Ljava/security/SecureRandom;

    .line 33
    return-void
.end method
