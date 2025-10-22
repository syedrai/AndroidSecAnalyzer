.class Lorg/bouncycastle/jcajce/provider/asymmetric/edec/BC11XDHPublicKey;
.super Lorg/bouncycastle/jcajce/provider/asymmetric/edec/BCXDHPublicKey;
.source "BC11XDHPublicKey.java"

# interfaces
.implements Ljava/security/interfaces/XECPublicKey;


# direct methods
.method constructor <init>(Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;)V
    .locals 0
    .param p1, "keyInfo"    # Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "keyInfo"
        }
    .end annotation

    .line 23
    invoke-direct {p0, p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/BCXDHPublicKey;-><init>(Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;)V

    .line 24
    return-void
.end method

.method constructor <init>(Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;)V
    .locals 0
    .param p1, "pubKey"    # Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pubKey"
        }
    .end annotation

    .line 18
    invoke-direct {p0, p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/BCXDHPublicKey;-><init>(Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;)V

    .line 19
    return-void
.end method

.method constructor <init>([B[B)V
    .locals 0
    .param p1, "prefix"    # [B
    .param p2, "rawData"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "prefix",
            "rawData"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidKeySpecException;
        }
    .end annotation

    .line 29
    invoke-direct {p0, p1, p2}, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/BCXDHPublicKey;-><init>([B[B)V

    .line 30
    return-void
.end method


# virtual methods
.method public getParams()Ljava/security/spec/AlgorithmParameterSpec;
    .locals 1

    .line 34
    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/BC11XDHPublicKey;->xdhPublicKey:Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;

    instance-of v0, v0, Lorg/bouncycastle/crypto/params/X448PublicKeyParameters;

    if-eqz v0, :cond_0

    .line 36
    sget-object v0, Ljava/security/spec/NamedParameterSpec;->X448:Ljava/security/spec/NamedParameterSpec;

    return-object v0

    .line 40
    :cond_0
    sget-object v0, Ljava/security/spec/NamedParameterSpec;->X25519:Ljava/security/spec/NamedParameterSpec;

    return-object v0
.end method
