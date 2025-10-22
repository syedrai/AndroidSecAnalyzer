.class Lorg/bouncycastle/est/CTEBase64InputStream;
.super Ljava/io/InputStream;
.source "CTEBase64InputStream.java"

# interfaces
.implements Lj$/io/InputStreamRetargetInterface;


# instance fields
.field protected final data:[B

.field protected final dataOutputStream:Ljava/io/OutputStream;

.field protected end:Z

.field protected final max:Ljava/lang/Long;

.field protected final rawBuf:[B

.field protected read:J

.field protected rp:I

.field protected final src:Ljava/io/InputStream;

.field protected wp:I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1
    .param p1, "src"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "src"
        }
    .end annotation

    .line 25
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/est/CTEBase64InputStream;-><init>(Ljava/io/InputStream;Ljava/lang/Long;)V

    .line 26
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/lang/Long;)V
    .locals 1
    .param p1, "src"    # Ljava/io/InputStream;
    .param p2, "limit"    # Ljava/lang/Long;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "src",
            "limit"
        }
    .end annotation

    .line 29
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 14
    const/16 v0, 0x400

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/bouncycastle/est/CTEBase64InputStream;->rawBuf:[B

    .line 15
    const/16 v0, 0x300

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/bouncycastle/est/CTEBase64InputStream;->data:[B

    .line 30
    iput-object p1, p0, Lorg/bouncycastle/est/CTEBase64InputStream;->src:Ljava/io/InputStream;

    .line 31
    new-instance v0, Lorg/bouncycastle/est/CTEBase64InputStream$1;

    invoke-direct {v0, p0}, Lorg/bouncycastle/est/CTEBase64InputStream$1;-><init>(Lorg/bouncycastle/est/CTEBase64InputStream;)V

    iput-object v0, p0, Lorg/bouncycastle/est/CTEBase64InputStream;->dataOutputStream:Ljava/io/OutputStream;

    .line 39
    iput-object p2, p0, Lorg/bouncycastle/est/CTEBase64InputStream;->max:Ljava/lang/Long;

    .line 40
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 123
    iget-object v0, p0, Lorg/bouncycastle/est/CTEBase64InputStream;->src:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 124
    return-void
.end method

.method protected pullFromSrc()I
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 47
    const/4 v0, 0x0

    .line 48
    .local v0, "j":I
    const/4 v1, 0x0

    .line 51
    .local v1, "c":I
    :cond_0
    iget-object v2, p0, Lorg/bouncycastle/est/CTEBase64InputStream;->max:Ljava/lang/Long;

    const/4 v3, -0x1

    if-eqz v2, :cond_1

    .line 53
    iget-wide v4, p0, Lorg/bouncycastle/est/CTEBase64InputStream;->read:J

    iget-object v2, p0, Lorg/bouncycastle/est/CTEBase64InputStream;->max:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    cmp-long v2, v4, v6

    if-lez v2, :cond_1

    .line 55
    return v3

    .line 59
    :cond_1
    iget-object v2, p0, Lorg/bouncycastle/est/CTEBase64InputStream;->src:Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 66
    const/16 v2, 0x21

    const/16 v4, 0xa

    const-wide/16 v5, 0x1

    if-ge v0, v2, :cond_3

    const/16 v2, 0xd

    if-eq v0, v2, :cond_3

    if-ne v0, v4, :cond_2

    goto :goto_0

    .line 75
    :cond_2
    if-ltz v0, :cond_4

    .line 77
    iget-wide v7, p0, Lorg/bouncycastle/est/CTEBase64InputStream;->read:J

    add-long/2addr v7, v5

    iput-wide v7, p0, Lorg/bouncycastle/est/CTEBase64InputStream;->read:J

    goto :goto_1

    .line 68
    :cond_3
    :goto_0
    iget-object v2, p0, Lorg/bouncycastle/est/CTEBase64InputStream;->rawBuf:[B

    array-length v2, v2

    if-ge v1, v2, :cond_8

    .line 72
    iget-object v2, p0, Lorg/bouncycastle/est/CTEBase64InputStream;->rawBuf:[B

    add-int/lit8 v7, v1, 0x1

    .end local v1    # "c":I
    .local v7, "c":I
    int-to-byte v8, v0

    aput-byte v8, v2, v1

    .line 73
    iget-wide v1, p0, Lorg/bouncycastle/est/CTEBase64InputStream;->read:J

    add-long/2addr v1, v5

    iput-wide v1, p0, Lorg/bouncycastle/est/CTEBase64InputStream;->read:J

    move v1, v7

    .line 80
    .end local v7    # "c":I
    .restart local v1    # "c":I
    :cond_4
    :goto_1
    if-le v0, v3, :cond_5

    iget-object v2, p0, Lorg/bouncycastle/est/CTEBase64InputStream;->rawBuf:[B

    array-length v2, v2

    if-ge v1, v2, :cond_5

    if-ne v0, v4, :cond_0

    .line 82
    :cond_5
    if-lez v1, :cond_6

    .line 86
    :try_start_0
    iget-object v2, p0, Lorg/bouncycastle/est/CTEBase64InputStream;->rawBuf:[B

    iget-object v3, p0, Lorg/bouncycastle/est/CTEBase64InputStream;->dataOutputStream:Ljava/io/OutputStream;

    const/4 v4, 0x0

    invoke-static {v2, v4, v1, v3}, Lorg/bouncycastle/util/encoders/Base64;->decode([BIILjava/io/OutputStream;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    goto :goto_2

    .line 88
    :catch_0
    move-exception v2

    .line 90
    .local v2, "ex":Ljava/lang/Exception;
    new-instance v3, Ljava/io/IOException;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Decode Base64 Content-Transfer-Encoding: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 95
    .end local v2    # "ex":Ljava/lang/Exception;
    :cond_6
    if-ne v0, v3, :cond_7

    .line 97
    return v3

    .line 100
    :cond_7
    :goto_2
    iget v2, p0, Lorg/bouncycastle/est/CTEBase64InputStream;->wp:I

    return v2

    .line 70
    :cond_8
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Content Transfer Encoding, base64 line length > 1024"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public read()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 107
    iget v0, p0, Lorg/bouncycastle/est/CTEBase64InputStream;->rp:I

    iget v1, p0, Lorg/bouncycastle/est/CTEBase64InputStream;->wp:I

    if-ne v0, v1, :cond_0

    .line 109
    const/4 v0, 0x0

    iput v0, p0, Lorg/bouncycastle/est/CTEBase64InputStream;->rp:I

    .line 110
    iput v0, p0, Lorg/bouncycastle/est/CTEBase64InputStream;->wp:I

    .line 111
    invoke-virtual {p0}, Lorg/bouncycastle/est/CTEBase64InputStream;->pullFromSrc()I

    move-result v0

    .line 112
    .local v0, "i":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 114
    return v0

    .line 117
    .end local v0    # "i":I
    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/est/CTEBase64InputStream;->data:[B

    iget v1, p0, Lorg/bouncycastle/est/CTEBase64InputStream;->rp:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/bouncycastle/est/CTEBase64InputStream;->rp:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public synthetic transferTo(Ljava/io/OutputStream;)J
    .locals 2

    invoke-static {p0, p1}, Lj$/io/DesugarInputStream;->transferTo(Ljava/io/InputStream;Ljava/io/OutputStream;)J

    move-result-wide v0

    return-wide v0
.end method
