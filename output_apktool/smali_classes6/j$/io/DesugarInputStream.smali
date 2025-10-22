.class public final Lj$/io/DesugarInputStream;
.super Ljava/lang/Object;
.source "DesugarInputStream.java"


# static fields
.field private static final DEFAULT_BUFFER_SIZE:I = 0x2000


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static transferTo(Ljava/io/InputStream;Ljava/io/OutputStream;)J
    .locals 7
    .param p0, "in"    # Ljava/io/InputStream;
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 57
    const-string v0, "out"

    invoke-static {p1, v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 58
    const-wide/16 v0, 0x0

    .line 59
    .local v0, "transferred":J
    const/16 v2, 0x2000

    new-array v3, v2, [B

    .line 61
    .local v3, "buffer":[B
    :goto_0
    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v5

    move v6, v5

    .local v6, "read":I
    if-ltz v5, :cond_0

    .line 62
    invoke-virtual {p1, v3, v4, v6}, Ljava/io/OutputStream;->write([BII)V

    .line 63
    int-to-long v4, v6

    add-long/2addr v0, v4

    goto :goto_0

    .line 65
    :cond_0
    return-wide v0
.end method
