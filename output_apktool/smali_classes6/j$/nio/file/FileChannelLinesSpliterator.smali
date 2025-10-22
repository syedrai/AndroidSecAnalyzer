.class final Lj$/nio/file/FileChannelLinesSpliterator;
.super Ljava/lang/Object;
.source "FileChannelLinesSpliterator.java"

# interfaces
.implements Lj$/util/Spliterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lj$/util/Spliterator<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field static final SUPPORTED_CHARSET_NAMES:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private buffer:Ljava/nio/ByteBuffer;

.field private final cs:Ljava/nio/charset/Charset;

.field private final fc:Ljava/nio/channels/FileChannel;

.field private final fence:I

.field private index:I

.field private reader:Ljava/io/BufferedReader;


# direct methods
.method static bridge synthetic -$$Nest$fgetfc(Lj$/nio/file/FileChannelLinesSpliterator;)Ljava/nio/channels/FileChannel;
    .locals 0

    iget-object p0, p0, Lj$/nio/file/FileChannelLinesSpliterator;->fc:Ljava/nio/channels/FileChannel;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetfence(Lj$/nio/file/FileChannelLinesSpliterator;)I
    .locals 0

    iget p0, p0, Lj$/nio/file/FileChannelLinesSpliterator;->fence:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetindex(Lj$/nio/file/FileChannelLinesSpliterator;)I
    .locals 0

    iget p0, p0, Lj$/nio/file/FileChannelLinesSpliterator;->index:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fputindex(Lj$/nio/file/FileChannelLinesSpliterator;I)V
    .locals 0

    iput p1, p0, Lj$/nio/file/FileChannelLinesSpliterator;->index:I

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 71
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lj$/nio/file/FileChannelLinesSpliterator;->SUPPORTED_CHARSET_NAMES:Ljava/util/Set;

    .line 76
    sget-object v0, Lj$/nio/file/FileChannelLinesSpliterator;->SUPPORTED_CHARSET_NAMES:Ljava/util/Set;

    const-string v1, "UTF-8"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 77
    sget-object v0, Lj$/nio/file/FileChannelLinesSpliterator;->SUPPORTED_CHARSET_NAMES:Ljava/util/Set;

    const-string v1, "ISO-8859-1"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 78
    sget-object v0, Lj$/nio/file/FileChannelLinesSpliterator;->SUPPORTED_CHARSET_NAMES:Ljava/util/Set;

    const-string v1, "US-ASCII"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 79
    return-void
.end method

.method constructor <init>(Ljava/nio/channels/FileChannel;Ljava/nio/charset/Charset;II)V
    .locals 0
    .param p1, "fc"    # Ljava/nio/channels/FileChannel;
    .param p2, "cs"    # Ljava/nio/charset/Charset;
    .param p3, "index"    # I
    .param p4, "fence"    # I

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    iput-object p1, p0, Lj$/nio/file/FileChannelLinesSpliterator;->fc:Ljava/nio/channels/FileChannel;

    .line 93
    iput-object p2, p0, Lj$/nio/file/FileChannelLinesSpliterator;->cs:Ljava/nio/charset/Charset;

    .line 94
    iput p3, p0, Lj$/nio/file/FileChannelLinesSpliterator;->index:I

    .line 95
    iput p4, p0, Lj$/nio/file/FileChannelLinesSpliterator;->fence:I

    .line 96
    return-void
.end method

.method private constructor <init>(Ljava/nio/channels/FileChannel;Ljava/nio/charset/Charset;IILjava/nio/ByteBuffer;)V
    .locals 0
    .param p1, "fc"    # Ljava/nio/channels/FileChannel;
    .param p2, "cs"    # Ljava/nio/charset/Charset;
    .param p3, "index"    # I
    .param p4, "fence"    # I
    .param p5, "buffer"    # Ljava/nio/ByteBuffer;

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    iput-object p1, p0, Lj$/nio/file/FileChannelLinesSpliterator;->fc:Ljava/nio/channels/FileChannel;

    .line 100
    iput-object p5, p0, Lj$/nio/file/FileChannelLinesSpliterator;->buffer:Ljava/nio/ByteBuffer;

    .line 101
    iput-object p2, p0, Lj$/nio/file/FileChannelLinesSpliterator;->cs:Ljava/nio/charset/Charset;

    .line 102
    iput p3, p0, Lj$/nio/file/FileChannelLinesSpliterator;->index:I

    .line 103
    iput p4, p0, Lj$/nio/file/FileChannelLinesSpliterator;->fence:I

    .line 104
    return-void
.end method

