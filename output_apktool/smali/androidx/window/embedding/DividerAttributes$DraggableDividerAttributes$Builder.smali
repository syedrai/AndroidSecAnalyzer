.class public final Landroidx/window/embedding/DividerAttributes$DraggableDividerAttributes$Builder;
.super Ljava/lang/Object;
.source "DividerAttributes.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/window/embedding/DividerAttributes$DraggableDividerAttributes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDividerAttributes.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DividerAttributes.kt\nandroidx/window/embedding/DividerAttributes$DraggableDividerAttributes$Builder\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,471:1\n1#2:472\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0007\u0008\u0007\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003B\u0011\u0008\u0017\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0002\u0010\u0006J\u0012\u0010\u000e\u001a\u00020\u00002\u0008\u0008\u0001\u0010\u0007\u001a\u00020\u0008H\u0007J\u0012\u0010\u000f\u001a\u00020\u00002\u0008\u0008\u0001\u0010\t\u001a\u00020\u0008H\u0007J\u0010\u0010\u0010\u001a\u00020\u00002\u0006\u0010\n\u001a\u00020\u000bH\u0007J\u0010\u0010\u0011\u001a\u00020\u00002\u0006\u0010\u0012\u001a\u00020\rH\u0007J\u0008\u0010\u0013\u001a\u00020\u0005H\u0007R\u0012\u0010\u0007\u001a\u00020\u00088\u0002@\u0002X\u0083\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\t\u001a\u00020\u00088\u0002@\u0002X\u0083\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\rX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0014"
    }
    d2 = {
        "Landroidx/window/embedding/DividerAttributes$DraggableDividerAttributes$Builder;",
        "",
        "<init>",
        "()V",
        "original",
        "Landroidx/window/embedding/DividerAttributes$DraggableDividerAttributes;",
        "(Landroidx/window/embedding/DividerAttributes$DraggableDividerAttributes;)V",
        "widthDp",
        "",
        "color",
        "dragRange",
        "Landroidx/window/embedding/DividerAttributes$DragRange;",
        "isDraggingToFullscreenAllowed",
        "",
        "setWidthDp",
        "setColor",
        "setDragRange",
        "setDraggingToFullscreenAllowed",
        "allowed",
        "build",
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
.field private color:I

.field private dragRange:Landroidx/window/embedding/DividerAttributes$DragRange;

.field private isDraggingToFullscreenAllowed:Z

.field private widthDp:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 179
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 181
    const/4 v0, -0x1

    iput v0, p0, Landroidx/window/embedding/DividerAttributes$DraggableDividerAttributes$Builder;->widthDp:I

    .line 183
    const/high16 v0, -0x1000000

    iput v0, p0, Landroidx/window/embedding/DividerAttributes$DraggableDividerAttributes$Builder;->color:I

    .line 185
    sget-object v0, Landroidx/window/embedding/DividerAttributes$DragRange;->DRAG_RANGE_SYSTEM_DEFAULT:Landroidx/window/embedding/DividerAttributes$DragRange;

    iput-object v0, p0, Landroidx/window/embedding/DividerAttributes$DraggableDividerAttributes$Builder;->dragRange:Landroidx/window/embedding/DividerAttributes$DragRange;

    .line 179
    return-void
.end method

.method public constructor <init>(Landroidx/window/embedding/DividerAttributes$DraggableDividerAttributes;)V
    .locals 1
    .param p1, "original"    # Landroidx/window/embedding/DividerAttributes$DraggableDividerAttributes;

    const-string v0, "original"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 196
    invoke-direct {p0}, Landroidx/window/embedding/DividerAttributes$DraggableDividerAttributes$Builder;-><init>()V

    .line 197
    invoke-virtual {p1}, Landroidx/window/embedding/DividerAttributes$DraggableDividerAttributes;->getWidthDp()I

    move-result v0

    iput v0, p0, Landroidx/window/embedding/DividerAttributes$DraggableDividerAttributes$Builder;->widthDp:I

    .line 198
    invoke-virtual {p1}, Landroidx/window/embedding/DividerAttributes$DraggableDividerAttributes;->getDragRange()Landroidx/window/embedding/DividerAttributes$DragRange;

    move-result-object v0

    iput-object v0, p0, Landroidx/window/embedding/DividerAttributes$DraggableDividerAttributes$Builder;->dragRange:Landroidx/window/embedding/DividerAttributes$DragRange;

    .line 199
    invoke-virtual {p1}, Landroidx/window/embedding/DividerAttributes$DraggableDividerAttributes;->getColor()I

    move-result v0

    iput v0, p0, Landroidx/window/embedding/DividerAttributes$DraggableDividerAttributes$Builder;->color:I

    .line 200
    invoke-virtual {p1}, Landroidx/window/embedding/DividerAttributes$DraggableDividerAttributes;->isDraggingToFullscreenAllowed()Z

    move-result v0

    iput-boolean v0, p0, Landroidx/window/embedding/DividerAttributes$DraggableDividerAttributes$Builder;->isDraggingToFullscreenAllowed:Z

    .line 201
    return-void
.end method


# virtual methods
.method public final build()Landroidx/window/embedding/DividerAttributes$DraggableDividerAttributes;
    .locals 6

    .line 277
    new-instance v0, Landroidx/window/embedding/DividerAttributes$DraggableDividerAttributes;

    .line 278
    iget v1, p0, Landroidx/window/embedding/DividerAttributes$DraggableDividerAttributes$Builder;->widthDp:I

    .line 279
    iget v2, p0, Landroidx/window/embedding/DividerAttributes$DraggableDividerAttributes$Builder;->color:I

    .line 280
    iget-object v3, p0, Landroidx/window/embedding/DividerAttributes$DraggableDividerAttributes$Builder;->dragRange:Landroidx/window/embedding/DividerAttributes$DragRange;

    .line 281
    iget-boolean v4, p0, Landroidx/window/embedding/DividerAttributes$DraggableDividerAttributes$Builder;->isDraggingToFullscreenAllowed:Z

    .line 277
    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroidx/window/embedding/DividerAttributes$DraggableDividerAttributes;-><init>(IILandroidx/window/embedding/DividerAttributes$DragRange;ZLkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 282
    return-object v0
.end method

.method public final setColor(I)Landroidx/window/embedding/DividerAttributes$DraggableDividerAttributes$Builder;
    .locals 3
    .param p1, "color"    # I

    .line 228
    move-object v0, p0

    check-cast v0, Landroidx/window/embedding/DividerAttributes$DraggableDividerAttributes$Builder;

    .local v0, "$this$setColor_u24lambda_u241":Landroidx/window/embedding/DividerAttributes$DraggableDividerAttributes$Builder;
    const/4 v1, 0x0

    .line 229
    .local v1, "$i$a$-apply-DividerAttributes$DraggableDividerAttributes$Builder$setColor$1":I
    sget-object v2, Landroidx/window/embedding/DividerAttributes;->Companion:Landroidx/window/embedding/DividerAttributes$Companion;

    invoke-static {v2, p1}, Landroidx/window/embedding/DividerAttributes$Companion;->access$validateColor(Landroidx/window/embedding/DividerAttributes$Companion;I)V

    .line 230
    iput p1, v0, Landroidx/window/embedding/DividerAttributes$DraggableDividerAttributes$Builder;->color:I

    .line 231
    nop

    .line 228
    .end local v0    # "$this$setColor_u24lambda_u241":Landroidx/window/embedding/DividerAttributes$DraggableDividerAttributes$Builder;
    .end local v1    # "$i$a$-apply-DividerAttributes$DraggableDividerAttributes$Builder$setColor$1":I
    move-object v0, p0

    check-cast v0, Landroidx/window/embedding/DividerAttributes$DraggableDividerAttributes$Builder;

    .line 231
    return-object v0
.end method

.method public final setDragRange(Landroidx/window/embedding/DividerAttributes$DragRange;)Landroidx/window/embedding/DividerAttributes$DraggableDividerAttributes$Builder;
    .locals 2
    .param p1, "dragRange"    # Landroidx/window/embedding/DividerAttributes$DragRange;

    const-string v0, "dragRange"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 244
    move-object v0, p0

    check-cast v0, Landroidx/window/embedding/DividerAttributes$DraggableDividerAttributes$Builder;

    .line 472
    .local v0, "$this$setDragRange_u24lambda_u242":Landroidx/window/embedding/DividerAttributes$DraggableDividerAttributes$Builder;
    const/4 v1, 0x0

    .line 244
    .local v1, "$i$a$-apply-DividerAttributes$DraggableDividerAttributes$Builder$setDragRange$1":I
    iput-object p1, v0, Landroidx/window/embedding/DividerAttributes$DraggableDividerAttributes$Builder;->dragRange:Landroidx/window/embedding/DividerAttributes$DragRange;

    .end local v0    # "$this$setDragRange_u24lambda_u242":Landroidx/window/embedding/DividerAttributes$DraggableDividerAttributes$Builder;
    .end local v1    # "$i$a$-apply-DividerAttributes$DraggableDividerAttributes$Builder$setDragRange$1":I
    move-object v0, p0

    check-cast v0, Landroidx/window/embedding/DividerAttributes$DraggableDividerAttributes$Builder;

    return-object v0
.end method

.method public final setDraggingToFullscreenAllowed(Z)Landroidx/window/embedding/DividerAttributes$DraggableDividerAttributes$Builder;
    .locals 2
    .param p1, "allowed"    # Z

    .line 270
    move-object v0, p0

    check-cast v0, Landroidx/window/embedding/DividerAttributes$DraggableDividerAttributes$Builder;

    .local v0, "$this$setDraggingToFullscreenAllowed_u24lambda_u243":Landroidx/window/embedding/DividerAttributes$DraggableDividerAttributes$Builder;
    const/4 v1, 0x0

    .line 271
    .local v1, "$i$a$-apply-DividerAttributes$DraggableDividerAttributes$Builder$setDraggingToFullscreenAllowed$1":I
    iput-boolean p1, v0, Landroidx/window/embedding/DividerAttributes$DraggableDividerAttributes$Builder;->isDraggingToFullscreenAllowed:Z

    .line 272
    nop

    .line 270
    .end local v0    # "$this$setDraggingToFullscreenAllowed_u24lambda_u243":Landroidx/window/embedding/DividerAttributes$DraggableDividerAttributes$Builder;
    .end local v1    # "$i$a$-apply-DividerAttributes$DraggableDividerAttributes$Builder$setDraggingToFullscreenAllowed$1":I
    move-object v0, p0

    check-cast v0, Landroidx/window/embedding/DividerAttributes$DraggableDividerAttributes$Builder;

    .line 272
    return-object v0
.end method

.method public final setWidthDp(I)Landroidx/window/embedding/DividerAttributes$DraggableDividerAttributes$Builder;
    .locals 3
    .param p1, "widthDp"    # I

    .line 217
    move-object v0, p0

    check-cast v0, Landroidx/window/embedding/DividerAttributes$DraggableDividerAttributes$Builder;

    .local v0, "$this$setWidthDp_u24lambda_u240":Landroidx/window/embedding/DividerAttributes$DraggableDividerAttributes$Builder;
    const/4 v1, 0x0

    .line 218
    .local v1, "$i$a$-apply-DividerAttributes$DraggableDividerAttributes$Builder$setWidthDp$1":I
    sget-object v2, Landroidx/window/embedding/DividerAttributes;->Companion:Landroidx/window/embedding/DividerAttributes$Companion;

    invoke-static {v2, p1}, Landroidx/window/embedding/DividerAttributes$Companion;->access$validateWidth(Landroidx/window/embedding/DividerAttributes$Companion;I)V

    .line 219
    iput p1, v0, Landroidx/window/embedding/DividerAttributes$DraggableDividerAttributes$Builder;->widthDp:I

    .line 220
    nop

    .line 217
    .end local v0    # "$this$setWidthDp_u24lambda_u240":Landroidx/window/embedding/DividerAttributes$DraggableDividerAttributes$Builder;
    .end local v1    # "$i$a$-apply-DividerAttributes$DraggableDividerAttributes$Builder$setWidthDp$1":I
    move-object v0, p0

    check-cast v0, Landroidx/window/embedding/DividerAttributes$DraggableDividerAttributes$Builder;

    .line 220
    return-object v0
.end method
