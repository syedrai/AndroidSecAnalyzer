.class public Lorg/bouncycastle/mime/encoding/Base64OutputStream;
.super Ljava/io/FilterOutputStream;
.source "Base64OutputStream.java"


# static fields
.field private static final ENCODER:Lorg/bouncycastle/util/encoders/Base64Encoder;

.field private static final INBUF_SIZE:I = 0x36

.field private static final OUTBUF_SIZE:I = 0x4a


# instance fields
.field private final inBuf:[B

.field private inPos:I

.field private final outBuf:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 12
    new-instance v0, Lorg/bouncycastle/util/encoders/Base64Encoder;

    invoke-direct {v0}, Lorg/bouncycastle/util/encoders/Base64Encoder;-><init>()V

    sput-object v0, Lorg/bouncycastle/mime/encoding/Base64OutputStream;->ENCODER:Lorg/bouncycastle/util/encoders/Base64Encoder;

    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 3
    .param p1, "stream"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "stream"
        }
    .end annotation

    .line 23
    invoke-direct {p0, p1}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 16
    const/16 v0, 0x36

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/bouncycastle/mime/encoding/Base64OutputStream;->inBuf:[B

    .line 17
    const/16 v0, 0x4a

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/bouncycastle/mime/encoding/Base64OutputStream;->outBuf:[B

    .line 19
    const/4 v0, 0x0

    iput v0, p0, Lorg/bouncycastle/mime/encoding/Base64OutputStream;->inPos:I

    .line 25
    iget-object v0, p0, Lorg/bouncycastle/mime/encoding/Base64OutputStream;->outBuf:[B

    const/16 v1, 0x48

    const/16 v2, 0xd

    aput-byte v2, v0, v1

    .line 26
    iget-object v0, p0, Lorg/bouncycastle/mime/encoding/Base64OutputStream;->outBuf:[B

    const/16 v1, 0x49

    const/16 v2, 0xa

    aput-byte v2, v0, v1

    .line 27
    return-void
.end method

.method private encodeBlock([BI)V
    .locals 6
    .param p1, "buf"    # [B
    .param p2, "off"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "buf",
            "off"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 97
    sget-object v0, Lorg/bouncycastle/mime/encoding/Base64OutputStream;->ENCODER:Lorg/bouncycastle/util/encoders/Base64Encoder;

    iget-object v4, p0, Lorg/bouncycastle/mime/encoding/Base64OutputStream;->outBuf:[B

    const/4 v5, 0x0

    const/16 v3, 0x36

    move-object v1, p1

    move v2, p2

    .end local p1    # "buf":[B
    .end local p2    # "off":I
    .local v1, "buf":[B
    .local v2, "off":I
    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/util/encoders/Base64Encoder;->encode([BII[BI)I

    .line 98
    iget-object p1, p0, Lorg/bouncycastle/mime/encoding/Base64OutputStream;->out:Ljava/io/OutputStream;

    iget-object p2, p0, Lorg/bouncycastle/mime/encoding/Base64OutputStream;->outBuf:[B

    const/4 v0, 0x0

    const/16 v3, 0x4a

    invoke-virtual {p1, p2, v0, v3}, Ljava/io/OutputStream;->write([BII)V

    .line 99
    return-void
.end method


# virtual methods
.method public close()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 80
    iget v0, p0, Lorg/bouncycastle/mime/encoding/Base64OutputStream;->inPos:I

    if-lez v0, :cond_0

    .line 82
    sget-object v1, Lorg/bouncycastle/mime/encoding/Base64OutputStream;->ENCODER:Lorg/bouncycastle/util/encoders/Base64Encoder;

    iget-object v2, p0, Lorg/bouncycastle/mime/encoding/Base64OutputStream;->inBuf:[B

    iget v4, p0, Lorg/bouncycastle/mime/encoding/Base64OutputStream;->inPos:I

    iget-object v5, p0, Lorg/bouncycastle/mime/encoding/Base64OutputStream;->outBuf:[B

    const/4 v6, 0x0

    const/4 v3, 0x0

    invoke-virtual/range {v1 .. v6}, Lorg/bouncycastle/util/encoders/Base64Encoder;->encode([BII[BI)I

    move-result v0

    .line 83
    .local v0, "outPos":I
    const/4 v1, 0x0

    iput v1, p0, Lorg/bouncycastle/mime/encoding/Base64OutputStream;->inPos:I

    .line 85
    iget-object v2, p0, Lorg/bouncycastle/mime/encoding/Base64OutputStream;->outBuf:[B

    add-int/lit8 v3, v0, 0x1

    .end local v0    # "outPos":I
    .local v3, "outPos":I
    const/16 v4, 0xd

    aput-byte v4, v2, v0

    .line 86
    iget-object v0, p0, Lorg/bouncycastle/mime/encoding/Base64OutputStream;->outBuf:[B

    add-int/lit8 v2, v3, 0x1

    .end local v3    # "outPos":I
    .local v2, "outPos":I
    const/16 v4, 0xa

    aput-byte v4, v0, v3

    .line 88
    iget-object v0, p0, Lorg/bouncycastle/mime/encoding/Base64OutputStream;->out:Ljava/io/OutputStream;

    iget-object v3, p0, Lorg/bouncycastle/mime/encoding/Base64OutputStream;->outBuf:[B

    invoke-virtual {v0, v3, v1, v2}, Ljava/io/OutputStream;->write([BII)V

    .line 91
    .end local v2    # "outPos":I
    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/mime/encoding/Base64OutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 92
    return-void
.end method

.method public write(I)V
    .locals 3
    .param p1, "b"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "b"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 32
    iget-object v0, p0, Lorg/bouncycastle/mime/encoding/Base64OutputStream;->inBuf:[B

    iget v1, p0, Lorg/bouncycastle/mime/encoding/Base64OutputStream;->inPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/bouncycastle/mime/encoding/Base64OutputStream;->inPos:I

    int-to-byte v2, p1

    aput-byte v2, v0, v1

    .line 33
    iget v0, p0, Lorg/bouncycastle/mime/encoding/Base64OutputStream;->inPos:I

    const/16 v1, 0x36

    if-ne v0, v1, :cond_0

    .line 35
    iget-object v0, p0, Lorg/bouncycastle/mime/encoding/Base64OutputStream;->inBuf:[B

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/mime/encoding/Base64OutputStream;->encodeBlock([BI)V

    .line 36
    iput v1, p0, Lorg/bouncycastle/mime/encoding/Base64OutputStream;->inPos:I

    .line 38
    :cond_0
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

    .line 74
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lorg/bouncycastle/mime/encoding/Base64OutputStream;->write([BII)V

    .line 75
    return-void
.end method

.method public write([BII)V
    .locals 6
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

    .line 43
    iget v0, p0, Lorg/bouncycastle/mime/encoding/Base64OutputStream;->inPos:I

    const/16 v1, 0x36

    rsub-int/lit8 v0, v0, 0x36

    .line 44
    .local v0, "available":I
    if-ge p3, v0, :cond_0

    .line 46
    iget-object v1, p0, Lorg/bouncycastle/mime/encoding/Base64OutputStream;->inBuf:[B

    iget v2, p0, Lorg/bouncycastle/mime/encoding/Base64OutputStream;->inPos:I

    invoke-static {p1, p2, v1, v2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 47
    iget v1, p0, Lorg/bouncycastle/mime/encoding/Base64OutputStream;->inPos:I

    add-int/2addr v1, p3

    iput v1, p0, Lorg/bouncycastle/mime/encoding/Base64OutputStream;->inPos:I

    .line 48
    return-void

    .line 51
    :cond_0
    const/4 v2, 0x0

    .line 52
    .local v2, "count":I
    iget v3, p0, Lorg/bouncycastle/mime/encoding/Base64OutputStream;->inPos:I

    const/4 v4, 0x0

    if-lez v3, :cond_1

    .line 54
    iget-object v3, p0, Lorg/bouncycastle/mime/encoding/Base64OutputStream;->inBuf:[B

    iget v5, p0, Lorg/bouncycastle/mime/encoding/Base64OutputStream;->inPos:I

    invoke-static {p1, p2, v3, v5, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 55
    add-int/2addr v2, v0

    .line 56
    iget-object v3, p0, Lorg/bouncycastle/mime/encoding/Base64OutputStream;->inBuf:[B

    invoke-direct {p0, v3, v4}, Lorg/bouncycastle/mime/encoding/Base64OutputStream;->encodeBlock([BI)V

    .line 61
    :cond_1
    :goto_0
    sub-int v3, p3, v2

    move v5, v3

    .local v5, "remaining":I
    if-lt v3, v1, :cond_2

    .line 63
    add-int v3, p2, v2

    invoke-direct {p0, p1, v3}, Lorg/bouncycastle/mime/encoding/Base64OutputStream;->encodeBlock([BI)V

    .line 64
    add-int/lit8 v2, v2, 0x36

    goto :goto_0

    .line 67
    :cond_2
    add-int v1, p2, v2

    iget-object v3, p0, Lorg/bouncycastle/mime/encoding/Base64OutputStream;->inBuf:[B

    invoke-static {p1, v1, v3, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 68
    iput v5, p0, Lorg/bouncycastle/mime/encoding/Base64OutputStream;->inPos:I

    .line 69
    return-void
.end method
