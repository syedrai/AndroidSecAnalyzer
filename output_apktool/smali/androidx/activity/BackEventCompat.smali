.class public final Landroidx/activity/BackEventCompat;
.super Ljava/lang/Object;
.source "BackEventCompat.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/activity/BackEventCompat$Companion;,
        Landroidx/activity/BackEventCompat$SwipeEdge;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0010\u000e\n\u0002\u0008\u0003\u0018\u0000 \u001b2\u00020\u0001:\u0002\u001a\u001bB5\u0008\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0008\u0008\u0001\u0010\u0005\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0008\u0008\u0002\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0004\u0008\n\u0010\u000bB\u0011\u0008\u0017\u0012\u0006\u0010\u000c\u001a\u00020\r\u00a2\u0006\u0004\u0008\n\u0010\u000eJ\u0008\u0010\u0017\u001a\u00020\rH\u0007J\u0008\u0010\u0018\u001a\u00020\u0019H\u0016R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010R\u0011\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u0010R\u0011\u0010\u0005\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\u0010R\u0011\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0013\u0010\u0014R\u0011\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0015\u0010\u0016\u00a8\u0006\u001c"
    }
    d2 = {
        "Landroidx/activity/BackEventCompat;",
        "",
        "touchX",
        "",
        "touchY",
        "progress",
        "swipeEdge",
        "",
        "frameTimeMillis",
        "",
        "<init>",
        "(FFFIJ)V",
        "backEvent",
        "Landroid/window/BackEvent;",
        "(Landroid/window/BackEvent;)V",
        "getTouchX",
        "()F",
        "getTouchY",
        "getProgress",
        "getSwipeEdge",
        "()I",
        "getFrameTimeMillis",
        "()J",
        "toBackEvent",
        "toString",
        "",
        "SwipeEdge",
        "Companion",
        "activity_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Landroidx/activity/BackEventCompat$Companion;

.field public static final EDGE_LEFT:I = 0x0

.field public static final EDGE_NONE:I = 0x2

.field public static final EDGE_RIGHT:I = 0x1


# instance fields
.field private final frameTimeMillis:J

.field private final progress:F

.field private final swipeEdge:I

.field private final touchX:F

.field private final touchY:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/activity/BackEventCompat$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/activity/BackEventCompat$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/activity/BackEventCompat;->Companion:Landroidx/activity/BackEventCompat$Companion;

    return-void
.end method

.method public constructor <init>(FFFI)V
    .locals 9
    .param p1, "touchX"    # F
    .param p2, "touchY"    # F
    .param p3, "progress"    # F
    .param p4, "swipeEdge"    # I

    const/16 v7, 0x10

    const/4 v8, 0x0

    const-wide/16 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    .end local p1    # "touchX":F
    .end local p2    # "touchY":F
    .end local p3    # "progress":F
    .end local p4    # "swipeEdge":I
    .local v1, "touchX":F
    .local v2, "touchY":F
    .local v3, "progress":F
    .local v4, "swipeEdge":I
    invoke-direct/range {v0 .. v8}, Landroidx/activity/BackEventCompat;-><init>(FFFIJILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 48
    return-void
.end method

.method public constructor <init>(FFFIJ)V
    .locals 0
    .param p1, "touchX"    # F
    .param p2, "touchY"    # F
    .param p3, "progress"    # F
    .param p4, "swipeEdge"    # I
    .param p5, "frameTimeMillis"    # J

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput p1, p0, Landroidx/activity/BackEventCompat;->touchX:F

    .line 41
    iput p2, p0, Landroidx/activity/BackEventCompat;->touchY:F

    .line 43
    iput p3, p0, Landroidx/activity/BackEventCompat;->progress:F

    .line 45
    iput p4, p0, Landroidx/activity/BackEventCompat;->swipeEdge:I

    .line 47
    iput-wide p5, p0, Landroidx/activity/BackEventCompat;->frameTimeMillis:J

    .line 29
    return-void
.end method

.method public synthetic constructor <init>(FFFIJILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 7

    .line 29
    and-int/lit8 p7, p7, 0x10

    if-eqz p7, :cond_0

    .line 47
    const-wide/16 p5, 0x0

    move-wide v5, p5

    goto :goto_0

    .line 29
    :cond_0
    move-wide v5, p5

    :goto_0
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v6}, Landroidx/activity/BackEventCompat;-><init>(FFFIJ)V

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/window/BackEvent;)V
    .locals 8
    .param p1, "backEvent"    # Landroid/window/BackEvent;

    const-string v0, "backEvent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    nop

    .line 54
    sget-object v0, Landroidx/activity/Api34Impl;->INSTANCE:Landroidx/activity/Api34Impl;

    invoke-virtual {v0, p1}, Landroidx/activity/Api34Impl;->touchX(Landroid/window/BackEvent;)F

    move-result v2

    .line 55
    sget-object v0, Landroidx/activity/Api34Impl;->INSTANCE:Landroidx/activity/Api34Impl;

    invoke-virtual {v0, p1}, Landroidx/activity/Api34Impl;->touchY(Landroid/window/BackEvent;)F

    move-result v3

    .line 56
    sget-object v0, Landroidx/activity/Api34Impl;->INSTANCE:Landroidx/activity/Api34Impl;

    invoke-virtual {v0, p1}, Landroidx/activity/Api34Impl;->progress(Landroid/window/BackEvent;)F

    move-result v4

    .line 57
    sget-object v0, Landroidx/activity/Api34Impl;->INSTANCE:Landroidx/activity/Api34Impl;

    invoke-virtual {v0, p1}, Landroidx/activity/Api34Impl;->swipeEdge(Landroid/window/BackEvent;)I

    move-result v5

    .line 58
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x24

    if-lt v0, v1, :cond_0

    .line 59
    sget-object v0, Landroidx/activity/Api36Impl;->INSTANCE:Landroidx/activity/Api36Impl;

    invoke-virtual {v0, p1}, Landroidx/activity/Api36Impl;->frameTimeMillis(Landroid/window/BackEvent;)J

    move-result-wide v0

    move-wide v6, v0

    goto :goto_0

    .line 61
    :cond_0
    const-wide/16 v0, 0x0

    move-wide v6, v0

    .line 53
    :goto_0
    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Landroidx/activity/BackEventCompat;-><init>(FFFIJ)V

    .line 63
    return-void
.end method


# virtual methods
.method public final getFrameTimeMillis()J
    .locals 2

    .line 47
    iget-wide v0, p0, Landroidx/activity/BackEventCompat;->frameTimeMillis:J

    return-wide v0
.end method

.method public final getProgress()F
    .locals 1

    .line 43
    iget v0, p0, Landroidx/activity/BackEventCompat;->progress:F

    return v0
.end method

.method public final getSwipeEdge()I
    .locals 1

    .line 45
    iget v0, p0, Landroidx/activity/BackEventCompat;->swipeEdge:I

    return v0
.end method

.method public final getTouchX()F
    .locals 1

    .line 36
    iget v0, p0, Landroidx/activity/BackEventCompat;->touchX:F

    return v0
.end method

.method public final getTouchY()F
    .locals 1

    .line 41
    iget v0, p0, Landroidx/activity/BackEventCompat;->touchY:F

    return v0
.end method

.method public final toBackEvent()Landroid/window/BackEvent;
    .locals 9

    .line 80
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x24

    if-lt v0, v1, :cond_0

    .line 81
    sget-object v2, Landroidx/activity/Api36Impl;->INSTANCE:Landroidx/activity/Api36Impl;

    iget v3, p0, Landroidx/activity/BackEventCompat;->touchX:F

    iget v4, p0, Landroidx/activity/BackEventCompat;->touchY:F

    iget v5, p0, Landroidx/activity/BackEventCompat;->progress:F

    iget v6, p0, Landroidx/activity/BackEventCompat;->swipeEdge:I

    iget-wide v7, p0, Landroidx/activity/BackEventCompat;->frameTimeMillis:J

    invoke-virtual/range {v2 .. v8}, Landroidx/activity/Api36Impl;->createOnBackEvent(FFFIJ)Landroid/window/BackEvent;

    move-result-object v0

    goto :goto_0

    .line 83
    :cond_0
    sget-object v0, Landroidx/activity/Api34Impl;->INSTANCE:Landroidx/activity/Api34Impl;

    iget v1, p0, Landroidx/activity/BackEventCompat;->touchX:F

    iget v2, p0, Landroidx/activity/BackEventCompat;->touchY:F

    iget v3, p0, Landroidx/activity/BackEventCompat;->progress:F

    iget v4, p0, Landroidx/activity/BackEventCompat;->swipeEdge:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroidx/activity/Api34Impl;->createOnBackEvent(FFFI)Landroid/window/BackEvent;

    move-result-object v0

    .line 80
    :goto_0
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 88
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BackEventCompat{touchX="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroidx/activity/BackEventCompat;->touchX:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", touchY="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroidx/activity/BackEventCompat;->touchY:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", progress="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroidx/activity/BackEventCompat;->progress:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", swipeEdge="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 89
    iget v1, p0, Landroidx/activity/BackEventCompat;->swipeEdge:I

    .line 88
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 89
    nop

    .line 88
    const-string v1, ", frameTimeMillis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 89
    iget-wide v1, p0, Landroidx/activity/BackEventCompat;->frameTimeMillis:J

    .line 88
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
