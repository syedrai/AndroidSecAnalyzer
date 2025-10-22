.class public Lorg/bouncycastle/its/jcajce/JcaITSContentSigner$Builder;
.super Ljava/lang/Object;
.source "JcaITSContentSigner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/its/jcajce/JcaITSContentSigner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private helper:Lorg/bouncycastle/jcajce/util/JcaJceHelper;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Lorg/bouncycastle/jcajce/util/DefaultJcaJceHelper;

    invoke-direct {v0}, Lorg/bouncycastle/jcajce/util/DefaultJcaJceHelper;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/its/jcajce/JcaITSContentSigner$Builder;->helper:Lorg/bouncycastle/jcajce/util/JcaJceHelper;

    return-void
.end method


# virtual methods
.method public build(Ljava/security/PrivateKey;)Lorg/bouncycastle/its/jcajce/JcaITSContentSigner;
    .locals 4
    .param p1, "privateKey"    # Ljava/security/PrivateKey;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "privateKey"
        }
    .end annotation

    .line 51
    new-instance v0, Lorg/bouncycastle/its/jcajce/JcaITSContentSigner;

    move-object v1, p1

    check-cast v1, Ljava/security/interfaces/ECPrivateKey;

    const/4 v2, 0x0

    iget-object v3, p0, Lorg/bouncycastle/its/jcajce/JcaITSContentSigner$Builder;->helper:Lorg/bouncycastle/jcajce/util/JcaJceHelper;

    invoke-direct {v0, v1, v2, v3, v2}, Lorg/bouncycastle/its/jcajce/JcaITSContentSigner;-><init>(Ljava/security/interfaces/ECPrivateKey;Lorg/bouncycastle/its/ITSCertificate;Lorg/bouncycastle/jcajce/util/JcaJceHelper;Lorg/bouncycastle/its/jcajce/JcaITSContentSigner-IA;)V

    return-object v0
.end method

.method public build(Ljava/security/PrivateKey;Lorg/bouncycastle/its/ITSCertificate;)Lorg/bouncycastle/its/jcajce/JcaITSContentSigner;
    .locals 4
    .param p1, "privateKey"    # Ljava/security/PrivateKey;
    .param p2, "signerCert"    # Lorg/bouncycastle/its/ITSCertificate;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "privateKey",
            "signerCert"
        }
    .end annotation

    .line 56
    new-instance v0, Lorg/bouncycastle/its/jcajce/JcaITSContentSigner;

    move-object v1, p1

    check-cast v1, Ljava/security/interfaces/ECPrivateKey;

    iget-object v2, p0, Lorg/bouncycastle/its/jcajce/JcaITSContentSigner$Builder;->helper:Lorg/bouncycastle/jcajce/util/JcaJceHelper;

    const/4 v3, 0x0

    invoke-direct {v0, v1, p2, v2, v3}, Lorg/bouncycastle/its/jcajce/JcaITSContentSigner;-><init>(Ljava/security/interfaces/ECPrivateKey;Lorg/bouncycastle/its/ITSCertificate;Lorg/bouncycastle/jcajce/util/JcaJceHelper;Lorg/bouncycastle/its/jcajce/JcaITSContentSigner-IA;)V

    return-object v0
.end method

.method public setProvider(Ljava/lang/String;)Lorg/bouncycastle/its/jcajce/JcaITSContentSigner$Builder;
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

    .line 44
    new-instance v0, Lorg/bouncycastle/jcajce/util/NamedJcaJceHelper;

    invoke-direct {v0, p1}, Lorg/bouncycastle/jcajce/util/NamedJcaJceHelper;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/bouncycastle/its/jcajce/JcaITSContentSigner$Builder;->helper:Lorg/bouncycastle/jcajce/util/JcaJceHelper;

    .line 46
    return-object p0
.end method

.method public setProvider(Ljava/security/Provider;)Lorg/bouncycastle/its/jcajce/JcaITSContentSigner$Builder;
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

    .line 37
    new-instance v0, Lorg/bouncycastle/jcajce/util/ProviderJcaJceHelper;

    invoke-direct {v0, p1}, Lorg/bouncycastle/jcajce/util/ProviderJcaJceHelper;-><init>(Ljava/security/Provider;)V

    iput-object v0, p0, Lorg/bouncycastle/its/jcajce/JcaITSContentSigner$Builder;->helper:Lorg/bouncycastle/jcajce/util/JcaJceHelper;

    .line 39
    return-object p0
.end method
