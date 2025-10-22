.class Lkotlin/NumbersKt__NumbersJVMKt;
.super Lkotlin/NumbersKt__FloorDivModKt;
.source "NumbersJVM.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0000\n\u0002\u0010\u000b\n\u0002\u0010\u0006\n\u0002\u0010\u0007\n\u0002\u0008\u0003\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0018\u0002\n\u0002\u0008\t\u001a\r\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u0087\u0008\u001a\r\u0010\u0000\u001a\u00020\u0001*\u00020\u0003H\u0087\u0008\u001a\r\u0010\u0004\u001a\u00020\u0001*\u00020\u0002H\u0087\u0008\u001a\r\u0010\u0004\u001a\u00020\u0001*\u00020\u0003H\u0087\u0008\u001a\r\u0010\u0005\u001a\u00020\u0001*\u00020\u0002H\u0087\u0008\u001a\r\u0010\u0005\u001a\u00020\u0001*\u00020\u0003H\u0087\u0008\u001a\r\u0010\u0006\u001a\u00020\u0007*\u00020\u0002H\u0087\u0008\u001a\r\u0010\u0008\u001a\u00020\u0007*\u00020\u0002H\u0087\u0008\u001a\u0015\u0010\t\u001a\u00020\u0002*\u00020\n2\u0006\u0010\u000b\u001a\u00020\u0007H\u0087\u0008\u001a\r\u0010\u0006\u001a\u00020\u000c*\u00020\u0003H\u0087\u0008\u001a\r\u0010\u0008\u001a\u00020\u000c*\u00020\u0003H\u0087\u0008\u001a\u0015\u0010\t\u001a\u00020\u0003*\u00020\r2\u0006\u0010\u000b\u001a\u00020\u000cH\u0087\u0008\u001a\r\u0010\u000e\u001a\u00020\u000c*\u00020\u000cH\u0087\u0008\u001a\r\u0010\u000f\u001a\u00020\u000c*\u00020\u000cH\u0087\u0008\u001a\r\u0010\u0010\u001a\u00020\u000c*\u00020\u000cH\u0087\u0008\u001a\r\u0010\u0011\u001a\u00020\u000c*\u00020\u000cH\u0087\u0008\u001a\r\u0010\u0012\u001a\u00020\u000c*\u00020\u000cH\u0087\u0008\u001a\u0015\u0010\u0013\u001a\u00020\u000c*\u00020\u000c2\u0006\u0010\u0014\u001a\u00020\u000cH\u0087\u0008\u001a\u0015\u0010\u0015\u001a\u00020\u000c*\u00020\u000c2\u0006\u0010\u0014\u001a\u00020\u000cH\u0087\u0008\u001a\r\u0010\u000e\u001a\u00020\u000c*\u00020\u0007H\u0087\u0008\u001a\r\u0010\u000f\u001a\u00020\u000c*\u00020\u0007H\u0087\u0008\u001a\r\u0010\u0010\u001a\u00020\u000c*\u00020\u0007H\u0087\u0008\u001a\r\u0010\u0011\u001a\u00020\u0007*\u00020\u0007H\u0087\u0008\u001a\r\u0010\u0012\u001a\u00020\u0007*\u00020\u0007H\u0087\u0008\u001a\u0015\u0010\u0013\u001a\u00020\u0007*\u00020\u00072\u0006\u0010\u0014\u001a\u00020\u000cH\u0087\u0008\u001a\u0015\u0010\u0015\u001a\u00020\u0007*\u00020\u00072\u0006\u0010\u0014\u001a\u00020\u000cH\u0087\u0008\u00a8\u0006\u0016"
    }
    d2 = {
        "isNaN",
        "",
        "",
        "",
        "isInfinite",
        "isFinite",
        "toBits",
        "",
        "toRawBits",
        "fromBits",
        "Lkotlin/Double$Companion;",
        "bits",
        "",
        "Lkotlin/Float$Companion;",
        "countOneBits",
        "countLeadingZeroBits",
        "countTrailingZeroBits",
        "takeHighestOneBit",
        "takeLowestOneBit",
        "rotateLeft",
        "bitCount",
        "rotateRight",
        "kotlin_stdlib"
    }
    k = 0x5
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x31
    xs = "kotlin/NumbersKt"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lkotlin/NumbersKt__FloorDivModKt;-><init>()V

    return-void
