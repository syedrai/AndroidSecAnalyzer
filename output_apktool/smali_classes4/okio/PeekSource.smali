.class public final Lokio/PeekSource;
.super Ljava/lang/Object;
.source "PeekSource.kt"

# interfaces
.implements Lokio/Source;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPeekSource.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PeekSource.kt\nokio/PeekSource\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,74:1\n1#2:75\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\u0008\u0000\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0018\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u0011\u001a\u00020\u00072\u0006\u0010\u0012\u001a\u00020\u000fH\u0016J\u0008\u0010\u0013\u001a\u00020\u0014H\u0016J\u0008\u0010\u0015\u001a\u00020\u0016H\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0008\u001a\u0004\u0018\u00010\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\rX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u000fX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0017"
    }
    d2 = {
        "Lokio/PeekSource;",
        "Lokio/Source;",
        "upstream",
        "Lokio/BufferedSource;",
        "<init>",
        "(Lokio/BufferedSource;)V",
        "buffer",
        "Lokio/Buffer;",
        "expectedSegment",
        "Lokio/Segment;",
        "expectedPos",
        "",
        "closed",
        "",
        "pos",
        "",
        "read",
        "sink",
        "byteCount",
        "timeout",
        "Lokio/Timeout;",
        "close",
        "",
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
.field private final buffer:Lokio/Buffer;

.field private closed:Z

.field private expectedPos:I

.field private expectedSegment:Lokio/Segment;

.field private pos:J

.field private final upstream:Lokio/BufferedSource;


# direct methods
.method public constructor <init>(Lokio/BufferedSource;)V
    .locals 1
    .param p1, "upstream"    # Lokio/BufferedSource;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "upstream"
        }
    .end annotation

    const-string/jumbo v0, "upstream"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lokio/PeekSource;->upstream:Lokio/BufferedSource;

    .line 31
    iget-object v0, p0, Lokio/PeekSource;->upstream:Lokio/BufferedSource;

    invoke-interface {v0}, Lokio/BufferedSource;->getBuffer()Lokio/Buffer;

    move-result-object v0

    iput-object v0, p0, Lokio/PeekSource;->buffer:Lokio/Buffer;

    .line 32
    iget-object v0, p0, Lokio/PeekSource;->buffer:Lokio/Buffer;

    iget-object v0, v0, Lokio/Buffer;->head:Lokio/Segment;

    iput-object v0, p0, Lokio/PeekSource;->expectedSegment:Lokio/Segment;

    .line 33
    iget-object v0, p0, Lokio/PeekSource;->buffer:Lokio/Buffer;

    iget-object v0, v0, Lokio/Buffer;->head:Lokio/Segment;

    if-eqz v0, :cond_0

    iget v0, v0, Lokio/Segment;->pos:I

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    iput v0, p0, Lokio/PeekSource;->expectedPos:I

    .line 28
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 71
    const/4 v0, 0x1

    iput-boolean v0, p0, Lokio/PeekSource;->closed:Z

    .line 72
    return-void
.end method

