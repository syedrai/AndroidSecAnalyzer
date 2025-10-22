.class Lorg/bouncycastle/est/jcajce/DefaultESTHttpClientProvider;
.super Ljava/lang/Object;
.source "DefaultESTHttpClientProvider.java"

# interfaces
.implements Lorg/bouncycastle/est/ESTClientProvider;


# instance fields
.field private final absoluteLimit:Ljava/lang/Long;

.field private final bindingProvider:Lorg/bouncycastle/est/jcajce/ChannelBindingProvider;

.field private final cipherSuites:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final filterCipherSuites:Z

.field private final hostNameAuthorizer:Lorg/bouncycastle/est/jcajce/JsseHostnameAuthorizer;

.field private final socketFactoryCreator:Lorg/bouncycastle/est/jcajce/SSLSocketFactoryCreator;

.field private final timeout:I


# direct methods
.method public constructor <init>(Lorg/bouncycastle/est/jcajce/JsseHostnameAuthorizer;Lorg/bouncycastle/est/jcajce/SSLSocketFactoryCreator;ILorg/bouncycastle/est/jcajce/ChannelBindingProvider;Ljava/util/Set;Ljava/lang/Long;Z)V
    .locals 0
    .param p1, "hostNameAuthorizer"    # Lorg/bouncycastle/est/jcajce/JsseHostnameAuthorizer;
    .param p2, "socketFactoryCreator"    # Lorg/bouncycastle/est/jcajce/SSLSocketFactoryCreator;
    .param p3, "timeout"    # I
    .param p4, "bindingProvider"    # Lorg/bouncycastle/est/jcajce/ChannelBindingProvider;
    .param p6, "absoluteLimit"    # Ljava/lang/Long;
    .param p7, "filterCipherSuites"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "hostNameAuthorizer",
            "socketFactoryCreator",
            "timeout",
            "bindingProvider",
            "cipherSuites",
            "absoluteLimit",
            "filterCipherSuites"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/bouncycastle/est/jcajce/JsseHostnameAuthorizer;",
            "Lorg/bouncycastle/est/jcajce/SSLSocketFactoryCreator;",
            "I",
            "Lorg/bouncycastle/est/jcajce/ChannelBindingProvider;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Long;",
            "Z)V"
        }
    .end annotation

    .line 30
    .local p5, "cipherSuites":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lorg/bouncycastle/est/jcajce/DefaultESTHttpClientProvider;->hostNameAuthorizer:Lorg/bouncycastle/est/jcajce/JsseHostnameAuthorizer;

    .line 33
    iput-object p2, p0, Lorg/bouncycastle/est/jcajce/DefaultESTHttpClientProvider;->socketFactoryCreator:Lorg/bouncycastle/est/jcajce/SSLSocketFactoryCreator;

    .line 34
    iput p3, p0, Lorg/bouncycastle/est/jcajce/DefaultESTHttpClientProvider;->timeout:I

    .line 35
    iput-object p4, p0, Lorg/bouncycastle/est/jcajce/DefaultESTHttpClientProvider;->bindingProvider:Lorg/bouncycastle/est/jcajce/ChannelBindingProvider;

    .line 36
    iput-object p5, p0, Lorg/bouncycastle/est/jcajce/DefaultESTHttpClientProvider;->cipherSuites:Ljava/util/Set;

    .line 37
    iput-object p6, p0, Lorg/bouncycastle/est/jcajce/DefaultESTHttpClientProvider;->absoluteLimit:Ljava/lang/Long;

    .line 38
    iput-boolean p7, p0, Lorg/bouncycastle/est/jcajce/DefaultESTHttpClientProvider;->filterCipherSuites:Z

    .line 39
    return-void
.end method


# virtual methods
.method public isTrusted()Z
    .locals 1

    .line 59
    iget-object v0, p0, Lorg/bouncycastle/est/jcajce/DefaultESTHttpClientProvider;->socketFactoryCreator:Lorg/bouncycastle/est/jcajce/SSLSocketFactoryCreator;

    invoke-interface {v0}, Lorg/bouncycastle/est/jcajce/SSLSocketFactoryCreator;->isTrusted()Z

    move-result v0

    return v0
.end method

.method public makeClient()Lorg/bouncycastle/est/ESTClient;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/est/ESTException;
        }
    .end annotation

    .line 46
    :try_start_0
    iget-object v0, p0, Lorg/bouncycastle/est/jcajce/DefaultESTHttpClientProvider;->socketFactoryCreator:Lorg/bouncycastle/est/jcajce/SSLSocketFactoryCreator;

    invoke-interface {v0}, Lorg/bouncycastle/est/jcajce/SSLSocketFactoryCreator;->createFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    move-object v2, v0

    .line 47
    .local v2, "socketFactory":Ljavax/net/ssl/SSLSocketFactory;
    new-instance v0, Lorg/bouncycastle/est/jcajce/DefaultESTClient;

    new-instance v1, Lorg/bouncycastle/est/jcajce/DefaultESTClientSourceProvider;

    iget-object v3, p0, Lorg/bouncycastle/est/jcajce/DefaultESTHttpClientProvider;->hostNameAuthorizer:Lorg/bouncycastle/est/jcajce/JsseHostnameAuthorizer;

    iget v4, p0, Lorg/bouncycastle/est/jcajce/DefaultESTHttpClientProvider;->timeout:I

    iget-object v5, p0, Lorg/bouncycastle/est/jcajce/DefaultESTHttpClientProvider;->bindingProvider:Lorg/bouncycastle/est/jcajce/ChannelBindingProvider;

    iget-object v6, p0, Lorg/bouncycastle/est/jcajce/DefaultESTHttpClientProvider;->cipherSuites:Ljava/util/Set;

    iget-object v7, p0, Lorg/bouncycastle/est/jcajce/DefaultESTHttpClientProvider;->absoluteLimit:Ljava/lang/Long;

    iget-boolean v8, p0, Lorg/bouncycastle/est/jcajce/DefaultESTHttpClientProvider;->filterCipherSuites:Z

    invoke-direct/range {v1 .. v8}, Lorg/bouncycastle/est/jcajce/DefaultESTClientSourceProvider;-><init>(Ljavax/net/ssl/SSLSocketFactory;Lorg/bouncycastle/est/jcajce/JsseHostnameAuthorizer;ILorg/bouncycastle/est/jcajce/ChannelBindingProvider;Ljava/util/Set;Ljava/lang/Long;Z)V

    invoke-direct {v0, v1}, Lorg/bouncycastle/est/jcajce/DefaultESTClient;-><init>(Lorg/bouncycastle/est/ESTClientSourceProvider;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 50
    .end local v2    # "socketFactory":Ljavax/net/ssl/SSLSocketFactory;
    :catch_0
    move-exception v0

    .line 52
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lorg/bouncycastle/est/ESTException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/bouncycastle/est/ESTException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
