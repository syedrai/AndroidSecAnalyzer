.class public final Landroidx/collection/LongLongPair;
.super Ljava/lang/Object;
.source "LongLongPair.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\t\n\u0002\u0008\t\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\t\u0010\n\u001a\u00020\u0003H\u0086\nJ\t\u0010\u000b\u001a\u00020\u0003H\u0086\nJ\u0013\u0010\u000c\u001a\u00020\r2\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u0001H\u0096\u0002J\u0008\u0010\u000f\u001a\u00020\u0010H\u0016J\u0008\u0010\u0011\u001a\u00020\u0012H\u0016R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u0011\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\u0008\u00a8\u0006\u0013"
    }
    d2 = {
        "Landroidx/collection/LongLongPair;",
        "",
        "first",
        "",
        "second",
        "<init>",
        "(JJ)V",
        "getFirst",
        "()J",
        "getSecond",
        "component1",
        "component2",
        "equals",
        "",
        "other",
        "hashCode",
        "",
        "toString",
        "",
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


# instance fields
.field private final first:J

.field private final second:J


# direct methods
.method public constructor <init>(JJ)V
    .locals 0
    .param p1, "first"    # J
    .param p3, "second"    # J

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Landroidx/collection/LongLongPair;->first:J

    iput-wide p3, p0, Landroidx/collection/LongLongPair;->second:J

    return-void
.end method


# virtual methods
.method public final component1()J
    .locals 3

    const/4 v0, 0x0

    .line 36
    .local v0, "$i$f$component1":I
    invoke-virtual {p0}, Landroidx/collection/LongLongPair;->getFirst()J

    move-result-wide v1

    return-wide v1
.end method

.method public final component2()J
    .locals 3

    const/4 v0, 0x0

    .line 47
    .local v0, "$i$f$component2":I
    invoke-virtual {p0}, Landroidx/collection/LongLongPair;->getSecond()J

    move-result-wide v1

    return-wide v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "other"    # Ljava/lang/Object;

    .line 56
    instance-of v0, p1, Landroidx/collection/LongLongPair;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 57
    return v1

    .line 59
    :cond_0
    move-object v0, p1

    check-cast v0, Landroidx/collection/LongLongPair;

    iget-wide v2, v0, Landroidx/collection/LongLongPair;->first:J

    iget-wide v4, p0, Landroidx/collection/LongLongPair;->first:J

    cmp-long v0, v2, v4

    if-nez v0, :cond_1

    move-object v0, p1

    check-cast v0, Landroidx/collection/LongLongPair;

    iget-wide v2, v0, Landroidx/collection/LongLongPair;->second:J

    iget-wide v4, p0, Landroidx/collection/LongLongPair;->second:J

    cmp-long v0, v2, v4

    if-nez v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public final getFirst()J
    .locals 2

    .line 26
    iget-wide v0, p0, Landroidx/collection/LongLongPair;->first:J

    return-wide v0
.end method

.method public final getSecond()J
    .locals 2

    .line 26
    iget-wide v0, p0, Landroidx/collection/LongLongPair;->second:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 3

    .line 68
    iget-wide v0, p0, Landroidx/collection/LongLongPair;->first:J

    invoke-static {v0, v1}, Landroidx/collection/FloatFloatPair$$ExternalSyntheticBackport0;->m(J)I

    move-result v0

    iget-wide v1, p0, Landroidx/collection/LongLongPair;->second:J

    invoke-static {v1, v2}, Landroidx/collection/FloatFloatPair$$ExternalSyntheticBackport0;->m(J)I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 72
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroidx/collection/LongLongPair;->first:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroidx/collection/LongLongPair;->second:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
