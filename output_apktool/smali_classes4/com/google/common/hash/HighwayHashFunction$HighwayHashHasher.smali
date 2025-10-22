.class final Lcom/google/common/hash/HighwayHashFunction$HighwayHashHasher;
.super Lcom/google/common/hash/AbstractStreamingHasher;
.source "HighwayHashFunction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/hash/HighwayHashFunction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "HighwayHashHasher"
.end annotation


# instance fields
.field private final bitLength:Lcom/google/common/hash/HighwayHashFunction$BitLength;

.field private final hash:Lcom/google/highwayhash/HighwayHash;


# direct methods
.method constructor <init>(Lcom/google/common/hash/HighwayHashFunction$BitLength;JJJJ)V
    .locals 10
    .param p1, "bitLength"    # Lcom/google/common/hash/HighwayHashFunction$BitLength;
    .param p2, "key0"    # J
    .param p4, "key1"    # J
    .param p6, "key2"    # J
    .param p8, "key3"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "bitLength",
            "key0",
            "key1",
            "key2",
            "key3"
        }
    .end annotation

    .line 127
    const/16 v0, 0x20

    invoke-direct {p0, v0}, Lcom/google/common/hash/AbstractStreamingHasher;-><init>(I)V

    .line 128
    iput-object p1, p0, Lcom/google/common/hash/HighwayHashFunction$HighwayHashHasher;->bitLength:Lcom/google/common/hash/HighwayHashFunction$BitLength;

    .line 129
    new-instance v1, Lcom/google/highwayhash/HighwayHash;

    move-wide v2, p2

    move-wide v4, p4

    move-wide/from16 v6, p6

    move-wide/from16 v8, p8

    invoke-direct/range {v1 .. v9}, Lcom/google/highwayhash/HighwayHash;-><init>(JJJJ)V

    iput-object v1, p0, Lcom/google/common/hash/HighwayHashFunction$HighwayHashHasher;->hash:Lcom/google/highwayhash/HighwayHash;

    .line 130
    return-void
.end method


# virtual methods
.method protected makeHash()Lcom/google/common/hash/HashCode;
    .locals 2

    .line 152
    iget-object v0, p0, Lcom/google/common/hash/HighwayHashFunction$HighwayHashHasher;->bitLength:Lcom/google/common/hash/HighwayHashFunction$BitLength;

    iget-object v1, p0, Lcom/google/common/hash/HighwayHashFunction$HighwayHashHasher;->hash:Lcom/google/highwayhash/HighwayHash;

    invoke-virtual {v0, v1}, Lcom/google/common/hash/HighwayHashFunction$BitLength;->makeHash(Lcom/google/highwayhash/HighwayHash;)Lcom/google/common/hash/HashCode;

    move-result-object v0

    return-object v0
.end method

.method protected process(Ljava/nio/ByteBuffer;)V
    .locals 12
    .param p1, "bb"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bb"
        }
    .end annotation

    .line 134
    nop

    .line 135
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 137
    :goto_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v1

    .line 134
    const-string v2, "ByteBuffer order (%s) must be little endian"

    invoke-static {v0, v2, v1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 138
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v4

    .line 139
    .local v4, "a0":J
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v6

    .line 140
    .local v6, "a1":J
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v8

    .line 141
    .local v8, "a2":J
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v10

    .line 142
    .local v10, "a3":J
    iget-object v3, p0, Lcom/google/common/hash/HighwayHashFunction$HighwayHashHasher;->hash:Lcom/google/highwayhash/HighwayHash;

    invoke-virtual/range {v3 .. v11}, Lcom/google/highwayhash/HighwayHash;->update(JJJJ)V

    .line 143
    return-void
.end method

.method protected processRemaining(Ljava/nio/ByteBuffer;)V
    .locals 4
    .param p1, "bb"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bb"
        }
    .end annotation

    .line 147
    iget-object v0, p0, Lcom/google/common/hash/HighwayHashFunction$HighwayHashHasher;->hash:Lcom/google/highwayhash/HighwayHash;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/highwayhash/HighwayHash;->updateRemainder([BII)V

    .line 148
    return-void
.end method
