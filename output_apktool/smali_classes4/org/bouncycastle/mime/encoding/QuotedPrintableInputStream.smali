.class public Lorg/bouncycastle/mime/encoding/QuotedPrintableInputStream;
.super Ljava/io/FilterInputStream;
.source "QuotedPrintableInputStream.java"

# interfaces
.implements Lj$/io/InputStreamRetargetInterface;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 0
    .param p1, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "input"
        }
    .end annotation

    .line 16
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 17
    return-void
.end method


# virtual methods
.method public read()I
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 44
    iget-object v0, p0, Lorg/bouncycastle/mime/encoding/QuotedPrintableInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 45
    .local v0, "v":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 47
    return v1

    .line 51
    :cond_0
    :goto_0
    const/16 v2, 0x3d

    if-ne v0, v2, :cond_9

    .line 56
    iget-object v2, p0, Lorg/bouncycastle/mime/encoding/QuotedPrintableInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->read()I

    move-result v2

    .line 57
    .local v2, "j":I
    if-eq v2, v1, :cond_8

    .line 63
    const/16 v3, 0xd

    const/16 v4, 0xa

    if-ne v2, v3, :cond_2

    .line 65
    iget-object v3, p0, Lorg/bouncycastle/mime/encoding/QuotedPrintableInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v3}, Ljava/io/InputStream;->read()I

    move-result v2

    .line 66
    if-ne v2, v4, :cond_1

    .line 72
    iget-object v3, p0, Lorg/bouncycastle/mime/encoding/QuotedPrintableInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v3}, Ljava/io/InputStream;->read()I

    move-result v2

    .line 74
    :cond_1
    move v0, v2

    .line 75
    goto :goto_0

    .line 77
    :cond_2
    if-ne v2, v4, :cond_3

    .line 80
    iget-object v3, p0, Lorg/bouncycastle/mime/encoding/QuotedPrintableInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v3}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 81
    goto :goto_0

    .line 86
    :cond_3
    const/4 v1, 0x0

    .line 88
    .local v1, "chr":I
    const/16 v3, 0x46

    const/16 v5, 0x39

    const/16 v6, 0x41

    const/16 v7, 0x30

    if-lt v2, v7, :cond_4

    if-gt v2, v5, :cond_4

    .line 90
    add-int/lit8 v1, v2, -0x30

    goto :goto_1

    .line 92
    :cond_4
    if-lt v2, v6, :cond_7

    if-gt v2, v3, :cond_7

    .line 94
    add-int/lit8 v8, v2, -0x41

    add-int/lit8 v1, v8, 0xa

    .line 101
    :goto_1
    shl-int/lit8 v1, v1, 0x4

    .line 103
    iget-object v8, p0, Lorg/bouncycastle/mime/encoding/QuotedPrintableInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v8}, Ljava/io/InputStream;->read()I

    move-result v2

    .line 105
    if-lt v2, v7, :cond_5

    if-gt v2, v5, :cond_5

    .line 107
    add-int/lit8 v3, v2, -0x30

    or-int/2addr v1, v3

    goto :goto_2

    .line 109
    :cond_5
    if-lt v2, v6, :cond_6

    if-gt v2, v3, :cond_6

    .line 111
    add-int/lit8 v3, v2, -0x41

    add-int/2addr v3, v4

    or-int/2addr v1, v3

    .line 118
    :goto_2
    return v1

    .line 115
    :cond_6
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Expecting second \'0123456789ABCDEF after quote that was not immediately followed by LF or CRLF"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 98
    :cond_7
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Expecting \'0123456789ABCDEF after quote that was not immediately followed by LF or CRLF"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 59
    .end local v1    # "chr":I
    :cond_8
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v3, "Quoted \'=\' at end of stream"

    invoke-direct {v1, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 122
    .end local v2    # "j":I
    :cond_9
    return v0
.end method

.method public read([BII)I
    .locals 4
    .param p1, "buf"    # [B
    .param p2, "bufOff"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "buf",
            "bufOff",
            "len"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 21
    const/4 v0, 0x0

    .line 22
    .local v0, "i":I
    :goto_0
    if-eq v0, p3, :cond_1

    .line 24
    invoke-virtual {p0}, Lorg/bouncycastle/mime/encoding/QuotedPrintableInputStream;->read()I

    move-result v1

    .line 25
    .local v1, "ch":I
    if-gez v1, :cond_0

    .line 27
    goto :goto_1

    .line 29
    :cond_0
    add-int v2, v0, p2

    int-to-byte v3, v1

    aput-byte v3, p1, v2

    .line 30
    nop

    .end local v1    # "ch":I
    add-int/lit8 v0, v0, 0x1

    .line 31
    goto :goto_0

    .line 33
    :cond_1
    :goto_1
    if-nez v0, :cond_2

    .line 35
    const/4 v1, -0x1

    return v1

    .line 38
    :cond_2
    return v0
.end method

.method public synthetic transferTo(Ljava/io/OutputStream;)J
    .locals 2

    invoke-static {p0, p1}, Lj$/io/DesugarInputStream;->transferTo(Ljava/io/InputStream;Ljava/io/OutputStream;)J

    move-result-wide v0

    return-wide v0
.end method
