.class public Lorg/bouncycastle/est/CTEChunkedInputStream;
.super Ljava/io/InputStream;
.source "CTEChunkedInputStream.java"

# interfaces
.implements Lj$/io/InputStreamRetargetInterface;


# instance fields
.field chunkLen:I

.field private src:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1
    .param p1, "inputStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "inputStream"
        }
    .end annotation

    .line 15
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 11
    const/4 v0, 0x0

    iput v0, p0, Lorg/bouncycastle/est/CTEChunkedInputStream;->chunkLen:I

    .line 16
    iput-object p1, p0, Lorg/bouncycastle/est/CTEChunkedInputStream;->src:Ljava/io/InputStream;

    .line 17
    return-void
.end method

.method private readEOL()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 22
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 23
    .local v0, "bos":Ljava/io/ByteArrayOutputStream;
    const/4 v1, 0x0

    .line 27
    .local v1, "c":I
    :cond_0
    iget-object v2, p0, Lorg/bouncycastle/est/CTEChunkedInputStream;->src:Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->read()I

    move-result v1

    .line 28
    const/4 v2, -0x1

    if-ne v1, v2, :cond_2

    .line 30
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v2

    if-nez v2, :cond_1

    .line 32
    const/4 v2, 0x0

    return-object v2

    .line 35
    :cond_1
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 37
    :cond_2
    and-int/lit16 v2, v1, 0xff

    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 39
    const/16 v2, 0xa

    if-ne v1, v2, :cond_0

    .line 41
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method public read()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 49
    iget v0, p0, Lorg/bouncycastle/est/CTEChunkedInputStream;->chunkLen:I

    const/4 v1, -0x1

    const/high16 v2, -0x80000000

    if-ne v0, v2, :cond_0

    .line 51
    return v1

    .line 54
    :cond_0
    iget v0, p0, Lorg/bouncycastle/est/CTEChunkedInputStream;->chunkLen:I

    if-nez v0, :cond_4

    .line 56
    const/4 v0, 0x0

    .line 59
    .local v0, "line":Ljava/lang/String;
    :cond_1
    invoke-direct {p0}, Lorg/bouncycastle/est/CTEChunkedInputStream;->readEOL()Ljava/lang/String;

    move-result-object v0

    .line 61
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_1

    .line 62
    :cond_2
    if-nez v0, :cond_3

    .line 64
    return v1

    .line 66
    :cond_3
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x10

    invoke-static {v3, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lorg/bouncycastle/est/CTEChunkedInputStream;->chunkLen:I

    .line 67
    iget v3, p0, Lorg/bouncycastle/est/CTEChunkedInputStream;->chunkLen:I

    if-nez v3, :cond_4

    .line 70
    invoke-direct {p0}, Lorg/bouncycastle/est/CTEChunkedInputStream;->readEOL()Ljava/lang/String;

    .line 71
    iput v2, p0, Lorg/bouncycastle/est/CTEChunkedInputStream;->chunkLen:I

    .line 72
    return v1

    .line 76
    .end local v0    # "line":Ljava/lang/String;
    :cond_4
    iget-object v0, p0, Lorg/bouncycastle/est/CTEChunkedInputStream;->src:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 77
    .local v0, "i":I
    iget v1, p0, Lorg/bouncycastle/est/CTEChunkedInputStream;->chunkLen:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lorg/bouncycastle/est/CTEChunkedInputStream;->chunkLen:I

    .line 78
    return v0
.end method

.method public synthetic transferTo(Ljava/io/OutputStream;)J
    .locals 2

    invoke-static {p0, p1}, Lj$/io/DesugarInputStream;->transferTo(Ljava/io/InputStream;Ljava/io/OutputStream;)J

    move-result-wide v0

    return-wide v0
.end method
