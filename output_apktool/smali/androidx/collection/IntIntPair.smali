.class public final Landroidx/collection/IntIntPair;
.super Ljava/lang/Object;
.source "IntIntPair.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nIntIntPair.kt\nKotlin\n*S Kotlin\n*F\n+ 1 IntIntPair.kt\nandroidx/collection/IntIntPair\n+ 2 PackingUtils.kt\nandroidx/collection/PackingUtilsKt\n*L\n1#1,82:1\n29#2:83\n*S KotlinDebug\n*F\n+ 1 IntIntPair.kt\nandroidx/collection/IntIntPair\n*L\n46#1:83\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\n\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0003\u0008\u0087@\u0018\u00002\u00020\u0001B\u0011\u0008\u0000\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005B\u0019\u0008\u0016\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u0008\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\u0004\u0010\tJ\u0010\u0010\r\u001a\u00020\u0007H\u0086\n\u00a2\u0006\u0004\u0008\u000e\u0010\u000bJ\u0010\u0010\u000f\u001a\u00020\u0007H\u0086\n\u00a2\u0006\u0004\u0008\u0010\u0010\u000bJ\u000f\u0010\u0011\u001a\u00020\u0012H\u0016\u00a2\u0006\u0004\u0008\u0013\u0010\u0014J\u0013\u0010\u0015\u001a\u00020\u00162\u0008\u0010\u0017\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u0018\u001a\u00020\u0007H\u00d6\u0001R\u0010\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u0006\u001a\u00020\u00078F\u00a2\u0006\u0006\u001a\u0004\u0008\n\u0010\u000bR\u0011\u0010\u0008\u001a\u00020\u00078F\u00a2\u0006\u0006\u001a\u0004\u0008\u000c\u0010\u000b\u0088\u0001\u0002\u00a8\u0006\u0019"
    }
    d2 = {
        "Landroidx/collection/IntIntPair;",
        "",
        "packedValue",
        "",
        "constructor-impl",
        "(J)J",
        "first",
        "",
        "second",
        "(II)J",
        "getFirst-impl",
        "(J)I",
        "getSecond-impl",
        "component1",
        "component1-impl",
        "component2",
        "component2-impl",
        "toString",
        "",
        "toString-impl",
        "(J)Ljava/lang/String;",
        "equals",
        "",
        "other",
        "hashCode",
        "collection"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/jvm/JvmInline;
.end annotation


# instance fields
.field public final packedValue:J


# direct methods
.method private synthetic constructor <init>(J)V
    .locals 0
    .param p1, "packedValue"    # J

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Landroidx/collection/IntIntPair;->packedValue:J

    return-void
.end method

.method public static final synthetic box-impl(J)Landroidx/collection/IntIntPair;
    .locals 1

    new-instance v0, Landroidx/collection/IntIntPair;

    invoke-direct {v0, p0, p1}, Landroidx/collection/IntIntPair;-><init>(J)V

    return-object v0
.end method

.method public static final component1-impl(J)I
    .locals 3
    .param p0, "arg0"    # J

    const/4 v0, 0x0

    .line 66
    .local v0, "$i$f$component1-impl":I
    const/16 v1, 0x20

    shr-long v1, p0, v1

    long-to-int v2, v1

    return v2
.end method

.method public static final component2-impl(J)I
    .locals 3
    .param p0, "arg0"    # J

    const/4 v0, 0x0

    .line 78
    .local v0, "$i$f$component2-impl":I
    const-wide v1, 0xffffffffL

    and-long/2addr v1, p0

    long-to-int v2, v1

    return v2
.end method

.method public static constructor-impl(II)J
    .locals 7
    .param p0, "first"    # I
    .param p1, "second"    # I

    .line 46
    const/4 v0, 0x0

    .line 83
    .local v0, "$i$f$packInts":I
    int-to-long v1, p0

    const/16 v3, 0x20

    shl-long/2addr v1, v3

    int-to-long v3, p1

    const-wide v5, 0xffffffffL

    and-long/2addr v3, v5

    or-long/2addr v1, v3

    .line 46
    .end local v0    # "$i$f$packInts":I
    invoke-static {v1, v2}, Landroidx/collection/IntIntPair;->constructor-impl(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static constructor-impl(J)J
    .locals 0

    return-wide p0
.end method

.method public static equals-impl(JLjava/lang/Object;)Z
    .locals 4

    instance-of v0, p2, Landroidx/collection/IntIntPair;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    move-object v0, p2

    check-cast v0, Landroidx/collection/IntIntPair;

    invoke-virtual {v0}, Landroidx/collection/IntIntPair;->unbox-impl()J

    move-result-wide v2

    cmp-long v0, p0, v2

    if-eqz v0, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public static final equals-impl0(JJ)Z
    .locals 1

    cmp-long v0, p0, p2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static final getFirst-impl(J)I
    .locals 2
    .param p0, "arg0"    # J

    .line 50
    const/16 v0, 0x20

    shr-long v0, p0, v0

    long-to-int v1, v0

    return v1
.end method

.method public static final getSecond-impl(J)I
    .locals 2
    .param p0, "arg0"    # J

    .line 54
    const-wide v0, 0xffffffffL

    and-long/2addr v0, p0

    long-to-int v1, v0

    return v1
.end method

.method public static hashCode-impl(J)I
    .locals 1

    invoke-static {p0, p1}, Landroidx/collection/FloatFloatPair$$ExternalSyntheticBackport0;->m(J)I

    move-result v0

    return v0
.end method

.method public static toString-impl(J)Ljava/lang/String;
    .locals 2
    .param p0, "arg0"    # J

    .line 80
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0, p1}, Landroidx/collection/IntIntPair;->getFirst-impl(J)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0, p1}, Landroidx/collection/IntIntPair;->getSecond-impl(J)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    iget-wide v0, p0, Landroidx/collection/IntIntPair;->packedValue:J

    invoke-static {v0, v1, p1}, Landroidx/collection/IntIntPair;->equals-impl(JLjava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 2

    iget-wide v0, p0, Landroidx/collection/IntIntPair;->packedValue:J

    invoke-static {v0, v1}, Landroidx/collection/IntIntPair;->hashCode-impl(J)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 80
    iget-wide v0, p0, Landroidx/collection/IntIntPair;->packedValue:J

    invoke-static {v0, v1}, Landroidx/collection/IntIntPair;->toString-impl(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic unbox-impl()J
    .locals 2

    iget-wide v0, p0, Landroidx/collection/IntIntPair;->packedValue:J

    return-wide v0
.end method
