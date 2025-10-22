.class Lj$/desugar/sun/nio/fs/DesugarFileChannel$WrappedFileChannelFileLock;
.super Ljava/nio/channels/FileLock;
.source "DesugarFileChannel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj$/desugar/sun/nio/fs/DesugarFileChannel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "WrappedFileChannelFileLock"
.end annotation


# instance fields
.field private final delegate:Ljava/nio/channels/FileLock;


# direct methods
.method constructor <init>(Ljava/nio/channels/FileLock;Lj$/desugar/sun/nio/fs/DesugarFileChannel$WrappedFileChannel;)V
    .locals 7
    .param p1, "delegate"    # Ljava/nio/channels/FileLock;
    .param p2, "wrappedFileChannel"    # Lj$/desugar/sun/nio/fs/DesugarFileChannel$WrappedFileChannel;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "delegate",
            "wrappedFileChannel"
        }
    .end annotation

    .line 275
    invoke-virtual {p1}, Ljava/nio/channels/FileLock;->position()J

    move-result-wide v2

    invoke-virtual {p1}, Ljava/nio/channels/FileLock;->size()J

    move-result-wide v4

    invoke-virtual {p1}, Ljava/nio/channels/FileLock;->isShared()Z

    move-result v6

    move-object v0, p0

    move-object v1, p2

    .end local p2    # "wrappedFileChannel":Lj$/desugar/sun/nio/fs/DesugarFileChannel$WrappedFileChannel;
    .local v1, "wrappedFileChannel":Lj$/desugar/sun/nio/fs/DesugarFileChannel$WrappedFileChannel;
    invoke-direct/range {v0 .. v6}, Ljava/nio/channels/FileLock;-><init>(Ljava/nio/channels/FileChannel;JJZ)V

    .line 276
    iput-object p1, v0, Lj$/desugar/sun/nio/fs/DesugarFileChannel$WrappedFileChannelFileLock;->delegate:Ljava/nio/channels/FileLock;

    .line 277
    return-void
.end method


# virtual methods
.method public isValid()Z
    .locals 1

    .line 281
    iget-object v0, p0, Lj$/desugar/sun/nio/fs/DesugarFileChannel$WrappedFileChannelFileLock;->delegate:Ljava/nio/channels/FileLock;

    invoke-virtual {v0}, Ljava/nio/channels/FileLock;->isValid()Z

    move-result v0

    return v0
.end method

.method public release()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 286
    iget-object v0, p0, Lj$/desugar/sun/nio/fs/DesugarFileChannel$WrappedFileChannelFileLock;->delegate:Ljava/nio/channels/FileLock;

    invoke-virtual {v0}, Ljava/nio/channels/FileLock;->release()V

    .line 287
    return-void
.end method
