.class public Lorg/bouncycastle/est/ESTResponse;
.super Ljava/lang/Object;
.source "ESTResponse.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/est/ESTResponse$PrintingInputStream;
    }
.end annotation


# static fields
.field private static final ZERO:Ljava/lang/Long;


# instance fields
.field private HttpVersion:Ljava/lang/String;

.field private absoluteReadLimit:Ljava/lang/Long;

.field private contentLength:Ljava/lang/Long;

.field private final headers:Lorg/bouncycastle/est/HttpUtil$Headers;

.field private inputStream:Ljava/io/InputStream;

.field private final lineBuffer:[B

.field private final originalRequest:Lorg/bouncycastle/est/ESTRequest;

.field private read:J

.field private final source:Lorg/bouncycastle/est/Source;

.field private statusCode:I

.field private statusMessage:Ljava/lang/String;


# direct methods
.method static bridge synthetic -$$Nest$fgetcontentLength(Lorg/bouncycastle/est/ESTResponse;)Ljava/lang/Long;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/est/ESTResponse;->contentLength:Ljava/lang/Long;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetread(Lorg/bouncycastle/est/ESTResponse;)J
    .locals 2

    iget-wide v0, p0, Lorg/bouncycastle/est/ESTResponse;->read:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fputread(Lorg/bouncycastle/est/ESTResponse;J)V
    .locals 0

    iput-wide p1, p0, Lorg/bouncycastle/est/ESTResponse;->read:J

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 33
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/est/ESTResponse;->ZERO:Ljava/lang/Long;

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/est/ESTRequest;Lorg/bouncycastle/est/Source;)V
    .locals 4
    .param p1, "originalRequest"    # Lorg/bouncycastle/est/ESTRequest;
    .param p2, "source"    # Lorg/bouncycastle/est/Source;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "originalRequest",
            "source"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/bouncycastle/est/ESTResponse;->read:J

    .line 38
    iput-object p1, p0, Lorg/bouncycastle/est/ESTResponse;->originalRequest:Lorg/bouncycastle/est/ESTRequest;

    .line 39
    iput-object p2, p0, Lorg/bouncycastle/est/ESTResponse;->source:Lorg/bouncycastle/est/Source;

    .line 41
    instance-of v0, p2, Lorg/bouncycastle/est/LimitedSource;

    if-eqz v0, :cond_0

    .line 43
    move-object v0, p2

    check-cast v0, Lorg/bouncycastle/est/LimitedSource;

    invoke-interface {v0}, Lorg/bouncycastle/est/LimitedSource;->getAbsoluteReadLimit()Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/est/ESTResponse;->absoluteReadLimit:Ljava/lang/Long;

    .line 46
    :cond_0
    const-string v0, "org.bouncycastle.debug.est"

    invoke-static {v0}, Lorg/bouncycastle/util/Properties;->asKeySet(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    .line 47
    .local v0, "opts":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v1, "input"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 48
    const-string v1, "all"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 54
    :cond_1
    invoke-interface {p2}, Lorg/bouncycastle/est/Source;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/est/ESTResponse;->inputStream:Ljava/io/InputStream;

    goto :goto_1

    .line 50
    :cond_2
    :goto_0
    new-instance v1, Lorg/bouncycastle/est/ESTResponse$PrintingInputStream;

    invoke-interface {p2}, Lorg/bouncycastle/est/Source;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lorg/bouncycastle/est/ESTResponse$PrintingInputStream;-><init>(Ljava/io/InputStream;Lorg/bouncycastle/est/ESTResponse-IA;)V

    iput-object v1, p0, Lorg/bouncycastle/est/ESTResponse;->inputStream:Ljava/io/InputStream;

    .line 57
    :goto_1
    new-instance v1, Lorg/bouncycastle/est/HttpUtil$Headers;

    invoke-direct {v1}, Lorg/bouncycastle/est/HttpUtil$Headers;-><init>()V

    iput-object v1, p0, Lorg/bouncycastle/est/ESTResponse;->headers:Lorg/bouncycastle/est/HttpUtil$Headers;

    .line 58
    const/16 v1, 0x400

    new-array v1, v1, [B

    iput-object v1, p0, Lorg/bouncycastle/est/ESTResponse;->lineBuffer:[B

    .line 60
    invoke-direct {p0}, Lorg/bouncycastle/est/ESTResponse;->process()V

    .line 61
    return-void
.end method

.method private process()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 69
    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Lorg/bouncycastle/est/ESTResponse;->readStringIncluding(C)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/est/ESTResponse;->HttpVersion:Ljava/lang/String;

    .line 70
    invoke-virtual {p0, v0}, Lorg/bouncycastle/est/ESTResponse;->readStringIncluding(C)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/est/ESTResponse;->statusCode:I

    .line 71
    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lorg/bouncycastle/est/ESTResponse;->readStringIncluding(C)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/est/ESTResponse;->statusMessage:Ljava/lang/String;

    .line 77
    invoke-virtual {p0, v0}, Lorg/bouncycastle/est/ESTResponse;->readStringIncluding(C)Ljava/lang/String;

    move-result-object v1

    .line 79
    .local v1, "line":Ljava/lang/String;
    :goto_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    .line 81
    const/16 v2, 0x3a

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 82
    .local v2, "i":I
    const/4 v3, -0x1

    if-le v2, v3, :cond_0

    .line 84
    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/bouncycastle/util/Strings;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 85
    .local v3, "k":Ljava/lang/String;
    iget-object v4, p0, Lorg/bouncycastle/est/ESTResponse;->headers:Lorg/bouncycastle/est/HttpUtil$Headers;

    add-int/lit8 v5, v2, 0x1

    invoke-virtual {v1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Lorg/bouncycastle/est/HttpUtil$Headers;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    .end local v3    # "k":Ljava/lang/String;
    :cond_0
    invoke-virtual {p0, v0}, Lorg/bouncycastle/est/ESTResponse;->readStringIncluding(C)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 90
    .end local v2    # "i":I
    :cond_1
    iget-object v0, p0, Lorg/bouncycastle/est/ESTResponse;->headers:Lorg/bouncycastle/est/HttpUtil$Headers;

    const-string v2, "Transfer-Encoding"

    invoke-virtual {v0, v2}, Lorg/bouncycastle/est/HttpUtil$Headers;->getFirstValueOrEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "chunked"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    .line 92
    .local v0, "chunked":Z
    const-wide/16 v2, 0x0

    if-eqz v0, :cond_2

    .line 94
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    iput-object v4, p0, Lorg/bouncycastle/est/ESTResponse;->contentLength:Ljava/lang/Long;

    goto :goto_1

    .line 98
    :cond_2
    invoke-virtual {p0}, Lorg/bouncycastle/est/ESTResponse;->getContentLength()Ljava/lang/Long;

    move-result-object v4

    iput-object v4, p0, Lorg/bouncycastle/est/ESTResponse;->contentLength:Ljava/lang/Long;

    .line 105
    :goto_1
    iget v4, p0, Lorg/bouncycastle/est/ESTResponse;->statusCode:I

    const/16 v5, 0xcc

    if-eq v4, v5, :cond_3

    iget v4, p0, Lorg/bouncycastle/est/ESTResponse;->statusCode:I

    const/16 v6, 0xca

    if-ne v4, v6, :cond_6

    .line 107
    :cond_3
    iget-object v4, p0, Lorg/bouncycastle/est/ESTResponse;->contentLength:Ljava/lang/Long;

    if-nez v4, :cond_4

    .line 109
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    iput-object v4, p0, Lorg/bouncycastle/est/ESTResponse;->contentLength:Ljava/lang/Long;

    goto :goto_2

    .line 113
    :cond_4
    iget v4, p0, Lorg/bouncycastle/est/ESTResponse;->statusCode:I

    if-ne v4, v5, :cond_6

    iget-object v4, p0, Lorg/bouncycastle/est/ESTResponse;->contentLength:Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v6, v4, v2

    if-gtz v6, :cond_5

    goto :goto_2

    .line 115
    :cond_5
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Got HTTP status 204 but Content-length > 0."

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 120
    :cond_6
    :goto_2
    iget-object v4, p0, Lorg/bouncycastle/est/ESTResponse;->contentLength:Ljava/lang/Long;

    if-eqz v4, :cond_e

    .line 125
    iget-object v4, p0, Lorg/bouncycastle/est/ESTResponse;->contentLength:Ljava/lang/Long;

    sget-object v5, Lorg/bouncycastle/est/ESTResponse;->ZERO:Ljava/lang/Long;

    invoke-virtual {v4, v5}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    if-nez v0, :cond_7

    .line 134
    new-instance v4, Lorg/bouncycastle/est/ESTResponse$1;

    invoke-direct {v4, p0}, Lorg/bouncycastle/est/ESTResponse$1;-><init>(Lorg/bouncycastle/est/ESTResponse;)V

    iput-object v4, p0, Lorg/bouncycastle/est/ESTResponse;->inputStream:Ljava/io/InputStream;

    .line 144
    :cond_7
    iget-object v4, p0, Lorg/bouncycastle/est/ESTResponse;->contentLength:Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v6, v4, v2

    if-ltz v6, :cond_d

    .line 149
    iget-object v2, p0, Lorg/bouncycastle/est/ESTResponse;->absoluteReadLimit:Ljava/lang/Long;

    if-eqz v2, :cond_9

    iget-object v2, p0, Lorg/bouncycastle/est/ESTResponse;->contentLength:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iget-object v4, p0, Lorg/bouncycastle/est/ESTResponse;->absoluteReadLimit:Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v6, v2, v4

    if-gez v6, :cond_8

    goto :goto_3

    .line 151
    :cond_8
    new-instance v2, Ljava/io/IOException;

    iget-object v3, p0, Lorg/bouncycastle/est/ESTResponse;->absoluteReadLimit:Ljava/lang/Long;

    iget-object v4, p0, Lorg/bouncycastle/est/ESTResponse;->contentLength:Ljava/lang/Long;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Content length longer than absolute read limit: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " Content-Length: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 155
    :cond_9
    :goto_3
    iget-object v2, p0, Lorg/bouncycastle/est/ESTResponse;->inputStream:Ljava/io/InputStream;

    iget-object v3, p0, Lorg/bouncycastle/est/ESTResponse;->absoluteReadLimit:Ljava/lang/Long;

    invoke-virtual {p0, v2, v3}, Lorg/bouncycastle/est/ESTResponse;->wrapWithCounter(Ljava/io/InputStream;Ljava/lang/Long;)Ljava/io/InputStream;

    move-result-object v2

    iput-object v2, p0, Lorg/bouncycastle/est/ESTResponse;->inputStream:Ljava/io/InputStream;

    .line 157
    if-eqz v0, :cond_a

    .line 159
    new-instance v2, Lorg/bouncycastle/est/CTEChunkedInputStream;

    iget-object v3, p0, Lorg/bouncycastle/est/ESTResponse;->inputStream:Ljava/io/InputStream;

    invoke-direct {v2, v3}, Lorg/bouncycastle/est/CTEChunkedInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v2, p0, Lorg/bouncycastle/est/ESTResponse;->inputStream:Ljava/io/InputStream;

    .line 165
    :cond_a
    const-string v2, "content-transfer-encoding"

    invoke-virtual {p0, v2}, Lorg/bouncycastle/est/ESTResponse;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "base64"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 167
    if-eqz v0, :cond_b

    .line 169
    new-instance v2, Lorg/bouncycastle/est/CTEBase64InputStream;

    iget-object v3, p0, Lorg/bouncycastle/est/ESTResponse;->inputStream:Ljava/io/InputStream;

    invoke-direct {v2, v3}, Lorg/bouncycastle/est/CTEBase64InputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v2, p0, Lorg/bouncycastle/est/ESTResponse;->inputStream:Ljava/io/InputStream;

    goto :goto_4

    .line 173
    :cond_b
    new-instance v2, Lorg/bouncycastle/est/CTEBase64InputStream;

    iget-object v3, p0, Lorg/bouncycastle/est/ESTResponse;->inputStream:Ljava/io/InputStream;

    iget-object v4, p0, Lorg/bouncycastle/est/ESTResponse;->contentLength:Ljava/lang/Long;

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/est/CTEBase64InputStream;-><init>(Ljava/io/InputStream;Ljava/lang/Long;)V

    iput-object v2, p0, Lorg/bouncycastle/est/ESTResponse;->inputStream:Ljava/io/InputStream;

    .line 176
    :cond_c
    :goto_4
    return-void

    .line 146
    :cond_d
    new-instance v2, Ljava/io/IOException;

    iget-object v3, p0, Lorg/bouncycastle/est/ESTResponse;->absoluteReadLimit:Ljava/lang/Long;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Server returned negative content length: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 122
    :cond_e
    new-instance v2, Ljava/io/IOException;

    const-string v3, "No Content-length header."

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 305
    iget-object v0, p0, Lorg/bouncycastle/est/ESTResponse;->inputStream:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    .line 307
    iget-object v0, p0, Lorg/bouncycastle/est/ESTResponse;->inputStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 309
    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/est/ESTResponse;->source:Lorg/bouncycastle/est/Source;

    invoke-interface {v0}, Lorg/bouncycastle/est/Source;->close()V

    .line 310
    return-void
.end method

.method public getAbsoluteReadLimit()J
    .locals 2

    .line 30
    iget-object v0, p0, Lorg/bouncycastle/est/ESTResponse;->absoluteReadLimit:Ljava/lang/Long;

    if-nez v0, :cond_0

    const-wide v0, 0x7fffffffffffffffL

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/est/ESTResponse;->absoluteReadLimit:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    :goto_0
    return-wide v0
.end method

.method public getContentLength()Ljava/lang/Long;
    .locals 6

    .line 287
    iget-object v0, p0, Lorg/bouncycastle/est/ESTResponse;->headers:Lorg/bouncycastle/est/HttpUtil$Headers;

    const-string v1, "Content-Length"

    invoke-virtual {v0, v1}, Lorg/bouncycastle/est/HttpUtil$Headers;->getFirstValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 288
    .local v0, "v":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 290
    const/4 v1, 0x0

    return-object v1

    .line 294
    :cond_0
    :try_start_0
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 296
    :catch_0
    move-exception v1

    .line 298
    .local v1, "nfe":Ljava/lang/RuntimeException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-virtual {v1}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Content Length: \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\' invalid. "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getHeader(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "key"
        }
    .end annotation

    .line 180
    iget-object v0, p0, Lorg/bouncycastle/est/ESTResponse;->headers:Lorg/bouncycastle/est/HttpUtil$Headers;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/est/HttpUtil$Headers;->getFirstValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHeaderOrEmpty(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "key"
        }
    .end annotation

    .line 185
    iget-object v0, p0, Lorg/bouncycastle/est/ESTResponse;->headers:Lorg/bouncycastle/est/HttpUtil$Headers;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/est/HttpUtil$Headers;->getFirstValueOrEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHeaders()Lorg/bouncycastle/est/HttpUtil$Headers;
    .locals 1

    .line 256
    iget-object v0, p0, Lorg/bouncycastle/est/ESTResponse;->headers:Lorg/bouncycastle/est/HttpUtil$Headers;

    return-object v0
.end method

.method public getHttpVersion()Ljava/lang/String;
    .locals 1

    .line 261
    iget-object v0, p0, Lorg/bouncycastle/est/ESTResponse;->HttpVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 1

    .line 276
    iget-object v0, p0, Lorg/bouncycastle/est/ESTResponse;->inputStream:Ljava/io/InputStream;

    return-object v0
.end method

.method public getOriginalRequest()Lorg/bouncycastle/est/ESTRequest;
    .locals 1

    .line 251
    iget-object v0, p0, Lorg/bouncycastle/est/ESTResponse;->originalRequest:Lorg/bouncycastle/est/ESTRequest;

    return-object v0
.end method

.method public getSource()Lorg/bouncycastle/est/Source;
    .locals 1

    .line 282
    iget-object v0, p0, Lorg/bouncycastle/est/ESTResponse;->source:Lorg/bouncycastle/est/Source;

    return-object v0
.end method

.method public getStatusCode()I
    .locals 1

    .line 266
    iget v0, p0, Lorg/bouncycastle/est/ESTResponse;->statusCode:I

    return v0
.end method

.method public getStatusMessage()Ljava/lang/String;
    .locals 1

    .line 271
    iget-object v0, p0, Lorg/bouncycastle/est/ESTResponse;->statusMessage:Ljava/lang/String;

    return-object v0
.end method

.method protected readStringIncluding(C)Ljava/lang/String;
    .locals 6
    .param p1, "until"    # C
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "until"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 229
    const/4 v0, 0x0

    .line 233
    .local v0, "c":I
    :goto_0
    iget-object v1, p0, Lorg/bouncycastle/est/ESTResponse;->inputStream:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v1

    .line 234
    .local v1, "j":I
    iget-object v2, p0, Lorg/bouncycastle/est/ESTResponse;->lineBuffer:[B

    add-int/lit8 v3, v0, 0x1

    .end local v0    # "c":I
    .local v3, "c":I
    int-to-byte v4, v1

    aput-byte v4, v2, v0

    .line 235
    iget-object v0, p0, Lorg/bouncycastle/est/ESTResponse;->lineBuffer:[B

    array-length v0, v0

    if-ge v3, v0, :cond_3

    .line 240
    const/4 v0, -0x1

    if-eq v1, p1, :cond_1

    if-gt v1, v0, :cond_0

    goto :goto_1

    :cond_0
    move v0, v3

    goto :goto_0

    .line 241
    :cond_1
    :goto_1
    if-eq v1, v0, :cond_2

    .line 246
    new-instance v0, Ljava/lang/String;

    iget-object v2, p0, Lorg/bouncycastle/est/ESTResponse;->lineBuffer:[B

    const/4 v4, 0x0

    invoke-direct {v0, v2, v4, v3}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 243
    :cond_2
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    .line 237
    :cond_3
    new-instance v0, Ljava/io/IOException;

    iget-object v2, p0, Lorg/bouncycastle/est/ESTResponse;->lineBuffer:[B

    array-length v2, v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Server sent line > "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected wrapWithCounter(Ljava/io/InputStream;Ljava/lang/Long;)Ljava/io/InputStream;
    .locals 1
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "absoluteReadLimit"    # Ljava/lang/Long;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "in",
            "absoluteReadLimit"
        }
    .end annotation

    .line 190
    new-instance v0, Lorg/bouncycastle/est/ESTResponse$2;

    invoke-direct {v0, p0, p1, p2}, Lorg/bouncycastle/est/ESTResponse$2;-><init>(Lorg/bouncycastle/est/ESTResponse;Ljava/io/InputStream;Ljava/lang/Long;)V

    return-object v0
.end method
