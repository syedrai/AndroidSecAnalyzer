.class public Lorg/bouncycastle/its/jcajce/JcaITSExplicitCertificateBuilder;
.super Lorg/bouncycastle/its/ITSExplicitCertificateBuilder;
.source "JcaITSExplicitCertificateBuilder.java"


# instance fields
.field private helper:Lorg/bouncycastle/jcajce/util/JcaJceHelper;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/its/operator/ITSContentSigner;Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate$Builder;)V
    .locals 1
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

    .line 30
    new-instance v0, Lorg/bouncycastle/jcajce/util/DefaultJcaJceHelper;

    invoke-direct {v0}, Lorg/bouncycastle/jcajce/util/DefaultJcaJceHelper;-><init>()V

    invoke-direct {p0, p1, p2, v0}, Lorg/bouncycastle/its/jcajce/JcaITSExplicitCertificateBuilder;-><init>(Lorg/bouncycastle/its/operator/ITSContentSigner;Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate$Builder;Lorg/bouncycastle/jcajce/util/JcaJceHelper;)V

    .line 31
    return-void
.end method

.method private constructor <init>(Lorg/bouncycastle/its/operator/ITSContentSigner;Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate$Builder;Lorg/bouncycastle/jcajce/util/JcaJceHelper;)V
    .locals 0
    .param p1, "signer"    # Lorg/bouncycastle/its/operator/ITSContentSigner;
    .param p2, "tbsCertificate"    # Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate$Builder;
    .param p3, "helper"    # Lorg/bouncycastle/jcajce/util/JcaJceHelper;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "signer",
            "tbsCertificate",
            "helper"
        }
    .end annotation

    .line 35
    invoke-direct {p0, p1, p2}, Lorg/bouncycastle/its/ITSExplicitCertificateBuilder;-><init>(Lorg/bouncycastle/its/operator/ITSContentSigner;Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate$Builder;)V

    .line 36
    iput-object p3, p0, Lorg/bouncycastle/its/jcajce/JcaITSExplicitCertificateBuilder;->helper:Lorg/bouncycastle/jcajce/util/JcaJceHelper;

    .line 37
    return-void
.end method


# virtual methods
.method public build(Lorg/bouncycastle/oer/its/ieee1609dot2/CertificateId;Ljava/security/interfaces/ECPublicKey;)Lorg/bouncycastle/its/ITSCertificate;
    .locals 1
    .param p1, "certificateId"    # Lorg/bouncycastle/oer/its/ieee1609dot2/CertificateId;
    .param p2, "verificationKey"    # Ljava/security/interfaces/ECPublicKey;
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

    .line 55
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lorg/bouncycastle/its/jcajce/JcaITSExplicitCertificateBuilder;->build(Lorg/bouncycastle/oer/its/ieee1609dot2/CertificateId;Ljava/security/interfaces/ECPublicKey;Ljava/security/interfaces/ECPublicKey;)Lorg/bouncycastle/its/ITSCertificate;

    move-result-object v0

    return-object v0
.end method

.method public build(Lorg/bouncycastle/oer/its/ieee1609dot2/CertificateId;Ljava/security/interfaces/ECPublicKey;Ljava/security/interfaces/ECPublicKey;)Lorg/bouncycastle/its/ITSCertificate;
    .locals 3
    .param p1, "certificateId"    # Lorg/bouncycastle/oer/its/ieee1609dot2/CertificateId;
    .param p2, "verificationKey"    # Ljava/security/interfaces/ECPublicKey;
    .param p3, "encryptionKey"    # Ljava/security/interfaces/ECPublicKey;
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

    .line 63
    const/4 v0, 0x0

    .line 64
    .local v0, "publicEncryptionKey":Lorg/bouncycastle/its/ITSPublicEncryptionKey;
    if-eqz p3, :cond_0

    .line 66
    new-instance v1, Lorg/bouncycastle/its/jcajce/JceITSPublicEncryptionKey;

    iget-object v2, p0, Lorg/bouncycastle/its/jcajce/JcaITSExplicitCertificateBuilder;->helper:Lorg/bouncycastle/jcajce/util/JcaJceHelper;

    invoke-direct {v1, p3, v2}, Lorg/bouncycastle/its/jcajce/JceITSPublicEncryptionKey;-><init>(Ljava/security/PublicKey;Lorg/bouncycastle/jcajce/util/JcaJceHelper;)V

    move-object v0, v1

    .line 69
    :cond_0
    new-instance v1, Lorg/bouncycastle/its/jcajce/JcaITSPublicVerificationKey;

    iget-object v2, p0, Lorg/bouncycastle/its/jcajce/JcaITSExplicitCertificateBuilder;->helper:Lorg/bouncycastle/jcajce/util/JcaJceHelper;

    invoke-direct {v1, p2, v2}, Lorg/bouncycastle/its/jcajce/JcaITSPublicVerificationKey;-><init>(Ljava/security/PublicKey;Lorg/bouncycastle/jcajce/util/JcaJceHelper;)V

    invoke-super {p0, p1, v1, v0}, Lorg/bouncycastle/its/ITSExplicitCertificateBuilder;->build(Lorg/bouncycastle/oer/its/ieee1609dot2/CertificateId;Lorg/bouncycastle/its/ITSPublicVerificationKey;Lorg/bouncycastle/its/ITSPublicEncryptionKey;)Lorg/bouncycastle/its/ITSCertificate;

    move-result-object v1

    return-object v1
.end method

.method public setProvider(Ljava/lang/String;)Lorg/bouncycastle/its/jcajce/JcaITSExplicitCertificateBuilder;
    .locals 1
    .param p1, "providerName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "providerName"
        }
    .end annotation

    .line 47
    new-instance v0, Lorg/bouncycastle/jcajce/util/NamedJcaJceHelper;

    invoke-direct {v0, p1}, Lorg/bouncycastle/jcajce/util/NamedJcaJceHelper;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/bouncycastle/its/jcajce/JcaITSExplicitCertificateBuilder;->helper:Lorg/bouncycastle/jcajce/util/JcaJceHelper;

    .line 48
    return-object p0
.end method

.method public setProvider(Ljava/security/Provider;)Lorg/bouncycastle/its/jcajce/JcaITSExplicitCertificateBuilder;
    .locals 1
    .param p1, "provider"    # Ljava/security/Provider;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "provider"
        }
    .end annotation

    .line 41
    new-instance v0, Lorg/bouncycastle/jcajce/util/ProviderJcaJceHelper;

    invoke-direct {v0, p1}, Lorg/bouncycastle/jcajce/util/ProviderJcaJceHelper;-><init>(Ljava/security/Provider;)V

    iput-object v0, p0, Lorg/bouncycastle/its/jcajce/JcaITSExplicitCertificateBuilder;->helper:Lorg/bouncycastle/jcajce/util/JcaJceHelper;

    .line 42
    return-object p0
.end method
