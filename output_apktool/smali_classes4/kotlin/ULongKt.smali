.class public final Lkotlin/ULongKt;
.super Ljava/lang/Object;
.source "ULong.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0005\n\u0000\n\u0002\u0010\n\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\u0006\n\u0002\u0008\u0002\u001a\u0012\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u0087\u0008\u00a2\u0006\u0002\u0010\u0003\u001a\u0012\u0010\u0000\u001a\u00020\u0001*\u00020\u0004H\u0087\u0008\u00a2\u0006\u0002\u0010\u0005\u001a\u0012\u0010\u0000\u001a\u00020\u0001*\u00020\u0006H\u0087\u0008\u00a2\u0006\u0002\u0010\u0007\u001a\u0012\u0010\u0000\u001a\u00020\u0001*\u00020\u0008H\u0087\u0008\u00a2\u0006\u0002\u0010\t\u001a\u0012\u0010\u0000\u001a\u00020\u0001*\u00020\nH\u0087\u0008\u00a2\u0006\u0002\u0010\u000b\u001a\u0012\u0010\u0000\u001a\u00020\u0001*\u00020\u000cH\u0087\u0008\u00a2\u0006\u0002\u0010\r\u00a8\u0006\u000e"
    }
    d2 = {
        "toULong",
        "Lkotlin/ULong;",
        "",
        "(B)J",
        "",
        "(S)J",
        "",
        "(I)J",
        "",
        "(J)J",
        "",
        "(F)J",
        "",
        "(D)J",
        "kotlin_stdlib"
    }
    k = 0x2
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method private static final toULong(B)J
    .locals 2
    .param p0, "$this$toULong"    # B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "$this$toULong"
        }
    .end annotation

    .line 394
    int-to-long v0, p0

    invoke-static {v0, v1}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v0

    return-wide v0
.end method

.method private static final toULong(D)J
    .locals 2
    .param p0, "$this$toULong"    # D
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "$this$toULong"
        }
    .end annotation

    .line 450
    invoke-static {p0, p1}, Lkotlin/UnsignedKt;->doubleToULong(D)J

    move-result-wide v0

    return-wide v0
.end method

.method private static final toULong(F)J
    .locals 2
    .param p0, "$this$toULong"    # F
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "$this$toULong"
        }
    .end annotation

    .line 440
    float-to-double v0, p0

    invoke-static {v0, v1}, Lkotlin/UnsignedKt;->doubleToULong(D)J

    move-result-wide v0

    return-wide v0
.end method

.method private static final toULong(I)J
    .locals 2
    .param p0, "$this$toULong"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "$this$toULong"
        }
    .end annotation

    .line 418
    int-to-long v0, p0

    invoke-static {v0, v1}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v0

    return-wide v0
.end method

.method private static final toULong(J)J
    .locals 2
    .param p0, "$this$toULong"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "$this$toULong"
        }
    .end annotation

    .line 429
    invoke-static {p0, p1}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v0

    return-wide v0
.end method

.method private static final toULong(S)J
    .locals 2
    .param p0, "$this$toULong"    # S
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "$this$toULong"
        }
    .end annotation

    .line 406
    int-to-long v0, p0

    invoke-static {v0, v1}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v0

    return-wide v0
.end method
