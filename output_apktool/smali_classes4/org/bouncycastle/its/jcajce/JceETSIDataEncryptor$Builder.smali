.class public Lorg/bouncycastle/its/jcajce/JceETSIDataEncryptor$Builder;
.super Ljava/lang/Object;
.source "JceETSIDataEncryptor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/its/jcajce/JceETSIDataEncryptor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private helper:Lorg/bouncycastle/jcajce/util/JcaJceHelper;

.field private random:Ljava/security/SecureRandom;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    new-instance v0, Lorg/bouncycastle/jcajce/util/DefaultJcaJceHelper;

    invoke-direct {v0}, Lorg/bouncycastle/jcajce/util/DefaultJcaJceHelper;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/its/jcajce/JceETSIDataEncryptor$Builder;->helper:Lorg/bouncycastle/jcajce/util/JcaJceHelper;

    .line 69
    return-void
.end method


# virtual methods
.method public build()Lorg/bouncycastle/its/jcajce/JceETSIDataEncryptor;
    .locals 4

    .line 105
    iget-object v0, p0, Lorg/bouncycastle/its/jcajce/JceETSIDataEncryptor$Builder;->random:Ljava/security/SecureRandom;

    if-nez v0, :cond_0

    .line 107
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/its/jcajce/JceETSIDataEncryptor$Builder;->random:Ljava/security/SecureRandom;

    .line 109
    :cond_0
    new-instance v0, Lorg/bouncycastle/its/jcajce/JceETSIDataEncryptor;

    iget-object v1, p0, Lorg/bouncycastle/its/jcajce/JceETSIDataEncryptor$Builder;->random:Ljava/security/SecureRandom;

    iget-object v2, p0, Lorg/bouncycastle/its/jcajce/JceETSIDataEncryptor$Builder;->helper:Lorg/bouncycastle/jcajce/util/JcaJceHelper;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lorg/bouncycastle/its/jcajce/JceETSIDataEncryptor;-><init>(Ljava/security/SecureRandom;Lorg/bouncycastle/jcajce/util/JcaJceHelper;Lorg/bouncycastle/its/jcajce/JceETSIDataEncryptor-IA;)V

    return-object v0
.end method

.method public setProvider(Ljava/lang/String;)Lorg/bouncycastle/its/jcajce/JceETSIDataEncryptor$Builder;
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

    .line 98
    new-instance v0, Lorg/bouncycastle/jcajce/util/NamedJcaJceHelper;

    invoke-direct {v0, p1}, Lorg/bouncycastle/jcajce/util/NamedJcaJceHelper;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/bouncycastle/its/jcajce/JceETSIDataEncryptor$Builder;->helper:Lorg/bouncycastle/jcajce/util/JcaJceHelper;

    .line 100
    return-object p0
.end method

.method public setProvider(Ljava/security/Provider;)Lorg/bouncycastle/its/jcajce/JceETSIDataEncryptor$Builder;
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

    .line 85
    new-instance v0, Lorg/bouncycastle/jcajce/util/ProviderJcaJceHelper;

    invoke-direct {v0, p1}, Lorg/bouncycastle/jcajce/util/ProviderJcaJceHelper;-><init>(Ljava/security/Provider;)V

    iput-object v0, p0, Lorg/bouncycastle/its/jcajce/JceETSIDataEncryptor$Builder;->helper:Lorg/bouncycastle/jcajce/util/JcaJceHelper;

    .line 87
    return-object p0
.end method

.method public setRandom(Ljava/security/SecureRandom;)Lorg/bouncycastle/its/jcajce/JceETSIDataEncryptor$Builder;
    .locals 0
    .param p1, "random"    # Ljava/security/SecureRandom;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "random"
        }
    .end annotation

    .line 73
    iput-object p1, p0, Lorg/bouncycastle/its/jcajce/JceETSIDataEncryptor$Builder;->random:Ljava/security/SecureRandom;

    .line 74
    return-object p0
.end method
