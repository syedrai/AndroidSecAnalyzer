.class public Lorg/bouncycastle/jcajce/spec/DSTU4145ParameterSpec;
.super Ljava/security/spec/ECParameterSpec;
.source "DSTU4145ParameterSpec.java"


# instance fields
.field private final dke:[B

.field private final parameters:Lorg/bouncycastle/crypto/params/ECDomainParameters;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/crypto/params/ECDomainParameters;)V
    .locals 2
    .param p1, "parameters"    # Lorg/bouncycastle/crypto/params/ECDomainParameters;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "parameters"
        }
    .end annotation

    .line 22
    invoke-static {p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/EC5Util;->convertToSpec(Lorg/bouncycastle/crypto/params/ECDomainParameters;)Ljava/security/spec/ECParameterSpec;

    move-result-object v0

    invoke-static {}, Lorg/bouncycastle/asn1/ua/DSTU4145Params;->getDefaultDKE()[B

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lorg/bouncycastle/jcajce/spec/DSTU4145ParameterSpec;-><init>(Lorg/bouncycastle/crypto/params/ECDomainParameters;Ljava/security/spec/ECParameterSpec;[B)V

    .line 23
    return-void
.end method

.method private constructor <init>(Lorg/bouncycastle/crypto/params/ECDomainParameters;Ljava/security/spec/ECParameterSpec;[B)V
    .locals 4
    .param p1, "parameters"    # Lorg/bouncycastle/crypto/params/ECDomainParameters;
    .param p2, "ecParameterSpec"    # Ljava/security/spec/ECParameterSpec;
    .param p3, "dke"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "parameters",
            "ecParameterSpec",
            "dke"
        }
    .end annotation

    .line 27
    invoke-virtual {p2}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    move-result-object v0

    invoke-virtual {p2}, Ljava/security/spec/ECParameterSpec;->getGenerator()Ljava/security/spec/ECPoint;

    move-result-object v1

    invoke-virtual {p2}, Ljava/security/spec/ECParameterSpec;->getOrder()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {p2}, Ljava/security/spec/ECParameterSpec;->getCofactor()I

    move-result v3

    invoke-direct {p0, v0, v1, v2, v3}, Ljava/security/spec/ECParameterSpec;-><init>(Ljava/security/spec/EllipticCurve;Ljava/security/spec/ECPoint;Ljava/math/BigInteger;I)V

    .line 29
    iput-object p1, p0, Lorg/bouncycastle/jcajce/spec/DSTU4145ParameterSpec;->parameters:Lorg/bouncycastle/crypto/params/ECDomainParameters;

    .line 30
    invoke-static {p3}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/jcajce/spec/DSTU4145ParameterSpec;->dke:[B

    .line 31
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "o"
        }
    .end annotation

    .line 40
    instance-of v0, p1, Lorg/bouncycastle/jcajce/spec/DSTU4145ParameterSpec;

    if-eqz v0, :cond_0

    .line 42
    move-object v0, p1

    check-cast v0, Lorg/bouncycastle/jcajce/spec/DSTU4145ParameterSpec;

    .line 44
    .local v0, "other":Lorg/bouncycastle/jcajce/spec/DSTU4145ParameterSpec;
    iget-object v1, p0, Lorg/bouncycastle/jcajce/spec/DSTU4145ParameterSpec;->parameters:Lorg/bouncycastle/crypto/params/ECDomainParameters;

    iget-object v2, v0, Lorg/bouncycastle/jcajce/spec/DSTU4145ParameterSpec;->parameters:Lorg/bouncycastle/crypto/params/ECDomainParameters;

    invoke-virtual {v1, v2}, Lorg/bouncycastle/crypto/params/ECDomainParameters;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 47
    .end local v0    # "other":Lorg/bouncycastle/jcajce/spec/DSTU4145ParameterSpec;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getDKE()[B
    .locals 1

    .line 35
    iget-object v0, p0, Lorg/bouncycastle/jcajce/spec/DSTU4145ParameterSpec;->dke:[B

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 52
    iget-object v0, p0, Lorg/bouncycastle/jcajce/spec/DSTU4145ParameterSpec;->parameters:Lorg/bouncycastle/crypto/params/ECDomainParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/ECDomainParameters;->hashCode()I

    move-result v0

    return v0
.end method
