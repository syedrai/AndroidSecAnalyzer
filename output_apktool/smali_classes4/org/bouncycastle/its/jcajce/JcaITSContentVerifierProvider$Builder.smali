.class public Lorg/bouncycastle/its/jcajce/JcaITSContentVerifierProvider$Builder;
.super Ljava/lang/Object;
.source "JcaITSContentVerifierProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/its/jcajce/JcaITSContentVerifierProvider;
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

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Lorg/bouncycastle/jcajce/util/DefaultJcaJceHelper;

    invoke-direct {v0}, Lorg/bouncycastle/jcajce/util/DefaultJcaJceHelper;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/its/jcajce/JcaITSContentVerifierProvider$Builder;->helper:Lorg/bouncycastle/jcajce/util/JcaJceHelper;

    return-void
.end method


# virtual methods
.method public build(Lorg/bouncycastle/its/ITSCertificate;)Lorg/bouncycastle/its/jcajce/JcaITSContentVerifierProvider;
    .locals 3
    .param p1, "issuer"    # Lorg/bouncycastle/its/ITSCertificate;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "issuer"
        }
    .end annotation

    .line 53
    new-instance v0, Lorg/bouncycastle/its/jcajce/JcaITSContentVerifierProvider;

    iget-object v1, p0, Lorg/bouncycastle/its/jcajce/JcaITSContentVerifierProvider$Builder;->helper:Lorg/bouncycastle/jcajce/util/JcaJceHelper;

    const/4 v2, 0x0

    invoke-direct {v0, p1, v1, v2}, Lorg/bouncycastle/its/jcajce/JcaITSContentVerifierProvider;-><init>(Lorg/bouncycastle/its/ITSCertificate;Lorg/bouncycastle/jcajce/util/JcaJceHelper;Lorg/bouncycastle/its/jcajce/JcaITSContentVerifierProvider-IA;)V

    return-object v0
.end method

.method public build(Lorg/bouncycastle/its/ITSPublicVerificationKey;)Lorg/bouncycastle/its/jcajce/JcaITSContentVerifierProvider;
    .locals 3
    .param p1, "issuer"    # Lorg/bouncycastle/its/ITSPublicVerificationKey;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "issuer"
        }
    .end annotation

    .line 58
    new-instance v0, Lorg/bouncycastle/its/jcajce/JcaITSContentVerifierProvider;

    iget-object v1, p0, Lorg/bouncycastle/its/jcajce/JcaITSContentVerifierProvider$Builder;->helper:Lorg/bouncycastle/jcajce/util/JcaJceHelper;

    const/4 v2, 0x0

    invoke-direct {v0, p1, v1, v2}, Lorg/bouncycastle/its/jcajce/JcaITSContentVerifierProvider;-><init>(Lorg/bouncycastle/its/ITSPublicVerificationKey;Lorg/bouncycastle/jcajce/util/JcaJceHelper;Lorg/bouncycastle/its/jcajce/JcaITSContentVerifierProvider-IA;)V

    return-object v0
.end method

.method public setProvider(Ljava/lang/String;)Lorg/bouncycastle/its/jcajce/JcaITSContentVerifierProvider$Builder;
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

    .line 46
    new-instance v0, Lorg/bouncycastle/jcajce/util/NamedJcaJceHelper;

    invoke-direct {v0, p1}, Lorg/bouncycastle/jcajce/util/NamedJcaJceHelper;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/bouncycastle/its/jcajce/JcaITSContentVerifierProvider$Builder;->helper:Lorg/bouncycastle/jcajce/util/JcaJceHelper;

    .line 48
    return-object p0
.end method

.method public setProvider(Ljava/security/Provider;)Lorg/bouncycastle/its/jcajce/JcaITSContentVerifierProvider$Builder;
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

    .line 39
    new-instance v0, Lorg/bouncycastle/jcajce/util/ProviderJcaJceHelper;

    invoke-direct {v0, p1}, Lorg/bouncycastle/jcajce/util/ProviderJcaJceHelper;-><init>(Ljava/security/Provider;)V

    iput-object v0, p0, Lorg/bouncycastle/its/jcajce/JcaITSContentVerifierProvider$Builder;->helper:Lorg/bouncycastle/jcajce/util/JcaJceHelper;

    .line 41
    return-object p0
.end method
