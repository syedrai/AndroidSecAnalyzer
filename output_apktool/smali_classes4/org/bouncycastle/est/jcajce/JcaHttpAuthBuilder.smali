.class public Lorg/bouncycastle/est/jcajce/JcaHttpAuthBuilder;
.super Ljava/lang/Object;
.source "JcaHttpAuthBuilder.java"


# instance fields
.field private final password:[C

.field private providerBuilder:Lorg/bouncycastle/operator/jcajce/JcaDigestCalculatorProviderBuilder;

.field private random:Ljava/security/SecureRandom;

.field private final realm:Ljava/lang/String;

.field private final username:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;[C)V
    .locals 1
    .param p1, "realm"    # Ljava/lang/String;
    .param p2, "username"    # Ljava/lang/String;
    .param p3, "password"    # [C
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "realm",
            "username",
            "password"
        }
    .end annotation

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Lorg/bouncycastle/operator/jcajce/JcaDigestCalculatorProviderBuilder;

    invoke-direct {v0}, Lorg/bouncycastle/operator/jcajce/JcaDigestCalculatorProviderBuilder;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/est/jcajce/JcaHttpAuthBuilder;->providerBuilder:Lorg/bouncycastle/operator/jcajce/JcaDigestCalculatorProviderBuilder;

    .line 20
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/est/jcajce/JcaHttpAuthBuilder;->random:Ljava/security/SecureRandom;

    .line 42
    iput-object p1, p0, Lorg/bouncycastle/est/jcajce/JcaHttpAuthBuilder;->realm:Ljava/lang/String;

    .line 43
    iput-object p2, p0, Lorg/bouncycastle/est/jcajce/JcaHttpAuthBuilder;->username:Ljava/lang/String;

    .line 44
    iput-object p3, p0, Lorg/bouncycastle/est/jcajce/JcaHttpAuthBuilder;->password:[C

    .line 45
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[C)V
    .locals 1
    .param p1, "username"    # Ljava/lang/String;
    .param p2, "password"    # [C
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "username",
            "password"
        }
    .end annotation

    .line 30
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Lorg/bouncycastle/est/jcajce/JcaHttpAuthBuilder;-><init>(Ljava/lang/String;Ljava/lang/String;[C)V

    .line 31
    return-void
.end method


# virtual methods
.method public build()Lorg/bouncycastle/est/HttpAuth;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/operator/OperatorCreationException;
        }
    .end annotation

    .line 95
    new-instance v0, Lorg/bouncycastle/est/HttpAuth;

    iget-object v1, p0, Lorg/bouncycastle/est/jcajce/JcaHttpAuthBuilder;->realm:Ljava/lang/String;

    iget-object v2, p0, Lorg/bouncycastle/est/jcajce/JcaHttpAuthBuilder;->username:Ljava/lang/String;

    iget-object v3, p0, Lorg/bouncycastle/est/jcajce/JcaHttpAuthBuilder;->password:[C

    iget-object v4, p0, Lorg/bouncycastle/est/jcajce/JcaHttpAuthBuilder;->random:Ljava/security/SecureRandom;

    iget-object v5, p0, Lorg/bouncycastle/est/jcajce/JcaHttpAuthBuilder;->providerBuilder:Lorg/bouncycastle/operator/jcajce/JcaDigestCalculatorProviderBuilder;

    invoke-virtual {v5}, Lorg/bouncycastle/operator/jcajce/JcaDigestCalculatorProviderBuilder;->build()Lorg/bouncycastle/operator/DigestCalculatorProvider;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/est/HttpAuth;-><init>(Ljava/lang/String;Ljava/lang/String;[CLjava/security/SecureRandom;Lorg/bouncycastle/operator/DigestCalculatorProvider;)V

    return-object v0
.end method

.method public setNonceGenerator(Ljava/security/SecureRandom;)Lorg/bouncycastle/est/jcajce/JcaHttpAuthBuilder;
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

    .line 81
    iput-object p1, p0, Lorg/bouncycastle/est/jcajce/JcaHttpAuthBuilder;->random:Ljava/security/SecureRandom;

    .line 83
    return-object p0
.end method

.method public setProvider(Ljava/lang/String;)Lorg/bouncycastle/est/jcajce/JcaHttpAuthBuilder;
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

    .line 68
    iget-object v0, p0, Lorg/bouncycastle/est/jcajce/JcaHttpAuthBuilder;->providerBuilder:Lorg/bouncycastle/operator/jcajce/JcaDigestCalculatorProviderBuilder;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/operator/jcajce/JcaDigestCalculatorProviderBuilder;->setProvider(Ljava/lang/String;)Lorg/bouncycastle/operator/jcajce/JcaDigestCalculatorProviderBuilder;

    .line 70
    return-object p0
.end method

.method public setProvider(Ljava/security/Provider;)Lorg/bouncycastle/est/jcajce/JcaHttpAuthBuilder;
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

    .line 55
    iget-object v0, p0, Lorg/bouncycastle/est/jcajce/JcaHttpAuthBuilder;->providerBuilder:Lorg/bouncycastle/operator/jcajce/JcaDigestCalculatorProviderBuilder;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/operator/jcajce/JcaDigestCalculatorProviderBuilder;->setProvider(Ljava/security/Provider;)Lorg/bouncycastle/operator/jcajce/JcaDigestCalculatorProviderBuilder;

    .line 57
    return-object p0
.end method
