.class public Lorg/bouncycastle/est/ESTRequestBuilder;
.super Ljava/lang/Object;
.source "ESTRequestBuilder.java"


# instance fields
.field client:Lorg/bouncycastle/est/ESTClient;

.field private data:[B

.field private headers:Lorg/bouncycastle/est/HttpUtil$Headers;

.field hijacker:Lorg/bouncycastle/est/ESTHijacker;

.field listener:Lorg/bouncycastle/est/ESTSourceConnectionListener;

.field private final method:Ljava/lang/String;

.field private url:Ljava/net/URL;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/net/URL;)V
    .locals 1
    .param p1, "method"    # Ljava/lang/String;
    .param p2, "url"    # Ljava/net/URL;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "method",
            "url"
        }
    .end annotation

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lorg/bouncycastle/est/ESTRequestBuilder;->method:Ljava/lang/String;

    .line 36
    iput-object p2, p0, Lorg/bouncycastle/est/ESTRequestBuilder;->url:Ljava/net/URL;

    .line 37
    new-instance v0, Lorg/bouncycastle/est/HttpUtil$Headers;

    invoke-direct {v0}, Lorg/bouncycastle/est/HttpUtil$Headers;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/est/ESTRequestBuilder;->headers:Lorg/bouncycastle/est/HttpUtil$Headers;

    .line 38
    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/est/ESTRequest;)V
    .locals 1
    .param p1, "request"    # Lorg/bouncycastle/est/ESTRequest;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "request"
        }
    .end annotation

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iget-object v0, p1, Lorg/bouncycastle/est/ESTRequest;->method:Ljava/lang/String;

    iput-object v0, p0, Lorg/bouncycastle/est/ESTRequestBuilder;->method:Ljava/lang/String;

    .line 25
    iget-object v0, p1, Lorg/bouncycastle/est/ESTRequest;->url:Ljava/net/URL;

    iput-object v0, p0, Lorg/bouncycastle/est/ESTRequestBuilder;->url:Ljava/net/URL;

    .line 26
    iget-object v0, p1, Lorg/bouncycastle/est/ESTRequest;->listener:Lorg/bouncycastle/est/ESTSourceConnectionListener;

    iput-object v0, p0, Lorg/bouncycastle/est/ESTRequestBuilder;->listener:Lorg/bouncycastle/est/ESTSourceConnectionListener;

    .line 27
    iget-object v0, p1, Lorg/bouncycastle/est/ESTRequest;->data:[B

    iput-object v0, p0, Lorg/bouncycastle/est/ESTRequestBuilder;->data:[B

    .line 28
    iget-object v0, p1, Lorg/bouncycastle/est/ESTRequest;->hijacker:Lorg/bouncycastle/est/ESTHijacker;

    iput-object v0, p0, Lorg/bouncycastle/est/ESTRequestBuilder;->hijacker:Lorg/bouncycastle/est/ESTHijacker;

    .line 29
    iget-object v0, p1, Lorg/bouncycastle/est/ESTRequest;->headers:Lorg/bouncycastle/est/HttpUtil$Headers;

    invoke-virtual {v0}, Lorg/bouncycastle/est/HttpUtil$Headers;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/est/HttpUtil$Headers;

    iput-object v0, p0, Lorg/bouncycastle/est/ESTRequestBuilder;->headers:Lorg/bouncycastle/est/HttpUtil$Headers;

    .line 30
    invoke-virtual {p1}, Lorg/bouncycastle/est/ESTRequest;->getClient()Lorg/bouncycastle/est/ESTClient;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/est/ESTRequestBuilder;->client:Lorg/bouncycastle/est/ESTClient;

    .line 31
    return-void
.end method


# virtual methods
.method public addHeader(Ljava/lang/String;Ljava/lang/String;)Lorg/bouncycastle/est/ESTRequestBuilder;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "key",
            "value"
        }
    .end annotation

    .line 70
    iget-object v0, p0, Lorg/bouncycastle/est/ESTRequestBuilder;->headers:Lorg/bouncycastle/est/HttpUtil$Headers;

    invoke-virtual {v0, p1, p2}, Lorg/bouncycastle/est/HttpUtil$Headers;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    return-object p0
.end method

.method public build()Lorg/bouncycastle/est/ESTRequest;
    .locals 8

    .line 88
    new-instance v0, Lorg/bouncycastle/est/ESTRequest;

    iget-object v1, p0, Lorg/bouncycastle/est/ESTRequestBuilder;->method:Ljava/lang/String;

    iget-object v2, p0, Lorg/bouncycastle/est/ESTRequestBuilder;->url:Ljava/net/URL;

    iget-object v3, p0, Lorg/bouncycastle/est/ESTRequestBuilder;->data:[B

    iget-object v4, p0, Lorg/bouncycastle/est/ESTRequestBuilder;->hijacker:Lorg/bouncycastle/est/ESTHijacker;

    iget-object v5, p0, Lorg/bouncycastle/est/ESTRequestBuilder;->listener:Lorg/bouncycastle/est/ESTSourceConnectionListener;

    iget-object v6, p0, Lorg/bouncycastle/est/ESTRequestBuilder;->headers:Lorg/bouncycastle/est/HttpUtil$Headers;

    iget-object v7, p0, Lorg/bouncycastle/est/ESTRequestBuilder;->client:Lorg/bouncycastle/est/ESTClient;

    invoke-direct/range {v0 .. v7}, Lorg/bouncycastle/est/ESTRequest;-><init>(Ljava/lang/String;Ljava/net/URL;[BLorg/bouncycastle/est/ESTHijacker;Lorg/bouncycastle/est/ESTSourceConnectionListener;Lorg/bouncycastle/est/HttpUtil$Headers;Lorg/bouncycastle/est/ESTClient;)V

    return-object v0
.end method

.method public setHeader(Ljava/lang/String;Ljava/lang/String;)Lorg/bouncycastle/est/ESTRequestBuilder;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "key",
            "value"
        }
    .end annotation

    .line 76
    iget-object v0, p0, Lorg/bouncycastle/est/ESTRequestBuilder;->headers:Lorg/bouncycastle/est/HttpUtil$Headers;

    invoke-virtual {v0, p1, p2}, Lorg/bouncycastle/est/HttpUtil$Headers;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    return-object p0
.end method

.method public withClient(Lorg/bouncycastle/est/ESTClient;)Lorg/bouncycastle/est/ESTRequestBuilder;
    .locals 0
    .param p1, "client"    # Lorg/bouncycastle/est/ESTClient;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "client"
        }
    .end annotation

    .line 82
    iput-object p1, p0, Lorg/bouncycastle/est/ESTRequestBuilder;->client:Lorg/bouncycastle/est/ESTClient;

    .line 83
    return-object p0
.end method

.method public withConnectionListener(Lorg/bouncycastle/est/ESTSourceConnectionListener;)Lorg/bouncycastle/est/ESTRequestBuilder;
    .locals 0
    .param p1, "listener"    # Lorg/bouncycastle/est/ESTSourceConnectionListener;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    .line 42
    iput-object p1, p0, Lorg/bouncycastle/est/ESTRequestBuilder;->listener:Lorg/bouncycastle/est/ESTSourceConnectionListener;

    .line 44
    return-object p0
.end method

.method public withData([B)Lorg/bouncycastle/est/ESTRequestBuilder;
    .locals 1
    .param p1, "data"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    .line 63
    invoke-static {p1}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/est/ESTRequestBuilder;->data:[B

    .line 65
    return-object p0
.end method

.method public withHijacker(Lorg/bouncycastle/est/ESTHijacker;)Lorg/bouncycastle/est/ESTRequestBuilder;
    .locals 0
    .param p1, "hijacker"    # Lorg/bouncycastle/est/ESTHijacker;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "hijacker"
        }
    .end annotation

    .line 49
    iput-object p1, p0, Lorg/bouncycastle/est/ESTRequestBuilder;->hijacker:Lorg/bouncycastle/est/ESTHijacker;

    .line 51
    return-object p0
.end method

.method public withURL(Ljava/net/URL;)Lorg/bouncycastle/est/ESTRequestBuilder;
    .locals 0
    .param p1, "url"    # Ljava/net/URL;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "url"
        }
    .end annotation

    .line 56
    iput-object p1, p0, Lorg/bouncycastle/est/ESTRequestBuilder;->url:Ljava/net/URL;

    .line 58
    return-object p0
.end method
