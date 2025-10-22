.class public Lorg/bouncycastle/mime/BoundaryLimitedInputStream;
.super Ljava/io/InputStream;
.source "BoundaryLimitedInputStream.java"

# interfaces
.implements Lj$/io/InputStreamRetargetInterface;


# instance fields
.field private final boundary:[B

.field private final buf:[B

.field private bufOff:I

.field private ended:Z

.field private index:I

.field private lastI:I

.field private final src:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 2
    .param p1, "src"    # Ljava/io/InputStream;
    .param p2, "startBoundary"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "src",
            "startBoundary"
        }
    .end annotation

    .line 22
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 15
    const/4 v0, 0x0

    iput v0, p0, Lorg/bouncycastle/mime/BoundaryLimitedInputStream;->bufOff:I

    .line 16
    iput v0, p0, Lorg/bouncycastle/mime/BoundaryLimitedInputStream;->index:I

    .line 17
    iput-boolean v0, p0, Lorg/bouncycastle/mime/BoundaryLimitedInputStream;->ended:Z

    .line 23
    iput-object p1, p0, Lorg/bouncycastle/mime/BoundaryLimitedInputStream;->src:Ljava/io/InputStream;

    .line 24
    invoke-static {p2}, Lorg/bouncycastle/util/Strings;->toByteArray(Ljava/lang/String;)[B

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/mime/BoundaryLimitedInputStream;->boundary:[B

    .line 25
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x3

    new-array v1, v1, [B

    iput-object v1, p0, Lorg/bouncycastle/mime/BoundaryLimitedInputStream;->buf:[B

    .line 26
    iput v0, p0, Lorg/bouncycastle/mime/BoundaryLimitedInputStream;->bufOff:I

    .line 27
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

    .line 33
    iget-boolean v0, p0, Lorg/bouncycastle/mime/BoundaryLimitedInputStream;->ended:Z

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    .line 35
    return v1

    .line 39
    :cond_0
    iget v0, p0, Lorg/bouncycastle/mime/BoundaryLimitedInputStream;->index:I

    iget v2, p0, Lorg/bouncycastle/mime/BoundaryLimitedInputStream;->bufOff:I

    const/4 v3, 0x0

    if-ge v0, v2, :cond_2

    .line 41
    iget-object v0, p0, Lorg/bouncycastle/mime/BoundaryLimitedInputStream;->buf:[B

    iget v2, p0, Lorg/bouncycastle/mime/BoundaryLimitedInputStream;->index:I

    add-int/lit8 v4, v2, 0x1

    iput v4, p0, Lorg/bouncycastle/mime/BoundaryLimitedInputStream;->index:I

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    .line 43
    .local v0, "i":I
    iget v2, p0, Lorg/bouncycastle/mime/BoundaryLimitedInputStream;->index:I

    iget v4, p0, Lorg/bouncycastle/mime/BoundaryLimitedInputStream;->bufOff:I

    if-ge v2, v4, :cond_1

    .line 45
    return v0

    .line 47
    :cond_1
    iput v3, p0, Lorg/bouncycastle/mime/BoundaryLimitedInputStream;->bufOff:I

    iput v3, p0, Lorg/bouncycastle/mime/BoundaryLimitedInputStream;->index:I

    goto :goto_0

    .line 51
    .end local v0    # "i":I
    :cond_2
    iget-object v0, p0, Lorg/bouncycastle/mime/BoundaryLimitedInputStream;->src:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 54
    .restart local v0    # "i":I
    :goto_0
    iput v0, p0, Lorg/bouncycastle/mime/BoundaryLimitedInputStream;->lastI:I

    .line 56
    if-gez v0, :cond_3

    .line 58
    return v1

    .line 61
    :cond_3
    const/16 v2, 0xd

    const/16 v4, 0xa

    if-eq v0, v2, :cond_4

    if-ne v0, v4, :cond_c

    .line 64
    :cond_4
    iput v3, p0, Lorg/bouncycastle/mime/BoundaryLimitedInputStream;->index:I

    .line 65
    if-ne v0, v2, :cond_5

    .line 67
    iget-object v2, p0, Lorg/bouncycastle/mime/BoundaryLimitedInputStream;->src:Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->read()I

    move-result v2

    .line 68
    .local v2, "ch":I
    if-ne v2, v4, :cond_6

    .line 70
    iget-object v3, p0, Lorg/bouncycastle/mime/BoundaryLimitedInputStream;->buf:[B

    iget v5, p0, Lorg/bouncycastle/mime/BoundaryLimitedInputStream;->bufOff:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lorg/bouncycastle/mime/BoundaryLimitedInputStream;->bufOff:I

    aput-byte v4, v3, v5

    .line 71
    iget-object v3, p0, Lorg/bouncycastle/mime/BoundaryLimitedInputStream;->src:Ljava/io/InputStream;

    invoke-virtual {v3}, Ljava/io/InputStream;->read()I

    move-result v2

    goto :goto_1

    .line 76
    .end local v2    # "ch":I
    :cond_5
    iget-object v2, p0, Lorg/bouncycastle/mime/BoundaryLimitedInputStream;->src:Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->read()I

    move-result v2

    .line 79
    .restart local v2    # "ch":I
    :cond_6
    :goto_1
    const/16 v3, 0x2d

    if-ne v2, v3, :cond_7

    .line 81
    iget-object v4, p0, Lorg/bouncycastle/mime/BoundaryLimitedInputStream;->buf:[B

    iget v5, p0, Lorg/bouncycastle/mime/BoundaryLimitedInputStream;->bufOff:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lorg/bouncycastle/mime/BoundaryLimitedInputStream;->bufOff:I

    aput-byte v3, v4, v5

    .line 82
    iget-object v4, p0, Lorg/bouncycastle/mime/BoundaryLimitedInputStream;->src:Ljava/io/InputStream;

    invoke-virtual {v4}, Ljava/io/InputStream;->read()I

    move-result v2

    .line 85
    :cond_7
    if-ne v2, v3, :cond_b

    .line 87
    iget-object v4, p0, Lorg/bouncycastle/mime/BoundaryLimitedInputStream;->buf:[B

    iget v5, p0, Lorg/bouncycastle/mime/BoundaryLimitedInputStream;->bufOff:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lorg/bouncycastle/mime/BoundaryLimitedInputStream;->bufOff:I

    aput-byte v3, v4, v5

    .line 89
    iget v3, p0, Lorg/bouncycastle/mime/BoundaryLimitedInputStream;->bufOff:I

    .line 92
    .local v3, "base":I
    :goto_2
    iget v4, p0, Lorg/bouncycastle/mime/BoundaryLimitedInputStream;->bufOff:I

    sub-int/2addr v4, v3

    iget-object v5, p0, Lorg/bouncycastle/mime/BoundaryLimitedInputStream;->boundary:[B

    array-length v5, v5

    const/4 v6, 0x1

    if-eq v4, v5, :cond_9

    iget-object v4, p0, Lorg/bouncycastle/mime/BoundaryLimitedInputStream;->src:Ljava/io/InputStream;

    invoke-virtual {v4}, Ljava/io/InputStream;->read()I

    move-result v4

    move v5, v4

    .local v5, "c":I
    if-ltz v4, :cond_9

    .line 94
    iget-object v4, p0, Lorg/bouncycastle/mime/BoundaryLimitedInputStream;->buf:[B

    iget v7, p0, Lorg/bouncycastle/mime/BoundaryLimitedInputStream;->bufOff:I

    int-to-byte v8, v5

    aput-byte v8, v4, v7

    .line 95
    iget-object v4, p0, Lorg/bouncycastle/mime/BoundaryLimitedInputStream;->buf:[B

    iget v7, p0, Lorg/bouncycastle/mime/BoundaryLimitedInputStream;->bufOff:I

    aget-byte v4, v4, v7

    iget-object v7, p0, Lorg/bouncycastle/mime/BoundaryLimitedInputStream;->boundary:[B

    iget v8, p0, Lorg/bouncycastle/mime/BoundaryLimitedInputStream;->bufOff:I

    sub-int/2addr v8, v3

    aget-byte v7, v7, v8

    if-eq v4, v7, :cond_8

    .line 97
    iget v4, p0, Lorg/bouncycastle/mime/BoundaryLimitedInputStream;->bufOff:I

    add-int/2addr v4, v6

    iput v4, p0, Lorg/bouncycastle/mime/BoundaryLimitedInputStream;->bufOff:I

    .line 98
    goto :goto_3

    .line 100
    :cond_8
    iget v4, p0, Lorg/bouncycastle/mime/BoundaryLimitedInputStream;->bufOff:I

    add-int/2addr v4, v6

    iput v4, p0, Lorg/bouncycastle/mime/BoundaryLimitedInputStream;->bufOff:I

    goto :goto_2

    .line 104
    .end local v5    # "c":I
    :cond_9
    :goto_3
    iget v4, p0, Lorg/bouncycastle/mime/BoundaryLimitedInputStream;->bufOff:I

    sub-int/2addr v4, v3

    iget-object v5, p0, Lorg/bouncycastle/mime/BoundaryLimitedInputStream;->boundary:[B

    array-length v5, v5

    if-ne v4, v5, :cond_a

    .line 106
    iput-boolean v6, p0, Lorg/bouncycastle/mime/BoundaryLimitedInputStream;->ended:Z

    .line 107
    return v1

    .line 109
    .end local v3    # "base":I
    :cond_a
    goto :goto_4

    .line 112
    :cond_b
    if-ltz v2, :cond_c

    .line 114
    iget-object v1, p0, Lorg/bouncycastle/mime/BoundaryLimitedInputStream;->buf:[B

    iget v3, p0, Lorg/bouncycastle/mime/BoundaryLimitedInputStream;->bufOff:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/bouncycastle/mime/BoundaryLimitedInputStream;->bufOff:I

    int-to-byte v4, v2

    aput-byte v4, v1, v3

    .line 119
    .end local v2    # "ch":I
    :cond_c
    :goto_4
    return v0
.end method

.method public synthetic transferTo(Ljava/io/OutputStream;)J
    .locals 2

    invoke-static {p0, p1}, Lj$/io/DesugarInputStream;->transferTo(Ljava/io/InputStream;Ljava/io/OutputStream;)J

    move-result-wide v0

    return-wide v0
.end method
