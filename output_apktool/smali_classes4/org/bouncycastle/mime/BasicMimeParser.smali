.class public Lorg/bouncycastle/mime/BasicMimeParser;
.super Ljava/lang/Object;
.source "BasicMimeParser.java"

# interfaces
.implements Lorg/bouncycastle/mime/MimeParser;


# instance fields
.field private final boundary:Ljava/lang/String;

.field private final defaultContentTransferEncoding:Ljava/lang/String;

.field private headers:Lorg/bouncycastle/mime/Headers;

.field private isMultipart:Z

.field private final parserContext:Lorg/bouncycastle/mime/MimeParserContext;

.field private final src:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 2
    .param p1, "src"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "src"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 24
    new-instance v0, Lorg/bouncycastle/mime/Headers;

    const-string v1, "7bit"

    invoke-direct {v0, p1, v1}, Lorg/bouncycastle/mime/Headers;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0, p1}, Lorg/bouncycastle/mime/BasicMimeParser;-><init>(Lorg/bouncycastle/mime/MimeParserContext;Lorg/bouncycastle/mime/Headers;Ljava/io/InputStream;)V

    .line 25
    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/mime/Headers;Ljava/io/InputStream;)V
    .locals 1
    .param p1, "headers"    # Lorg/bouncycastle/mime/Headers;
    .param p2, "content"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "headers",
            "content"
        }
    .end annotation

    .line 37
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Lorg/bouncycastle/mime/BasicMimeParser;-><init>(Lorg/bouncycastle/mime/MimeParserContext;Lorg/bouncycastle/mime/Headers;Ljava/io/InputStream;)V

    .line 38
    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/mime/MimeParserContext;Ljava/io/InputStream;)V
    .locals 2
    .param p1, "parserContext"    # Lorg/bouncycastle/mime/MimeParserContext;
    .param p2, "src"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "parserContext",
            "src"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 31
    new-instance v0, Lorg/bouncycastle/mime/Headers;

    invoke-interface {p1}, Lorg/bouncycastle/mime/MimeParserContext;->getDefaultContentTransferEncoding()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p2, v1}, Lorg/bouncycastle/mime/Headers;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {p0, p1, v0, p2}, Lorg/bouncycastle/mime/BasicMimeParser;-><init>(Lorg/bouncycastle/mime/MimeParserContext;Lorg/bouncycastle/mime/Headers;Ljava/io/InputStream;)V

    .line 32
    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/mime/MimeParserContext;Lorg/bouncycastle/mime/Headers;Ljava/io/InputStream;)V
    .locals 1
    .param p1, "parserContext"    # Lorg/bouncycastle/mime/MimeParserContext;
    .param p2, "headers"    # Lorg/bouncycastle/mime/Headers;
    .param p3, "src"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "parserContext",
            "headers",
            "src"
        }
    .end annotation

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/bouncycastle/mime/BasicMimeParser;->isMultipart:Z

    .line 43
    invoke-virtual {p2}, Lorg/bouncycastle/mime/Headers;->isMultipart()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 45
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/bouncycastle/mime/BasicMimeParser;->isMultipart:Z

    .line 46
    invoke-virtual {p2}, Lorg/bouncycastle/mime/Headers;->getBoundary()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/mime/BasicMimeParser;->boundary:Ljava/lang/String;

    goto :goto_0

    .line 50
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/mime/BasicMimeParser;->boundary:Ljava/lang/String;

    .line 53
    :goto_0
    iput-object p2, p0, Lorg/bouncycastle/mime/BasicMimeParser;->headers:Lorg/bouncycastle/mime/Headers;

    .line 54
    iput-object p1, p0, Lorg/bouncycastle/mime/BasicMimeParser;->parserContext:Lorg/bouncycastle/mime/MimeParserContext;

    .line 55
    iput-object p3, p0, Lorg/bouncycastle/mime/BasicMimeParser;->src:Ljava/io/InputStream;

    .line 56
    if-eqz p1, :cond_1

    invoke-interface {p1}, Lorg/bouncycastle/mime/MimeParserContext;->getDefaultContentTransferEncoding()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    const-string v0, "7bit"

    :goto_1
    iput-object v0, p0, Lorg/bouncycastle/mime/BasicMimeParser;->defaultContentTransferEncoding:Ljava/lang/String;

    .line 57
    return-void