.end method

.method private static final countLeadingZeroBits(I)I
    .locals 1
    .param p0, "$this$countLeadingZeroBits"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "$this$countLeadingZeroBits"
        }
    .end annotation

    .line 111
    invoke-static {p0}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result v0

    return v0
.end method

.method private static final countLeadingZeroBits(J)I
    .locals 1
    .param p0, "$this$countLeadingZeroBits"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "$this$countLeadingZeroBits"
        }
    .end annotation

    .line 180
    invoke-static {p0, p1}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    move-result v0

    return v0
.end method

.method private static final countOneBits(I)I
    .locals 1
    .param p0, "$this$countOneBits"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "$this$countOneBits"
        }
    .end annotation

    .line 104
    invoke-static {p0}, Ljava/lang/Integer;->bitCount(I)I

    move-result v0

    return v0
.end method

.method private static final countOneBits(J)I
    .locals 1
    .param p0, "$this$countOneBits"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "$this$countOneBits"
        }
    .end annotation

    .line 173
    invoke-static {p0, p1}, Ljava/lang/Long;->bitCount(J)I

    move-result v0

    return v0
.end method

.method private static final countTrailingZeroBits(I)I
    .locals 1
    .param p0, "$this$countTrailingZeroBits"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "$this$countTrailingZeroBits"
        }
    .end annotation

    .line 118
    invoke-static {p0}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v0

    return v0
.end method

.method private static final countTrailingZeroBits(J)I
    .locals 1
    .param p0, "$this$countTrailingZeroBits"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "$this$countTrailingZeroBits"
        }
    .end annotation

    .line 187
    invoke-static {p0, p1}, Ljava/lang/Long;->numberOfTrailingZeros(J)I

    move-result v0

    return v0
.end method

.method private static final fromBits(Lkotlin/jvm/internal/DoubleCompanionObject;J)D
    .locals 2
    .param p0, "$this$fromBits"    # Lkotlin/jvm/internal/DoubleCompanionObject;
    .param p1, "bits"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "$this$fromBits",
            "bits"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 72
    invoke-static {p1, p2}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method private static final fromBits(Lkotlin/jvm/internal/FloatCompanionObject;I)F
    .locals 1
    .param p0, "$this$fromBits"    # Lkotlin/jvm/internal/FloatCompanionObject;
    .param p1, "bits"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "$this$fromBits",
            "bits"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 96
    invoke-static {p1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    return v0
.end method

.method private static final isFinite(D)Z
    .locals 5
    .param p0, "$this$isFinite"    # D
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "$this$isFinite"
        }
    .end annotation

    .line 42
    invoke-static {p0, p1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    const-wide v2, 0x7fefffffffffffffL    # Double.MAX_VALUE

    cmpg-double v4, v0, v2

    if-gtz v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static final isFinite(F)Z
    .locals 2
    .param p0, "$this$isFinite"    # F
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "$this$isFinite"
        }
    .end annotation

    .line 48
    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const v1, 0x7f7fffff    # Float.MAX_VALUE

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static final isInfinite(D)Z
    .locals 1
    .param p0, "$this$isInfinite"    # D
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "$this$isInfinite"
        }
    .end annotation

    .line 30
    invoke-static {p0, p1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    return v0
.end method

.method private static final isInfinite(F)Z
    .locals 1
    .param p0, "$this$isInfinite"    # F
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "$this$isInfinite"
        }
    .end annotation

    .line 36
    invoke-static {p0}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v0

    return v0
.end method

