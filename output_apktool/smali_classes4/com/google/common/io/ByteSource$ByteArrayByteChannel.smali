.class final Lcom/google/common/io/ByteSource$ByteArrayByteChannel;
.super Ljava/lang/Object;
.source "ByteSource.java"

# interfaces
.implements Ljava/nio/channels/SeekableByteChannel;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/io/ByteSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ByteArrayByteChannel"
.end annotation


# instance fields
.field private bytes:[B

.field private final length:I

.field private final lock:Lcom/google/common/base/XplatMonitor;

.field private final offset:I

.field private position:I


# direct methods
.method constructor <init>([BII)V
    .locals 1
    .param p1, "bytes"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "bytes",
            "offset",
            "length"
        }
    .end annotation

    .line 692
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 683
    new-instance v0, Lcom/google/common/base/XplatMonitor;

    invoke-direct {v0}, Lcom/google/common/base/XplatMonitor;-><init>()V

    iput-object v0, p0, Lcom/google/common/io/ByteSource$ByteArrayByteChannel;->lock:Lcom/google/common/base/XplatMonitor;

    .line 693
    iput-object p1, p0, Lcom/google/common/io/ByteSource$ByteArrayByteChannel;->bytes:[B

    .line 694
    iput p2, p0, Lcom/google/common/io/ByteSource$ByteArrayByteChannel;->offset:I

    .line 695
    iput p3, p0, Lcom/google/common/io/ByteSource$ByteArrayByteChannel;->length:I

    .line 696
    return-void
.end method

.method private checkOpen()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 765
    invoke-virtual {p0}, Lcom/google/common/io/ByteSource$ByteArrayByteChannel;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 768
    return-void

    .line 766
    :cond_0
    new-instance v0, Ljava/nio/channels/ClosedChannelException;

    invoke-direct {v0}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    throw v0
.end method


# virtual methods
.method public close()V
    .locals 2

    .line 772
    iget-object v0, p0, Lcom/google/common/io/ByteSource$ByteArrayByteChannel;->lock:Lcom/google/common/base/XplatMonitor;

    monitor-enter v0

    .line 773
    const/4 v1, 0x0

    :try_start_0
    iput-object v1, p0, Lcom/google/common/io/ByteSource$ByteArrayByteChannel;->bytes:[B

    .line 774
    monitor-exit v0

    .line 775
    return-void

    .line 774
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isOpen()Z
    .locals 2

    .line 759
    iget-object v0, p0, Lcom/google/common/io/ByteSource$ByteArrayByteChannel;->lock:Lcom/google/common/base/XplatMonitor;

    monitor-enter v0

    .line 760
    :try_start_0
    iget-object v1, p0, Lcom/google/common/io/ByteSource$ByteArrayByteChannel;->bytes:[B

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    .line 761
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public position()J
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 724
    invoke-direct {p0}, Lcom/google/common/io/ByteSource$ByteArrayByteChannel;->checkOpen()V

    .line 725
    iget-object v0, p0, Lcom/google/common/io/ByteSource$ByteArrayByteChannel;->lock:Lcom/google/common/base/XplatMonitor;

    monitor-enter v0

    .line 727
    :try_start_0
    iget v1, p0, Lcom/google/common/io/ByteSource$ByteArrayByteChannel;->position:I

    int-to-long v1, v1

    monitor-exit v0

    return-wide v1

    .line 728
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public position(J)Lcom/google/common/io/ByteSource$ByteArrayByteChannel;
    .locals 3
    .param p1, "newPosition"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "newPosition"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 734
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "New position is negative: %s"

    invoke-static {v0, v1, p1, p2}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;J)V

    .line 735
    invoke-direct {p0}, Lcom/google/common/io/ByteSource$ByteArrayByteChannel;->checkOpen()V

    .line 736
    iget-object v0, p0, Lcom/google/common/io/ByteSource$ByteArrayByteChannel;->lock:Lcom/google/common/base/XplatMonitor;

    monitor-enter v0

    .line 741
    :try_start_0
    invoke-static {p1, p2}, Lcom/google/common/primitives/Ints;->saturatedCast(J)I

    move-result v1

    iput v1, p0, Lcom/google/common/io/ByteSource$ByteArrayByteChannel;->position:I

    .line 742
    monitor-exit v0

    .line 743
    return-object p0

    .line 742
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public bridge synthetic position(J)Ljava/nio/channels/SeekableByteChannel;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "newPosition"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 678
    invoke-virtual {p0, p1, p2}, Lcom/google/common/io/ByteSource$ByteArrayByteChannel;->position(J)Lcom/google/common/io/ByteSource$ByteArrayByteChannel;

    move-result-object p1

    return-object p1
.end method

.method public read(Ljava/nio/ByteBuffer;)I
    .locals 7
    .param p1, "dst"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dst"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 700
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    .line 701
    .local v0, "remainingInBuffer":I
    iget-object v1, p0, Lcom/google/common/io/ByteSource$ByteArrayByteChannel;->lock:Lcom/google/common/base/XplatMonitor;

    monitor-enter v1

    .line 702
    :try_start_0
    iget-object v2, p0, Lcom/google/common/io/ByteSource$ByteArrayByteChannel;->bytes:[B

    if-eqz v2, :cond_1

    .line 706
    iget v2, p0, Lcom/google/common/io/ByteSource$ByteArrayByteChannel;->length:I

    iget v3, p0, Lcom/google/common/io/ByteSource$ByteArrayByteChannel;->position:I

    sub-int/2addr v2, v3

    const/4 v3, 0x0

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 707
    .local v2, "remainingToRead":I
    if-nez v2, :cond_0

    .line 708
    monitor-exit v1

    const/4 v1, -0x1

    return v1

    .line 710
    :cond_0
    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 711
    .local v3, "toRead":I
    iget-object v4, p0, Lcom/google/common/io/ByteSource$ByteArrayByteChannel;->bytes:[B

    iget v5, p0, Lcom/google/common/io/ByteSource$ByteArrayByteChannel;->offset:I

    iget v6, p0, Lcom/google/common/io/ByteSource$ByteArrayByteChannel;->position:I

    add-int/2addr v5, v6

    invoke-virtual {p1, v4, v5, v3}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 712
    iget v4, p0, Lcom/google/common/io/ByteSource$ByteArrayByteChannel;->position:I

    add-int/2addr v4, v3

    iput v4, p0, Lcom/google/common/io/ByteSource$ByteArrayByteChannel;->position:I

    .line 713
    monitor-exit v1

    return v3

    .line 703
    .end local v2    # "remainingToRead":I
    .end local v3    # "toRead":I
    :cond_1
    new-instance v2, Ljava/nio/channels/ClosedChannelException;

    invoke-direct {v2}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    .end local v0    # "remainingInBuffer":I
    .end local p1    # "dst":Ljava/nio/ByteBuffer;
    throw v2

    .line 714
    .restart local v0    # "remainingInBuffer":I
    .restart local p1    # "dst":Ljava/nio/ByteBuffer;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public size()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 748
    invoke-direct {p0}, Lcom/google/common/io/ByteSource$ByteArrayByteChannel;->checkOpen()V

    .line 749
    iget v0, p0, Lcom/google/common/io/ByteSource$ByteArrayByteChannel;->length:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public truncate(J)Ljava/nio/channels/SeekableByteChannel;
    .locals 1
    .param p1, "size"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "size"
        }
    .end annotation

    .line 754
    new-instance v0, Ljava/nio/channels/NonWritableChannelException;

    invoke-direct {v0}, Ljava/nio/channels/NonWritableChannelException;-><init>()V

    throw v0
.end method

.method public write(Ljava/nio/ByteBuffer;)I
    .locals 1
    .param p1, "dst"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dst"
        }
    .end annotation

    .line 719
    new-instance v0, Ljava/nio/channels/NonWritableChannelException;

    invoke-direct {v0}, Ljava/nio/channels/NonWritableChannelException;-><init>()V

    throw v0
.end method
