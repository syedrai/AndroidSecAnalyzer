.class public final Lokio/GzipSink;
.super Ljava/lang/Object;
.source "GzipSink.kt"

# interfaces
.implements Lokio/Sink;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nGzipSink.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GzipSink.kt\nokio/GzipSink\n+ 2 RealBufferedSink.kt\nokio/RealBufferedSink\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 Util.kt\nokio/-SegmentedByteString\n*L\n1#1,152:1\n51#2:153\n1#3:154\n85#4:155\n*S KotlinDebug\n*F\n+ 1 GzipSink.kt\nokio/GzipSink\n*L\n62#1:153\n130#1:155\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000R\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0001\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u0018\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u0018H\u0016J\u0008\u0010\u0019\u001a\u00020\u0014H\u0016J\u0008\u0010\u001a\u001a\u00020\u001bH\u0016J\u0008\u0010\u001c\u001a\u00020\u0014H\u0016J\u0008\u0010\u001d\u001a\u00020\u0014H\u0002J\u0018\u0010\u001e\u001a\u00020\u00142\u0006\u0010\u001f\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u0018H\u0002J\u0013\u0010\u0006\u001a\u00060\u0007j\u0002`\u0008H\u0007\u00a2\u0006\u0004\u0008 \u0010\tR\u000e\u0010\u0002\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0019\u0010\u0006\u001a\u00060\u0007j\u0002`\u00088G\u00a2\u0006\n\n\u0002\u0010\n\u001a\u0004\u0008\u0006\u0010\tR\u000e\u0010\u000b\u001a\u00020\u000cX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u000eX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000f\u001a\u00060\u0010j\u0002`\u0011X\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\u0012\u00a8\u0006!"
    }
    d2 = {
        "Lokio/GzipSink;",
        "Lokio/Sink;",
        "sink",
        "<init>",
        "(Lokio/Sink;)V",
        "Lokio/RealBufferedSink;",
        "deflater",
        "Ljava/util/zip/Deflater;",
        "Lokio/Deflater;",
        "()Ljava/util/zip/Deflater;",
        "Ljava/util/zip/Deflater;",
        "deflaterSink",
        "Lokio/DeflaterSink;",
        "closed",
        "",
        "crc",
        "Ljava/util/zip/CRC32;",
        "Lokio/internal/CRC32;",
        "Ljava/util/zip/CRC32;",
        "write",
        "",
        "source",
        "Lokio/Buffer;",
        "byteCount",
        "",
        "flush",
        "timeout",
        "Lokio/Timeout;",
        "close",
        "writeFooter",
        "updateCrc",
        "buffer",
        "-deprecated_deflater",
        "third_party.java_src.okio_okio-jvm"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private closed:Z

.field private final crc:Ljava/util/zip/CRC32;

.field private final deflater:Ljava/util/zip/Deflater;

.field private final deflaterSink:Lokio/DeflaterSink;

.field private final sink:Lokio/RealBufferedSink;


# direct methods
.method public constructor <init>(Lokio/Sink;)V
    .locals 3
    .param p1, "sink"    # Lokio/Sink;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sink"
        }
    .end annotation

    const-string/jumbo v0, "sink"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Lokio/RealBufferedSink;

    invoke-direct {v0, p1}, Lokio/RealBufferedSink;-><init>(Lokio/Sink;)V

    iput-object v0, p0, Lokio/GzipSink;->sink:Lokio/RealBufferedSink;

    .line 47
    new-instance v0, Ljava/util/zip/Deflater;

    invoke-static {}, Lokio/internal/_ZlibJvmKt;->getDEFAULT_COMPRESSION()I

    move-result v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Ljava/util/zip/Deflater;-><init>(IZ)V

    iput-object v0, p0, Lokio/GzipSink;->deflater:Ljava/util/zip/Deflater;

    .line 53
    new-instance v0, Lokio/DeflaterSink;

    iget-object v1, p0, Lokio/GzipSink;->sink:Lokio/RealBufferedSink;

    check-cast v1, Lokio/BufferedSink;

    iget-object v2, p0, Lokio/GzipSink;->deflater:Ljava/util/zip/Deflater;

    invoke-direct {v0, v1, v2}, Lokio/DeflaterSink;-><init>(Lokio/BufferedSink;Ljava/util/zip/Deflater;)V

    iput-object v0, p0, Lokio/GzipSink;->deflaterSink:Lokio/DeflaterSink;

    .line 58
    new-instance v0, Ljava/util/zip/CRC32;

    invoke-direct {v0}, Ljava/util/zip/CRC32;-><init>()V

    iput-object v0, p0, Lokio/GzipSink;->crc:Ljava/util/zip/CRC32;

    .line 60
    nop

    .line 62
    iget-object v0, p0, Lokio/GzipSink;->sink:Lokio/RealBufferedSink;

    .local v0, "this_$iv":Lokio/RealBufferedSink;
    const/4 v1, 0x0

    .line 153
    .local v1, "$i$f$getBuffer":I
    iget-object v0, v0, Lokio/RealBufferedSink;->bufferField:Lokio/Buffer;

    .line 62
    .end local v0    # "this_$iv":Lokio/RealBufferedSink;
    .end local v1    # "$i$f$getBuffer":I
    nop

    .local v0, "$this$_init__u24lambda_u240":Lokio/Buffer;
    const/4 v1, 0x0

    .line 63
    .local v1, "$i$a$-apply-GzipSink$1":I
    const/16 v2, 0x1f8b

    invoke-virtual {v0, v2}, Lokio/Buffer;->writeShort(I)Lokio/Buffer;

    .line 64
    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    .line 65
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    .line 66
    invoke-virtual {v0, v2}, Lokio/Buffer;->writeInt(I)Lokio/Buffer;

    .line 67
    invoke-virtual {v0, v2}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    .line 68
    invoke-virtual {v0, v2}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    .line 69
    nop

    .line 62
    .end local v0    # "$this$_init__u24lambda_u240":Lokio/Buffer;
    .end local v1    # "$i$a$-apply-GzipSink$1":I
    nop

    .line 70
    nop

    .line 41
    return-void
