.class public Lorg/bouncycastle/x509/X509StreamParser;
.super Ljava/lang/Object;
.source "X509StreamParser.java"

# interfaces
.implements Lorg/bouncycastle/x509/util/StreamParser;


# instance fields
.field private _provider:Ljava/security/Provider;

.field private _spi:Lorg/bouncycastle/x509/X509StreamParserSpi;


# direct methods
.method private constructor <init>(Ljava/security/Provider;Lorg/bouncycastle/x509/X509StreamParserSpi;)V
    .locals 0
    .param p1, "provider"    # Ljava/security/Provider;
    .param p2, "spi"    # Lorg/bouncycastle/x509/X509StreamParserSpi;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "provider",
            "spi"
        }
    .end annotation

    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 131
    iput-object p1, p0, Lorg/bouncycastle/x509/X509StreamParser;->_provider:Ljava/security/Provider;

    .line 132
    iput-object p2, p0, Lorg/bouncycastle/x509/X509StreamParser;->_spi:Lorg/bouncycastle/x509/X509StreamParserSpi;

    .line 133
    return-void
.end method

.method private static createParser(Lorg/bouncycastle/x509/X509Util$Implementation;)Lorg/bouncycastle/x509/X509StreamParser;
    .locals 3
    .param p0, "impl"    # Lorg/bouncycastle/x509/X509Util$Implementation;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "impl"
        }
    .end annotation

    .line 119
    invoke-virtual {p0}, Lorg/bouncycastle/x509/X509Util$Implementation;->getEngine()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/x509/X509StreamParserSpi;

    .line 121
    .local v0, "spi":Lorg/bouncycastle/x509/X509StreamParserSpi;
    new-instance v1, Lorg/bouncycastle/x509/X509StreamParser;

    invoke-virtual {p0}, Lorg/bouncycastle/x509/X509Util$Implementation;->getProvider()Ljava/security/Provider;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/bouncycastle/x509/X509StreamParser;-><init>(Ljava/security/Provider;Lorg/bouncycastle/x509/X509StreamParserSpi;)V

    return-object v1
.end method

.method public static getInstance(Ljava/lang/String;)Lorg/bouncycastle/x509/X509StreamParser;
    .locals 3
    .param p0, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/x509/NoSuchParserException;
        }
    .end annotation

    .line 51
    :try_start_0
    const-string v0, "X509StreamParser"

    invoke-static {v0, p0}, Lorg/bouncycastle/x509/X509Util;->getImplementation(Ljava/lang/String;Ljava/lang/String;)Lorg/bouncycastle/x509/X509Util$Implementation;

    move-result-object v0

    .line 53
    .local v0, "impl":Lorg/bouncycastle/x509/X509Util$Implementation;
    invoke-static {v0}, Lorg/bouncycastle/x509/X509StreamParser;->createParser(Lorg/bouncycastle/x509/X509Util$Implementation;)Lorg/bouncycastle/x509/X509StreamParser;

    move-result-object v1
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 55
    .end local v0    # "impl":Lorg/bouncycastle/x509/X509Util$Implementation;
    :catch_0
    move-exception v0

    .line 57
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v1, Lorg/bouncycastle/x509/NoSuchParserException;

    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/bouncycastle/x509/NoSuchParserException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static getInstance(Ljava/lang/String;Ljava/lang/String;)Lorg/bouncycastle/x509/X509StreamParser;
    .locals 1
    .param p0, "type"    # Ljava/lang/String;
    .param p1, "provider"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "type",
            "provider"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/x509/NoSuchParserException;,
            Ljava/security/NoSuchProviderException;
        }
    .end annotation

    .line 83
    invoke-static {p1}, Lorg/bouncycastle/x509/X509Util;->getProvider(Ljava/lang/String;)Ljava/security/Provider;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/bouncycastle/x509/X509StreamParser;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Lorg/bouncycastle/x509/X509StreamParser;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(Ljava/lang/String;Ljava/security/Provider;)Lorg/bouncycastle/x509/X509StreamParser;
    .locals 3
    .param p0, "type"    # Ljava/lang/String;
    .param p1, "provider"    # Ljava/security/Provider;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "type",
            "provider"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/x509/NoSuchParserException;
        }
    .end annotation

    .line 107
    :try_start_0
    const-string v0, "X509StreamParser"

    invoke-static {v0, p0, p1}, Lorg/bouncycastle/x509/X509Util;->getImplementation(Ljava/lang/String;Ljava/lang/String;Ljava/security/Provider;)Lorg/bouncycastle/x509/X509Util$Implementation;

    move-result-object v0

    .line 109
    .local v0, "impl":Lorg/bouncycastle/x509/X509Util$Implementation;
    invoke-static {v0}, Lorg/bouncycastle/x509/X509StreamParser;->createParser(Lorg/bouncycastle/x509/X509Util$Implementation;)Lorg/bouncycastle/x509/X509StreamParser;

    move-result-object v1
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 111
    .end local v0    # "impl":Lorg/bouncycastle/x509/X509Util$Implementation;
    :catch_0
    move-exception v0

    .line 113
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v1, Lorg/bouncycastle/x509/NoSuchParserException;

    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/bouncycastle/x509/NoSuchParserException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public getProvider()Ljava/security/Provider;
    .locals 1

    .line 137
    iget-object v0, p0, Lorg/bouncycastle/x509/X509StreamParser;->_provider:Ljava/security/Provider;

    return-object v0
.end method

.method public init(Ljava/io/InputStream;)V
    .locals 1
    .param p1, "stream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "stream"
        }
    .end annotation

    .line 142
    iget-object v0, p0, Lorg/bouncycastle/x509/X509StreamParser;->_spi:Lorg/bouncycastle/x509/X509StreamParserSpi;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/x509/X509StreamParserSpi;->engineInit(Ljava/io/InputStream;)V

    .line 143
    return-void
.end method

.method public init([B)V
    .locals 2
    .param p1, "data"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    .line 147
    iget-object v0, p0, Lorg/bouncycastle/x509/X509StreamParser;->_spi:Lorg/bouncycastle/x509/X509StreamParserSpi;

    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/x509/X509StreamParserSpi;->engineInit(Ljava/io/InputStream;)V

    .line 148
    return-void
.end method

.method public read()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/x509/util/StreamParsingException;
        }
    .end annotation

    .line 153
    iget-object v0, p0, Lorg/bouncycastle/x509/X509StreamParser;->_spi:Lorg/bouncycastle/x509/X509StreamParserSpi;

    invoke-virtual {v0}, Lorg/bouncycastle/x509/X509StreamParserSpi;->engineRead()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public readAll()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/x509/util/StreamParsingException;
        }
    .end annotation

    .line 159
    iget-object v0, p0, Lorg/bouncycastle/x509/X509StreamParser;->_spi:Lorg/bouncycastle/x509/X509StreamParserSpi;

    invoke-virtual {v0}, Lorg/bouncycastle/x509/X509StreamParserSpi;->engineReadAll()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method
