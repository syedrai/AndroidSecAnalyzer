.class public Lorg/bouncycastle/mime/encoding/Base64InputStream;
.super Ljava/io/InputStream;
.source "Base64InputStream.java"

# interfaces
.implements Lj$/io/InputStreamRetargetInterface;


# static fields
.field private static final decodingTable:[B


# instance fields
.field bufPtr:I

.field in:Ljava/io/InputStream;

.field outBuf:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 20
    const/16 v0, 0x80

    new-array v0, v0, [B

    sput-object v0, Lorg/bouncycastle/mime/encoding/Base64InputStream;->decodingTable:[B

    .line 22
    const/16 v0, 0x41

    .local v0, "i":I
    :goto_0
    const/16 v1, 0x5a

    if-gt v0, v1, :cond_0

    .line 24
    sget-object v1, Lorg/bouncycastle/mime/encoding/Base64InputStream;->decodingTable:[B

    add-int/lit8 v2, v0, -0x41

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    .line 22
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 27
    .end local v0    # "i":I
    :cond_0
    const/16 v0, 0x61

    .restart local v0    # "i":I
    :goto_1
    const/16 v1, 0x7a

    if-gt v0, v1, :cond_1

    .line 29
    sget-object v1, Lorg/bouncycastle/mime/encoding/Base64InputStream;->decodingTable:[B

    add-int/lit8 v2, v0, -0x61

    add-int/lit8 v2, v2, 0x1a

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    .line 27
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 32
    .end local v0    # "i":I
    :cond_1
    const/16 v0, 0x30

    .restart local v0    # "i":I
    :goto_2
    const/16 v1, 0x39

    if-gt v0, v1, :cond_2

    .line 34
    sget-object v1, Lorg/bouncycastle/mime/encoding/Base64InputStream;->decodingTable:[B

    add-int/lit8 v2, v0, -0x30

    add-int/lit8 v2, v2, 0x34

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    .line 32
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 37
    .end local v0    # "i":I
    :cond_2
    sget-object v0, Lorg/bouncycastle/mime/encoding/Base64InputStream;->decodingTable:[B

    const/16 v1, 0x2b

    const/16 v2, 0x3e

    aput-byte v2, v0, v1

    .line 38
    sget-object v0, Lorg/bouncycastle/mime/encoding/Base64InputStream;->decodingTable:[B

    const/16 v1, 0x2f

    const/16 v2, 0x3f

    aput-byte v2, v0, v1

    .line 39
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 2
    .param p1, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "in"
        }
    .end annotation

    .line 103
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 97
    const/4 v0, 0x3

    new-array v1, v0, [I

    iput-object v1, p0, Lorg/bouncycastle/mime/encoding/Base64InputStream;->outBuf:[I

    .line 98
    iput v0, p0, Lorg/bouncycastle/mime/encoding/Base64InputStream;->bufPtr:I

    .line 104
    iput-object p1, p0, Lorg/bouncycastle/mime/encoding/Base64InputStream;->in:Ljava/io/InputStream;

    .line 105
    return-void
.end method

.method private decode(IIII[I)I
    .locals 9
    .param p1, "in0"    # I
    .param p2, "in1"    # I
    .param p3, "in2"    # I
    .param p4, "in3"    # I
    .param p5, "out"    # [I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "in0",
            "in1",
            "in2",
            "in3",
            "out"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .line 56
    if-ltz p4, :cond_2

    .line 61
    const/16 v0, 0x3d

    const/4 v1, 0x2

    if-ne p3, v0, :cond_0

    .line 63
    sget-object v0, Lorg/bouncycastle/mime/encoding/Base64InputStream;->decodingTable:[B

    aget-byte v0, v0, p1

    and-int/lit16 v0, v0, 0xff

    .line 64
    .local v0, "b1":I
    sget-object v2, Lorg/bouncycastle/mime/encoding/Base64InputStream;->decodingTable:[B

    aget-byte v2, v2, p2

    and-int/lit16 v2, v2, 0xff

    .line 66
    .local v2, "b2":I
    shl-int/lit8 v3, v0, 0x2

    shr-int/lit8 v4, v2, 0x4

    or-int/2addr v3, v4

    and-int/lit16 v3, v3, 0xff

    aput v3, p5, v1

    .line 68
    return v1

    .line 70
    .end local v0    # "b1":I
    .end local v2    # "b2":I
    :cond_0
    const/4 v2, 0x1

    if-ne p4, v0, :cond_1

    .line 72
    sget-object v0, Lorg/bouncycastle/mime/encoding/Base64InputStream;->decodingTable:[B

    aget-byte v0, v0, p1

    .line 73
    .restart local v0    # "b1":I
    sget-object v3, Lorg/bouncycastle/mime/encoding/Base64InputStream;->decodingTable:[B

    aget-byte v3, v3, p2

    .line 74
    .local v3, "b2":I
    sget-object v4, Lorg/bouncycastle/mime/encoding/Base64InputStream;->decodingTable:[B

    aget-byte v4, v4, p3

    .line 76
    .local v4, "b3":I
    shl-int/lit8 v5, v0, 0x2

    shr-int/lit8 v6, v3, 0x4

    or-int/2addr v5, v6

    and-int/lit16 v5, v5, 0xff

    aput v5, p5, v2

    .line 77
    shl-int/lit8 v5, v3, 0x4

    shr-int/lit8 v6, v4, 0x2

    or-int/2addr v5, v6

    and-int/lit16 v5, v5, 0xff

    aput v5, p5, v1

    .line 79
    return v2

    .line 83
    .end local v0    # "b1":I
    .end local v3    # "b2":I
    .end local v4    # "b3":I
    :cond_1
    sget-object v0, Lorg/bouncycastle/mime/encoding/Base64InputStream;->decodingTable:[B

    aget-byte v0, v0, p1

    .line 84
    .restart local v0    # "b1":I
    sget-object v3, Lorg/bouncycastle/mime/encoding/Base64InputStream;->decodingTable:[B

    aget-byte v3, v3, p2

    .line 85
    .restart local v3    # "b2":I
    sget-object v4, Lorg/bouncycastle/mime/encoding/Base64InputStream;->decodingTable:[B

    aget-byte v4, v4, p3

    .line 86
    .restart local v4    # "b3":I
    sget-object v5, Lorg/bouncycastle/mime/encoding/Base64InputStream;->decodingTable:[B

    aget-byte v5, v5, p4

    .line 88
    .local v5, "b4":I
    shl-int/lit8 v6, v0, 0x2

    shr-int/lit8 v7, v3, 0x4

    or-int/2addr v6, v7

    and-int/lit16 v6, v6, 0xff

    const/4 v7, 0x0

    aput v6, p5, v7

    .line 89
    shl-int/lit8 v6, v3, 0x4

    shr-int/lit8 v8, v4, 0x2

    or-int/2addr v6, v8

    and-int/lit16 v6, v6, 0xff

    aput v6, p5, v2

    .line 90
    shl-int/lit8 v2, v4, 0x6

    or-int/2addr v2, v5

    and-int/lit16 v2, v2, 0xff

    aput v2, p5, v1

    .line 92
    return v7

    .line 58
    .end local v0    # "b1":I
    .end local v3    # "b2":I
    .end local v4    # "b3":I
    .end local v5    # "b4":I
    :cond_2
    new-instance v0, Ljava/io/EOFException;

    const-string/jumbo v1, "unexpected end of file in armored stream."

    invoke-direct {v0, v1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private readIgnoreSpace()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 148
    nop

    :goto_0
    iget-object v0, p0, Lorg/bouncycastle/mime/encoding/Base64InputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    move v1, v0

    .local v1, "c":I
    sparse-switch v0, :sswitch_data_0

    .line 154
    return v1

    .line 152
    :sswitch_0
    nop

    .line 156
    .end local v1    # "c":I
    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_0
        0x20 -> :sswitch_0
    .end sparse-switch
.end method

.method private readIgnoreSpaceFirst()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 165
    nop

    :goto_0
    iget-object v0, p0, Lorg/bouncycastle/mime/encoding/Base64InputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    move v1, v0

    .local v1, "c":I
    sparse-switch v0, :sswitch_data_0

    .line 173
    return v1

    .line 171
    :sswitch_0
    nop

    .line 175
    .end local v1    # "c":I
    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_0
        0xa -> :sswitch_0
        0xd -> :sswitch_0
        0x20 -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public available()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 111
    const/4 v0, 0x0

    return v0
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 139
    iget-object v0, p0, Lorg/bouncycastle/mime/encoding/Base64InputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 140
    return-void
.end method

.method public read()I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 117
    iget v0, p0, Lorg/bouncycastle/mime/encoding/Base64InputStream;->bufPtr:I

    const/4 v1, 0x2

    if-le v0, v1, :cond_1

    .line 119
    invoke-direct {p0}, Lorg/bouncycastle/mime/encoding/Base64InputStream;->readIgnoreSpaceFirst()I

    move-result v3

    .line 120
    .local v3, "in0":I
    if-gez v3, :cond_0

    .line 123
    const/4 v0, -0x1

    return v0

    .line 126
    :cond_0
    invoke-direct {p0}, Lorg/bouncycastle/mime/encoding/Base64InputStream;->readIgnoreSpace()I

    move-result v4

    .line 127
    .local v4, "in1":I
    invoke-direct {p0}, Lorg/bouncycastle/mime/encoding/Base64InputStream;->readIgnoreSpace()I

    move-result v5

    .line 128
    .local v5, "in2":I
    invoke-direct {p0}, Lorg/bouncycastle/mime/encoding/Base64InputStream;->readIgnoreSpace()I

    move-result v6

    .line 130
    .local v6, "in3":I
    iget-object v7, p0, Lorg/bouncycastle/mime/encoding/Base64InputStream;->outBuf:[I

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Lorg/bouncycastle/mime/encoding/Base64InputStream;->decode(IIII[I)I

    move-result v0

    iput v0, v2, Lorg/bouncycastle/mime/encoding/Base64InputStream;->bufPtr:I

    goto :goto_0

    .line 117
    .end local v3    # "in0":I
    .end local v4    # "in1":I
    .end local v5    # "in2":I
    .end local v6    # "in3":I
    :cond_1
    move-object v2, p0

    .line 133
    :goto_0
    iget-object v0, v2, Lorg/bouncycastle/mime/encoding/Base64InputStream;->outBuf:[I

    iget v1, v2, Lorg/bouncycastle/mime/encoding/Base64InputStream;->bufPtr:I

    add-int/lit8 v3, v1, 0x1

    iput v3, v2, Lorg/bouncycastle/mime/encoding/Base64InputStream;->bufPtr:I

    aget v0, v0, v1

    return v0
.end method

.method public synthetic transferTo(Ljava/io/OutputStream;)J
    .locals 2

    invoke-static {p0, p1}, Lj$/io/DesugarInputStream;->transferTo(Ljava/io/InputStream;Ljava/io/OutputStream;)J

    move-result-wide v0

    return-wide v0
.end method
