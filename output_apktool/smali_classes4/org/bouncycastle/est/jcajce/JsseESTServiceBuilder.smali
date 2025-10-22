.class public Lorg/bouncycastle/est/jcajce/JsseESTServiceBuilder;
.super Lorg/bouncycastle/est/ESTServiceBuilder;
.source "JsseESTServiceBuilder.java"


# instance fields
.field protected absoluteLimit:Ljava/lang/Long;

.field protected bindingProvider:Lorg/bouncycastle/est/jcajce/ChannelBindingProvider;

.field protected filterCipherSuites:Z

.field protected hostNameAuthorizer:Lorg/bouncycastle/est/jcajce/JsseHostnameAuthorizer;

.field protected socketFactoryCreator:Lorg/bouncycastle/est/jcajce/SSLSocketFactoryCreator;

.field protected sslSocketFactoryCreatorBuilder:Lorg/bouncycastle/est/jcajce/SSLSocketFactoryCreatorBuilder;

.field protected supportedSuites:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected timeoutMillis:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "server"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "server"
        }
    .end annotation

    .line 74
    invoke-direct {p0, p1}, Lorg/bouncycastle/est/ESTServiceBuilder;-><init>(Ljava/lang/String;)V

    .line 27
    new-instance v0, Lorg/bouncycastle/est/jcajce/JsseDefaultHostnameAuthorizer;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/bouncycastle/est/jcajce/JsseDefaultHostnameAuthorizer;-><init>(Ljava/util/Set;)V

    iput-object v0, p0, Lorg/bouncycastle/est/jcajce/JsseESTServiceBuilder;->hostNameAuthorizer:Lorg/bouncycastle/est/jcajce/JsseHostnameAuthorizer;

    .line 28
    const/4 v0, 0x0

    iput v0, p0, Lorg/bouncycastle/est/jcajce/JsseESTServiceBuilder;->timeoutMillis:I

    .line 30
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/est/jcajce/JsseESTServiceBuilder;->supportedSuites:Ljava/util/Set;

    .line 33
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/bouncycastle/est/jcajce/JsseESTServiceBuilder;->filterCipherSuites:Z

    .line 75
    new-instance v0, Lorg/bouncycastle/est/jcajce/SSLSocketFactoryCreatorBuilder;

    invoke-static {}, Lorg/bouncycastle/est/jcajce/JcaJceUtils;->getTrustAllTrustManager()Ljavax/net/ssl/X509TrustManager;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/est/jcajce/SSLSocketFactoryCreatorBuilder;-><init>(Ljavax/net/ssl/X509TrustManager;)V

    iput-object v0, p0, Lorg/bouncycastle/est/jcajce/JsseESTServiceBuilder;->sslSocketFactoryCreatorBuilder:Lorg/bouncycastle/est/jcajce/SSLSocketFactoryCreatorBuilder;

    .line 76
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjavax/net/ssl/X509TrustManager;)V
    .locals 2
    .param p1, "hostName"    # Ljava/lang/String;
    .param p2, "portNo"    # I
    .param p3, "trustManager"    # Ljavax/net/ssl/X509TrustManager;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "hostName",
            "portNo",
            "trustManager"
        }
    .end annotation

    .line 87
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/bouncycastle/est/ESTServiceBuilder;-><init>(Ljava/lang/String;)V

    .line 27
    new-instance v0, Lorg/bouncycastle/est/jcajce/JsseDefaultHostnameAuthorizer;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/bouncycastle/est/jcajce/JsseDefaultHostnameAuthorizer;-><init>(Ljava/util/Set;)V

    iput-object v0, p0, Lorg/bouncycastle/est/jcajce/JsseESTServiceBuilder;->hostNameAuthorizer:Lorg/bouncycastle/est/jcajce/JsseHostnameAuthorizer;

    .line 28
    const/4 v0, 0x0

    iput v0, p0, Lorg/bouncycastle/est/jcajce/JsseESTServiceBuilder;->timeoutMillis:I

    .line 30
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/est/jcajce/JsseESTServiceBuilder;->supportedSuites:Ljava/util/Set;

    .line 33
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/bouncycastle/est/jcajce/JsseESTServiceBuilder;->filterCipherSuites:Z

    .line 88
    new-instance v0, Lorg/bouncycastle/est/jcajce/SSLSocketFactoryCreatorBuilder;

    invoke-direct {v0, p3}, Lorg/bouncycastle/est/jcajce/SSLSocketFactoryCreatorBuilder;-><init>(Ljavax/net/ssl/X509TrustManager;)V

    iput-object v0, p0, Lorg/bouncycastle/est/jcajce/JsseESTServiceBuilder;->sslSocketFactoryCreatorBuilder:Lorg/bouncycastle/est/jcajce/SSLSocketFactoryCreatorBuilder;

    .line 89
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILorg/bouncycastle/est/jcajce/SSLSocketFactoryCreator;)V
    .locals 2
    .param p1, "hostName"    # Ljava/lang/String;
    .param p2, "portNo"    # I
    .param p3, "socketFactoryCreator"    # Lorg/bouncycastle/est/jcajce/SSLSocketFactoryCreator;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "hostName",
            "portNo",
            "socketFactoryCreator"
        }
    .end annotation

    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/bouncycastle/est/ESTServiceBuilder;-><init>(Ljava/lang/String;)V

    .line 27
    new-instance v0, Lorg/bouncycastle/est/jcajce/JsseDefaultHostnameAuthorizer;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/bouncycastle/est/jcajce/JsseDefaultHostnameAuthorizer;-><init>(Ljava/util/Set;)V

    iput-object v0, p0, Lorg/bouncycastle/est/jcajce/JsseESTServiceBuilder;->hostNameAuthorizer:Lorg/bouncycastle/est/jcajce/JsseHostnameAuthorizer;

    .line 28
    const/4 v0, 0x0

    iput v0, p0, Lorg/bouncycastle/est/jcajce/JsseESTServiceBuilder;->timeoutMillis:I

    .line 30
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/est/jcajce/JsseESTServiceBuilder;->supportedSuites:Ljava/util/Set;

    .line 33
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/bouncycastle/est/jcajce/JsseESTServiceBuilder;->filterCipherSuites:Z

    .line 44
    if-eqz p3, :cond_0

    .line 48
    iput-object p3, p0, Lorg/bouncycastle/est/jcajce/JsseESTServiceBuilder;->socketFactoryCreator:Lorg/bouncycastle/est/jcajce/SSLSocketFactoryCreator;

    .line 49
    return-void

    .line 46
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "No socket factory creator."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Ljava/lang/String;I[Ljavax/net/ssl/X509TrustManager;)V
    .locals 2
    .param p1, "hostName"    # Ljava/lang/String;
    .param p2, "portNo"    # I
    .param p3, "trustManagers"    # [Ljavax/net/ssl/X509TrustManager;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "hostName",
            "portNo",
            "trustManagers"
        }
    .end annotation

    .line 112
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p3}, Lorg/bouncycastle/est/jcajce/JsseESTServiceBuilder;-><init>(Ljava/lang/String;[Ljavax/net/ssl/X509TrustManager;)V

    .line 113
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljavax/net/ssl/X509TrustManager;)V
    .locals 2
    .param p1, "server"    # Ljava/lang/String;
    .param p2, "trustManager"    # Ljavax/net/ssl/X509TrustManager;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "server",
            "trustManager"
        }
    .end annotation

    .line 99
    invoke-direct {p0, p1}, Lorg/bouncycastle/est/ESTServiceBuilder;-><init>(Ljava/lang/String;)V

    .line 27
    new-instance v0, Lorg/bouncycastle/est/jcajce/JsseDefaultHostnameAuthorizer;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/bouncycastle/est/jcajce/JsseDefaultHostnameAuthorizer;-><init>(Ljava/util/Set;)V

    iput-object v0, p0, Lorg/bouncycastle/est/jcajce/JsseESTServiceBuilder;->hostNameAuthorizer:Lorg/bouncycastle/est/jcajce/JsseHostnameAuthorizer;

    .line 28
    const/4 v0, 0x0

    iput v0, p0, Lorg/bouncycastle/est/jcajce/JsseESTServiceBuilder;->timeoutMillis:I

    .line 30
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/est/jcajce/JsseESTServiceBuilder;->supportedSuites:Ljava/util/Set;

    .line 33
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/bouncycastle/est/jcajce/JsseESTServiceBuilder;->filterCipherSuites:Z

    .line 100
    new-instance v0, Lorg/bouncycastle/est/jcajce/SSLSocketFactoryCreatorBuilder;

    invoke-direct {v0, p2}, Lorg/bouncycastle/est/jcajce/SSLSocketFactoryCreatorBuilder;-><init>(Ljavax/net/ssl/X509TrustManager;)V

    iput-object v0, p0, Lorg/bouncycastle/est/jcajce/JsseESTServiceBuilder;->sslSocketFactoryCreatorBuilder:Lorg/bouncycastle/est/jcajce/SSLSocketFactoryCreatorBuilder;

    .line 101
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/bouncycastle/est/jcajce/SSLSocketFactoryCreator;)V
    .locals 2
    .param p1, "server"    # Ljava/lang/String;
    .param p2, "socketFactoryCreator"    # Lorg/bouncycastle/est/jcajce/SSLSocketFactoryCreator;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "server",
            "socketFactoryCreator"
        }
    .end annotation

    .line 59
    invoke-direct {p0, p1}, Lorg/bouncycastle/est/ESTServiceBuilder;-><init>(Ljava/lang/String;)V

    .line 27
    new-instance v0, Lorg/bouncycastle/est/jcajce/JsseDefaultHostnameAuthorizer;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/bouncycastle/est/jcajce/JsseDefaultHostnameAuthorizer;-><init>(Ljava/util/Set;)V

    iput-object v0, p0, Lorg/bouncycastle/est/jcajce/JsseESTServiceBuilder;->hostNameAuthorizer:Lorg/bouncycastle/est/jcajce/JsseHostnameAuthorizer;

    .line 28
    const/4 v0, 0x0

    iput v0, p0, Lorg/bouncycastle/est/jcajce/JsseESTServiceBuilder;->timeoutMillis:I

    .line 30
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/est/jcajce/JsseESTServiceBuilder;->supportedSuites:Ljava/util/Set;

    .line 33
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/bouncycastle/est/jcajce/JsseESTServiceBuilder;->filterCipherSuites:Z

    .line 60
    if-eqz p2, :cond_0

    .line 64
    iput-object p2, p0, Lorg/bouncycastle/est/jcajce/JsseESTServiceBuilder;->socketFactoryCreator:Lorg/bouncycastle/est/jcajce/SSLSocketFactoryCreator;

    .line 65
    return-void

    .line 62
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "No socket factory creator."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Ljava/lang/String;[Ljavax/net/ssl/X509TrustManager;)V
    .locals 2
    .param p1, "server"    # Ljava/lang/String;
    .param p2, "trustManagers"    # [Ljavax/net/ssl/X509TrustManager;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "server",
            "trustManagers"
        }
    .end annotation

    .line 123
    invoke-direct {p0, p1}, Lorg/bouncycastle/est/ESTServiceBuilder;-><init>(Ljava/lang/String;)V

    .line 27
    new-instance v0, Lorg/bouncycastle/est/jcajce/JsseDefaultHostnameAuthorizer;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/bouncycastle/est/jcajce/JsseDefaultHostnameAuthorizer;-><init>(Ljava/util/Set;)V

    iput-object v0, p0, Lorg/bouncycastle/est/jcajce/JsseESTServiceBuilder;->hostNameAuthorizer:Lorg/bouncycastle/est/jcajce/JsseHostnameAuthorizer;

    .line 28
    const/4 v0, 0x0

    iput v0, p0, Lorg/bouncycastle/est/jcajce/JsseESTServiceBuilder;->timeoutMillis:I

    .line 30
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/est/jcajce/JsseESTServiceBuilder;->supportedSuites:Ljava/util/Set;

    .line 33
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/bouncycastle/est/jcajce/JsseESTServiceBuilder;->filterCipherSuites:Z

    .line 124
    new-instance v0, Lorg/bouncycastle/est/jcajce/SSLSocketFactoryCreatorBuilder;

    invoke-direct {v0, p2}, Lorg/bouncycastle/est/jcajce/SSLSocketFactoryCreatorBuilder;-><init>([Ljavax/net/ssl/X509TrustManager;)V

    iput-object v0, p0, Lorg/bouncycastle/est/jcajce/JsseESTServiceBuilder;->sslSocketFactoryCreatorBuilder:Lorg/bouncycastle/est/jcajce/SSLSocketFactoryCreatorBuilder;

    .line 125
    return-void
.end method


# virtual methods
.method public addCipherSuites(Ljava/lang/String;)Lorg/bouncycastle/est/jcajce/JsseESTServiceBuilder;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "name"
        }
    .end annotation

    .line 160
    iget-object v0, p0, Lorg/bouncycastle/est/jcajce/JsseESTServiceBuilder;->supportedSuites:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 161
    return-object p0
