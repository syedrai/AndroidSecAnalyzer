.class Lorg/bouncycastle/asn1/StreamUtil;
.super Ljava/lang/Object;
.source "StreamUtil.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static findLimit(Ljava/io/InputStream;)I
    .locals 6
    .param p0, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "in"
        }
    .end annotation

    .line 19
    instance-of v0, p0, Lorg/bouncycastle/asn1/LimitedInputStream;

    if-eqz v0, :cond_0

    .line 21
    move-object v0, p0

    check-cast v0, Lorg/bouncycastle/asn1/LimitedInputStream;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/LimitedInputStream;->getLimit()I

    move-result v0

    return v0

    .line 23
    :cond_0
    instance-of v0, p0, Lorg/bouncycastle/asn1/ASN1InputStream;

    if-eqz v0, :cond_1

    .line 25
    move-object v0, p0

    check-cast v0, Lorg/bouncycastle/asn1/ASN1InputStream;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1InputStream;->getLimit()I

    move-result v0

    return v0

    .line 27
    :cond_1
    instance-of v0, p0, Ljava/io/ByteArrayInputStream;

    if-eqz v0, :cond_2

    .line 29
    move-object v0, p0

    check-cast v0, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v0

    return v0

    .line 31
    :cond_2
    instance-of v0, p0, Ljava/io/FileInputStream;

    const-wide/32 v1, 0x7fffffff

    if-eqz v0, :cond_5

    .line 35
    :try_start_0
    move-object v0, p0

    check-cast v0, Ljava/io/FileInputStream;

    invoke-static {v0}, Lcom/google/common/io/Files$FileByteSource$$ExternalSyntheticAPIConversion0;->m(Ljava/io/FileInputStream;)Ljava/nio/channels/FileChannel;

    move-result-object v0

    .line 36
    .local v0, "channel":Ljava/nio/channels/FileChannel;
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_3
    move-wide v3, v1

    .line 38
    .local v3, "size":J
    :goto_0
    cmp-long v5, v3, v1

    if-gez v5, :cond_4

    .line 40
    long-to-int v1, v3

    return v1

    .line 46
    .end local v0    # "channel":Ljava/nio/channels/FileChannel;
    .end local v3    # "size":J
    :cond_4
    goto :goto_1

    .line 43
    :catch_0
    move-exception v0

    .line 49
    :cond_5
    :goto_1
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v3

    .line 50
    .local v3, "maxMemory":J
    cmp-long v0, v3, v1

    if-lez v0, :cond_6

    .line 52
    const v0, 0x7fffffff

    return v0

    .line 55
    :cond_6
    long-to-int v0, v3

    return v0
.end method
