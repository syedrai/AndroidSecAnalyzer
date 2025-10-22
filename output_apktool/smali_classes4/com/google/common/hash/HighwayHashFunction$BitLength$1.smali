.class final enum Lcom/google/common/hash/HighwayHashFunction$BitLength$1;
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

    .line 25
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/common/hash/HighwayHashFunction$BitLength;-><init>(Ljava/lang/String;ILcom/google/common/hash/HighwayHashFunction-IA;)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILcom/google/common/hash/HighwayHashFunction-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/common/hash/HighwayHashFunction$BitLength$1;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method bits()I
    .locals 1

    .line 28
    const/16 v0, 0x40

    return v0
.end method

.method makeHash(Lcom/google/highwayhash/HighwayHash;)Lcom/google/common/hash/HashCode;
    .locals 2
    .param p1, "hash"    # Lcom/google/highwayhash/HighwayHash;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "hash"
        }
    .end annotation

    .line 33
    invoke-virtual {p1}, Lcom/google/highwayhash/HighwayHash;->finalize64()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/common/hash/HashCode;->fromLong(J)Lcom/google/common/hash/HashCode;

    move-result-object v0

    return-object v0
.end method
