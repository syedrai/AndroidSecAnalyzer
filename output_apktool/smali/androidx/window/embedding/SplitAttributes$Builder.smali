.class public final Landroidx/window/embedding/SplitAttributes$Builder;
.super Ljava/lang/Object;
.source "SplitAttributes.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/window/embedding/SplitAttributes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSplitAttributes.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SplitAttributes.kt\nandroidx/window/embedding/SplitAttributes$Builder\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,473:1\n1#2:474\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003B\u0011\u0008\u0010\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0002\u0010\u0006J\u000e\u0010\u000f\u001a\u00020\u00002\u0006\u0010\u0010\u001a\u00020\u0008J\u000e\u0010\u0011\u001a\u00020\u00002\u0006\u0010\t\u001a\u00020\nJ\u0010\u0010\u0012\u001a\u00020\u00002\u0006\u0010\u0013\u001a\u00020\u000cH\u0007J\u0010\u0010\u0014\u001a\u00020\u00002\u0006\u0010\r\u001a\u00020\u000eH\u0007J\u0006\u0010\u0015\u001a\u00020\u0005R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u000cX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u000eX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0016"
    }
    d2 = {
        "Landroidx/window/embedding/SplitAttributes$Builder;",
        "",
        "<init>",
        "()V",
        "original",
        "Landroidx/window/embedding/SplitAttributes;",
        "(Landroidx/window/embedding/SplitAttributes;)V",
        "splitType",
        "Landroidx/window/embedding/SplitAttributes$SplitType;",
        "layoutDirection",
        "Landroidx/window/embedding/SplitAttributes$LayoutDirection;",
        "animationParams",
        "Landroidx/window/embedding/EmbeddingAnimationParams;",
        "dividerAttributes",
        "Landroidx/window/embedding/DividerAttributes;",
        "setSplitType",
        "type",
        "setLayoutDirection",
        "setAnimationParams",
        "params",
        "setDividerAttributes",
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
.field private animationParams:Landroidx/window/embedding/EmbeddingAnimationParams;

.field private dividerAttributes:Landroidx/window/embedding/DividerAttributes;

.field private layoutDirection:Landroidx/window/embedding/SplitAttributes$LayoutDirection;

.field private splitType:Landroidx/window/embedding/SplitAttributes$SplitType;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 391
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 392
    sget-object v0, Landroidx/window/embedding/SplitAttributes$SplitType;->SPLIT_TYPE_EQUAL:Landroidx/window/embedding/SplitAttributes$SplitType;

    iput-object v0, p0, Landroidx/window/embedding/SplitAttributes$Builder;->splitType:Landroidx/window/embedding/SplitAttributes$SplitType;

    .line 393
    sget-object v0, Landroidx/window/embedding/SplitAttributes$LayoutDirection;->LOCALE:Landroidx/window/embedding/SplitAttributes$LayoutDirection;

    iput-object v0, p0, Landroidx/window/embedding/SplitAttributes$Builder;->layoutDirection:Landroidx/window/embedding/SplitAttributes$LayoutDirection;

    .line 394
    new-instance v0, Landroidx/window/embedding/EmbeddingAnimationParams$Builder;

    invoke-direct {v0}, Landroidx/window/embedding/EmbeddingAnimationParams$Builder;-><init>()V

    invoke-virtual {v0}, Landroidx/window/embedding/EmbeddingAnimationParams$Builder;->build()Landroidx/window/embedding/EmbeddingAnimationParams;

    move-result-object v0

    iput-object v0, p0, Landroidx/window/embedding/SplitAttributes$Builder;->animationParams:Landroidx/window/embedding/EmbeddingAnimationParams;

    .line 395
    sget-object v0, Landroidx/window/embedding/DividerAttributes;->NO_DIVIDER:Landroidx/window/embedding/DividerAttributes;

    iput-object v0, p0, Landroidx/window/embedding/SplitAttributes$Builder;->dividerAttributes:Landroidx/window/embedding/DividerAttributes;

    .line 391
    return-void
.end method

.method public constructor <init>(Landroidx/window/embedding/SplitAttributes;)V
    .locals 2
    .param p1, "original"    # Landroidx/window/embedding/SplitAttributes;

    const-string v0, "original"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 398
    invoke-direct {p0}, Landroidx/window/embedding/SplitAttributes$Builder;-><init>()V

    .line 399
    invoke-virtual {p1}, Landroidx/window/embedding/SplitAttributes;->getSplitType()Landroidx/window/embedding/SplitAttributes$SplitType;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/window/embedding/SplitAttributes$Builder;->setSplitType(Landroidx/window/embedding/SplitAttributes$SplitType;)Landroidx/window/embedding/SplitAttributes$Builder;

    move-result-object v0

    .line 400
    invoke-virtual {p1}, Landroidx/window/embedding/SplitAttributes;->getLayoutDirection()Landroidx/window/embedding/SplitAttributes$LayoutDirection;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/window/embedding/SplitAttributes$Builder;->setLayoutDirection(Landroidx/window/embedding/SplitAttributes$LayoutDirection;)Landroidx/window/embedding/SplitAttributes$Builder;

    move-result-object v0

    .line 401
    invoke-virtual {p1}, Landroidx/window/embedding/SplitAttributes;->getAnimationParams()Landroidx/window/embedding/EmbeddingAnimationParams;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/window/embedding/SplitAttributes$Builder;->setAnimationParams(Landroidx/window/embedding/EmbeddingAnimationParams;)Landroidx/window/embedding/SplitAttributes$Builder;

    move-result-object v0

    .line 402
    invoke-virtual {p1}, Landroidx/window/embedding/SplitAttributes;->getDividerAttributes()Landroidx/window/embedding/DividerAttributes;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/window/embedding/SplitAttributes$Builder;->setDividerAttributes(Landroidx/window/embedding/DividerAttributes;)Landroidx/window/embedding/SplitAttributes$Builder;

    .line 403
    return-void
.end method


# virtual methods
.method public final build()Landroidx/window/embedding/SplitAttributes;
    .locals 6

    .line 470
    new-instance v0, Landroidx/window/embedding/SplitAttributes;

    iget-object v1, p0, Landroidx/window/embedding/SplitAttributes$Builder;->splitType:Landroidx/window/embedding/SplitAttributes$SplitType;

    iget-object v2, p0, Landroidx/window/embedding/SplitAttributes$Builder;->layoutDirection:Landroidx/window/embedding/SplitAttributes$LayoutDirection;

    iget-object v3, p0, Landroidx/window/embedding/SplitAttributes$Builder;->animationParams:Landroidx/window/embedding/EmbeddingAnimationParams;

    iget-object v4, p0, Landroidx/window/embedding/SplitAttributes$Builder;->dividerAttributes:Landroidx/window/embedding/DividerAttributes;

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroidx/window/embedding/SplitAttributes;-><init>(Landroidx/window/embedding/SplitAttributes$SplitType;Landroidx/window/embedding/SplitAttributes$LayoutDirection;Landroidx/window/embedding/EmbeddingAnimationParams;Landroidx/window/embedding/DividerAttributes;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

.method public final setAnimationParams(Landroidx/window/embedding/EmbeddingAnimationParams;)Landroidx/window/embedding/SplitAttributes$Builder;
    .locals 2
    .param p1, "params"    # Landroidx/window/embedding/EmbeddingAnimationParams;

    const-string v0, "params"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 442
    move-object v0, p0

    check-cast v0, Landroidx/window/embedding/SplitAttributes$Builder;

    .local v0, "$this$setAnimationParams_u24lambda_u242":Landroidx/window/embedding/SplitAttributes$Builder;
    const/4 v1, 0x0

    .line 443
    .local v1, "$i$a$-apply-SplitAttributes$Builder$setAnimationParams$1":I
    iput-object p1, v0, Landroidx/window/embedding/SplitAttributes$Builder;->animationParams:Landroidx/window/embedding/EmbeddingAnimationParams;

    .line 444
    nop

    .line 442
    .end local v0    # "$this$setAnimationParams_u24lambda_u242":Landroidx/window/embedding/SplitAttributes$Builder;
    .end local v1    # "$i$a$-apply-SplitAttributes$Builder$setAnimationParams$1":I
    move-object v0, p0

    check-cast v0, Landroidx/window/embedding/SplitAttributes$Builder;

    .line 444
    return-object v0
.end method

.method public final setDividerAttributes(Landroidx/window/embedding/DividerAttributes;)Landroidx/window/embedding/SplitAttributes$Builder;
    .locals 2
    .param p1, "dividerAttributes"    # Landroidx/window/embedding/DividerAttributes;

    const-string v0, "dividerAttributes"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 459
    move-object v0, p0

    check-cast v0, Landroidx/window/embedding/SplitAttributes$Builder;

    .local v0, "$this$setDividerAttributes_u24lambda_u243":Landroidx/window/embedding/SplitAttributes$Builder;
    const/4 v1, 0x0

    .line 460
    .local v1, "$i$a$-apply-SplitAttributes$Builder$setDividerAttributes$1":I
    iput-object p1, v0, Landroidx/window/embedding/SplitAttributes$Builder;->dividerAttributes:Landroidx/window/embedding/DividerAttributes;

    .line 461
    nop

    .line 459
    .end local v0    # "$this$setDividerAttributes_u24lambda_u243":Landroidx/window/embedding/SplitAttributes$Builder;
    .end local v1    # "$i$a$-apply-SplitAttributes$Builder$setDividerAttributes$1":I
    move-object v0, p0

    check-cast v0, Landroidx/window/embedding/SplitAttributes$Builder;

    .line 461
    return-object v0
.end method

.method public final setLayoutDirection(Landroidx/window/embedding/SplitAttributes$LayoutDirection;)Landroidx/window/embedding/SplitAttributes$Builder;
    .locals 2
    .param p1, "layoutDirection"    # Landroidx/window/embedding/SplitAttributes$LayoutDirection;

    const-string v0, "layoutDirection"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 425
    move-object v0, p0

    check-cast v0, Landroidx/window/embedding/SplitAttributes$Builder;

    .local v0, "$this$setLayoutDirection_u24lambda_u241":Landroidx/window/embedding/SplitAttributes$Builder;
    const/4 v1, 0x0

    .line 426
    .local v1, "$i$a$-apply-SplitAttributes$Builder$setLayoutDirection$1":I
    iput-object p1, v0, Landroidx/window/embedding/SplitAttributes$Builder;->layoutDirection:Landroidx/window/embedding/SplitAttributes$LayoutDirection;

    .line 427
    nop

    .line 425
    .end local v0    # "$this$setLayoutDirection_u24lambda_u241":Landroidx/window/embedding/SplitAttributes$Builder;
    .end local v1    # "$i$a$-apply-SplitAttributes$Builder$setLayoutDirection$1":I
    move-object v0, p0

    check-cast v0, Landroidx/window/embedding/SplitAttributes$Builder;

    .line 427
    return-object v0
.end method

.method public final setSplitType(Landroidx/window/embedding/SplitAttributes$SplitType;)Landroidx/window/embedding/SplitAttributes$Builder;
    .locals 2
    .param p1, "type"    # Landroidx/window/embedding/SplitAttributes$SplitType;

    const-string/jumbo v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 414
    move-object v0, p0

    check-cast v0, Landroidx/window/embedding/SplitAttributes$Builder;

    .line 474
    .local v0, "$this$setSplitType_u24lambda_u240":Landroidx/window/embedding/SplitAttributes$Builder;
    const/4 v1, 0x0

    .line 414
    .local v1, "$i$a$-apply-SplitAttributes$Builder$setSplitType$1":I
    iput-object p1, v0, Landroidx/window/embedding/SplitAttributes$Builder;->splitType:Landroidx/window/embedding/SplitAttributes$SplitType;

    .end local v0    # "$this$setSplitType_u24lambda_u240":Landroidx/window/embedding/SplitAttributes$Builder;
    .end local v1    # "$i$a$-apply-SplitAttributes$Builder$setSplitType$1":I
    move-object v0, p0

    check-cast v0, Landroidx/window/embedding/SplitAttributes$Builder;

    return-object v0
.end method
