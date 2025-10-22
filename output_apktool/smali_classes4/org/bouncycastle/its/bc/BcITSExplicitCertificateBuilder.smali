.class public Lorg/bouncycastle/its/bc/BcITSExplicitCertificateBuilder;
.super Lorg/bouncycastle/its/ITSExplicitCertificateBuilder;
.source "BcITSExplicitCertificateBuilder.java"


# direct methods
.method public constructor <init>(Lorg/bouncycastle/its/operator/ITSContentSigner;Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate$Builder;)V
    .locals 0
    .param p1, "signer"    # Lorg/bouncycastle/its/operator/ITSContentSigner;
    .param p2, "tbsCertificate"    # Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate$Builder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "signer",
            "tbsCertificate"
        }
    .end annotation

    .line 22
    invoke-direct {p0, p1, p2}, Lorg/bouncycastle/its/ITSExplicitCertificateBuilder;-><init>(Lorg/bouncycastle/its/operator/ITSContentSigner;Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate$Builder;)V

    .line 23
    return-void
.end method


# virtual methods
.method public build(Lorg/bouncycastle/oer/its/ieee1609dot2/CertificateId;Lorg/bouncycastle/crypto/params/ECPublicKeyParameters;)Lorg/bouncycastle/its/ITSCertificate;
    .locals 1
    .param p1, "certificateId"    # Lorg/bouncycastle/oer/its/ieee1609dot2/CertificateId;
    .param p2, "verificationKey"    # Lorg/bouncycastle/crypto/params/ECPublicKeyParameters;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "certificateId",
            "verificationKey"
        }
    .end annotation

    .line 30
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lorg/bouncycastle/its/bc/BcITSExplicitCertificateBuilder;->build(Lorg/bouncycastle/oer/its/ieee1609dot2/CertificateId;Lorg/bouncycastle/crypto/params/ECPublicKeyParameters;Lorg/bouncycastle/crypto/params/ECPublicKeyParameters;)Lorg/bouncycastle/its/ITSCertificate;

    move-result-object v0

    return-object v0
.end method

.method public build(Lorg/bouncycastle/oer/its/ieee1609dot2/CertificateId;Lorg/bouncycastle/crypto/params/ECPublicKeyParameters;Lorg/bouncycastle/crypto/params/ECPublicKeyParameters;)Lorg/bouncycastle/its/ITSCertificate;
    .locals 2
    .param p1, "certificateId"    # Lorg/bouncycastle/oer/its/ieee1609dot2/CertificateId;
    .param p2, "verificationKey"    # Lorg/bouncycastle/crypto/params/ECPublicKeyParameters;
    .param p3, "encryptionKey"    # Lorg/bouncycastle/crypto/params/ECPublicKeyParameters;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "certificateId",
            "verificationKey",
            "encryptionKey"
        }
    .end annotation

    .line 38
    const/4 v0, 0x0

    .line 39
    .local v0, "publicEncryptionKey":Lorg/bouncycastle/its/ITSPublicEncryptionKey;
    if-eqz p3, :cond_0

    .line 41
    new-instance v1, Lorg/bouncycastle/its/bc/BcITSPublicEncryptionKey;

    invoke-direct {v1, p3}, Lorg/bouncycastle/its/bc/BcITSPublicEncryptionKey;-><init>(Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;)V

    move-object v0, v1

    .line 44
    :cond_0
    new-instance v1, Lorg/bouncycastle/its/bc/BcITSPublicVerificationKey;

    invoke-direct {v1, p2}, Lorg/bouncycastle/its/bc/BcITSPublicVerificationKey;-><init>(Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;)V

    invoke-super {p0, p1, v1, v0}, Lorg/bouncycastle/its/ITSExplicitCertificateBuilder;->build(Lorg/bouncycastle/oer/its/ieee1609dot2/CertificateId;Lorg/bouncycastle/its/ITSPublicVerificationKey;Lorg/bouncycastle/its/ITSPublicEncryptionKey;)Lorg/bouncycastle/its/ITSCertificate;

    move-result-object v1

    return-object v1
.end method