.end method

.method private final updateCrc(Lokio/Buffer;J)V
    .locals 7
    .param p1, "buffer"    # Lokio/Buffer;
    .param p2, "byteCount"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "buffer",
            "byteCount"
        }
    .end annotation

    .line 127
    iget-object v0, p1, Lokio/Buffer;->head:Lokio/Segment;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 128
    .local v0, "head":Lokio/Segment;
    move-wide v1, p2

    .line 129
    .local v1, "remaining":J
    :goto_0
    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-lez v5, :cond_0

    .line 130
    iget v3, v0, Lokio/Segment;->limit:I

    iget v4, v0, Lokio/Segment;->pos:I

    sub-int/2addr v3, v4

    .local v3, "b$iv":I
    const/4 v4, 0x0

    .line 155
    .local v4, "$i$f$minOf":I
    int-to-long v5, v3

    invoke-static {v1, v2, v5, v6}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v5

    .line 130
    .end local v3    # "b$iv":I
    .end local v4    # "$i$f$minOf":I
    long-to-int v3, v5

    .line 131
    .local v3, "segmentLength":I
    iget-object v4, p0, Lokio/GzipSink;->crc:Ljava/util/zip/CRC32;

    iget-object v5, v0, Lokio/Segment;->data:[B

    iget v6, v0, Lokio/Segment;->pos:I

    invoke-virtual {v4, v5, v6, v3}, Ljava/util/zip/CRC32;->update([BII)V

    .line 132
    int-to-long v4, v3

    sub-long/2addr v1, v4

    .line 133
    iget-object v4, v0, Lokio/Segment;->next:Lokio/Segment;

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v0, v4

    .end local v3    # "segmentLength":I
    goto :goto_0

    .line 135
    :cond_0
    return-void
.end method

.method private final writeFooter()V
    .locals 3

    .line 121
    iget-object v0, p0, Lokio/GzipSink;->sink:Lokio/RealBufferedSink;

    iget-object v1, p0, Lokio/GzipSink;->crc:Ljava/util/zip/CRC32;

    invoke-virtual {v1}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v1

    long-to-int v2, v1

    invoke-virtual {v0, v2}, Lokio/RealBufferedSink;->writeIntLe(I)Lokio/BufferedSink;

    .line 122
    iget-object v0, p0, Lokio/GzipSink;->sink:Lokio/RealBufferedSink;

    iget-object v1, p0, Lokio/GzipSink;->deflater:Ljava/util/zip/Deflater;

    invoke-virtual {v1}, Ljava/util/zip/Deflater;->getBytesRead()J

    move-result-wide v1

    long-to-int v2, v1

    invoke-virtual {v0, v2}, Lokio/RealBufferedSink;->writeIntLe(I)Lokio/BufferedSink;

    .line 123
    return-void
.end method


# virtual methods
.method public final -deprecated_deflater()Ljava/util/zip/Deflater;
    .locals 1
    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->ERROR:Lkotlin/DeprecationLevel;
        message = "moved to val"
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "deflater"
            imports = {}
        .end subannotation
    .end annotation

    .line 143
    iget-object v0, p0, Lokio/GzipSink;->deflater:Ljava/util/zip/Deflater;

    return-object v0
.end method

.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 88
    iget-boolean v0, p0, Lokio/GzipSink;->closed:Z

    if-eqz v0, :cond_0

    return-void

    .line 95
    :cond_0
    const/4 v0, 0x0

    .line 96
    .local v0, "thrown":Ljava/lang/Throwable;
    nop

    .line 97
    :try_start_0
    iget-object v1, p0, Lokio/GzipSink;->deflaterSink:Lokio/DeflaterSink;

    invoke-virtual {v1}, Lokio/DeflaterSink;->finishDeflate$third_party_java_src_okio_okio_jvm()V

    .line 98
    invoke-direct {p0}, Lokio/GzipSink;->writeFooter()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 99
    :catchall_0
    move-exception v1

    .line 100
    .local v1, "e":Ljava/lang/Throwable;
    move-object v0, v1

    .line 103
    .end local v1    # "e":Ljava/lang/Throwable;
    :goto_0
    nop

    .line 104
    :try_start_1
    iget-object v1, p0, Lokio/GzipSink;->deflater:Ljava/util/zip/Deflater;

    invoke-virtual {v1}, Ljava/util/zip/Deflater;->end()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    .line 105
    :catchall_1
    move-exception v1

    .line 106
    .restart local v1    # "e":Ljava/lang/Throwable;
    if-nez v0, :cond_1

    move-object v0, v1

    .line 109
    .end local v1    # "e":Ljava/lang/Throwable;
    :cond_1
    :goto_1
    nop

    .line 110
    :try_start_2
    iget-object v1, p0, Lokio/GzipSink;->sink:Lokio/RealBufferedSink;

    invoke-virtual {v1}, Lokio/RealBufferedSink;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_2

    .line 111
    :catchall_2
    move-exception v1

    .line 112
    .restart local v1    # "e":Ljava/lang/Throwable;
    if-nez v0, :cond_2

    move-object v0, v1

    .line 115
    .end local v1    # "e":Ljava/lang/Throwable;
    :cond_2
    :goto_2
    const/4 v1, 0x1

    iput-boolean v1, p0, Lokio/GzipSink;->closed:Z

    .line 117
    if-nez v0, :cond_3

    .line 118
    return-void

    .line 117
    :cond_3
    throw v0
.end method

.method public final deflater()Ljava/util/zip/Deflater;
    .locals 1

    .line 46
    iget-object v0, p0, Lokio/GzipSink;->deflater:Ljava/util/zip/Deflater;

    return-object v0
.end method

.method public flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 82
    iget-object v0, p0, Lokio/GzipSink;->deflaterSink:Lokio/DeflaterSink;

    invoke-virtual {v0}, Lokio/DeflaterSink;->flush()V

    return-void
.end method

.method public timeout()Lokio/Timeout;
    .locals 1

    .line 84
    iget-object v0, p0, Lokio/GzipSink;->sink:Lokio/RealBufferedSink;

    invoke-virtual {v0}, Lokio/RealBufferedSink;->timeout()Lokio/Timeout;

    move-result-object v0

    return-object v0
.end method

.method public write(Lokio/Buffer;J)V
    .locals 3
    .param p1, "source"    # Lokio/Buffer;
    .param p2, "byteCount"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "source",
            "byteCount"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string/jumbo v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 74
    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-ltz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_2

    .line 75
    cmp-long v2, p2, v0

    if-nez v2, :cond_1

    return-void

    .line 77
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lokio/GzipSink;->updateCrc(Lokio/Buffer;J)V

    .line 78
    iget-object v0, p0, Lokio/GzipSink;->deflaterSink:Lokio/DeflaterSink;

    invoke-virtual {v0, p1, p2, p3}, Lokio/DeflaterSink;->write(Lokio/Buffer;J)V

    .line 79
    return-void

    .line 154
    :cond_2
    const/4 v0, 0x0

    .line 74
    .local v0, "$i$a$-require-GzipSink$write$1":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "byteCount < 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .end local v0    # "$i$a$-require-GzipSink$write$1":I
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
