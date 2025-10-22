.class final Lcom/google/common/hash/HighwayHashFunction;
.super Lcom/google/common/hash/AbstractHashFunction;
.source "HighwayHashFunction.java"


# annotations
.annotation runtime Lcom/google/errorprone/annotations/Immutable;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/hash/HighwayHashFunction$BitLength;,
        Lcom/google/common/hash/HighwayHashFunction$HighwayHashHasher;
    }
.end annotation


# instance fields
.field private final bitLength:Lcom/google/common/hash/HighwayHashFunction$BitLength;

.field private final key0:J

.field private final key1:J

.field private final key2:J

.field private final key3:J


# direct methods
.method constructor <init>(Lcom/google/common/hash/HighwayHashFunction$BitLength;JJJJ)V
    .locals 1
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

    .line 80
    invoke-direct {p0}, Lcom/google/common/hash/AbstractHashFunction;-><init>()V

    .line 81
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/hash/HighwayHashFunction$BitLength;

    iput-object v0, p0, Lcom/google/common/hash/HighwayHashFunction;->bitLength:Lcom/google/common/hash/HighwayHashFunction$BitLength;

    .line 82
    iput-wide p2, p0, Lcom/google/common/hash/HighwayHashFunction;->key0:J

    .line 83
    iput-wide p4, p0, Lcom/google/common/hash/HighwayHashFunction;->key1:J

    .line 84
    iput-wide p6, p0, Lcom/google/common/hash/HighwayHashFunction;->key2:J

    .line 85
    iput-wide p8, p0, Lcom/google/common/hash/HighwayHashFunction;->key3:J

    .line 86
    return-void
.end method


# virtual methods
.method public bits()I
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/google/common/hash/HighwayHashFunction;->bitLength:Lcom/google/common/hash/HighwayHashFunction$BitLength;

    invoke-virtual {v0}, Lcom/google/common/hash/HighwayHashFunction$BitLength;->bits()I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "object"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "object"
        }
    .end annotation

    .line 106
    instance-of v0, p1, Lcom/google/common/hash/HighwayHashFunction;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 107
    move-object v0, p1

    check-cast v0, Lcom/google/common/hash/HighwayHashFunction;

    .line 108
    .local v0, "that":Lcom/google/common/hash/HighwayHashFunction;
    iget-object v2, p0, Lcom/google/common/hash/HighwayHashFunction;->bitLength:Lcom/google/common/hash/HighwayHashFunction$BitLength;

    iget-object v3, v0, Lcom/google/common/hash/HighwayHashFunction;->bitLength:Lcom/google/common/hash/HighwayHashFunction$BitLength;

    if-ne v2, v3, :cond_0

    iget-wide v2, p0, Lcom/google/common/hash/HighwayHashFunction;->key0:J

    iget-wide v4, v0, Lcom/google/common/hash/HighwayHashFunction;->key0:J

    cmp-long v6, v2, v4

    if-nez v6, :cond_0

    iget-wide v2, p0, Lcom/google/common/hash/HighwayHashFunction;->key1:J

    iget-wide v4, v0, Lcom/google/common/hash/HighwayHashFunction;->key1:J

    cmp-long v6, v2, v4

    if-nez v6, :cond_0

    iget-wide v2, p0, Lcom/google/common/hash/HighwayHashFunction;->key2:J

    iget-wide v4, v0, Lcom/google/common/hash/HighwayHashFunction;->key2:J

    cmp-long v6, v2, v4

    if-nez v6, :cond_0

    iget-wide v2, p0, Lcom/google/common/hash/HighwayHashFunction;->key3:J

    iget-wide v4, v0, Lcom/google/common/hash/HighwayHashFunction;->key3:J

    cmp-long v6, v2, v4

    if-nez v6, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    .line 114
    .end local v0    # "that":Lcom/google/common/hash/HighwayHashFunction;
    :cond_1
    return v1
.end method

.method public hashCode()I
    .locals 4

    .line 119
    iget-object v0, p0, Lcom/google/common/hash/HighwayHashFunction;->bitLength:Lcom/google/common/hash/HighwayHashFunction$BitLength;

    invoke-virtual {v0}, Lcom/google/common/hash/HighwayHashFunction$BitLength;->hashCode()I

    move-result v0

    int-to-long v0, v0

    iget-wide v2, p0, Lcom/google/common/hash/HighwayHashFunction;->key0:J

    xor-long/2addr v0, v2

    iget-wide v2, p0, Lcom/google/common/hash/HighwayHashFunction;->key1:J

    xor-long/2addr v0, v2

    iget-wide v2, p0, Lcom/google/common/hash/HighwayHashFunction;->key2:J

    xor-long/2addr v0, v2

    iget-wide v2, p0, Lcom/google/common/hash/HighwayHashFunction;->key3:J

    xor-long/2addr v0, v2

    long-to-int v1, v0

    return v1
.end method

.method public newHasher()Lcom/google/common/hash/Hasher;
    .locals 10

    .line 101
    new-instance v0, Lcom/google/common/hash/HighwayHashFunction$HighwayHashHasher;

    iget-object v1, p0, Lcom/google/common/hash/HighwayHashFunction;->bitLength:Lcom/google/common/hash/HighwayHashFunction$BitLength;

    iget-wide v2, p0, Lcom/google/common/hash/HighwayHashFunction;->key0:J

    iget-wide v4, p0, Lcom/google/common/hash/HighwayHashFunction;->key1:J

    iget-wide v6, p0, Lcom/google/common/hash/HighwayHashFunction;->key2:J

    iget-wide v8, p0, Lcom/google/common/hash/HighwayHashFunction;->key3:J

    invoke-direct/range {v0 .. v9}, Lcom/google/common/hash/HighwayHashFunction$HighwayHashHasher;-><init>(Lcom/google/common/hash/HighwayHashFunction$BitLength;JJJJ)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    .line 95
    iget-object v0, p0, Lcom/google/common/hash/HighwayHashFunction;->bitLength:Lcom/google/common/hash/HighwayHashFunction$BitLength;

    .line 96
    invoke-virtual {v0}, Lcom/google/common/hash/HighwayHashFunction$BitLength;->bits()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-wide v1, p0, Lcom/google/common/hash/HighwayHashFunction;->key0:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget-wide v2, p0, Lcom/google/common/hash/HighwayHashFunction;->key1:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget-wide v3, p0, Lcom/google/common/hash/HighwayHashFunction;->key2:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iget-wide v4, p0, Lcom/google/common/hash/HighwayHashFunction;->key3:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/4 v5, 0x5

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    const/4 v0, 0x1

    aput-object v1, v5, v0

    const/4 v0, 0x2

    aput-object v2, v5, v0

    const/4 v0, 0x3

    aput-object v3, v5, v0

    const/4 v0, 0x4

    aput-object v4, v5, v0

    .line 95
    const-string v0, "Hashing.highwayHash%s(%s, %s, %s, %s)"

    invoke-static {v0, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
