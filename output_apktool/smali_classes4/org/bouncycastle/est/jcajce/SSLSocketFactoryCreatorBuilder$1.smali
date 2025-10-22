.class Lorg/bouncycastle/est/jcajce/SSLSocketFactoryCreatorBuilder$1;
.super Ljava/lang/Object;
.source "SSLSocketFactoryCreatorBuilder.java"

# interfaces
.implements Lorg/bouncycastle/est/jcajce/SSLSocketFactoryCreator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/bouncycastle/est/jcajce/SSLSocketFactoryCreatorBuilder;->build()Lorg/bouncycastle/est/jcajce/SSLSocketFactoryCreator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/bouncycastle/est/jcajce/SSLSocketFactoryCreatorBuilder;


# direct methods
.method constructor <init>(Lorg/bouncycastle/est/jcajce/SSLSocketFactoryCreatorBuilder;)V
    .locals 0
    .param p1, "this$0"    # Lorg/bouncycastle/est/jcajce/SSLSocketFactoryCreatorBuilder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 110
    iput-object p1, p0, Lorg/bouncycastle/est/jcajce/SSLSocketFactoryCreatorBuilder$1;->this$0:Lorg/bouncycastle/est/jcajce/SSLSocketFactoryCreatorBuilder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFactory()Ljavax/net/ssl/SSLSocketFactory;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/NoSuchProviderException;,
            Ljava/security/KeyManagementException;
        }
    .end annotation

    .line 130
    iget-object v0, p0, Lorg/bouncycastle/est/jcajce/SSLSocketFactoryCreatorBuilder$1;->this$0:Lorg/bouncycastle/est/jcajce/SSLSocketFactoryCreatorBuilder;

    iget-object v0, v0, Lorg/bouncycastle/est/jcajce/SSLSocketFactoryCreatorBuilder;->tlsProvider:Ljava/security/Provider;

    if-eqz v0, :cond_0

    .line 132
    iget-object v0, p0, Lorg/bouncycastle/est/jcajce/SSLSocketFactoryCreatorBuilder$1;->this$0:Lorg/bouncycastle/est/jcajce/SSLSocketFactoryCreatorBuilder;

    iget-object v0, v0, Lorg/bouncycastle/est/jcajce/SSLSocketFactoryCreatorBuilder;->tlsVersion:Ljava/lang/String;

    iget-object v1, p0, Lorg/bouncycastle/est/jcajce/SSLSocketFactoryCreatorBuilder$1;->this$0:Lorg/bouncycastle/est/jcajce/SSLSocketFactoryCreatorBuilder;

    iget-object v1, v1, Lorg/bouncycastle/est/jcajce/SSLSocketFactoryCreatorBuilder;->tlsProvider:Ljava/security/Provider;

    invoke-static {v0, v1}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljavax/net/ssl/SSLContext;

    move-result-object v0

    .local v0, "ctx":Ljavax/net/ssl/SSLContext;
    goto :goto_0

    .line 136
    .end local v0    # "ctx":Ljavax/net/ssl/SSLContext;
    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/est/jcajce/SSLSocketFactoryCreatorBuilder$1;->this$0:Lorg/bouncycastle/est/jcajce/SSLSocketFactoryCreatorBuilder;

    iget-object v0, v0, Lorg/bouncycastle/est/jcajce/SSLSocketFactoryCreatorBuilder;->tlsVersion:Ljava/lang/String;

    invoke-static {v0}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v0

    .line 139
    .restart local v0    # "ctx":Ljavax/net/ssl/SSLContext;
    :goto_0
    iget-object v1, p0, Lorg/bouncycastle/est/jcajce/SSLSocketFactoryCreatorBuilder$1;->this$0:Lorg/bouncycastle/est/jcajce/SSLSocketFactoryCreatorBuilder;

    iget-object v1, v1, Lorg/bouncycastle/est/jcajce/SSLSocketFactoryCreatorBuilder;->keyManagers:[Ljavax/net/ssl/KeyManager;

    iget-object v2, p0, Lorg/bouncycastle/est/jcajce/SSLSocketFactoryCreatorBuilder$1;->this$0:Lorg/bouncycastle/est/jcajce/SSLSocketFactoryCreatorBuilder;

    iget-object v2, v2, Lorg/bouncycastle/est/jcajce/SSLSocketFactoryCreatorBuilder;->trustManagers:[Ljavax/net/ssl/X509TrustManager;

    iget-object v3, p0, Lorg/bouncycastle/est/jcajce/SSLSocketFactoryCreatorBuilder$1;->this$0:Lorg/bouncycastle/est/jcajce/SSLSocketFactoryCreatorBuilder;

    iget-object v3, v3, Lorg/bouncycastle/est/jcajce/SSLSocketFactoryCreatorBuilder;->secureRandom:Ljava/security/SecureRandom;

    invoke-virtual {v0, v1, v2, v3}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 141
    invoke-virtual {v0}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v1

    return-object v1
.end method

.method public isTrusted()Z
    .locals 3

    .line 113
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lorg/bouncycastle/est/jcajce/SSLSocketFactoryCreatorBuilder$1;->this$0:Lorg/bouncycastle/est/jcajce/SSLSocketFactoryCreatorBuilder;

    iget-object v1, v1, Lorg/bouncycastle/est/jcajce/SSLSocketFactoryCreatorBuilder;->trustManagers:[Ljavax/net/ssl/X509TrustManager;

    array-length v1, v1

    if-eq v0, v1, :cond_1

    .line 115
    iget-object v1, p0, Lorg/bouncycastle/est/jcajce/SSLSocketFactoryCreatorBuilder$1;->this$0:Lorg/bouncycastle/est/jcajce/SSLSocketFactoryCreatorBuilder;

    iget-object v1, v1, Lorg/bouncycastle/est/jcajce/SSLSocketFactoryCreatorBuilder;->trustManagers:[Ljavax/net/ssl/X509TrustManager;

    aget-object v1, v1, v0

    .line 116
    .local v1, "tm":Ljavax/net/ssl/X509TrustManager;
    invoke-interface {v1}, Ljavax/net/ssl/X509TrustManager;->getAcceptedIssuers()[Ljava/security/cert/X509Certificate;

    move-result-object v2

    array-length v2, v2

    if-lez v2, :cond_0

    .line 118
    const/4 v2, 0x1

    return v2

    .line 113
    .end local v1    # "tm":Ljavax/net/ssl/X509TrustManager;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 122
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x0

    return v0
.end method
