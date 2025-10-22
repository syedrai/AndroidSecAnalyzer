.class public Lorg/bouncycastle/est/ESTRequest;
.super Ljava/lang/Object;
.source "ESTRequest.java"


# instance fields
.field final data:[B

.field final estClient:Lorg/bouncycastle/est/ESTClient;

.field headers:Lorg/bouncycastle/est/HttpUtil$Headers;

.field final hijacker:Lorg/bouncycastle/est/ESTHijacker;

.field final listener:Lorg/bouncycastle/est/ESTSourceConnectionListener;

.field final method:Ljava/lang/String;

.field final url:Ljava/net/URL;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/net/URL;[BLorg/bouncycastle/est/ESTHijacker;Lorg/bouncycastle/est/ESTSourceConnectionListener;Lorg/bouncycastle/est/HttpUtil$Headers;Lorg/bouncycastle/est/ESTClient;)V
    .locals 1
    .param p1, "method"    # Ljava/lang/String;
    .param p2, "url"    # Ljava/net/URL;
    .param p3, "data"    # [B
    .param p4, "hijacker"    # Lorg/bouncycastle/est/ESTHijacker;
    .param p5, "listener"    # Lorg/bouncycastle/est/ESTSourceConnectionListener;
    .param p6, "headers"    # Lorg/bouncycastle/est/HttpUtil$Headers;
    .param p7, "estClient"    # Lorg/bouncycastle/est/ESTClient;
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
            "method",
            "url",
            "data",
            "hijacker",
            "listener",
            "headers",
            "estClient"
        }
    .end annotation

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Lorg/bouncycastle/est/HttpUtil$Headers;

    invoke-direct {v0}, Lorg/bouncycastle/est/HttpUtil$Headers;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/est/ESTRequest;->headers:Lorg/bouncycastle/est/HttpUtil$Headers;

    .line 30
    iput-object p1, p0, Lorg/bouncycastle/est/ESTRequest;->method:Ljava/lang/String;

    .line 31
    iput-object p2, p0, Lorg/bouncycastle/est/ESTRequest;->url:Ljava/net/URL;

    .line 32
    iput-object p3, p0, Lorg/bouncycastle/est/ESTRequest;->data:[B

    .line 33
    iput-object p4, p0, Lorg/bouncycastle/est/ESTRequest;->hijacker:Lorg/bouncycastle/est/ESTHijacker;

    .line 34
    iput-object p5, p0, Lorg/bouncycastle/est/ESTRequest;->listener:Lorg/bouncycastle/est/ESTSourceConnectionListener;

    .line 35
    iput-object p6, p0, Lorg/bouncycastle/est/ESTRequest;->headers:Lorg/bouncycastle/est/HttpUtil$Headers;

    .line 36
    iput-object p7, p0, Lorg/bouncycastle/est/ESTRequest;->estClient:Lorg/bouncycastle/est/ESTClient;

    .line 37
    return-void
.end method


# virtual methods
.method public getClient()Lorg/bouncycastle/est/ESTClient;
    .locals 1

    .line 61
    iget-object v0, p0, Lorg/bouncycastle/est/ESTRequest;->estClient:Lorg/bouncycastle/est/ESTClient;

    return-object v0
.end method

.method public getHeaders()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 51
    iget-object v0, p0, Lorg/bouncycastle/est/ESTRequest;->headers:Lorg/bouncycastle/est/HttpUtil$Headers;

    invoke-virtual {v0}, Lorg/bouncycastle/est/HttpUtil$Headers;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    return-object v0
.end method

.method public getHijacker()Lorg/bouncycastle/est/ESTHijacker;
    .locals 1

    .line 56
    iget-object v0, p0, Lorg/bouncycastle/est/ESTRequest;->hijacker:Lorg/bouncycastle/est/ESTHijacker;

    return-object v0
.end method

.method public getListener()Lorg/bouncycastle/est/ESTSourceConnectionListener;
    .locals 1

    .line 66
    iget-object v0, p0, Lorg/bouncycastle/est/ESTRequest;->listener:Lorg/bouncycastle/est/ESTSourceConnectionListener;

    return-object v0
.end method

.method public getMethod()Ljava/lang/String;
    .locals 1

    .line 41
    iget-object v0, p0, Lorg/bouncycastle/est/ESTRequest;->method:Ljava/lang/String;

    return-object v0
.end method

.method public getURL()Ljava/net/URL;
    .locals 1

    .line 46
    iget-object v0, p0, Lorg/bouncycastle/est/ESTRequest;->url:Ljava/net/URL;

    return-object v0
.end method

.method public writeData(Ljava/io/OutputStream;)V
    .locals 1
    .param p1, "os"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "os"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 72
    iget-object v0, p0, Lorg/bouncycastle/est/ESTRequest;->data:[B

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Lorg/bouncycastle/est/ESTRequest;->data:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 76
    :cond_0
    return-void
.end method
