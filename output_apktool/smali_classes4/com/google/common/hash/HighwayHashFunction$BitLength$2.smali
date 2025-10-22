.class final enum Lcom/google/common/hash/HighwayHashFunction$BitLength$2;
.super Lcom/google/common/hash/HighwayHashFunction$BitLength;
.source "HighwayHashFunction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/hash/HighwayHashFunction$BitLength;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4010
    name = null
.end annotation


# direct methods
.method private constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "$enum$name",
            "$enum$ordinal"
        }
    .end annotation

    .line 36
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/common/hash/HighwayHashFunction$BitLength;-><init>(Ljava/lang/String;ILcom/google/common/hash/HighwayHashFunction-IA;)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILcom/google/common/hash/HighwayHashFunction-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/common/hash/HighwayHashFunction$BitLength$2;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method bits()I
    .locals 1

    .line 39
    const/16 v0, 0x80

    return v0
.end method

.method makeHash(Lcom/google/highwayhash/HighwayHash;)Lcom/google/common/hash/HashCode;
    .locals 7
    .param p1, "hash"    # Lcom/google/highwayhash/HighwayHash;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "hash"
        }
    .end annotation

    .line 44
    invoke-virtual {p1}, Lcom/google/highwayhash/HighwayHash;->finalize128()[J

    move-result-object v0

    .line 45
    .local v0, "longs":[J
    array-length v1, v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x2

    if-ne v1, v4, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v5, "expected 2 longs, but got %s"

    array-length v6, v0

    invoke-static {v1, v5, v6}, Lcom/google/common/base/Verify;->verify(ZLjava/lang/String;I)V

    .line 46
    aget-wide v5, v0, v3

    .line 47
    invoke-static {v5, v6}, Lcom/google/common/primitives/Longs;->toByteArray(J)[B

    move-result-object v1

    aget-wide v5, v0, v2

    invoke-static {v5, v6}, Lcom/google/common/primitives/Longs;->toByteArray(J)[B

    move-result-object v5

    new-array v4, v4, [[B

    aput-object v1, v4, v3

    aput-object v5, v4, v2

    invoke-static {v4}, Lcom/google/common/primitives/Bytes;->concat([[B)[B

    move-result-object v1

    .line 46
    invoke-static {v1}, Lcom/google/common/hash/HashCode;->fromBytesNoCopy([B)Lcom/google/common/hash/HashCode;

    move-result-object v1

    return-object v1
.end method