.end method

.method public addCipherSuites([Ljava/lang/String;)Lorg/bouncycastle/est/jcajce/JsseESTServiceBuilder;
    .locals 2
    .param p1, "names"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "names"
        }
    .end annotation

    .line 166
    iget-object v0, p0, Lorg/bouncycastle/est/jcajce/JsseESTServiceBuilder;->supportedSuites:Ljava/util/Set;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 167
    return-object p0
.end method

.method public build()Lorg/bouncycastle/est/ESTService;
    .locals 9

    .line 268
    iget-object v0, p0, Lorg/bouncycastle/est/jcajce/JsseESTServiceBuilder;->bindingProvider:Lorg/bouncycastle/est/jcajce/ChannelBindingProvider;

    if-nez v0, :cond_0

    .line 270
    new-instance v0, Lorg/bouncycastle/est/jcajce/JsseESTServiceBuilder$1;

    invoke-direct {v0, p0}, Lorg/bouncycastle/est/jcajce/JsseESTServiceBuilder$1;-><init>(Lorg/bouncycastle/est/jcajce/JsseESTServiceBuilder;)V

    iput-object v0, p0, Lorg/bouncycastle/est/jcajce/JsseESTServiceBuilder;->bindingProvider:Lorg/bouncycastle/est/jcajce/ChannelBindingProvider;

    .line 284
    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/est/jcajce/JsseESTServiceBuilder;->socketFactoryCreator:Lorg/bouncycastle/est/jcajce/SSLSocketFactoryCreator;

    if-nez v0, :cond_1

    .line 286
    iget-object v0, p0, Lorg/bouncycastle/est/jcajce/JsseESTServiceBuilder;->sslSocketFactoryCreatorBuilder:Lorg/bouncycastle/est/jcajce/SSLSocketFactoryCreatorBuilder;

    invoke-virtual {v0}, Lorg/bouncycastle/est/jcajce/SSLSocketFactoryCreatorBuilder;->build()Lorg/bouncycastle/est/jcajce/SSLSocketFactoryCreator;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/est/jcajce/JsseESTServiceBuilder;->socketFactoryCreator:Lorg/bouncycastle/est/jcajce/SSLSocketFactoryCreator;

    .line 290
    :cond_1
    iget-object v0, p0, Lorg/bouncycastle/est/jcajce/JsseESTServiceBuilder;->clientProvider:Lorg/bouncycastle/est/ESTClientProvider;

    if-nez v0, :cond_2

    .line 292
    new-instance v1, Lorg/bouncycastle/est/jcajce/DefaultESTHttpClientProvider;

    iget-object v2, p0, Lorg/bouncycastle/est/jcajce/JsseESTServiceBuilder;->hostNameAuthorizer:Lorg/bouncycastle/est/jcajce/JsseHostnameAuthorizer;

    iget-object v3, p0, Lorg/bouncycastle/est/jcajce/JsseESTServiceBuilder;->socketFactoryCreator:Lorg/bouncycastle/est/jcajce/SSLSocketFactoryCreator;

    iget v4, p0, Lorg/bouncycastle/est/jcajce/JsseESTServiceBuilder;->timeoutMillis:I

    iget-object v5, p0, Lorg/bouncycastle/est/jcajce/JsseESTServiceBuilder;->bindingProvider:Lorg/bouncycastle/est/jcajce/ChannelBindingProvider;

    iget-object v6, p0, Lorg/bouncycastle/est/jcajce/JsseESTServiceBuilder;->supportedSuites:Ljava/util/Set;

    iget-object v7, p0, Lorg/bouncycastle/est/jcajce/JsseESTServiceBuilder;->absoluteLimit:Ljava/lang/Long;

    iget-boolean v8, p0, Lorg/bouncycastle/est/jcajce/JsseESTServiceBuilder;->filterCipherSuites:Z

    invoke-direct/range {v1 .. v8}, Lorg/bouncycastle/est/jcajce/DefaultESTHttpClientProvider;-><init>(Lorg/bouncycastle/est/jcajce/JsseHostnameAuthorizer;Lorg/bouncycastle/est/jcajce/SSLSocketFactoryCreator;ILorg/bouncycastle/est/jcajce/ChannelBindingProvider;Ljava/util/Set;Ljava/lang/Long;Z)V

    iput-object v1, p0, Lorg/bouncycastle/est/jcajce/JsseESTServiceBuilder;->clientProvider:Lorg/bouncycastle/est/ESTClientProvider;

    .line 301
    :cond_2
    invoke-super {p0}, Lorg/bouncycastle/est/ESTServiceBuilder;->build()Lorg/bouncycastle/est/ESTService;

    move-result-object v0

    return-object v0