.method private static final isNaN(D)Z
    .locals 1
    .param p0, "$this$isNaN"    # D
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "$this$isNaN"
        }
    .end annotation

    .line 17
    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    return v0
.end method

.method private static final isNaN(F)Z
    .locals 1
    .param p0, "$this$isNaN"    # F
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "$this$isNaN"
        }
    .end annotation

    .line 24
    invoke-static {p0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    return v0
.end method

.method private static final rotateLeft(II)I
    .locals 1
    .param p0, "$this$rotateLeft"    # I
    .param p1, "bitCount"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "$this$rotateLeft",
            "bitCount"
        }
    .end annotation

    .line 149
    invoke-static {p0, p1}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v0

    return v0
.end method

.method private static final rotateLeft(JI)J
    .locals 2
    .param p0, "$this$rotateLeft"    # J
    .param p2, "bitCount"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "$this$rotateLeft",
            "bitCount"
        }
    .end annotation

    .line 218
    invoke-static {p0, p1, p2}, Ljava/lang/Long;->rotateLeft(JI)J

    move-result-wide v0

    return-wide v0
.end method

.method private static final rotateRight(II)I
    .locals 1
    .param p0, "$this$rotateRight"    # I
    .param p1, "bitCount"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "$this$rotateRight",
            "bitCount"
        }
    .end annotation

    .line 165
    invoke-static {p0, p1}, Ljava/lang/Integer;->rotateRight(II)I

    move-result v0

    return v0
.end method

.method private static final rotateRight(JI)J
    .locals 2
    .param p0, "$this$rotateRight"    # J
    .param p2, "bitCount"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "$this$rotateRight",
            "bitCount"
        }
    .end annotation

    .line 233
    invoke-static {p0, p1, p2}, Ljava/lang/Long;->rotateRight(JI)J

    move-result-wide v0

    return-wide v0
.end method

.method private static final takeHighestOneBit(I)I
    .locals 1
    .param p0, "$this$takeHighestOneBit"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "$this$takeHighestOneBit"
        }
    .end annotation

    .line 126
    invoke-static {p0}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v0

    return v0
.end method

.method private static final takeHighestOneBit(J)J
    .locals 2
    .param p0, "$this$takeHighestOneBit"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "$this$takeHighestOneBit"
        }
    .end annotation

    .line 195
    invoke-static {p0, p1}, Ljava/lang/Long;->highestOneBit(J)J

    move-result-wide v0

    return-wide v0
.end method

.method private static final takeLowestOneBit(I)I
    .locals 1
    .param p0, "$this$takeLowestOneBit"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "$this$takeLowestOneBit"
        }
    .end annotation

    .line 134
    invoke-static {p0}, Ljava/lang/Integer;->lowestOneBit(I)I

    move-result v0

    return v0
.end method

.method private static final takeLowestOneBit(J)J
    .locals 2
    .param p0, "$this$takeLowestOneBit"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "$this$takeLowestOneBit"
        }
    .end annotation

    .line 203
    invoke-static {p0, p1}, Ljava/lang/Long;->lowestOneBit(J)J

    move-result-wide v0

    return-wide v0
.end method

.method private static final toBits(F)I
    .locals 1
    .param p0, "$this$toBits"    # F
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "$this$toBits"
        }
    .end annotation

    .line 80
    invoke-static {p0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    return v0
.end method

.method private static final toBits(D)J
    .locals 2
    .param p0, "$this$toBits"    # D
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "$this$toBits"
        }
    .end annotation

    .line 56
    invoke-static {p0, p1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    return-wide v0
.end method

.method private static final toRawBits(F)I
    .locals 1
    .param p0, "$this$toRawBits"    # F
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "$this$toRawBits"
        }
    .end annotation

    .line 89
    invoke-static {p0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    return v0
.end method

.method private static final toRawBits(D)J
    .locals 2
    .param p0, "$this$toRawBits"    # D
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "$this$toRawBits"
        }
    .end annotation

    .line 65
    invoke-static {p0, p1}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v0

    return-wide v0
.end method