.method private getBufferedReader()Ljava/io/BufferedReader;
    .locals 4

    .line 130
    new-instance v0, Lj$/nio/file/FileChannelLinesSpliterator$1;

    invoke-direct {v0, p0}, Lj$/nio/file/FileChannelLinesSpliterator$1;-><init>(Lj$/nio/file/FileChannelLinesSpliterator;)V

    .line 168
    .local v0, "rrbc":Ljava/nio/channels/ReadableByteChannel;
    new-instance v1, Ljava/io/BufferedReader;

    iget-object v2, p0, Lj$/nio/file/FileChannelLinesSpliterator;->cs:Ljava/nio/charset/Charset;

    invoke-virtual {v2}, Ljava/nio/charset/Charset;->newDecoder()Ljava/nio/charset/CharsetDecoder;

    move-result-object v2

    const/4 v3, -0x1

    invoke-static {v0, v2, v3}, Ljava/nio/channels/Channels;->newReader(Ljava/nio/channels/ReadableByteChannel;Ljava/nio/charset/CharsetDecoder;I)Ljava/io/Reader;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    return-object v1
.end method

.method private getMappedByteBuffer()Ljava/nio/ByteBuffer;
    .locals 6

    .line 193
    :try_start_0
    iget-object v0, p0, Lj$/nio/file/FileChannelLinesSpliterator;->fc:Ljava/nio/channels/FileChannel;

    sget-object v1, Ljava/nio/channels/FileChannel$MapMode;->READ_ONLY:Ljava/nio/channels/FileChannel$MapMode;

    iget v2, p0, Lj$/nio/file/FileChannelLinesSpliterator;->fence:I

    int-to-long v4, v2

    const-wide/16 v2, 0x0

    invoke-virtual/range {v0 .. v5}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 194
    :catch_0
    move-exception v0

    .line 195
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/io/UncheckedIOException;

    invoke-direct {v1, v0}, Ljava/io/UncheckedIOException;-><init>(Ljava/io/IOException;)V

    throw v1
.end method

.method private readLine()Ljava/lang/String;
    .locals 2

    .line 172
    iget-object v0, p0, Lj$/nio/file/FileChannelLinesSpliterator;->reader:Ljava/io/BufferedReader;

    if-nez v0, :cond_0

    .line 173
    invoke-direct {p0}, Lj$/nio/file/FileChannelLinesSpliterator;->getBufferedReader()Ljava/io/BufferedReader;

    move-result-object v0

    iput-object v0, p0, Lj$/nio/file/FileChannelLinesSpliterator;->reader:Ljava/io/BufferedReader;

    .line 174
    const/4 v0, 0x0

    iput-object v0, p0, Lj$/nio/file/FileChannelLinesSpliterator;->buffer:Ljava/nio/ByteBuffer;

    .line 178
    :cond_0
    :try_start_0
    iget-object v0, p0, Lj$/nio/file/FileChannelLinesSpliterator;->reader:Ljava/io/BufferedReader;

    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 179
    :catch_0
    move-exception v0

    .line 180
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/io/UncheckedIOException;

    invoke-direct {v1, v0}, Ljava/io/UncheckedIOException;-><init>(Ljava/io/IOException;)V

    throw v1
.end method


# virtual methods
.method public characteristics()I
    .locals 1

    .line 272
    const/16 v0, 0x110

    return v0
.end method

.method public estimateSize()J
    .locals 2

    .line 262
    iget v0, p0, Lj$/nio/file/FileChannelLinesSpliterator;->fence:I

    iget v1, p0, Lj$/nio/file/FileChannelLinesSpliterator;->index:I

    sub-int/2addr v0, v1

    int-to-long v0, v0

    return-wide v0
.end method

