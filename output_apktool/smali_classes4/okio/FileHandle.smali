.class public abstract Lokio/FileHandle;
.super Ljava/lang/Object;
.source "FileHandle.kt"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokio/FileHandle$FileHandleSink;,
        Lokio/FileHandle$FileHandleSource;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nFileHandle.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FileHandle.kt\nokio/FileHandle\n+ 2 -JvmPlatform.kt\nokio/_JvmPlatformKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 RealBufferedSource.kt\nokio/RealBufferedSource\n+ 5 RealBufferedSink.kt\nokio/RealBufferedSink\n+ 6 Util.kt\nokio/-SegmentedByteString\n*L\n1#1,444:1\n33#2:445\n33#2:447\n33#2:448\n33#2:449\n33#2:450\n33#2:451\n33#2:452\n33#2:453\n33#2:457\n33#2:459\n1#3:446\n63#4:454\n63#4:455\n63#4:456\n51#5:458\n85#6:460\n85#6:461\n*S KotlinDebug\n*F\n+ 1 FileHandle.kt\nokio/FileHandle\n*L\n69#1:445\n81#1:447\n92#1:448\n105#1:449\n119#1:450\n129#1:451\n139#1:452\n151#1:453\n221#1:457\n287#1:459\n169#1:454\n195#1:455\n202#1:456\n248#1:458\n345#1:460\n374#1:461\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000V\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0006\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0012\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\r\u0008&\u0018\u00002\u00060\u0001j\u0002`\u0002:\u0002/0B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J&\u0010\u0012\u001a\u00020\u000b2\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u000b2\u0006\u0010\u0018\u001a\u00020\u000bJ\u001e\u0010\u0012\u001a\u00020\u00142\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u0018\u001a\u00020\u0014J\u0006\u0010\u001b\u001a\u00020\u0014J\u000e\u0010\u001c\u001a\u00020\u001d2\u0006\u0010\u001b\u001a\u00020\u0014J&\u0010\u001e\u001a\u00020\u001d2\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u000b2\u0006\u0010\u0018\u001a\u00020\u000bJ\u001e\u0010\u001e\u001a\u00020\u001d2\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u001f\u001a\u00020\u001a2\u0006\u0010\u0018\u001a\u00020\u0014J\u0006\u0010 \u001a\u00020\u001dJ\u0010\u0010\u001f\u001a\u00020!2\u0008\u0008\u0002\u0010\u0013\u001a\u00020\u0014J\u000e\u0010\"\u001a\u00020\u00142\u0006\u0010\u001f\u001a\u00020!J\u0016\u0010#\u001a\u00020\u001d2\u0006\u0010\u001f\u001a\u00020!2\u0006\u0010\"\u001a\u00020\u0014J\u0010\u0010\u0019\u001a\u00020$2\u0008\u0008\u0002\u0010\u0013\u001a\u00020\u0014J\u0006\u0010%\u001a\u00020$J\u000e\u0010\"\u001a\u00020\u00142\u0006\u0010\u0019\u001a\u00020$J\u0016\u0010#\u001a\u00020\u001d2\u0006\u0010\u0019\u001a\u00020$2\u0006\u0010\"\u001a\u00020\u0014J\u0006\u0010&\u001a\u00020\u001dJ(\u0010\'\u001a\u00020\u000b2\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u000b2\u0006\u0010\u0018\u001a\u00020\u000bH$J(\u0010(\u001a\u00020\u001d2\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u000b2\u0006\u0010\u0018\u001a\u00020\u000bH$J\u0008\u0010)\u001a\u00020\u001dH$J\u0010\u0010*\u001a\u00020\u001d2\u0006\u0010\u001b\u001a\u00020\u0014H$J\u0008\u0010+\u001a\u00020\u0014H$J\u0008\u0010,\u001a\u00020\u001dH$J \u0010-\u001a\u00020\u00142\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u0018\u001a\u00020\u0014H\u0002J \u0010.\u001a\u00020\u001d2\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u001f\u001a\u00020\u001a2\u0006\u0010\u0018\u001a\u00020\u0014H\u0002R\u0011\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u000e\u0010\t\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0017\u0010\u000c\u001a\u00060\rj\u0002`\u000e\u00a2\u0006\n\n\u0002\u0010\u0011\u001a\u0004\u0008\u000f\u0010\u0010\u00a8\u00061"
    }
    d2 = {
        "Lokio/FileHandle;",
        "Ljava/io/Closeable;",
        "Lokio/Closeable;",
        "readWrite",
        "",
        "<init>",
        "(Z)V",
        "getReadWrite",
        "()Z",
        "closed",
        "openStreamCount",
        "",
        "lock",
        "Ljava/util/concurrent/locks/ReentrantLock;",
        "Lokio/Lock;",
        "getLock",
        "()Ljava/util/concurrent/locks/ReentrantLock;",
        "Ljava/util/concurrent/locks/ReentrantLock;",
        "read",
        "fileOffset",
        "",
        "array",
        "",
        "arrayOffset",
        "byteCount",
        "sink",
        "Lokio/Buffer;",
        "size",
        "resize",
        "",
        "write",
        "source",
        "flush",
        "Lokio/Source;",
        "position",
        "reposition",
        "Lokio/Sink;",
        "appendingSink",
        "close",
        "protectedRead",
        "protectedWrite",
        "protectedFlush",
        "protectedResize",
        "protectedSize",
        "protectedClose",
        "readNoCloseCheck",
        "writeNoCloseCheck",
        "FileHandleSink",
        "FileHandleSource",
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

.field private final lock:Ljava/util/concurrent/locks/ReentrantLock;

.field private openStreamCount:I

.field private final readWrite:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 1
    .param p1, "readWrite"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "readWrite"
        }
    .end annotation

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-boolean p1, p0, Lokio/FileHandle;->readWrite:Z

    .line 55
    invoke-static {}, Lokio/_JvmPlatformKt;->newLock()Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v0

    iput-object v0, p0, Lokio/FileHandle;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 35
    return-void
.end method

.method public static final synthetic access$getClosed$p(Lokio/FileHandle;)Z
    .locals 1
    .param p0, "$this"    # Lokio/FileHandle;

    .line 35
    iget-boolean v0, p0, Lokio/FileHandle;->closed:Z

    return v0
.end method

.method public static final synthetic access$getOpenStreamCount$p(Lokio/FileHandle;)I
    .locals 1
    .param p0, "$this"    # Lokio/FileHandle;

    .line 35
    iget v0, p0, Lokio/FileHandle;->openStreamCount:I

    return v0
.end method