.method public read(Lokio/Buffer;J)J
    .locals 8
    .param p1, "sink"    # Lokio/Buffer;
    .param p2, "byteCount"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "sink",
            "byteCount"
        }
    .end annotation

    const-string/jumbo v0, "sink"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    const/4 v0, 0x1

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    cmp-long v4, p2, v2

    if-ltz v4, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    if-eqz v4, :cond_8

    .line 40
    iget-boolean v4, p0, Lokio/PeekSource;->closed:Z

    if-nez v4, :cond_7

    .line 44
    iget-object v4, p0, Lokio/PeekSource;->expectedSegment:Lokio/Segment;

    if-eqz v4, :cond_2

    .line 45
    iget-object v4, p0, Lokio/PeekSource;->expectedSegment:Lokio/Segment;

    iget-object v5, p0, Lokio/PeekSource;->buffer:Lokio/Buffer;

    iget-object v5, v5, Lokio/Buffer;->head:Lokio/Segment;

    if-ne v4, v5, :cond_1

    iget v4, p0, Lokio/PeekSource;->expectedPos:I

    iget-object v5, p0, Lokio/PeekSource;->buffer:Lokio/Buffer;

    iget-object v5, v5, Lokio/Buffer;->head:Lokio/Segment;

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget v5, v5, Lokio/Segment;->pos:I

    if-ne v4, v5, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    nop

    .line 43
    :goto_2
    if-eqz v0, :cond_6

    .line 49
    cmp-long v0, p2, v2

    if-nez v0, :cond_3

    return-wide v2

    .line 50
    :cond_3
    iget-object v0, p0, Lokio/PeekSource;->upstream:Lokio/BufferedSource;

    iget-wide v1, p0, Lokio/PeekSource;->pos:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    invoke-interface {v0, v1, v2}, Lokio/BufferedSource;->request(J)Z

    move-result v0

    if-nez v0, :cond_4

    const-wide/16 v0, -0x1

    return-wide v0

    .line 52
    :cond_4
    iget-object v0, p0, Lokio/PeekSource;->expectedSegment:Lokio/Segment;

    if-nez v0, :cond_5

    iget-object v0, p0, Lokio/PeekSource;->buffer:Lokio/Buffer;

    iget-object v0, v0, Lokio/Buffer;->head:Lokio/Segment;

    if-eqz v0, :cond_5

    .line 56
    iget-object v0, p0, Lokio/PeekSource;->buffer:Lokio/Buffer;

    iget-object v0, v0, Lokio/Buffer;->head:Lokio/Segment;

    iput-object v0, p0, Lokio/PeekSource;->expectedSegment:Lokio/Segment;

    .line 57
    iget-object v0, p0, Lokio/PeekSource;->buffer:Lokio/Buffer;

    iget-object v0, v0, Lokio/Buffer;->head:Lokio/Segment;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget v0, v0, Lokio/Segment;->pos:I

    iput v0, p0, Lokio/PeekSource;->expectedPos:I

    .line 60
    :cond_5
    iget-object v0, p0, Lokio/PeekSource;->buffer:Lokio/Buffer;

    invoke-virtual {v0}, Lokio/Buffer;->size()J

    move-result-wide v0

    iget-wide v2, p0, Lokio/PeekSource;->pos:J

    sub-long/2addr v0, v2

    invoke-static {p2, p3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    .line 61
    .local v6, "toCopy":J
    iget-object v2, p0, Lokio/PeekSource;->buffer:Lokio/Buffer;

    iget-wide v4, p0, Lokio/PeekSource;->pos:J

    move-object v3, p1

    .end local p1    # "sink":Lokio/Buffer;
    .local v3, "sink":Lokio/Buffer;
    invoke-virtual/range {v2 .. v7}, Lokio/Buffer;->copyTo(Lokio/Buffer;JJ)Lokio/Buffer;

    .line 62
    iget-wide v0, p0, Lokio/PeekSource;->pos:J

    add-long/2addr v0, v6

    iput-wide v0, p0, Lokio/PeekSource;->pos:J

    .line 63
    return-wide v6

    .line 43
    .end local v3    # "sink":Lokio/Buffer;
    .end local v6    # "toCopy":J
    .restart local p1    # "sink":Lokio/Buffer;
    :cond_6
    move-object v3, p1

    .end local p1    # "sink":Lokio/Buffer;
    .restart local v3    # "sink":Lokio/Buffer;
    const/4 p1, 0x0

    .line 47
    .local p1, "$i$a$-check-PeekSource$read$3":I
    nop

    .line 43
    .end local p1    # "$i$a$-check-PeekSource$read$3":I
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Peek source is invalid because upstream source was used"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 75
    .end local v3    # "sink":Lokio/Buffer;
    .local p1, "sink":Lokio/Buffer;
    :cond_7
    move-object v3, p1

    .end local p1    # "sink":Lokio/Buffer;
    .restart local v3    # "sink":Lokio/Buffer;
    const/4 p1, 0x0

    .line 40
    .local p1, "$i$a$-check-PeekSource$read$2":I
    nop

    .end local p1    # "$i$a$-check-PeekSource$read$2":I
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "closed"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 75
    .end local v3    # "sink":Lokio/Buffer;
    .local p1, "sink":Lokio/Buffer;
    :cond_8
    move-object v3, p1

    .end local p1    # "sink":Lokio/Buffer;
    .restart local v3    # "sink":Lokio/Buffer;
    const/4 p1, 0x0

    .line 39
    .local p1, "$i$a$-require-PeekSource$read$1":I
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "byteCount < 0: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .end local p1    # "$i$a$-require-PeekSource$read$1":I
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public timeout()Lokio/Timeout;
    .locals 1

    .line 67
    iget-object v0, p0, Lokio/PeekSource;->upstream:Lokio/BufferedSource;

    invoke-interface {v0}, Lokio/BufferedSource;->timeout()Lokio/Timeout;

    move-result-object v0

    return-object v0
.end method
