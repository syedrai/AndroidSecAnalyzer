.class public final Landroidx/window/embedding/DividerAttributes$DraggableDividerAttributes;
.super Landroidx/window/embedding/DividerAttributes;
.source "DividerAttributes.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/window/embedding/DividerAttributes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DraggableDividerAttributes"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/window/embedding/DividerAttributes$DraggableDividerAttributes$Builder;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0007\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001:\u0001\u0014B1\u0008\u0003\u0012\u0008\u0008\u0003\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0003\u0010\u0004\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0006\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0008\u00a2\u0006\u0004\u0008\t\u0010\nJ\u0013\u0010\u000e\u001a\u00020\u00082\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u0010H\u0096\u0002J\u0008\u0010\u0011\u001a\u00020\u0003H\u0016J\u0008\u0010\u0012\u001a\u00020\u0013H\u0016R\u0011\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u0011\u0010\u0007\u001a\u00020\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\r\u00a8\u0006\u0015"
    }
    d2 = {
        "Landroidx/window/embedding/DividerAttributes$DraggableDividerAttributes;",
        "Landroidx/window/embedding/DividerAttributes;",
        "widthDp",
        "",
        "color",
        "dragRange",
        "Landroidx/window/embedding/DividerAttributes$DragRange;",
        "isDraggingToFullscreenAllowed",
        "",
        "<init>",
        "(IILandroidx/window/embedding/DividerAttributes$DragRange;Z)V",
        "getDragRange",
        "()Landroidx/window/embedding/DividerAttributes$DragRange;",
        "()Z",
        "equals",
        "other",
        "",
        "hashCode",
        "toString",
        "",
        "Builder",
        "window_release"
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
.field private final dragRange:Landroidx/window/embedding/DividerAttributes$DragRange;

.field private final isDraggingToFullscreenAllowed:Z


# direct methods
.method private constructor <init>(IILandroidx/window/embedding/DividerAttributes$DragRange;Z)V
    .locals 1
    .param p1, "widthDp"    # I
    .param p2, "color"    # I
    .param p3, "dragRange"    # Landroidx/window/embedding/DividerAttributes$DragRange;
    .param p4, "isDraggingToFullscreenAllowed"    # Z

    .line 149
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroidx/window/embedding/DividerAttributes;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 147
    iput-object p3, p0, Landroidx/window/embedding/DividerAttributes$DraggableDividerAttributes;->dragRange:Landroidx/window/embedding/DividerAttributes$DragRange;

    .line 148
    iput-boolean p4, p0, Landroidx/window/embedding/DividerAttributes$DraggableDividerAttributes;->isDraggingToFullscreenAllowed:Z

    .line 143
    return-void
.end method

.method synthetic constructor <init>(IILandroidx/window/embedding/DividerAttributes$DragRange;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 143
    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    .line 145
    const/4 p1, -0x1

    .line 143
    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    .line 146
    const/high16 p2, -0x1000000

    .line 143
    :cond_1
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    .line 147
    sget-object p3, Landroidx/window/embedding/DividerAttributes$DragRange;->DRAG_RANGE_SYSTEM_DEFAULT:Landroidx/window/embedding/DividerAttributes$DragRange;

    .line 143
    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    .line 148
    const/4 p4, 0x0

    .line 143
    :cond_3
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/window/embedding/DividerAttributes$DraggableDividerAttributes;-><init>(IILandroidx/window/embedding/DividerAttributes$DragRange;Z)V

    .line 149
    return-void
.end method

.method public synthetic constructor <init>(IILandroidx/window/embedding/DividerAttributes$DragRange;ZLkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/window/embedding/DividerAttributes$DraggableDividerAttributes;-><init>(IILandroidx/window/embedding/DividerAttributes$DragRange;Z)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "other"    # Ljava/lang/Object;

    .line 152
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 153
    :cond_0
    instance-of v1, p1, Landroidx/window/embedding/DividerAttributes$DraggableDividerAttributes;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 154
    :cond_1
    invoke-virtual {p0}, Landroidx/window/embedding/DividerAttributes$DraggableDividerAttributes;->getWidthDp()I

    move-result v1

    move-object v3, p1

    check-cast v3, Landroidx/window/embedding/DividerAttributes$DraggableDividerAttributes;

    invoke-virtual {v3}, Landroidx/window/embedding/DividerAttributes$DraggableDividerAttributes;->getWidthDp()I

    move-result v3

    if-ne v1, v3, :cond_2

    .line 155
    invoke-virtual {p0}, Landroidx/window/embedding/DividerAttributes$DraggableDividerAttributes;->getColor()I

    move-result v1

    move-object v3, p1

    check-cast v3, Landroidx/window/embedding/DividerAttributes$DraggableDividerAttributes;

    invoke-virtual {v3}, Landroidx/window/embedding/DividerAttributes$DraggableDividerAttributes;->getColor()I

    move-result v3

    if-ne v1, v3, :cond_2

    .line 156
    iget-object v1, p0, Landroidx/window/embedding/DividerAttributes$DraggableDividerAttributes;->dragRange:Landroidx/window/embedding/DividerAttributes$DragRange;

    move-object v3, p1

    check-cast v3, Landroidx/window/embedding/DividerAttributes$DraggableDividerAttributes;

    iget-object v3, v3, Landroidx/window/embedding/DividerAttributes$DraggableDividerAttributes;->dragRange:Landroidx/window/embedding/DividerAttributes$DragRange;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 157
    iget-boolean v1, p0, Landroidx/window/embedding/DividerAttributes$DraggableDividerAttributes;->isDraggingToFullscreenAllowed:Z

    move-object v3, p1

    check-cast v3, Landroidx/window/embedding/DividerAttributes$DraggableDividerAttributes;

    iget-boolean v3, v3, Landroidx/window/embedding/DividerAttributes$DraggableDividerAttributes;->isDraggingToFullscreenAllowed:Z

    if-ne v1, v3, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 154
    :goto_0
    return v0
.end method

.method public final getDragRange()Landroidx/window/embedding/DividerAttributes$DragRange;
    .locals 1

    .line 147
    iget-object v0, p0, Landroidx/window/embedding/DividerAttributes$DraggableDividerAttributes;->dragRange:Landroidx/window/embedding/DividerAttributes$DragRange;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 161
    invoke-virtual {p0}, Landroidx/window/embedding/DividerAttributes$DraggableDividerAttributes;->getWidthDp()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Landroidx/window/embedding/DividerAttributes$DraggableDividerAttributes;->getColor()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Landroidx/window/embedding/DividerAttributes$DraggableDividerAttributes;->dragRange:Landroidx/window/embedding/DividerAttributes$DragRange;

    invoke-virtual {v1}, Landroidx/window/embedding/DividerAttributes$DragRange;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 162
    iget-boolean v1, p0, Landroidx/window/embedding/DividerAttributes$DraggableDividerAttributes;->isDraggingToFullscreenAllowed:Z

    invoke-static {v1}, Landroidx/window/embedding/ActivityRule$$ExternalSyntheticBackport0;->m(Z)I

    move-result v1

    .line 161
    add-int/2addr v0, v1

    .line 162
    return v0
.end method

.method public final isDraggingToFullscreenAllowed()Z
    .locals 1

    .line 148
    iget-boolean v0, p0, Landroidx/window/embedding/DividerAttributes$DraggableDividerAttributes;->isDraggingToFullscreenAllowed:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 165
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Landroidx/window/embedding/DividerAttributes$DraggableDividerAttributes;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 166
    nop

    .line 165
    const-string/jumbo v1, "{width="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 167
    invoke-virtual {p0}, Landroidx/window/embedding/DividerAttributes$DraggableDividerAttributes;->getWidthDp()I

    move-result v1

    .line 165
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 167
    nop

    .line 165
    const-string v1, ", color="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 168
    invoke-virtual {p0}, Landroidx/window/embedding/DividerAttributes$DraggableDividerAttributes;->getColor()I

    move-result v1

    .line 165
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 168
    nop

    .line 165
    const-string v1, ", primaryContainerDragRange="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 169
    iget-object v1, p0, Landroidx/window/embedding/DividerAttributes$DraggableDividerAttributes;->dragRange:Landroidx/window/embedding/DividerAttributes$DragRange;

    .line 165
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 169
    nop

    .line 165
    const-string v1, ", isDraggingToFullscreenAllowed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 170
    iget-boolean v1, p0, Landroidx/window/embedding/DividerAttributes$DraggableDividerAttributes;->isDraggingToFullscreenAllowed:Z

    .line 165
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 171
    return-object v0
.end method
