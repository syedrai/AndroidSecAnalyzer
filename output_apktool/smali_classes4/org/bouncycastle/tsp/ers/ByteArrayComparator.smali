.class Lorg/bouncycastle/tsp/ers/ByteArrayComparator;
.super Ljava/lang/Object;
.source "ByteArrayComparator.java"

# interfaces
.implements Ljava/util/Comparator;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 6
    .param p1, "l"    # Ljava/lang/Object;
    .param p2, "r"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "l",
            "r"
        }
    .end annotation

    .line 13
    move-object v0, p1

    check-cast v0, [B

    .line 14
    .local v0, "left":[B
    move-object v1, p2

    check-cast v1, [B

    .line 15
    .local v1, "right":[B
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_1

    array-length v3, v1

    if-ge v2, v3, :cond_1

    .line 17
    aget-byte v3, v0, v2

    and-int/lit16 v3, v3, 0xff

    .line 18
    .local v3, "a":I
    aget-byte v4, v1, v2

    and-int/lit16 v4, v4, 0xff

    .line 20
    .local v4, "b":I
    if-eq v3, v4, :cond_0

    .line 22
    sub-int v5, v3, v4

    return v5

    .line 15
    .end local v3    # "a":I
    .end local v4    # "b":I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 25
    .end local v2    # "i":I
    :cond_1
    array-length v2, v0

    array-length v3, v1

    sub-int/2addr v2, v3

    return v2
.end method
