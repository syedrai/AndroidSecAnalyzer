.class public Lorg/bouncycastle/crypto/generators/DHParametersGenerator;
.super Ljava/lang/Object;
.source "DHParametersGenerator.java"


# static fields
.field private static final TWO:Ljava/math/BigInteger;


# instance fields
.field private certainty:I

.field private random:Ljava/security/SecureRandom;

.field private size:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 14
    const-wide/16 v0, 0x2

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/crypto/generators/DHParametersGenerator;->TWO:Ljava/math/BigInteger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public generateParameters()Lorg/bouncycastle/crypto/params/DHParameters;
    .locals 8

    .line 45
    iget v0, p0, Lorg/bouncycastle/crypto/generators/DHParametersGenerator;->size:I

    iget v1, p0, Lorg/bouncycastle/crypto/generators/DHParametersGenerator;->certainty:I

    iget-object v2, p0, Lorg/bouncycastle/crypto/generators/DHParametersGenerator;->random:Ljava/security/SecureRandom;

    invoke-static {v0, v1, v2}, Lorg/bouncycastle/crypto/generators/DHParametersHelper;->generateSafePrimes(IILjava/security/SecureRandom;)[Ljava/math/BigInteger;

    move-result-object v0

    .line 47
    .local v0, "safePrimes":[Ljava/math/BigInteger;
    const/4 v1, 0x0

    aget-object v3, v0, v1

    .line 48
    .local v3, "p":Ljava/math/BigInteger;
    const/4 v1, 0x1

    aget-object v5, v0, v1

    .line 49
    .local v5, "q":Ljava/math/BigInteger;
    iget-object v1, p0, Lorg/bouncycastle/crypto/generators/DHParametersGenerator;->random:Ljava/security/SecureRandom;

    invoke-static {v3, v5, v1}, Lorg/bouncycastle/crypto/generators/DHParametersHelper;->selectGenerator(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/security/SecureRandom;)Ljava/math/BigInteger;

    move-result-object v4

    .line 51
    .local v4, "g":Ljava/math/BigInteger;
    new-instance v2, Lorg/bouncycastle/crypto/params/DHParameters;

    sget-object v6, Lorg/bouncycastle/crypto/generators/DHParametersGenerator;->TWO:Ljava/math/BigInteger;

    const/4 v7, 0x0

    invoke-direct/range {v2 .. v7}, Lorg/bouncycastle/crypto/params/DHParameters;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Lorg/bouncycastle/crypto/params/DHValidationParameters;)V

    return-object v2
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

    .line 28
    iput p1, p0, Lorg/bouncycastle/crypto/generators/DHParametersGenerator;->size:I

    .line 29
    iput p2, p0, Lorg/bouncycastle/crypto/generators/DHParametersGenerator;->certainty:I

    .line 30
    iput-object p3, p0, Lorg/bouncycastle/crypto/generators/DHParametersGenerator;->random:Ljava/security/SecureRandom;

    .line 31
    return-void
.end method