.method public static final synthetic access$readNoCloseCheck(Lokio/FileHandle;JLokio/Buffer;J)J
    .locals 2
    .param p0, "$this"    # Lokio/FileHandle;
    .param p1, "fileOffset"    # J
    .param p3, "sink"    # Lokio/Buffer;
    .param p4, "byteCount"    # J

    .line 35
    invoke-direct/range {p0 .. p5}, Lokio/FileHandle;->readNoCloseCheck(JLokio/Buffer;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static final synthetic access$setOpenStreamCount$p(Lokio/FileHandle;I)V
    .locals 0
    .param p0, "$this"    # Lokio/FileHandle;
    .param p1, "<set-?>"    # I

    .line 35
    iput p1, p0, Lokio/FileHandle;->openStreamCount:I

    return-void
.end method

.method public static final synthetic access$writeNoCloseCheck(Lokio/FileHandle;JLokio/Buffer;J)V
    .locals 0
    .param p0, "$this"    # Lokio/FileHandle;
    .param p1, "fileOffset"    # J
    .param p3, "source"    # Lokio/Buffer;
    .param p4, "byteCount"    # J

    .line 35
    invoke-direct/range {p0 .. p5}, Lokio/FileHandle;->writeNoCloseCheck(JLokio/Buffer;J)V

    return-void
.end method

.method private final readNoCloseCheck(JLokio/Buffer;J)J
    .locals 17
    .param p1, "fileOffset"    # J
    .param p3, "sink"    # Lokio/Buffer;
    .param p4, "byteCount"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "fileOffset",
            "sink",
            "byteCount"
        }
    .end annotation

    .line 334
    move-object/from16 v0, p3

    move-wide/from16 v1, p4

    const-wide/16 v3, 0x0

    const/4 v5, 0x1

    cmp-long v6, v1, v3

    if-ltz v6, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    if-eqz v3, :cond_5

    .line 336
    move-wide/from16 v3, p1

    .line 337
    .local v3, "currentOffset":J
    add-long v6, p1, v1

    move-wide v9, v3

    .line 339
    .end local v3    # "currentOffset":J
    .local v6, "targetOffset":J
    .local v9, "currentOffset":J
    :goto_1
    cmp-long v3, v9, v6

    if-gez v3, :cond_4

    .line 340
    invoke-virtual {v0, v5}, Lokio/Buffer;->writableSegment$third_party_java_src_okio_okio_jvm(I)Lokio/Segment;

    move-result-object v3

    .line 341
    .local v3, "tail":Lokio/Segment;
    nop

    .line 342
    nop

    .line 343
    iget-object v11, v3, Lokio/Segment;->data:[B

    .line 344
    iget v12, v3, Lokio/Segment;->limit:I

    .line 345
    sub-long v13, v6, v9

    .local v13, "a$iv":J
    iget v4, v3, Lokio/Segment;->limit:I

    rsub-int v4, v4, 0x2000

    .local v4, "b$iv":I
    const/4 v8, 0x0

    .line 460
    .local v8, "$i$f$minOf":I
    move-wide v15, v6

    .end local v6    # "targetOffset":J
    .local v15, "targetOffset":J
    int-to-long v5, v4

    invoke-static {v13, v14, v5, v6}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v5

    .line 345
    .end local v4    # "b$iv":I
    .end local v8    # "$i$f$minOf":I
    .end local v13    # "a$iv":J
    long-to-int v13, v5

    .line 341
    move-object/from16 v8, p0

    invoke-virtual/range {v8 .. v13}, Lokio/FileHandle;->protectedRead(J[BII)I

    move-result v4

    .line 348
    .local v4, "readByteCount":I
    const/4 v5, -0x1

    if-ne v4, v5, :cond_3

    .line 349
    iget v5, v3, Lokio/Segment;->pos:I

    iget v6, v3, Lokio/Segment;->limit:I

    if-ne v5, v6, :cond_1

    .line 351
    invoke-virtual {v3}, Lokio/Segment;->pop()Lokio/Segment;

    move-result-object v5

    iput-object v5, v0, Lokio/Buffer;->head:Lokio/Segment;

    .line 352
    invoke-static {v3}, Lokio/SegmentPool;->recycle(Lokio/Segment;)V

    .line 354
    :cond_1
    cmp-long v5, p1, v9

    if-nez v5, :cond_2

    const-wide/16 v5, -0x1

    return-wide v5

    .line 355
    :cond_2
    goto :goto_2

    .line 358
    :cond_3
    iget v5, v3, Lokio/Segment;->limit:I

    add-int/2addr v5, v4

    iput v5, v3, Lokio/Segment;->limit:I

    .line 359
    int-to-long v5, v4

    add-long/2addr v9, v5

    .line 360
    invoke-virtual {v0}, Lokio/Buffer;->size()J

    move-result-wide v5

    int-to-long v7, v4

    add-long/2addr v5, v7

    invoke-virtual {v0, v5, v6}, Lokio/Buffer;->setSize$third_party_java_src_okio_okio_jvm(J)V

    move-wide v6, v15

    const/4 v5, 0x1

    .end local v3    # "tail":Lokio/Segment;
    .end local v4    # "readByteCount":I
    goto :goto_1

    .line 339
    .end local v15    # "targetOffset":J
    .restart local v6    # "targetOffset":J
    :cond_4
    move-wide v15, v6

    .line 363
    .end local v6    # "targetOffset":J
    .restart local v15    # "targetOffset":J
    :goto_2
    sub-long v3, v9, p1

    return-wide v3

    .line 446
    .end local v9    # "currentOffset":J
    .end local v15    # "targetOffset":J
    :cond_5
    const/4 v3, 0x0

    .line 334
    .local v3, "$i$a$-require-FileHandle$readNoCloseCheck$1":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "byteCount < 0: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .end local v3    # "$i$a$-require-FileHandle$readNoCloseCheck$1":I
    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public static synthetic sink$default(Lokio/FileHandle;JILjava/lang/Object;)Lokio/Sink;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 218
    if-nez p4, :cond_1

    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_0

    .line 219
    const-wide/16 p1, 0x0

    .line 218
    :cond_0
    invoke-virtual {p0, p1, p2}, Lokio/FileHandle;->sink(J)Lokio/Sink;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: sink"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic source$default(Lokio/FileHandle;JILjava/lang/Object;)Lokio/Source;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 149
    if-nez p4, :cond_1

    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_0

    .line 150
    const-wide/16 p1, 0x0

    .line 149
    :cond_0
    invoke-virtual {p0, p1, p2}, Lokio/FileHandle;->source(J)Lokio/Source;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: source"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private final writeNoCloseCheck(JLokio/Buffer;J)V
    .locals 13
    .param p1, "fileOffset"    # J
    .param p3, "source"    # Lokio/Buffer;
    .param p4, "byteCount"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "fileOffset",
            "source",
            "byteCount"
        }
    .end annotation

    .line 367
    move-object/from16 v0, p3

    invoke-virtual {v0}, Lokio/Buffer;->size()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    move-wide/from16 v5, p4

    invoke-static/range {v1 .. v6}, Lokio/-SegmentedByteString;->checkOffsetAndCount(JJJ)V

    .line 369
    move-wide v1, p1

    .line 370
    .local v1, "currentOffset":J
    add-long v3, p1, p4

    move-wide v6, v1

    .line 372
    .end local v1    # "currentOffset":J
    .local v3, "targetOffset":J
    .local v6, "currentOffset":J
    :cond_0
    :goto_0
    cmp-long v1, v6, v3

    if-gez v1, :cond_1

    .line 373
    iget-object v1, v0, Lokio/Buffer;->head:Lokio/Segment;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 374
    .local v1, "head":Lokio/Segment;
    sub-long v8, v3, v6

    .local v8, "a$iv":J
    iget v2, v1, Lokio/Segment;->limit:I

    iget v5, v1, Lokio/Segment;->pos:I

    sub-int/2addr v2, v5

    .local v2, "b$iv":I
    const/4 v5, 0x0

    .line 461
    .local v5, "$i$f$minOf":I
    int-to-long v10, v2

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v10

    .line 374
    .end local v2    # "b$iv":I
    .end local v5    # "$i$f$minOf":I
    .end local v8    # "a$iv":J
    long-to-int v10, v10

    .line 375
    .local v10, "toCopy":I
    iget-object v8, v1, Lokio/Segment;->data:[B

    iget v9, v1, Lokio/Segment;->pos:I

    move-object v5, p0

    invoke-virtual/range {v5 .. v10}, Lokio/FileHandle;->protectedWrite(J[BII)V

    .line 377
    iget v2, v1, Lokio/Segment;->pos:I

    add-int/2addr v2, v10

    iput v2, v1, Lokio/Segment;->pos:I

    .line 378
    int-to-long v8, v10

    add-long/2addr v6, v8

    .line 379
    invoke-virtual {v0}, Lokio/Buffer;->size()J

    move-result-wide v8

    int-to-long v11, v10

    sub-long/2addr v8, v11

    invoke-virtual {v0, v8, v9}, Lokio/Buffer;->setSize$third_party_java_src_okio_okio_jvm(J)V

    .line 381
    iget v2, v1, Lokio/Segment;->pos:I

    iget v5, v1, Lokio/Segment;->limit:I

    if-ne v2, v5, :cond_0

    .line 382
    invoke-virtual {v1}, Lokio/Segment;->pop()Lokio/Segment;

    move-result-object v2

    iput-object v2, v0, Lokio/Buffer;->head:Lokio/Segment;

    .line 383
    invoke-static {v1}, Lokio/SegmentPool;->recycle(Lokio/Segment;)V

    .end local v1    # "head":Lokio/Segment;
    .end local v10    # "toCopy":I
    goto :goto_0

    .line 386
    :cond_1
    return-void
.end method


# virtual methods
.method public final appendingSink()Lokio/Sink;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 234
    invoke-virtual {p0}, Lokio/FileHandle;->size()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lokio/FileHandle;->sink(J)Lokio/Sink;

    move-result-object v0

    return-object v0
.end method

.method public final close()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 287
    iget-object v0, p0, Lokio/FileHandle;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .local v0, "$this$withLock$iv":Ljava/util/concurrent/locks/ReentrantLock;
    const/4 v1, 0x0

    .line 459
    .local v1, "$i$f$withLock":I
    move-object v2, v0

    check-cast v2, Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->lock()V

    const/4 v3, 0x0

    .line 288
    .local v3, "$i$a$-withLock-FileHandle$close$1":I
    :try_start_0
    iget-boolean v4, p0, Lokio/FileHandle;->closed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v4, :cond_0

    .end local v0    # "$this$withLock$iv":Ljava/util/concurrent/locks/ReentrantLock;
    .end local v1    # "$i$f$withLock":I
    .end local v3    # "$i$a$-withLock-FileHandle$close$1":I
    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    .line 289
    .restart local v0    # "$this$withLock$iv":Ljava/util/concurrent/locks/ReentrantLock;
    .restart local v1    # "$i$f$withLock":I
    .restart local v3    # "$i$a$-withLock-FileHandle$close$1":I
    :cond_0
    const/4 v4, 0x1

    :try_start_1
    iput-boolean v4, p0, Lokio/FileHandle;->closed:Z

    .line 290
    iget v4, p0, Lokio/FileHandle;->openStreamCount:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v4, :cond_1

    .end local v0    # "$this$withLock$iv":Ljava/util/concurrent/locks/ReentrantLock;
    .end local v1    # "$i$f$withLock":I
    .end local v3    # "$i$a$-withLock-FileHandle$close$1":I
    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    .line 291
    .restart local v0    # "$this$withLock$iv":Ljava/util/concurrent/locks/ReentrantLock;
    .restart local v1    # "$i$f$withLock":I
    .restart local v3    # "$i$a$-withLock-FileHandle$close$1":I
    :cond_1
    nop

    .end local v3    # "$i$a$-withLock-FileHandle$close$1":I
    :try_start_2
    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 459
    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 292
    .end local v0    # "$this$withLock$iv":Ljava/util/concurrent/locks/ReentrantLock;
    .end local v1    # "$i$f$withLock":I
    invoke-virtual {p0}, Lokio/FileHandle;->protectedClose()V

    .line 293
    return-void

    .line 459
    .restart local v0    # "$this$withLock$iv":Ljava/util/concurrent/locks/ReentrantLock;
    .restart local v1    # "$i$f$withLock":I
    :catchall_0
    move-exception v3

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v3
.end method

.method public final flush()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 138
    iget-boolean v0, p0, Lokio/FileHandle;->readWrite:Z

    if-eqz v0, :cond_1

    .line 139
    iget-object v0, p0, Lokio/FileHandle;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .local v0, "$this$withLock$iv":Ljava/util/concurrent/locks/ReentrantLock;
    const/4 v1, 0x0

    .line 452
    .local v1, "$i$f$withLock":I
    move-object v2, v0

    check-cast v2, Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->lock()V

    const/4 v3, 0x0

    .line 140
    .local v3, "$i$a$-withLock-FileHandle$flush$2":I
    :try_start_0
    iget-boolean v4, p0, Lokio/FileHandle;->closed:Z

    if-nez v4, :cond_0

    .line 141
    nop

    .end local v3    # "$i$a$-withLock-FileHandle$flush$2":I
    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 452
    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 142
    .end local v0    # "$this$withLock$iv":Ljava/util/concurrent/locks/ReentrantLock;
    .end local v1    # "$i$f$withLock":I
    invoke-virtual {p0}, Lokio/FileHandle;->protectedFlush()V

    return-void

    .line 446
    .restart local v0    # "$this$withLock$iv":Ljava/util/concurrent/locks/ReentrantLock;
    .restart local v1    # "$i$f$withLock":I
    .restart local v3    # "$i$a$-withLock-FileHandle$flush$2":I
    :cond_0
    const/4 v4, 0x0

    .line 140
    .local v4, "$i$a$-check-FileHandle$flush$2$1":I
    :try_start_1
    const-string v5, "closed"

    .end local v4    # "$i$a$-check-FileHandle$flush$2$1":I
    new-instance v4, Ljava/lang/IllegalStateException;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v0    # "$this$withLock$iv":Ljava/util/concurrent/locks/ReentrantLock;
    .end local v1    # "$i$f$withLock":I
    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 452
    .end local v3    # "$i$a$-withLock-FileHandle$flush$2":I
    .restart local v0    # "$this$withLock$iv":Ljava/util/concurrent/locks/ReentrantLock;
    .restart local v1    # "$i$f$withLock":I
    :catchall_0
    move-exception v3

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v3

    .line 446
    .end local v0    # "$this$withLock$iv":Ljava/util/concurrent/locks/ReentrantLock;
    .end local v1    # "$i$f$withLock":I
    :cond_1
    const/4 v0, 0x0

    .line 138
    .local v0, "$i$a$-check-FileHandle$flush$1":I
    nop

    .end local v0    # "$i$a$-check-FileHandle$flush$1":I
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "file handle is read-only"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final getLock()Ljava/util/concurrent/locks/ReentrantLock;
    .locals 1

    .line 55
    iget-object v0, p0, Lokio/FileHandle;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    return-object v0
.end method

.method public final getReadWrite()Z
    .locals 1

    .line 41
    iget-boolean v0, p0, Lokio/FileHandle;->readWrite:Z

    return v0
.end method

.method public final position(Lokio/Sink;)J
    .locals 5
    .param p1, "sink"    # Lokio/Sink;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sink"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string/jumbo v0, "sink"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 244
    move-object v0, p1

    .line 245
    .local v0, "sink":Lokio/Sink;
    const-wide/16 v1, 0x0

    .line 247
    .local v1, "bufferSize":J
    instance-of v3, v0, Lokio/RealBufferedSink;

    if-eqz v3, :cond_0

    .line 248
    move-object v3, v0

    check-cast v3, Lokio/RealBufferedSink;

    .local v3, "this_$iv":Lokio/RealBufferedSink;
    const/4 v4, 0x0

    .line 458
    .local v4, "$i$f$getBuffer":I
    iget-object v3, v3, Lokio/RealBufferedSink;->bufferField:Lokio/Buffer;

    .line 248
    .end local v3    # "this_$iv":Lokio/RealBufferedSink;
    .end local v4    # "$i$f$getBuffer":I
    invoke-virtual {v3}, Lokio/Buffer;->size()J

    move-result-wide v1

    .line 249
    move-object v3, v0

    check-cast v3, Lokio/RealBufferedSink;

    iget-object v0, v3, Lokio/RealBufferedSink;->sink:Lokio/Sink;

    .line 252
    :cond_0
    instance-of v3, v0, Lokio/FileHandle$FileHandleSink;

    if-eqz v3, :cond_1

    move-object v3, v0

    check-cast v3, Lokio/FileHandle$FileHandleSink;

    invoke-virtual {v3}, Lokio/FileHandle$FileHandleSink;->getFileHandle()Lokio/FileHandle;

    move-result-object v3

    if-ne v3, p0, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    if-eqz v3, :cond_3

    .line 255
    move-object v3, v0

    check-cast v3, Lokio/FileHandle$FileHandleSink;

    invoke-virtual {v3}, Lokio/FileHandle$FileHandleSink;->getClosed()Z

    move-result v3

    if-nez v3, :cond_2

    .line 257
    move-object v3, v0

    check-cast v3, Lokio/FileHandle$FileHandleSink;

    invoke-virtual {v3}, Lokio/FileHandle$FileHandleSink;->getPosition()J

    move-result-wide v3

    add-long/2addr v3, v1

    return-wide v3

    .line 446
    :cond_2
    const/4 v3, 0x0

    .line 255
    .local v3, "$i$a$-check-FileHandle$position$4":I
    nop

    .end local v3    # "$i$a$-check-FileHandle$position$4":I
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "closed"

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 252
    :cond_3
    const/4 v3, 0x0

    .line 253
    .local v3, "$i$a$-require-FileHandle$position$3":I
    nop

    .line 252
    .end local v3    # "$i$a$-require-FileHandle$position$3":I
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "sink was not created by this FileHandle"

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public final position(Lokio/Source;)J
    .locals 5
    .param p1, "source"    # Lokio/Source;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "source"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string/jumbo v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 165
    move-object v0, p1

    .line 166
    .local v0, "source":Lokio/Source;
    const-wide/16 v1, 0x0

    .line 168
    .local v1, "bufferSize":J
    instance-of v3, v0, Lokio/RealBufferedSource;

    if-eqz v3, :cond_0

    .line 169
    move-object v3, v0

    check-cast v3, Lokio/RealBufferedSource;

    .local v3, "this_$iv":Lokio/RealBufferedSource;
    const/4 v4, 0x0

    .line 454
    .local v4, "$i$f$getBuffer":I
    iget-object v3, v3, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    .line 169
    .end local v3    # "this_$iv":Lokio/RealBufferedSource;
    .end local v4    # "$i$f$getBuffer":I
    invoke-virtual {v3}, Lokio/Buffer;->size()J

    move-result-wide v1

    .line 170
    move-object v3, v0

    check-cast v3, Lokio/RealBufferedSource;

    iget-object v0, v3, Lokio/RealBufferedSource;->source:Lokio/Source;

    .line 173
    :cond_0
    instance-of v3, v0, Lokio/FileHandle$FileHandleSource;

    if-eqz v3, :cond_1

    move-object v3, v0

    check-cast v3, Lokio/FileHandle$FileHandleSource;

    invoke-virtual {v3}, Lokio/FileHandle$FileHandleSource;->getFileHandle()Lokio/FileHandle;

    move-result-object v3

    if-ne v3, p0, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    if-eqz v3, :cond_3

    .line 176
    move-object v3, v0

    check-cast v3, Lokio/FileHandle$FileHandleSource;

    invoke-virtual {v3}, Lokio/FileHandle$FileHandleSource;->getClosed()Z

    move-result v3

    if-nez v3, :cond_2

    .line 178
    move-object v3, v0

    check-cast v3, Lokio/FileHandle$FileHandleSource;

    invoke-virtual {v3}, Lokio/FileHandle$FileHandleSource;->getPosition()J

    move-result-wide v3

    sub-long/2addr v3, v1

    return-wide v3

    .line 446
    :cond_2
    const/4 v3, 0x0

    .line 176
    .local v3, "$i$a$-check-FileHandle$position$2":I
    nop

    .end local v3    # "$i$a$-check-FileHandle$position$2":I
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "closed"

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 173
    :cond_3
    const/4 v3, 0x0

    .line 174
    .local v3, "$i$a$-require-FileHandle$position$1":I
    nop

    .line 173
    .end local v3    # "$i$a$-require-FileHandle$position$1":I
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "source was not created by this FileHandle"

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method protected abstract protectedClose()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected abstract protectedFlush()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected abstract protectedRead(J[BII)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "fileOffset",
            "array",
            "arrayOffset",
            "byteCount"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected abstract protectedResize(J)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "size"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected abstract protectedSize()J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected abstract protectedWrite(J[BII)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "fileOffset",
            "array",
            "arrayOffset",
            "byteCount"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final read(J[BII)I
    .locals 6
    .param p1, "fileOffset"    # J
    .param p3, "array"    # [B
    .param p4, "arrayOffset"    # I
    .param p5, "byteCount"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "fileOffset",
            "array",
            "arrayOffset",
            "byteCount"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "array"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    iget-object v1, p0, Lokio/FileHandle;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .local v1, "$this$withLock$iv":Ljava/util/concurrent/locks/ReentrantLock;
    const/4 v2, 0x0

    .line 445
    .local v2, "$i$f$withLock":I
    move-object v3, v1

    check-cast v3, Ljava/util/concurrent/locks/Lock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->lock()V

    const/4 v0, 0x0

    .line 70
    .local v0, "$i$a$-withLock-FileHandle$read$1":I
    :try_start_0
    iget-boolean v4, p0, Lokio/FileHandle;->closed:Z

    if-nez v4, :cond_0

    .line 71
    nop

    .end local v0    # "$i$a$-withLock-FileHandle$read$1":I
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 445
    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 72
    .end local v1    # "$this$withLock$iv":Ljava/util/concurrent/locks/ReentrantLock;
    .end local v2    # "$i$f$withLock":I
    invoke-virtual/range {p0 .. p5}, Lokio/FileHandle;->protectedRead(J[BII)I

    move-result v0

    return v0

    .line 446
    .restart local v0    # "$i$a$-withLock-FileHandle$read$1":I
    .restart local v1    # "$this$withLock$iv":Ljava/util/concurrent/locks/ReentrantLock;
    .restart local v2    # "$i$f$withLock":I
    :cond_0
    const/4 v4, 0x0

    .line 70
    .local v4, "$i$a$-check-FileHandle$read$1$1":I
    :try_start_1
    const-string v5, "closed"

    .end local v4    # "$i$a$-check-FileHandle$read$1$1":I
    new-instance v4, Ljava/lang/IllegalStateException;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v1    # "$this$withLock$iv":Ljava/util/concurrent/locks/ReentrantLock;
    .end local v2    # "$i$f$withLock":I
    .end local p1    # "fileOffset":J
    .end local p3    # "array":[B
    .end local p4    # "arrayOffset":I
    .end local p5    # "byteCount":I
    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 445
    .end local v0    # "$i$a$-withLock-FileHandle$read$1":I
    .restart local v1    # "$this$withLock$iv":Ljava/util/concurrent/locks/ReentrantLock;
    .restart local v2    # "$i$f$withLock":I
    .restart local p1    # "fileOffset":J
    .restart local p3    # "array":[B
    .restart local p4    # "arrayOffset":I
    .restart local p5    # "byteCount":I
    :catchall_0
    move-exception v0

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public final read(JLokio/Buffer;J)J
    .locals 6
    .param p1, "fileOffset"    # J
    .param p3, "sink"    # Lokio/Buffer;
    .param p4, "byteCount"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "fileOffset",
            "sink",
            "byteCount"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string/jumbo v0, "sink"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 81
    iget-object v1, p0, Lokio/FileHandle;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .local v1, "$this$withLock$iv":Ljava/util/concurrent/locks/ReentrantLock;
    const/4 v2, 0x0

    .line 447
    .local v2, "$i$f$withLock":I
    move-object v3, v1

    check-cast v3, Ljava/util/concurrent/locks/Lock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->lock()V

    const/4 v0, 0x0

    .line 82
    .local v0, "$i$a$-withLock-FileHandle$read$2":I
    :try_start_0
    iget-boolean v4, p0, Lokio/FileHandle;->closed:Z

    if-nez v4, :cond_0

    .line 83
    nop

    .end local v0    # "$i$a$-withLock-FileHandle$read$2":I
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 447
    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 84
    .end local v1    # "$this$withLock$iv":Ljava/util/concurrent/locks/ReentrantLock;
    .end local v2    # "$i$f$withLock":I
    invoke-direct/range {p0 .. p5}, Lokio/FileHandle;->readNoCloseCheck(JLokio/Buffer;J)J

    move-result-wide v0

    return-wide v0

    .line 446
    .restart local v0    # "$i$a$-withLock-FileHandle$read$2":I
    .restart local v1    # "$this$withLock$iv":Ljava/util/concurrent/locks/ReentrantLock;
    .restart local v2    # "$i$f$withLock":I
    :cond_0
    const/4 v4, 0x0

    .line 82
    .local v4, "$i$a$-check-FileHandle$read$2$1":I
    :try_start_1
    const-string v5, "closed"

    .end local v4    # "$i$a$-check-FileHandle$read$2$1":I
    new-instance v4, Ljava/lang/IllegalStateException;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v1    # "$this$withLock$iv":Ljava/util/concurrent/locks/ReentrantLock;
    .end local v2    # "$i$f$withLock":I
    .end local p1    # "fileOffset":J
    .end local p3    # "sink":Lokio/Buffer;
    .end local p4    # "byteCount":J
    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 447
    .end local v0    # "$i$a$-withLock-FileHandle$read$2":I
    .restart local v1    # "$this$withLock$iv":Ljava/util/concurrent/locks/ReentrantLock;
    .restart local v2    # "$i$f$withLock":I
    .restart local p1    # "fileOffset":J
    .restart local p3    # "sink":Lokio/Buffer;
    .restart local p4    # "byteCount":J
    :catchall_0
    move-exception v0

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public final reposition(Lokio/Sink;J)V
    .locals 6
    .param p1, "sink"    # Lokio/Sink;
    .param p2, "position"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "sink",
            "position"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string/jumbo v0, "sink"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 267
    instance-of v0, p1, Lokio/RealBufferedSink;

    const-string v1, "closed"

    const-string/jumbo v2, "sink was not created by this FileHandle"

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v0, :cond_3

    .line 268
    move-object v0, p1

    check-cast v0, Lokio/RealBufferedSink;

    iget-object v0, v0, Lokio/RealBufferedSink;->sink:Lokio/Sink;

    .line 269
    .local v0, "fileHandleSink":Lokio/Sink;
    instance-of v5, v0, Lokio/FileHandle$FileHandleSink;

    if-eqz v5, :cond_0

    move-object v5, v0

    check-cast v5, Lokio/FileHandle$FileHandleSink;

    invoke-virtual {v5}, Lokio/FileHandle$FileHandleSink;->getFileHandle()Lokio/FileHandle;

    move-result-object v5

    if-ne v5, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    if-eqz v3, :cond_2

    .line 272
    move-object v2, v0

    check-cast v2, Lokio/FileHandle$FileHandleSink;

    invoke-virtual {v2}, Lokio/FileHandle$FileHandleSink;->getClosed()Z

    move-result v2

    if-nez v2, :cond_1

    .line 274
    move-object v1, p1

    check-cast v1, Lokio/RealBufferedSink;

    invoke-virtual {v1}, Lokio/RealBufferedSink;->emit()Lokio/BufferedSink;

    .line 275
    move-object v1, v0

    check-cast v1, Lokio/FileHandle$FileHandleSink;

    invoke-virtual {v1, p2, p3}, Lokio/FileHandle$FileHandleSink;->setPosition(J)V

    .end local v0    # "fileHandleSink":Lokio/Sink;
    goto :goto_2

    .line 446
    .restart local v0    # "fileHandleSink":Lokio/Sink;
    :cond_1
    const/4 v2, 0x0

    .line 272
    .local v2, "$i$a$-check-FileHandle$reposition$6":I
    nop

    .end local v2    # "$i$a$-check-FileHandle$reposition$6":I
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 269
    :cond_2
    const/4 v1, 0x0

    .line 270
    .local v1, "$i$a$-require-FileHandle$reposition$5":I
    nop

    .line 269
    .end local v1    # "$i$a$-require-FileHandle$reposition$5":I
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 277
    .end local v0    # "fileHandleSink":Lokio/Sink;
    :cond_3
    instance-of v0, p1, Lokio/FileHandle$FileHandleSink;

    if-eqz v0, :cond_4

    move-object v0, p1

    check-cast v0, Lokio/FileHandle$FileHandleSink;

    invoke-virtual {v0}, Lokio/FileHandle$FileHandleSink;->getFileHandle()Lokio/FileHandle;

    move-result-object v0

    if-ne v0, p0, :cond_4

    goto :goto_1

    :cond_4
    const/4 v3, 0x0

    :goto_1
    if-eqz v3, :cond_6

    .line 280
    move-object v0, p1

    check-cast v0, Lokio/FileHandle$FileHandleSink;

    invoke-virtual {v0}, Lokio/FileHandle$FileHandleSink;->getClosed()Z

    move-result v0

    if-nez v0, :cond_5

    .line 281
    move-object v0, p1

    check-cast v0, Lokio/FileHandle$FileHandleSink;

    invoke-virtual {v0, p2, p3}, Lokio/FileHandle$FileHandleSink;->setPosition(J)V

    .line 283
    :goto_2
    return-void

    .line 446
    :cond_5
    const/4 v0, 0x0

    .line 280
    .local v0, "$i$a$-check-FileHandle$reposition$8":I
    nop

    .end local v0    # "$i$a$-check-FileHandle$reposition$8":I
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 277
    :cond_6
    const/4 v0, 0x0

    .line 278
    .local v0, "$i$a$-require-FileHandle$reposition$7":I
    nop

    .line 277
    .end local v0    # "$i$a$-require-FileHandle$reposition$7":I
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final reposition(Lokio/Source;J)V
    .locals 10
    .param p1, "source"    # Lokio/Source;
    .param p2, "position"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "source",
            "position"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string/jumbo v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 188
    instance-of v0, p1, Lokio/RealBufferedSource;

    const-string v1, "closed"

    const-string/jumbo v2, "source was not created by this FileHandle"

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v0, :cond_5

    .line 189
    move-object v0, p1

    check-cast v0, Lokio/RealBufferedSource;

    iget-object v0, v0, Lokio/RealBufferedSource;->source:Lokio/Source;

    .line 190
    .local v0, "fileHandleSource":Lokio/Source;
    instance-of v5, v0, Lokio/FileHandle$FileHandleSource;

    if-eqz v5, :cond_0

    move-object v5, v0

    check-cast v5, Lokio/FileHandle$FileHandleSource;

    invoke-virtual {v5}, Lokio/FileHandle$FileHandleSource;->getFileHandle()Lokio/FileHandle;

    move-result-object v5

    if-ne v5, p0, :cond_0

    const/4 v5, 0x1

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    :goto_0
    if-eqz v5, :cond_4

    .line 193
    move-object v2, v0

    check-cast v2, Lokio/FileHandle$FileHandleSource;

    invoke-virtual {v2}, Lokio/FileHandle$FileHandleSource;->getClosed()Z

    move-result v2

    if-nez v2, :cond_3

    .line 195
    move-object v1, p1

    check-cast v1, Lokio/RealBufferedSource;

    .local v1, "this_$iv":Lokio/RealBufferedSource;
    const/4 v2, 0x0

    .line 455
    .local v2, "$i$f$getBuffer":I
    iget-object v1, v1, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    .line 195
    .end local v1    # "this_$iv":Lokio/RealBufferedSource;
    .end local v2    # "$i$f$getBuffer":I
    invoke-virtual {v1}, Lokio/Buffer;->size()J

    move-result-wide v1

    .line 196
    .local v1, "bufferSize":J
    move-object v5, v0

    check-cast v5, Lokio/FileHandle$FileHandleSource;

    invoke-virtual {v5}, Lokio/FileHandle$FileHandleSource;->getPosition()J

    move-result-wide v5

    sub-long/2addr v5, v1

    sub-long v5, p2, v5

    .line 197
    .local v5, "toSkip":J
    const-wide/16 v7, 0x0

    cmp-long v9, v7, v5

    if-gtz v9, :cond_1

    cmp-long v7, v5, v1

    if-gez v7, :cond_1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    if-eqz v3, :cond_2

    .line 199
    move-object v3, p1

    check-cast v3, Lokio/RealBufferedSource;

    invoke-virtual {v3, v5, v6}, Lokio/RealBufferedSource;->skip(J)V

    goto :goto_3

    .line 202
    :cond_2
    move-object v3, p1

    check-cast v3, Lokio/RealBufferedSource;

    .local v3, "this_$iv":Lokio/RealBufferedSource;
    const/4 v4, 0x0

    .line 456
    .local v4, "$i$f$getBuffer":I
    iget-object v3, v3, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    .line 202
    .end local v3    # "this_$iv":Lokio/RealBufferedSource;
    .end local v4    # "$i$f$getBuffer":I
    invoke-virtual {v3}, Lokio/Buffer;->clear()V

    .line 203
    move-object v3, v0

    check-cast v3, Lokio/FileHandle$FileHandleSource;

    invoke-virtual {v3, p2, p3}, Lokio/FileHandle$FileHandleSource;->setPosition(J)V

    .end local v0    # "fileHandleSource":Lokio/Source;
    .end local v1    # "bufferSize":J
    .end local v5    # "toSkip":J
    goto :goto_3

    .line 446
    .restart local v0    # "fileHandleSource":Lokio/Source;
    :cond_3
    const/4 v2, 0x0

    .line 193
    .local v2, "$i$a$-check-FileHandle$reposition$2":I
    nop

    .end local v2    # "$i$a$-check-FileHandle$reposition$2":I
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 190
    :cond_4
    const/4 v1, 0x0

    .line 191
    .local v1, "$i$a$-require-FileHandle$reposition$1":I
    nop

    .line 190
    .end local v1    # "$i$a$-require-FileHandle$reposition$1":I
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 206
    .end local v0    # "fileHandleSource":Lokio/Source;
    :cond_5
    instance-of v0, p1, Lokio/FileHandle$FileHandleSource;

    if-eqz v0, :cond_6

    move-object v0, p1

    check-cast v0, Lokio/FileHandle$FileHandleSource;

    invoke-virtual {v0}, Lokio/FileHandle$FileHandleSource;->getFileHandle()Lokio/FileHandle;

    move-result-object v0

    if-ne v0, p0, :cond_6

    goto :goto_2

    :cond_6
    const/4 v3, 0x0

    :goto_2
    if-eqz v3, :cond_8

    .line 209
    move-object v0, p1

    check-cast v0, Lokio/FileHandle$FileHandleSource;

    invoke-virtual {v0}, Lokio/FileHandle$FileHandleSource;->getClosed()Z

    move-result v0

    if-nez v0, :cond_7

    .line 210
    move-object v0, p1

    check-cast v0, Lokio/FileHandle$FileHandleSource;

    invoke-virtual {v0, p2, p3}, Lokio/FileHandle$FileHandleSource;->setPosition(J)V

    .line 212
    :goto_3
    return-void

    .line 446
    :cond_7
    const/4 v0, 0x0

    .line 209
    .local v0, "$i$a$-check-FileHandle$reposition$4":I
    nop

    .end local v0    # "$i$a$-check-FileHandle$reposition$4":I
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 206
    :cond_8
    const/4 v0, 0x0

    .line 207
    .local v0, "$i$a$-require-FileHandle$reposition$3":I
    nop

    .line 206
    .end local v0    # "$i$a$-require-FileHandle$reposition$3":I
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final resize(J)V
    .locals 6
    .param p1, "size"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "size"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 104
    iget-boolean v0, p0, Lokio/FileHandle;->readWrite:Z

    if-eqz v0, :cond_1

    .line 105
    iget-object v0, p0, Lokio/FileHandle;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .local v0, "$this$withLock$iv":Ljava/util/concurrent/locks/ReentrantLock;
    const/4 v1, 0x0

    .line 449
    .local v1, "$i$f$withLock":I
    move-object v2, v0

    check-cast v2, Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->lock()V

    const/4 v3, 0x0

    .line 106
    .local v3, "$i$a$-withLock-FileHandle$resize$2":I
    :try_start_0
    iget-boolean v4, p0, Lokio/FileHandle;->closed:Z

    if-nez v4, :cond_0

    .line 107
    nop

    .end local v3    # "$i$a$-withLock-FileHandle$resize$2":I
    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 449
    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 108
    .end local v0    # "$this$withLock$iv":Ljava/util/concurrent/locks/ReentrantLock;
    .end local v1    # "$i$f$withLock":I
    invoke-virtual {p0, p1, p2}, Lokio/FileHandle;->protectedResize(J)V

    return-void

    .line 446
    .restart local v0    # "$this$withLock$iv":Ljava/util/concurrent/locks/ReentrantLock;
    .restart local v1    # "$i$f$withLock":I
    .restart local v3    # "$i$a$-withLock-FileHandle$resize$2":I
    :cond_0
    const/4 v4, 0x0

    .line 106
    .local v4, "$i$a$-check-FileHandle$resize$2$1":I
    :try_start_1
    const-string v5, "closed"

    .end local v4    # "$i$a$-check-FileHandle$resize$2$1":I
    new-instance v4, Ljava/lang/IllegalStateException;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v0    # "$this$withLock$iv":Ljava/util/concurrent/locks/ReentrantLock;
    .end local v1    # "$i$f$withLock":I
    .end local p1    # "size":J
    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 449
    .end local v3    # "$i$a$-withLock-FileHandle$resize$2":I
    .restart local v0    # "$this$withLock$iv":Ljava/util/concurrent/locks/ReentrantLock;
    .restart local v1    # "$i$f$withLock":I
    .restart local p1    # "size":J
    :catchall_0
    move-exception v3

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v3

    .line 446
    .end local v0    # "$this$withLock$iv":Ljava/util/concurrent/locks/ReentrantLock;
    .end local v1    # "$i$f$withLock":I
    :cond_1
    const/4 v0, 0x0

    .line 104
    .local v0, "$i$a$-check-FileHandle$resize$1":I
    nop

    .end local v0    # "$i$a$-check-FileHandle$resize$1":I
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "file handle is read-only"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final sink(J)Lokio/Sink;
    .locals 6
    .param p1, "fileOffset"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "fileOffset"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 220
    iget-boolean v0, p0, Lokio/FileHandle;->readWrite:Z

    if-eqz v0, :cond_1

    .line 221
    iget-object v0, p0, Lokio/FileHandle;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .local v0, "$this$withLock$iv":Ljava/util/concurrent/locks/ReentrantLock;
    const/4 v1, 0x0

    .line 457
    .local v1, "$i$f$withLock":I
    move-object v2, v0

    check-cast v2, Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->lock()V

    const/4 v3, 0x0

    .line 222
    .local v3, "$i$a$-withLock-FileHandle$sink$2":I
    :try_start_0
    iget-boolean v4, p0, Lokio/FileHandle;->closed:Z

    if-nez v4, :cond_0

    .line 223
    iget v4, p0, Lokio/FileHandle;->openStreamCount:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lokio/FileHandle;->openStreamCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 457
    .end local v3    # "$i$a$-withLock-FileHandle$sink$2":I
    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 225
    .end local v0    # "$this$withLock$iv":Ljava/util/concurrent/locks/ReentrantLock;
    .end local v1    # "$i$f$withLock":I
    new-instance v0, Lokio/FileHandle$FileHandleSink;

    invoke-direct {v0, p0, p1, p2}, Lokio/FileHandle$FileHandleSink;-><init>(Lokio/FileHandle;J)V

    check-cast v0, Lokio/Sink;

    return-object v0

    .line 446
    .restart local v0    # "$this$withLock$iv":Ljava/util/concurrent/locks/ReentrantLock;
    .restart local v1    # "$i$f$withLock":I
    .restart local v3    # "$i$a$-withLock-FileHandle$sink$2":I
    :cond_0
    const/4 v4, 0x0

    .line 222
    .local v4, "$i$a$-check-FileHandle$sink$2$1":I
    :try_start_1
    const-string v5, "closed"

    .end local v4    # "$i$a$-check-FileHandle$sink$2$1":I
    new-instance v4, Ljava/lang/IllegalStateException;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v0    # "$this$withLock$iv":Ljava/util/concurrent/locks/ReentrantLock;
    .end local v1    # "$i$f$withLock":I
    .end local p1    # "fileOffset":J
    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 457
    .end local v3    # "$i$a$-withLock-FileHandle$sink$2":I
    .restart local v0    # "$this$withLock$iv":Ljava/util/concurrent/locks/ReentrantLock;
    .restart local v1    # "$i$f$withLock":I
    .restart local p1    # "fileOffset":J
    :catchall_0
    move-exception v3

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v3

    .line 446
    .end local v0    # "$this$withLock$iv":Ljava/util/concurrent/locks/ReentrantLock;
    .end local v1    # "$i$f$withLock":I
    :cond_1
    const/4 v0, 0x0

    .line 220
    .local v0, "$i$a$-check-FileHandle$sink$1":I
    nop

    .end local v0    # "$i$a$-check-FileHandle$sink$1":I
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "file handle is read-only"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final size()J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 92
    iget-object v0, p0, Lokio/FileHandle;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .local v0, "$this$withLock$iv":Ljava/util/concurrent/locks/ReentrantLock;
    const/4 v1, 0x0

    .line 448
    .local v1, "$i$f$withLock":I
    move-object v2, v0

    check-cast v2, Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->lock()V

    const/4 v3, 0x0

    .line 93
    .local v3, "$i$a$-withLock-FileHandle$size$1":I
    :try_start_0
    iget-boolean v4, p0, Lokio/FileHandle;->closed:Z

    if-nez v4, :cond_0

    .line 94
    nop

    .end local v3    # "$i$a$-withLock-FileHandle$size$1":I
    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 448
    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 95
    .end local v0    # "$this$withLock$iv":Ljava/util/concurrent/locks/ReentrantLock;
    .end local v1    # "$i$f$withLock":I
    invoke-virtual {p0}, Lokio/FileHandle;->protectedSize()J

    move-result-wide v0

    return-wide v0

    .line 446
    .restart local v0    # "$this$withLock$iv":Ljava/util/concurrent/locks/ReentrantLock;
    .restart local v1    # "$i$f$withLock":I
    .restart local v3    # "$i$a$-withLock-FileHandle$size$1":I
    :cond_0
    const/4 v4, 0x0

    .line 93
    .local v4, "$i$a$-check-FileHandle$size$1$1":I
    :try_start_1
    const-string v5, "closed"

    .end local v4    # "$i$a$-check-FileHandle$size$1$1":I
    new-instance v4, Ljava/lang/IllegalStateException;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v0    # "$this$withLock$iv":Ljava/util/concurrent/locks/ReentrantLock;
    .end local v1    # "$i$f$withLock":I
    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 448
    .end local v3    # "$i$a$-withLock-FileHandle$size$1":I
    .restart local v0    # "$this$withLock$iv":Ljava/util/concurrent/locks/ReentrantLock;
    .restart local v1    # "$i$f$withLock":I
    :catchall_0
    move-exception v3

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v3
.end method

.method public final source(J)Lokio/Source;
    .locals 6
    .param p1, "fileOffset"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "fileOffset"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 151
    iget-object v0, p0, Lokio/FileHandle;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .local v0, "$this$withLock$iv":Ljava/util/concurrent/locks/ReentrantLock;
    const/4 v1, 0x0

    .line 453
    .local v1, "$i$f$withLock":I
    move-object v2, v0

    check-cast v2, Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->lock()V

    const/4 v3, 0x0

    .line 152
    .local v3, "$i$a$-withLock-FileHandle$source$1":I
    :try_start_0
    iget-boolean v4, p0, Lokio/FileHandle;->closed:Z

    if-nez v4, :cond_0

    .line 153
    iget v4, p0, Lokio/FileHandle;->openStreamCount:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lokio/FileHandle;->openStreamCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 453
    .end local v3    # "$i$a$-withLock-FileHandle$source$1":I
    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 155
    .end local v0    # "$this$withLock$iv":Ljava/util/concurrent/locks/ReentrantLock;
    .end local v1    # "$i$f$withLock":I
    new-instance v0, Lokio/FileHandle$FileHandleSource;

    invoke-direct {v0, p0, p1, p2}, Lokio/FileHandle$FileHandleSource;-><init>(Lokio/FileHandle;J)V

    check-cast v0, Lokio/Source;

    return-object v0

    .line 446
    .restart local v0    # "$this$withLock$iv":Ljava/util/concurrent/locks/ReentrantLock;
    .restart local v1    # "$i$f$withLock":I
    .restart local v3    # "$i$a$-withLock-FileHandle$source$1":I
    :cond_0
    const/4 v4, 0x0

    .line 152
    .local v4, "$i$a$-check-FileHandle$source$1$1":I
    :try_start_1
    const-string v5, "closed"

    .end local v4    # "$i$a$-check-FileHandle$source$1$1":I
    new-instance v4, Ljava/lang/IllegalStateException;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v0    # "$this$withLock$iv":Ljava/util/concurrent/locks/ReentrantLock;
    .end local v1    # "$i$f$withLock":I
    .end local p1    # "fileOffset":J
    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 453
    .end local v3    # "$i$a$-withLock-FileHandle$source$1":I
    .restart local v0    # "$this$withLock$iv":Ljava/util/concurrent/locks/ReentrantLock;
    .restart local v1    # "$i$f$withLock":I
    .restart local p1    # "fileOffset":J
    :catchall_0
    move-exception v3

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v3
.end method

.method public final write(JLokio/Buffer;J)V
    .locals 6
    .param p1, "fileOffset"    # J
    .param p3, "source"    # Lokio/Buffer;
    .param p4, "byteCount"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "fileOffset",
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

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 128
    iget-boolean v0, p0, Lokio/FileHandle;->readWrite:Z

    if-eqz v0, :cond_1

    .line 129
    iget-object v1, p0, Lokio/FileHandle;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .local v1, "$this$withLock$iv":Ljava/util/concurrent/locks/ReentrantLock;
    const/4 v2, 0x0

    .line 451
    .local v2, "$i$f$withLock":I
    move-object v3, v1

    check-cast v3, Ljava/util/concurrent/locks/Lock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->lock()V

    const/4 v0, 0x0

    .line 130
    .local v0, "$i$a$-withLock-FileHandle$write$4":I
    :try_start_0
    iget-boolean v4, p0, Lokio/FileHandle;->closed:Z

    if-nez v4, :cond_0

    .line 131
    nop

    .end local v0    # "$i$a$-withLock-FileHandle$write$4":I
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 451
    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 132
    .end local v1    # "$this$withLock$iv":Ljava/util/concurrent/locks/ReentrantLock;
    .end local v2    # "$i$f$withLock":I
    invoke-direct/range {p0 .. p5}, Lokio/FileHandle;->writeNoCloseCheck(JLokio/Buffer;J)V

    .line 133
    return-void

    .line 446
    .restart local v0    # "$i$a$-withLock-FileHandle$write$4":I
    .restart local v1    # "$this$withLock$iv":Ljava/util/concurrent/locks/ReentrantLock;
    .restart local v2    # "$i$f$withLock":I
    :cond_0
    const/4 v4, 0x0

    .line 130
    .local v4, "$i$a$-check-FileHandle$write$4$1":I
    :try_start_1
    const-string v5, "closed"

    .end local v4    # "$i$a$-check-FileHandle$write$4$1":I
    new-instance v4, Ljava/lang/IllegalStateException;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v1    # "$this$withLock$iv":Ljava/util/concurrent/locks/ReentrantLock;
    .end local v2    # "$i$f$withLock":I
    .end local p1    # "fileOffset":J
    .end local p3    # "source":Lokio/Buffer;
    .end local p4    # "byteCount":J
    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 451
    .end local v0    # "$i$a$-withLock-FileHandle$write$4":I
    .restart local v1    # "$this$withLock$iv":Ljava/util/concurrent/locks/ReentrantLock;
    .restart local v2    # "$i$f$withLock":I
    .restart local p1    # "fileOffset":J
    .restart local p3    # "source":Lokio/Buffer;
    .restart local p4    # "byteCount":J
    :catchall_0
    move-exception v0

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0

    .line 446
    .end local v1    # "$this$withLock$iv":Ljava/util/concurrent/locks/ReentrantLock;
    .end local v2    # "$i$f$withLock":I
    :cond_1
    const/4 v0, 0x0

    .line 128
    .local v0, "$i$a$-check-FileHandle$write$3":I
    nop

    .end local v0    # "$i$a$-check-FileHandle$write$3":I
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "file handle is read-only"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final write(J[BII)V
    .locals 6
    .param p1, "fileOffset"    # J
    .param p3, "array"    # [B
    .param p4, "arrayOffset"    # I
    .param p5, "byteCount"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "fileOffset",
            "array",
            "arrayOffset",
            "byteCount"
        }
    .end annotation

    const-string v0, "array"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 118
    iget-boolean v0, p0, Lokio/FileHandle;->readWrite:Z

    if-eqz v0, :cond_1

    .line 119
    iget-object v1, p0, Lokio/FileHandle;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .local v1, "$this$withLock$iv":Ljava/util/concurrent/locks/ReentrantLock;
    const/4 v2, 0x0

    .line 450
    .local v2, "$i$f$withLock":I
    move-object v3, v1

    check-cast v3, Ljava/util/concurrent/locks/Lock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->lock()V

    const/4 v0, 0x0

    .line 120
    .local v0, "$i$a$-withLock-FileHandle$write$2":I
    :try_start_0
    iget-boolean v4, p0, Lokio/FileHandle;->closed:Z

    if-nez v4, :cond_0

    .line 121
    nop

    .end local v0    # "$i$a$-withLock-FileHandle$write$2":I
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 450
    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 122
    .end local v1    # "$this$withLock$iv":Ljava/util/concurrent/locks/ReentrantLock;
    .end local v2    # "$i$f$withLock":I
    invoke-virtual/range {p0 .. p5}, Lokio/FileHandle;->protectedWrite(J[BII)V

    return-void

    .line 446
    .restart local v0    # "$i$a$-withLock-FileHandle$write$2":I
    .restart local v1    # "$this$withLock$iv":Ljava/util/concurrent/locks/ReentrantLock;
    .restart local v2    # "$i$f$withLock":I
    :cond_0
    const/4 v4, 0x0

    .line 120
    .local v4, "$i$a$-check-FileHandle$write$2$1":I
    :try_start_1
    const-string v5, "closed"

    .end local v4    # "$i$a$-check-FileHandle$write$2$1":I
    new-instance v4, Ljava/lang/IllegalStateException;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v1    # "$this$withLock$iv":Ljava/util/concurrent/locks/ReentrantLock;
    .end local v2    # "$i$f$withLock":I
    .end local p1    # "fileOffset":J
    .end local p3    # "array":[B
    .end local p4    # "arrayOffset":I
    .end local p5    # "byteCount":I
    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 450
    .end local v0    # "$i$a$-withLock-FileHandle$write$2":I
    .restart local v1    # "$this$withLock$iv":Ljava/util/concurrent/locks/ReentrantLock;
    .restart local v2    # "$i$f$withLock":I
    .restart local p1    # "fileOffset":J
    .restart local p3    # "array":[B
    .restart local p4    # "arrayOffset":I
    .restart local p5    # "byteCount":I
    :catchall_0
    move-exception v0

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0

    .line 446
    .end local v1    # "$this$withLock$iv":Ljava/util/concurrent/locks/ReentrantLock;
    .end local v2    # "$i$f$withLock":I
    :cond_1
    const/4 v0, 0x0

    .line 118
    .local v0, "$i$a$-check-FileHandle$write$1":I
    nop

    .end local v0    # "$i$a$-check-FileHandle$write$1":I
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "file handle is read-only"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