.end method

.method public withChannelBindingProvider(Lorg/bouncycastle/est/jcajce/ChannelBindingProvider;)Lorg/bouncycastle/est/jcajce/JsseESTServiceBuilder;
    .locals 0
    .param p1, "channelBindingProvider"    # Lorg/bouncycastle/est/jcajce/ChannelBindingProvider;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "channelBindingProvider"
        }
    .end annotation

    .line 154
    iput-object p1, p0, Lorg/bouncycastle/est/jcajce/JsseESTServiceBuilder;->bindingProvider:Lorg/bouncycastle/est/jcajce/ChannelBindingProvider;

    .line 155
    return-object p0
.end method

.method public bridge synthetic withClientProvider(Lorg/bouncycastle/est/ESTClientProvider;)Lorg/bouncycastle/est/ESTServiceBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "clientProvider"
        }
    .end annotation

    .line 23
    invoke-virtual {p0, p1}, Lorg/bouncycastle/est/jcajce/JsseESTServiceBuilder;->withClientProvider(Lorg/bouncycastle/est/ESTClientProvider;)Lorg/bouncycastle/est/jcajce/JsseESTServiceBuilder;

    move-result-object p1

    return-object p1
.end method

.method public withClientProvider(Lorg/bouncycastle/est/ESTClientProvider;)Lorg/bouncycastle/est/jcajce/JsseESTServiceBuilder;
    .locals 0
    .param p1, "clientProvider"    # Lorg/bouncycastle/est/ESTClientProvider;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "clientProvider"
        }
    .end annotation

    .line 135
    iput-object p1, p0, Lorg/bouncycastle/est/jcajce/JsseESTServiceBuilder;->clientProvider:Lorg/bouncycastle/est/ESTClientProvider;

    .line 136
    return-object p0