.end method

.method private processStream(Lorg/bouncycastle/mime/Headers;Ljava/io/InputStream;)Ljava/io/InputStream;
    .locals 2
    .param p1, "headers"    # Lorg/bouncycastle/mime/Headers;
    .param p2, "inputStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "headers",
            "inputStream"
        }
    .end annotation

    .line 124
    invoke-virtual {p1}, Lorg/bouncycastle/mime/Headers;->getContentTransferEncoding()Ljava/lang/String;

    move-result-object v0

    const-string v1, "base64"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 126
    new-instance v0, Lorg/bouncycastle/mime/encoding/Base64InputStream;

    invoke-direct {v0, p2}, Lorg/bouncycastle/mime/encoding/Base64InputStream;-><init>(Ljava/io/InputStream;)V

    return-object v0

    .line 128
    :cond_0
    invoke-virtual {p1}, Lorg/bouncycastle/mime/Headers;->getContentTransferEncoding()Ljava/lang/String;

    move-result-object v0

    const-string v1, "quoted-printable"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 130
    new-instance v0, Lorg/bouncycastle/mime/encoding/QuotedPrintableInputStream;

    invoke-direct {v0, p2}, Lorg/bouncycastle/mime/encoding/QuotedPrintableInputStream;-><init>(Ljava/io/InputStream;)V

    return-object v0

    .line 134
    :cond_1
    return-object p2
.end method


# virtual methods
.method public isMultipart()Z
    .locals 1

    .line 119
    iget-boolean v0, p0, Lorg/bouncycastle/mime/BasicMimeParser;->isMultipart:Z

    return v0
.end method