.method public forEachRemaining(Ljava/util/function/Consumer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "-",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 120
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-Ljava/lang/String;>;"
    nop

    :goto_0
    invoke-direct {p0}, Lj$/nio/file/FileChannelLinesSpliterator;->readLine()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .local v1, "line":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 121
    invoke-interface {p1, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_0

    .line 123
    :cond_0
    return-void
.end method

.method public synthetic getComparator()Ljava/util/Comparator;
    .locals 1

    invoke-static {p0}, Lj$/util/Spliterator$-CC;->$default$getComparator(Lj$/util/Spliterator;)Ljava/util/Comparator;

    move-result-object v0

    return-object v0
.end method

.method public getExactSizeIfKnown()J
    .locals 2

    .line 267
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public synthetic hasCharacteristics(I)Z
    .locals 0

    invoke-static {p0, p1}, Lj$/util/Spliterator$-CC;->$default$hasCharacteristics(Lj$/util/Spliterator;I)Z

    move-result p1

    return p1
.end method

.method public tryAdvance(Ljava/util/function/Consumer;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "-",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 108
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-Ljava/lang/String;>;"
    invoke-direct {p0}, Lj$/nio/file/FileChannelLinesSpliterator;->readLine()Ljava/lang/String;

    move-result-object v0

    .line 109
    .local v0, "line":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 110
    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 111
    const/4 v1, 0x1

    return v1

    .line 113
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public trySplit()Lj$/util/Spliterator;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lj$/util/Spliterator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 202
    iget-object v0, p0, Lj$/nio/file/FileChannelLinesSpliterator;->reader:Ljava/io/BufferedReader;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 203
    return-object v1

    .line 206
    :cond_0
    iget-object v0, p0, Lj$/nio/file/FileChannelLinesSpliterator;->buffer:Ljava/nio/ByteBuffer;

    move-object v2, v0

    .local v2, "b":Ljava/nio/ByteBuffer;
    if-nez v0, :cond_1

    .line 207
    invoke-direct {p0}, Lj$/nio/file/FileChannelLinesSpliterator;->getMappedByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lj$/nio/file/FileChannelLinesSpliterator;->buffer:Ljava/nio/ByteBuffer;

    move-object v2, v0

    move-object v8, v2

    goto :goto_0

    .line 206
    :cond_1
    move-object v8, v2

    .line 210
    .end local v2    # "b":Ljava/nio/ByteBuffer;
    .local v8, "b":Ljava/nio/ByteBuffer;
    :goto_0
    iget v0, p0, Lj$/nio/file/FileChannelLinesSpliterator;->fence:I

    .local v0, "hi":I
    iget v6, p0, Lj$/nio/file/FileChannelLinesSpliterator;->index:I

    .line 213
    .local v6, "lo":I
    add-int v2, v6, v0

    ushr-int/lit8 v2, v2, 0x1

    .line 214
    .local v2, "mid":I
    invoke-virtual {v8, v2}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v3

    .line 215
    .local v3, "c":I
    const/16 v4, 0xa

    if-ne v3, v4, :cond_2

    .line 216
    add-int/lit8 v2, v2, 0x1

    move v7, v2

    move v2, v3

    goto :goto_4

    .line 217
    :cond_2
    const/16 v5, 0xd

    if-ne v3, v5, :cond_4

    .line 219
    add-int/lit8 v2, v2, 0x1

    if-ge v2, v0, :cond_3

    invoke-virtual {v8, v2}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v5

    if-ne v5, v4, :cond_3

    .line 220
    add-int/lit8 v2, v2, 0x1

    move v7, v2

    move v2, v3

    goto :goto_4

    .line 252
    :cond_3
    move v7, v2

    move v2, v3

    goto :goto_4

    .line 225
    :cond_4
    add-int/lit8 v7, v2, -0x1

    .line 226
    .local v7, "midL":I
    add-int/lit8 v9, v2, 0x1

    .line 227
    .local v9, "midR":I
    const/4 v2, 0x0

    .line 228
    :goto_1
    if-le v7, v6, :cond_3

    if-ge v9, v0, :cond_3

    .line 230
    add-int/lit8 v10, v7, -0x1

    .end local v7    # "midL":I
    .local v10, "midL":I
    invoke-virtual {v8, v7}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v3

    .line 231
    if-eq v3, v4, :cond_8

    if-ne v3, v5, :cond_5

    goto :goto_3

    .line 239
    :cond_5
    add-int/lit8 v7, v9, 0x1

    .end local v9    # "midR":I
    .local v7, "midR":I
    invoke-virtual {v8, v9}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v3

    .line 240
    if-eq v3, v4, :cond_7

    if-ne v3, v5, :cond_6

    goto :goto_2

    :cond_6
    move v9, v7

    move v7, v10

    goto :goto_1

    .line 241
    :cond_7
    :goto_2
    move v2, v7

    .line 243
    if-ne v3, v5, :cond_3

    if-ge v2, v0, :cond_3

    invoke-virtual {v8, v2}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v5

    if-ne v5, v4, :cond_3

    .line 244
    add-int/lit8 v2, v2, 0x1

    move v7, v2

    move v2, v3

    goto :goto_4

    .line 234
    .end local v7    # "midR":I
    .restart local v9    # "midR":I
    :cond_8
    :goto_3
    add-int/lit8 v2, v10, 0x2

    .line 235
    move v7, v2

    move v2, v3

    .line 252
    .end local v3    # "c":I
    .end local v9    # "midR":I
    .end local v10    # "midL":I
    .local v2, "c":I
    .local v7, "mid":I
    :goto_4
    if-le v7, v6, :cond_9

    if-ge v7, v0, :cond_9

    .line 253
    new-instance v3, Lj$/nio/file/FileChannelLinesSpliterator;

    iget-object v4, p0, Lj$/nio/file/FileChannelLinesSpliterator;->fc:Ljava/nio/channels/FileChannel;

    iget-object v5, p0, Lj$/nio/file/FileChannelLinesSpliterator;->cs:Ljava/nio/charset/Charset;

    iput v7, p0, Lj$/nio/file/FileChannelLinesSpliterator;->index:I

    invoke-direct/range {v3 .. v8}, Lj$/nio/file/FileChannelLinesSpliterator;-><init>(Ljava/nio/channels/FileChannel;Ljava/nio/charset/Charset;IILjava/nio/ByteBuffer;)V

    move-object v1, v3

    goto :goto_5

    .line 254
    :cond_9
    nop

    .line 252
    :goto_5
    return-object v1
.end method