.end method

.method public withFilterCipherSuites(Z)Lorg/bouncycastle/est/jcajce/JsseESTServiceBuilder;
    .locals 0
    .param p1, "filter"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "filter"
        }
    .end annotation

    .line 262
    iput-boolean p1, p0, Lorg/bouncycastle/est/jcajce/JsseESTServiceBuilder;->filterCipherSuites:Z

    .line 263
    return-object p0
.end method

.method public withHostNameAuthorizer(Lorg/bouncycastle/est/jcajce/JsseHostnameAuthorizer;)Lorg/bouncycastle/est/jcajce/JsseESTServiceBuilder;
    .locals 0
    .param p1, "hostNameAuthorizer"    # Lorg/bouncycastle/est/jcajce/JsseHostnameAuthorizer;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "hostNameAuthorizer"
        }
    .end annotation

    .line 129
    iput-object p1, p0, Lorg/bouncycastle/est/jcajce/JsseESTServiceBuilder;->hostNameAuthorizer:Lorg/bouncycastle/est/jcajce/JsseHostnameAuthorizer;

    .line 130
    return-object p0
.end method

.method public withKeyManager(Ljavax/net/ssl/KeyManager;)Lorg/bouncycastle/est/jcajce/JsseESTServiceBuilder;
    .locals 2
    .param p1, "keyManager"    # Ljavax/net/ssl/KeyManager;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "keyManager"
        }
    .end annotation

    .line 235
    iget-object v0, p0, Lorg/bouncycastle/est/jcajce/JsseESTServiceBuilder;->socketFactoryCreator:Lorg/bouncycastle/est/jcajce/SSLSocketFactoryCreator;

    if-nez v0, :cond_0

    .line 240
    iget-object v0, p0, Lorg/bouncycastle/est/jcajce/JsseESTServiceBuilder;->sslSocketFactoryCreatorBuilder:Lorg/bouncycastle/est/jcajce/SSLSocketFactoryCreatorBuilder;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/est/jcajce/SSLSocketFactoryCreatorBuilder;->withKeyManager(Ljavax/net/ssl/KeyManager;)Lorg/bouncycastle/est/jcajce/SSLSocketFactoryCreatorBuilder;

    .line 241
    return-object p0

    .line 237
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Socket Factory Creator was defined in the constructor."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public withKeyManagers([Ljavax/net/ssl/KeyManager;)Lorg/bouncycastle/est/jcajce/JsseESTServiceBuilder;
    .locals 2
    .param p1, "keyManagers"    # [Ljavax/net/ssl/KeyManager;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "keyManagers"
        }
    .end annotation

    .line 246
    iget-object v0, p0, Lorg/bouncycastle/est/jcajce/JsseESTServiceBuilder;->socketFactoryCreator:Lorg/bouncycastle/est/jcajce/SSLSocketFactoryCreator;

    if-nez v0, :cond_0

    .line 250
    iget-object v0, p0, Lorg/bouncycastle/est/jcajce/JsseESTServiceBuilder;->sslSocketFactoryCreatorBuilder:Lorg/bouncycastle/est/jcajce/SSLSocketFactoryCreatorBuilder;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/est/jcajce/SSLSocketFactoryCreatorBuilder;->withKeyManagers([Ljavax/net/ssl/KeyManager;)Lorg/bouncycastle/est/jcajce/SSLSocketFactoryCreatorBuilder;

    .line 251
    return-object p0

    .line 248
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Socket Factory Creator was defined in the constructor."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public withProvider(Ljava/lang/String;)Lorg/bouncycastle/est/jcajce/JsseESTServiceBuilder;
    .locals 2
    .param p1, "tlsProviderName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tlsProviderName"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchProviderException;
        }
    .end annotation

    .line 206
    iget-object v0, p0, Lorg/bouncycastle/est/jcajce/JsseESTServiceBuilder;->socketFactoryCreator:Lorg/bouncycastle/est/jcajce/SSLSocketFactoryCreator;

    if-nez v0, :cond_0

    .line 211
    iget-object v0, p0, Lorg/bouncycastle/est/jcajce/JsseESTServiceBuilder;->sslSocketFactoryCreatorBuilder:Lorg/bouncycastle/est/jcajce/SSLSocketFactoryCreatorBuilder;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/est/jcajce/SSLSocketFactoryCreatorBuilder;->withProvider(Ljava/lang/String;)Lorg/bouncycastle/est/jcajce/SSLSocketFactoryCreatorBuilder;

    .line 213
    return-object p0

    .line 208
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Socket Factory Creator was defined in the constructor."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public withProvider(Ljava/security/Provider;)Lorg/bouncycastle/est/jcajce/JsseESTServiceBuilder;
    .locals 2
    .param p1, "tlsProvider"    # Ljava/security/Provider;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tlsProvider"
        }
    .end annotation

    .line 224
    iget-object v0, p0, Lorg/bouncycastle/est/jcajce/JsseESTServiceBuilder;->socketFactoryCreator:Lorg/bouncycastle/est/jcajce/SSLSocketFactoryCreator;

    if-nez v0, :cond_0

    .line 229
    iget-object v0, p0, Lorg/bouncycastle/est/jcajce/JsseESTServiceBuilder;->sslSocketFactoryCreatorBuilder:Lorg/bouncycastle/est/jcajce/SSLSocketFactoryCreatorBuilder;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/est/jcajce/SSLSocketFactoryCreatorBuilder;->withProvider(Ljava/security/Provider;)Lorg/bouncycastle/est/jcajce/SSLSocketFactoryCreatorBuilder;

    .line 230
    return-object p0

    .line 226
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Socket Factory Creator was defined in the constructor."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public withReadLimit(J)Lorg/bouncycastle/est/jcajce/JsseESTServiceBuilder;
    .locals 1
    .param p1, "absoluteLimit"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "absoluteLimit"
        }
    .end annotation

    .line 147
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/est/jcajce/JsseESTServiceBuilder;->absoluteLimit:Ljava/lang/Long;

    .line 148
    return-object p0
