.class Lorg/bouncycastle/cms/jcajce/ZlibExpanderProvider$LimitedInputStream;
.super Ljava/io/FilterInputStream;
.source "ZlibExpanderProvider.java"

# interfaces
.implements Lj$/io/InputStreamRetargetInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/cms/jcajce/ZlibExpanderProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LimitedInputStream"
.end annotation


# instance fields
.field private remaining:J


# direct methods
.method public constructor <init>(Ljava/io/InputStream;J)V
    .locals 0
    .param p1, "input"    # Ljava/io/InputStream;
    .param p2, "limit"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "input",
            "limit"
        }
    .end annotation

    .line 65
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 67
    iput-wide p2, p0, Lorg/bouncycastle/cms/jcajce/ZlibExpanderProvider$LimitedInputStream;->remaining:J

    .line 68
    return-void
.end method


# virtual methods
.method public read()I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 74
    iget-wide v0, p0, Lorg/bouncycastle/cms/jcajce/ZlibExpanderProvider$LimitedInputStream;->remaining:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-ltz v4, :cond_1

    .line 76
    iget-object v0, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 77
    .local v0, "b":I
    if-ltz v0, :cond_0

    iget-wide v4, p0, Lorg/bouncycastle/cms/jcajce/ZlibExpanderProvider$LimitedInputStream;->remaining:J

    const-wide/16 v6, 0x1

    sub-long/2addr v4, v6

    iput-wide v4, p0, Lorg/bouncycastle/cms/jcajce/ZlibExpanderProvider$LimitedInputStream;->remaining:J

    cmp-long v1, v4, v2

    if-ltz v1, :cond_1

    .line 79
    :cond_0
    return v0

    .line 83
    .end local v0    # "b":I
    :cond_1
    new-instance v0, Lorg/bouncycastle/util/io/StreamOverflowException;

    const-string v1, "expanded byte limit exceeded"

    invoke-direct {v0, v1}, Lorg/bouncycastle/util/io/StreamOverflowException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public read([BII)I
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

    .line 89
    const/4 v0, 0x1

    if-ge p3, v0, :cond_0

    .line 92
    invoke-super {p0, p1, p2, p3}, Ljava/io/FilterInputStream;->read([BII)I

    move-result v0

    return v0

    .line 95
    :cond_0
    iget-wide v0, p0, Lorg/bouncycastle/cms/jcajce/ZlibExpanderProvider$LimitedInputStream;->remaining:J

    const-wide/16 v2, 0x1

    cmp-long v4, v0, v2

    if-gez v4, :cond_1

    .line 98
    invoke-virtual {p0}, Lorg/bouncycastle/cms/jcajce/ZlibExpanderProvider$LimitedInputStream;->read()I

    .line 99
    const/4 v0, -0x1

    return v0

    .line 107
    :cond_1
    iget-wide v0, p0, Lorg/bouncycastle/cms/jcajce/ZlibExpanderProvider$LimitedInputStream;->remaining:J

    int-to-long v2, p3

    cmp-long v4, v0, v2

    if-lez v4, :cond_2

    move v1, p3

    goto :goto_0

    :cond_2
    iget-wide v0, p0, Lorg/bouncycastle/cms/jcajce/ZlibExpanderProvider$LimitedInputStream;->remaining:J

    long-to-int v1, v0

    .line 108
    .local v1, "actualLen":I
    :goto_0
    iget-object v0, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 109
    .local v0, "numRead":I
    if-lez v0, :cond_3

    .line 111
    iget-wide v2, p0, Lorg/bouncycastle/cms/jcajce/ZlibExpanderProvider$LimitedInputStream;->remaining:J

    int-to-long v4, v0

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lorg/bouncycastle/cms/jcajce/ZlibExpanderProvider$LimitedInputStream;->remaining:J

    .line 113
    :cond_3
    return v0
.end method

.method public synthetic transferTo(Ljava/io/OutputStream;)J
    .locals 2

    invoke-static {p0, p1}, Lj$/io/DesugarInputStream;->transferTo(Ljava/io/InputStream;Ljava/io/OutputStream;)J

    move-result-wide v0

    return-wide v0
.end method
