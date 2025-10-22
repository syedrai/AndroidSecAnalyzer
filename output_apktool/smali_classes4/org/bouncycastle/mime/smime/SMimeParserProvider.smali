.class public Lorg/bouncycastle/mime/smime/SMimeParserProvider;
.super Ljava/lang/Object;
.source "SMimeParserProvider.java"

# interfaces
.implements Lorg/bouncycastle/mime/MimeParserProvider;


# instance fields
.field private final defaultContentTransferEncoding:Ljava/lang/String;

.field private final digestCalculatorProvider:Lorg/bouncycastle/operator/DigestCalculatorProvider;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lorg/bouncycastle/operator/DigestCalculatorProvider;)V
    .locals 0
    .param p1, "defaultContentTransferEncoding"    # Ljava/lang/String;
    .param p2, "digestCalculatorProvider"    # Lorg/bouncycastle/operator/DigestCalculatorProvider;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "defaultContentTransferEncoding",
            "digestCalculatorProvider"
        }
    .end annotation

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lorg/bouncycastle/mime/smime/SMimeParserProvider;->defaultContentTransferEncoding:Ljava/lang/String;

    .line 21
    iput-object p2, p0, Lorg/bouncycastle/mime/smime/SMimeParserProvider;->digestCalculatorProvider:Lorg/bouncycastle/operator/DigestCalculatorProvider;

    .line 22
    return-void
.end method


# virtual methods
.method public createParser(Ljava/io/InputStream;)Lorg/bouncycastle/mime/MimeParser;
    .locals 4
    .param p1, "source"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "source"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 27
    new-instance v0, Lorg/bouncycastle/mime/BasicMimeParser;

    new-instance v1, Lorg/bouncycastle/mime/smime/SMimeParserContext;

    iget-object v2, p0, Lorg/bouncycastle/mime/smime/SMimeParserProvider;->defaultContentTransferEncoding:Ljava/lang/String;

    iget-object v3, p0, Lorg/bouncycastle/mime/smime/SMimeParserProvider;->digestCalculatorProvider:Lorg/bouncycastle/operator/DigestCalculatorProvider;

    invoke-direct {v1, v2, v3}, Lorg/bouncycastle/mime/smime/SMimeParserContext;-><init>(Ljava/lang/String;Lorg/bouncycastle/operator/DigestCalculatorProvider;)V

    .line 28
    invoke-static {p1}, Lorg/bouncycastle/mime/smime/SMimeUtils;->autoBuffer(Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/mime/BasicMimeParser;-><init>(Lorg/bouncycastle/mime/MimeParserContext;Ljava/io/InputStream;)V

    .line 27
    return-object v0
.end method

.method public createParser(Lorg/bouncycastle/mime/Headers;Ljava/io/InputStream;)Lorg/bouncycastle/mime/MimeParser;
    .locals 4
    .param p1, "headers"    # Lorg/bouncycastle/mime/Headers;
    .param p2, "source"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "headers",
            "source"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 34
    new-instance v0, Lorg/bouncycastle/mime/BasicMimeParser;

    new-instance v1, Lorg/bouncycastle/mime/smime/SMimeParserContext;

    iget-object v2, p0, Lorg/bouncycastle/mime/smime/SMimeParserProvider;->defaultContentTransferEncoding:Ljava/lang/String;

    iget-object v3, p0, Lorg/bouncycastle/mime/smime/SMimeParserProvider;->digestCalculatorProvider:Lorg/bouncycastle/operator/DigestCalculatorProvider;

    invoke-direct {v1, v2, v3}, Lorg/bouncycastle/mime/smime/SMimeParserContext;-><init>(Ljava/lang/String;Lorg/bouncycastle/operator/DigestCalculatorProvider;)V

    .line 35
    invoke-static {p2}, Lorg/bouncycastle/mime/smime/SMimeUtils;->autoBuffer(Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v0, v1, p1, v2}, Lorg/bouncycastle/mime/BasicMimeParser;-><init>(Lorg/bouncycastle/mime/MimeParserContext;Lorg/bouncycastle/mime/Headers;Ljava/io/InputStream;)V

    .line 34
    return-object v0
.end method