.end method

.method public withSecureRandom(Ljava/security/SecureRandom;)Lorg/bouncycastle/est/jcajce/JsseESTServiceBuilder;
    .locals 2
    .param p1, "secureRandom"    # Ljava/security/SecureRandom;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "secureRandom"
        }
    .end annotation

    .line 185
    iget-object v0, p0, Lorg/bouncycastle/est/jcajce/JsseESTServiceBuilder;->socketFactoryCreator:Lorg/bouncycastle/est/jcajce/SSLSocketFactoryCreator;

    if-nez v0, :cond_0

    .line 190
    iget-object v0, p0, Lorg/bouncycastle/est/jcajce/JsseESTServiceBuilder;->sslSocketFactoryCreatorBuilder:Lorg/bouncycastle/est/jcajce/SSLSocketFactoryCreatorBuilder;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/est/jcajce/SSLSocketFactoryCreatorBuilder;->withSecureRandom(Ljava/security/SecureRandom;)Lorg/bouncycastle/est/jcajce/SSLSocketFactoryCreatorBuilder;

    .line 193
    return-object p0

    .line 187
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Socket Factory Creator was defined in the constructor."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public withTLSVersion(Ljava/lang/String;)Lorg/bouncycastle/est/jcajce/JsseESTServiceBuilder;
    .locals 2
    .param p1, "tlsVersion"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tlsVersion"
        }
    .end annotation

    .line 172
    iget-object v0, p0, Lorg/bouncycastle/est/jcajce/JsseESTServiceBuilder;->socketFactoryCreator:Lorg/bouncycastle/est/jcajce/SSLSocketFactoryCreator;

    if-nez v0, :cond_0

    .line 177
    iget-object v0, p0, Lorg/bouncycastle/est/jcajce/JsseESTServiceBuilder;->sslSocketFactoryCreatorBuilder:Lorg/bouncycastle/est/jcajce/SSLSocketFactoryCreatorBuilder;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/est/jcajce/SSLSocketFactoryCreatorBuilder;->withTLSVersion(Ljava/lang/String;)Lorg/bouncycastle/est/jcajce/SSLSocketFactoryCreatorBuilder;

    .line 180
    return-object p0

    .line 174
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Socket Factory Creator was defined in the constructor."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public withTimeout(I)Lorg/bouncycastle/est/jcajce/JsseESTServiceBuilder;
    .locals 0
    .param p1, "timeoutMillis"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "timeoutMillis"
        }
    .end annotation

    .line 141
    iput p1, p0, Lorg/bouncycastle/est/jcajce/JsseESTServiceBuilder;->timeoutMillis:I

    .line 142
    return-object p0
.end method
