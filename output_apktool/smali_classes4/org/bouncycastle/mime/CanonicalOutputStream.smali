.class public Lorg/bouncycastle/mime/CanonicalOutputStream;
.super Ljava/io/FilterOutputStream;
.source "CanonicalOutputStream.java"


# static fields
.field protected static newline:[B


# instance fields
.field private final is7Bit:Z

.field protected lastb:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 83
    const/4 v0, 0x2

    new-array v0, v0, [B

    sput-object v0, Lorg/bouncycastle/mime/CanonicalOutputStream;->newline:[B

    .line 84
    sget-object v0, Lorg/bouncycastle/mime/CanonicalOutputStream;->newline:[B

    const/4 v1, 0x0

    const/16 v2, 0xd

    aput-byte v2, v0, v1

    .line 85
    sget-object v0, Lorg/bouncycastle/mime/CanonicalOutputStream;->newline:[B

    const/4 v1, 0x1

    const/16 v2, 0xa

    aput-byte v2, v0, v1

    .line 86
    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/mime/smime/SMimeParserContext;Lorg/bouncycastle/mime/Headers;Ljava/io/OutputStream;)V
    .locals 2
    .param p1, "parserContext"    # Lorg/bouncycastle/mime/smime/SMimeParserContext;
    .param p2, "headers"    # Lorg/bouncycastle/mime/Headers;
    .param p3, "outputstream"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "parserContext",
            "headers",
            "outputstream"
        }
    .end annotation

    .line 18
    invoke-direct {p0, p3}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 19
    const/4 v0, -0x1

    iput v0, p0, Lorg/bouncycastle/mime/CanonicalOutputStream;->lastb:I

    .line 21
    invoke-virtual {p2}, Lorg/bouncycastle/mime/Headers;->getContentType()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 23
    invoke-virtual {p2}, Lorg/bouncycastle/mime/Headers;->getContentType()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lorg/bouncycastle/mime/Headers;->getContentType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "binary"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lorg/bouncycastle/mime/CanonicalOutputStream;->is7Bit:Z

    goto :goto_1

    .line 27
    :cond_1
    invoke-virtual {p1}, Lorg/bouncycastle/mime/smime/SMimeParserContext;->getDefaultContentTransferEncoding()Ljava/lang/String;

    move-result-object v0

    const-string v1, "7bit"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/bouncycastle/mime/CanonicalOutputStream;->is7Bit:Z

    .line 29
    :goto_1
    return-void
.end method


# virtual methods
.method public write(I)V
    .locals 2
    .param p1, "i"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "i"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 34
    iget-boolean v0, p0, Lorg/bouncycastle/mime/CanonicalOutputStream;->is7Bit:Z

    if-eqz v0, :cond_2

    .line 36
    const/16 v0, 0xd

    if-ne p1, v0, :cond_0

    .line 38
    iget-object v0, p0, Lorg/bouncycastle/mime/CanonicalOutputStream;->out:Ljava/io/OutputStream;

    sget-object v1, Lorg/bouncycastle/mime/CanonicalOutputStream;->newline:[B

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    goto :goto_0

    .line 40
    :cond_0
    const/16 v1, 0xa

    if-ne p1, v1, :cond_1

    .line 42
    iget v1, p0, Lorg/bouncycastle/mime/CanonicalOutputStream;->lastb:I

    if-eq v1, v0, :cond_3

    .line 44
    iget-object v0, p0, Lorg/bouncycastle/mime/CanonicalOutputStream;->out:Ljava/io/OutputStream;

    sget-object v1, Lorg/bouncycastle/mime/CanonicalOutputStream;->newline:[B

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    goto :goto_0

    .line 49
    :cond_1
    iget-object v0, p0, Lorg/bouncycastle/mime/CanonicalOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    goto :goto_0

    .line 54
    :cond_2
    iget-object v0, p0, Lorg/bouncycastle/mime/CanonicalOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    .line 57
    :cond_3
    :goto_0
    iput p1, p0, Lorg/bouncycastle/mime/CanonicalOutputStream;->lastb:I

    .line 58
    return-void
.end method

.method public write([B)V
    .locals 2
    .param p1, "buf"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "buf"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 63
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lorg/bouncycastle/mime/CanonicalOutputStream;->write([BII)V

    .line 64
    return-void
.end method

.method public write([BII)V
    .locals 2
    .param p1, "buf"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "buf",
            "off",
            "len"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 69
    move v0, p2

    .local v0, "i":I
    :goto_0
    add-int v1, p2, p3

    if-eq v0, v1, :cond_0

    .line 71
    aget-byte v1, p1, v0

    invoke-virtual {p0, v1}, Lorg/bouncycastle/mime/CanonicalOutputStream;->write(I)V

    .line 69
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 73
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public writeln()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 78
    iget-object v0, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    sget-object v1, Lorg/bouncycastle/mime/CanonicalOutputStream;->newline:[B

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 79
    return-void
.end method
