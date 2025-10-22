.class Lorg/bouncycastle/jcajce/provider/asymmetric/edec/BC11XDHPrivateKey;
.super Lorg/bouncycastle/jcajce/provider/asymmetric/edec/BCXDHPrivateKey;
.source "BC11XDHPrivateKey.java"

# interfaces
.implements Ljava/security/interfaces/XECPrivateKey;


# direct methods
.method constructor <init>(Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;)V
    .locals 0
    .param p1, "keyInfo"    # Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "keyInfo"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 27
    invoke-direct {p0, p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/BCXDHPrivateKey;-><init>(Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;)V

    .line 28
    return-void
.end method

.method constructor <init>(Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;)V
    .locals 0
    .param p1, "privKey"    # Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "privKey"
        }
    .end annotation

    .line 21
    invoke-direct {p0, p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/BCXDHPrivateKey;-><init>(Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;)V

    .line 22
    return-void
.end method


# virtual methods
.method public getParams()Ljava/security/spec/AlgorithmParameterSpec;
    .locals 1

    .line 32
    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/BC11XDHPrivateKey;->xdhPrivateKey:Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;

    instance-of v0, v0, Lorg/bouncycastle/crypto/params/X448PrivateKeyParameters;

    if-eqz v0, :cond_0

    .line 34
    sget-object v0, Ljava/security/spec/NamedParameterSpec;->X448:Ljava/security/spec/NamedParameterSpec;

    return-object v0

    .line 38
    :cond_0
    sget-object v0, Ljava/security/spec/NamedParameterSpec;->X25519:Ljava/security/spec/NamedParameterSpec;

    return-object v0
.end method

.method public getPublicKey()Lorg/bouncycastle/jcajce/interfaces/XDHPublicKey;
    .locals 2

    .line 45
    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/BC11XDHPrivateKey;->xdhPrivateKey:Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;

    instance-of v0, v0, Lorg/bouncycastle/crypto/params/X448PrivateKeyParameters;

    if-eqz v0, :cond_0

    .line 47
    new-instance v0, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/BC11XDHPublicKey;

    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/BC11XDHPrivateKey;->xdhPrivateKey:Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;

    check-cast v1, Lorg/bouncycastle/crypto/params/X448PrivateKeyParameters;

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/params/X448PrivateKeyParameters;->generatePublicKey()Lorg/bouncycastle/crypto/params/X448PublicKeyParameters;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/BC11XDHPublicKey;-><init>(Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;)V

    return-object v0

    .line 51
    :cond_0
    new-instance v0, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/BC11XDHPublicKey;

    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/BC11XDHPrivateKey;->xdhPrivateKey:Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;

    check-cast v1, Lorg/bouncycastle/crypto/params/X25519PrivateKeyParameters;

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/params/X25519PrivateKeyParameters;->generatePublicKey()Lorg/bouncycastle/crypto/params/X25519PublicKeyParameters;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/BC11XDHPublicKey;-><init>(Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;)V

    return-object v0
.end method

.method public getScalar()Lj$/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lj$/util/Optional<",
            "[B>;"
        }
    .end annotation

    .line 57
    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/BC11XDHPrivateKey;->xdhPrivateKey:Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;

    instance-of v0, v0, Lorg/bouncycastle/crypto/params/X448PrivateKeyParameters;

    if-eqz v0, :cond_0

    .line 59
    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/BC11XDHPrivateKey;->xdhPrivateKey:Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;

    check-cast v0, Lorg/bouncycastle/crypto/params/X448PrivateKeyParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/X448PrivateKeyParameters;->getEncoded()[B

    move-result-object v0

    invoke-static {v0}, Lj$/util/Optional;->of(Ljava/lang/Object;)Lj$/util/Optional;

    move-result-object v0

    return-object v0

    .line 63
    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/BC11XDHPrivateKey;->xdhPrivateKey:Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;

    check-cast v0, Lorg/bouncycastle/crypto/params/X25519PrivateKeyParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/X25519PrivateKeyParameters;->getEncoded()[B

    move-result-object v0

    invoke-static {v0}, Lj$/util/Optional;->of(Ljava/lang/Object;)Lj$/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method public synthetic getScalar()Ljava/util/Optional;
    .locals 1

    invoke-virtual {p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/BC11XDHPrivateKey;->getScalar()Lj$/util/Optional;

    move-result-object v0

    invoke-static {v0}, Lj$/util/OptionalConversions;->convert(Lj$/util/Optional;)Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method