.method public parse(Lorg/bouncycastle/mime/MimeParserListener;)V
    .locals 14
    .param p1, "listener"    # Lorg/bouncycastle/mime/MimeParserListener;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 64
    iget-object v0, p0, Lorg/bouncycastle/mime/BasicMimeParser;->parserContext:Lorg/bouncycastle/mime/MimeParserContext;

    iget-object v1, p0, Lorg/bouncycastle/mime/BasicMimeParser;->headers:Lorg/bouncycastle/mime/Headers;

    invoke-interface {p1, v0, v1}, Lorg/bouncycastle/mime/MimeParserListener;->createContext(Lorg/bouncycastle/mime/MimeParserContext;Lorg/bouncycastle/mime/Headers;)Lorg/bouncycastle/mime/MimeContext;

    move-result-object v0

    .line 67
    .local v0, "context":Lorg/bouncycastle/mime/MimeContext;
    iget-boolean v1, p0, Lorg/bouncycastle/mime/BasicMimeParser;->isMultipart:Z

    if-eqz v1, :cond_5

    .line 69
    move-object v1, v0

    check-cast v1, Lorg/bouncycastle/mime/MimeMultipartContext;

    .line 70
    .local v1, "mContext":Lorg/bouncycastle/mime/MimeMultipartContext;
    iget-object v2, p0, Lorg/bouncycastle/mime/BasicMimeParser;->boundary:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "--"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 71
    .local v2, "startBoundary":Ljava/lang/String;
    const/4 v3, 0x0

    .line 72
    .local v3, "startFound":Z
    const/4 v5, 0x0

    .line 73
    .local v5, "partNo":I
    new-instance v6, Lorg/bouncycastle/mime/LineReader;

    iget-object v7, p0, Lorg/bouncycastle/mime/BasicMimeParser;->src:Ljava/io/InputStream;

    invoke-direct {v6, v7}, Lorg/bouncycastle/mime/LineReader;-><init>(Ljava/io/InputStream;)V

    .line 74
    .local v6, "rd":Lorg/bouncycastle/mime/LineReader;
    :cond_0
    :goto_0
    invoke-virtual {v6}, Lorg/bouncycastle/mime/LineReader;->readLine()Ljava/lang/String;

    move-result-object v7

    move-object v8, v7

    .local v8, "s":Ljava/lang/String;
    if-eqz v7, :cond_4

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 76
    const-string v7, "MIME object not fully processed"

    if-eqz v3, :cond_2

    .line 78
    new-instance v9, Lorg/bouncycastle/mime/BoundaryLimitedInputStream;

    iget-object v10, p0, Lorg/bouncycastle/mime/BasicMimeParser;->src:Ljava/io/InputStream;

    iget-object v11, p0, Lorg/bouncycastle/mime/BasicMimeParser;->boundary:Ljava/lang/String;

    invoke-direct {v9, v10, v11}, Lorg/bouncycastle/mime/BoundaryLimitedInputStream;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 79
    .local v9, "inputStream":Ljava/io/InputStream;
    new-instance v10, Lorg/bouncycastle/mime/Headers;

    iget-object v11, p0, Lorg/bouncycastle/mime/BasicMimeParser;->defaultContentTransferEncoding:Ljava/lang/String;

    invoke-direct {v10, v9, v11}, Lorg/bouncycastle/mime/Headers;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 81
    .local v10, "headers":Lorg/bouncycastle/mime/Headers;
    add-int/lit8 v11, v5, 0x1

    .end local v5    # "partNo":I
    .local v11, "partNo":I
    invoke-interface {v1, v5}, Lorg/bouncycastle/mime/MimeMultipartContext;->createContext(I)Lorg/bouncycastle/mime/MimeContext;

    move-result-object v5

    .line 82
    .local v5, "partContext":Lorg/bouncycastle/mime/MimeContext;
    invoke-interface {v5, v10, v9}, Lorg/bouncycastle/mime/MimeContext;->applyContext(Lorg/bouncycastle/mime/Headers;Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object v9

    .line 84
    iget-object v12, p0, Lorg/bouncycastle/mime/BasicMimeParser;->parserContext:Lorg/bouncycastle/mime/MimeParserContext;

    invoke-direct {p0, v10, v9}, Lorg/bouncycastle/mime/BasicMimeParser;->processStream(Lorg/bouncycastle/mime/Headers;Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object v13

    invoke-interface {p1, v12, v10, v13}, Lorg/bouncycastle/mime/MimeParserListener;->object(Lorg/bouncycastle/mime/MimeParserContext;Lorg/bouncycastle/mime/Headers;Ljava/io/InputStream;)V

    .line 86
    invoke-virtual {v9}, Ljava/io/InputStream;->read()I

    move-result v12

    if-gez v12, :cond_1

    .line 90
    .end local v5    # "partContext":Lorg/bouncycastle/mime/MimeContext;
    .end local v9    # "inputStream":Ljava/io/InputStream;
    .end local v10    # "headers":Lorg/bouncycastle/mime/Headers;
    move v5, v11

    goto :goto_0

    .line 88
    .restart local v5    # "partContext":Lorg/bouncycastle/mime/MimeContext;
    .restart local v9    # "inputStream":Ljava/io/InputStream;
    .restart local v10    # "headers":Lorg/bouncycastle/mime/Headers;
    :cond_1
    new-instance v4, Ljava/io/IOException;

    invoke-direct {v4, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 91
    .end local v9    # "inputStream":Ljava/io/InputStream;
    .end local v10    # "headers":Lorg/bouncycastle/mime/Headers;
    .end local v11    # "partNo":I
    .local v5, "partNo":I
    :cond_2
    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 93
    const/4 v3, 0x1

    .line 94
    new-instance v9, Lorg/bouncycastle/mime/BoundaryLimitedInputStream;

    iget-object v10, p0, Lorg/bouncycastle/mime/BasicMimeParser;->src:Ljava/io/InputStream;

    iget-object v11, p0, Lorg/bouncycastle/mime/BasicMimeParser;->boundary:Ljava/lang/String;

    invoke-direct {v9, v10, v11}, Lorg/bouncycastle/mime/BoundaryLimitedInputStream;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 95
    .restart local v9    # "inputStream":Ljava/io/InputStream;
    new-instance v10, Lorg/bouncycastle/mime/Headers;

    iget-object v11, p0, Lorg/bouncycastle/mime/BasicMimeParser;->defaultContentTransferEncoding:Ljava/lang/String;

    invoke-direct {v10, v9, v11}, Lorg/bouncycastle/mime/Headers;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 97
    .restart local v10    # "headers":Lorg/bouncycastle/mime/Headers;
    add-int/lit8 v11, v5, 0x1

    .end local v5    # "partNo":I
    .restart local v11    # "partNo":I
    invoke-interface {v1, v5}, Lorg/bouncycastle/mime/MimeMultipartContext;->createContext(I)Lorg/bouncycastle/mime/MimeContext;

    move-result-object v5

    .line 98
    .local v5, "partContext":Lorg/bouncycastle/mime/MimeContext;
    invoke-interface {v5, v10, v9}, Lorg/bouncycastle/mime/MimeContext;->applyContext(Lorg/bouncycastle/mime/Headers;Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object v9

    .line 100
    iget-object v12, p0, Lorg/bouncycastle/mime/BasicMimeParser;->parserContext:Lorg/bouncycastle/mime/MimeParserContext;

    invoke-direct {p0, v10, v9}, Lorg/bouncycastle/mime/BasicMimeParser;->processStream(Lorg/bouncycastle/mime/Headers;Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object v13

    invoke-interface {p1, v12, v10, v13}, Lorg/bouncycastle/mime/MimeParserListener;->object(Lorg/bouncycastle/mime/MimeParserContext;Lorg/bouncycastle/mime/Headers;Ljava/io/InputStream;)V

    .line 102
    invoke-virtual {v9}, Ljava/io/InputStream;->read()I

    move-result v12

    if-gez v12, :cond_3

    .line 106
    .end local v5    # "partContext":Lorg/bouncycastle/mime/MimeContext;
    .end local v9    # "inputStream":Ljava/io/InputStream;
    .end local v10    # "headers":Lorg/bouncycastle/mime/Headers;
    move v5, v11

    goto :goto_0

    .line 104
    .restart local v5    # "partContext":Lorg/bouncycastle/mime/MimeContext;
    .restart local v9    # "inputStream":Ljava/io/InputStream;
    .restart local v10    # "headers":Lorg/bouncycastle/mime/Headers;
    :cond_3
    new-instance v4, Ljava/io/IOException;

    invoke-direct {v4, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 108
    .end local v1    # "mContext":Lorg/bouncycastle/mime/MimeMultipartContext;
    .end local v2    # "startBoundary":Ljava/lang/String;
    .end local v3    # "startFound":Z
    .end local v5    # "partContext":Lorg/bouncycastle/mime/MimeContext;
    .end local v6    # "rd":Lorg/bouncycastle/mime/LineReader;
    .end local v9    # "inputStream":Ljava/io/InputStream;
    .end local v10    # "headers":Lorg/bouncycastle/mime/Headers;
    .end local v11    # "partNo":I
    :cond_4
    goto :goto_1

    .line 111
    .end local v8    # "s":Ljava/lang/String;
    :cond_5
    iget-object v1, p0, Lorg/bouncycastle/mime/BasicMimeParser;->headers:Lorg/bouncycastle/mime/Headers;

    iget-object v2, p0, Lorg/bouncycastle/mime/BasicMimeParser;->src:Ljava/io/InputStream;

    invoke-interface {v0, v1, v2}, Lorg/bouncycastle/mime/MimeContext;->applyContext(Lorg/bouncycastle/mime/Headers;Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object v1

    .line 113
    .local v1, "inputStream":Ljava/io/InputStream;
    iget-object v2, p0, Lorg/bouncycastle/mime/BasicMimeParser;->parserContext:Lorg/bouncycastle/mime/MimeParserContext;

    iget-object v3, p0, Lorg/bouncycastle/mime/BasicMimeParser;->headers:Lorg/bouncycastle/mime/Headers;

    iget-object v4, p0, Lorg/bouncycastle/mime/BasicMimeParser;->headers:Lorg/bouncycastle/mime/Headers;

    invoke-direct {p0, v4, v1}, Lorg/bouncycastle/mime/BasicMimeParser;->processStream(Lorg/bouncycastle/mime/Headers;Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object v4

    invoke-interface {p1, v2, v3, v4}, Lorg/bouncycastle/mime/MimeParserListener;->object(Lorg/bouncycastle/mime/MimeParserContext;Lorg/bouncycastle/mime/Headers;Ljava/io/InputStream;)V

    .line 115
    .end local v1    # "inputStream":Ljava/io/InputStream;
    :goto_1
    return-void
.end method
