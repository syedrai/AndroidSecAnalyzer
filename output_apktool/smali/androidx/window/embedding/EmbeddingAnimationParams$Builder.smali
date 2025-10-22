.class public final Landroidx/window/embedding/EmbeddingAnimationParams$Builder;
.super Ljava/lang/Object;
.source "EmbeddingAnimationParams.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/window/embedding/EmbeddingAnimationParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nEmbeddingAnimationParams.kt\nKotlin\n*S Kotlin\n*F\n+ 1 EmbeddingAnimationParams.kt\nandroidx/window/embedding/EmbeddingAnimationParams$Builder\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,216:1\n1#2:217\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0010\u0010\n\u001a\u00020\u00002\u0006\u0010\u000b\u001a\u00020\u0005H\u0007J\u0010\u0010\u000c\u001a\u00020\u00002\u0006\u0010\r\u001a\u00020\u0007H\u0007J\u0010\u0010\u000e\u001a\u00020\u00002\u0006\u0010\r\u001a\u00020\u0007H\u0007J\u0010\u0010\u000f\u001a\u00020\u00002\u0006\u0010\r\u001a\u00020\u0007H\u0007J\u0006\u0010\u0010\u001a\u00020\u0011R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0012"
    }
    d2 = {
        "Landroidx/window/embedding/EmbeddingAnimationParams$Builder;",
        "",
        "<init>",
        "()V",
        "animationBackground",
        "Landroidx/window/embedding/EmbeddingAnimationBackground;",
        "openAnimation",
        "Landroidx/window/embedding/EmbeddingAnimationParams$AnimationSpec;",
        "closeAnimation",
        "changeAnimation",
        "setAnimationBackground",
        "background",
        "setOpenAnimation",
        "spec",
        "setCloseAnimation",
        "setChangeAnimation",
        "build",
        "Landroidx/window/embedding/EmbeddingAnimationParams;",
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
.field private animationBackground:Landroidx/window/embedding/EmbeddingAnimationBackground;

.field private changeAnimation:Landroidx/window/embedding/EmbeddingAnimationParams$AnimationSpec;

.field private closeAnimation:Landroidx/window/embedding/EmbeddingAnimationParams$AnimationSpec;

.field private openAnimation:Landroidx/window/embedding/EmbeddingAnimationParams$AnimationSpec;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 137
    sget-object v0, Landroidx/window/embedding/EmbeddingAnimationBackground;->DEFAULT:Landroidx/window/embedding/EmbeddingAnimationBackground;

    iput-object v0, p0, Landroidx/window/embedding/EmbeddingAnimationParams$Builder;->animationBackground:Landroidx/window/embedding/EmbeddingAnimationBackground;

    .line 138
    sget-object v0, Landroidx/window/embedding/EmbeddingAnimationParams$AnimationSpec;->DEFAULT:Landroidx/window/embedding/EmbeddingAnimationParams$AnimationSpec;

    iput-object v0, p0, Landroidx/window/embedding/EmbeddingAnimationParams$Builder;->openAnimation:Landroidx/window/embedding/EmbeddingAnimationParams$AnimationSpec;

    .line 139
    sget-object v0, Landroidx/window/embedding/EmbeddingAnimationParams$AnimationSpec;->DEFAULT:Landroidx/window/embedding/EmbeddingAnimationParams$AnimationSpec;

    iput-object v0, p0, Landroidx/window/embedding/EmbeddingAnimationParams$Builder;->closeAnimation:Landroidx/window/embedding/EmbeddingAnimationParams$AnimationSpec;

    .line 140
    sget-object v0, Landroidx/window/embedding/EmbeddingAnimationParams$AnimationSpec;->DEFAULT:Landroidx/window/embedding/EmbeddingAnimationParams$AnimationSpec;

    iput-object v0, p0, Landroidx/window/embedding/EmbeddingAnimationParams$Builder;->changeAnimation:Landroidx/window/embedding/EmbeddingAnimationParams$AnimationSpec;

    .line 136
    return-void
.end method


# virtual methods
.method public final build()Landroidx/window/embedding/EmbeddingAnimationParams;
    .locals 6

    .line 208
    new-instance v0, Landroidx/window/embedding/EmbeddingAnimationParams;

    .line 209
    iget-object v1, p0, Landroidx/window/embedding/EmbeddingAnimationParams$Builder;->animationBackground:Landroidx/window/embedding/EmbeddingAnimationBackground;

    .line 210
    iget-object v2, p0, Landroidx/window/embedding/EmbeddingAnimationParams$Builder;->openAnimation:Landroidx/window/embedding/EmbeddingAnimationParams$AnimationSpec;

    .line 211
    iget-object v3, p0, Landroidx/window/embedding/EmbeddingAnimationParams$Builder;->closeAnimation:Landroidx/window/embedding/EmbeddingAnimationParams$AnimationSpec;

    .line 212
    iget-object v4, p0, Landroidx/window/embedding/EmbeddingAnimationParams$Builder;->changeAnimation:Landroidx/window/embedding/EmbeddingAnimationParams$AnimationSpec;

    .line 208
    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroidx/window/embedding/EmbeddingAnimationParams;-><init>(Landroidx/window/embedding/EmbeddingAnimationBackground;Landroidx/window/embedding/EmbeddingAnimationParams$AnimationSpec;Landroidx/window/embedding/EmbeddingAnimationParams$AnimationSpec;Landroidx/window/embedding/EmbeddingAnimationParams$AnimationSpec;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 213
    return-object v0
.end method

.method public final setAnimationBackground(Landroidx/window/embedding/EmbeddingAnimationBackground;)Landroidx/window/embedding/EmbeddingAnimationParams$Builder;
    .locals 2
    .param p1, "background"    # Landroidx/window/embedding/EmbeddingAnimationBackground;

    const-string v0, "background"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 155
    move-object v0, p0

    check-cast v0, Landroidx/window/embedding/EmbeddingAnimationParams$Builder;

    .local v0, "$this$setAnimationBackground_u24lambda_u240":Landroidx/window/embedding/EmbeddingAnimationParams$Builder;
    const/4 v1, 0x0

    .line 156
    .local v1, "$i$a$-apply-EmbeddingAnimationParams$Builder$setAnimationBackground$1":I
    iput-object p1, v0, Landroidx/window/embedding/EmbeddingAnimationParams$Builder;->animationBackground:Landroidx/window/embedding/EmbeddingAnimationBackground;

    .line 157
    nop

    .line 155
    .end local v0    # "$this$setAnimationBackground_u24lambda_u240":Landroidx/window/embedding/EmbeddingAnimationParams$Builder;
    .end local v1    # "$i$a$-apply-EmbeddingAnimationParams$Builder$setAnimationBackground$1":I
    move-object v0, p0

    check-cast v0, Landroidx/window/embedding/EmbeddingAnimationParams$Builder;

    .line 157
    return-object v0
.end method

.method public final setChangeAnimation(Landroidx/window/embedding/EmbeddingAnimationParams$AnimationSpec;)Landroidx/window/embedding/EmbeddingAnimationParams$Builder;
    .locals 2
    .param p1, "spec"    # Landroidx/window/embedding/EmbeddingAnimationParams$AnimationSpec;

    const-string/jumbo v0, "spec"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 199
    move-object v0, p0

    check-cast v0, Landroidx/window/embedding/EmbeddingAnimationParams$Builder;

    .line 217
    .local v0, "$this$setChangeAnimation_u24lambda_u243":Landroidx/window/embedding/EmbeddingAnimationParams$Builder;
    const/4 v1, 0x0

    .line 199
    .local v1, "$i$a$-apply-EmbeddingAnimationParams$Builder$setChangeAnimation$1":I
    iput-object p1, v0, Landroidx/window/embedding/EmbeddingAnimationParams$Builder;->changeAnimation:Landroidx/window/embedding/EmbeddingAnimationParams$AnimationSpec;

    .end local v0    # "$this$setChangeAnimation_u24lambda_u243":Landroidx/window/embedding/EmbeddingAnimationParams$Builder;
    .end local v1    # "$i$a$-apply-EmbeddingAnimationParams$Builder$setChangeAnimation$1":I
    move-object v0, p0

    check-cast v0, Landroidx/window/embedding/EmbeddingAnimationParams$Builder;

    return-object v0
.end method

.method public final setCloseAnimation(Landroidx/window/embedding/EmbeddingAnimationParams$AnimationSpec;)Landroidx/window/embedding/EmbeddingAnimationParams$Builder;
    .locals 2
    .param p1, "spec"    # Landroidx/window/embedding/EmbeddingAnimationParams$AnimationSpec;

    const-string/jumbo v0, "spec"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 185
    move-object v0, p0

    check-cast v0, Landroidx/window/embedding/EmbeddingAnimationParams$Builder;

    .line 217
    .local v0, "$this$setCloseAnimation_u24lambda_u242":Landroidx/window/embedding/EmbeddingAnimationParams$Builder;
    const/4 v1, 0x0

    .line 185
    .local v1, "$i$a$-apply-EmbeddingAnimationParams$Builder$setCloseAnimation$1":I
    iput-object p1, v0, Landroidx/window/embedding/EmbeddingAnimationParams$Builder;->closeAnimation:Landroidx/window/embedding/EmbeddingAnimationParams$AnimationSpec;

    .end local v0    # "$this$setCloseAnimation_u24lambda_u242":Landroidx/window/embedding/EmbeddingAnimationParams$Builder;
    .end local v1    # "$i$a$-apply-EmbeddingAnimationParams$Builder$setCloseAnimation$1":I
    move-object v0, p0

    check-cast v0, Landroidx/window/embedding/EmbeddingAnimationParams$Builder;

    return-object v0
.end method

.method public final setOpenAnimation(Landroidx/window/embedding/EmbeddingAnimationParams$AnimationSpec;)Landroidx/window/embedding/EmbeddingAnimationParams$Builder;
    .locals 2
    .param p1, "spec"    # Landroidx/window/embedding/EmbeddingAnimationParams$AnimationSpec;

    const-string/jumbo v0, "spec"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 171
    move-object v0, p0

    check-cast v0, Landroidx/window/embedding/EmbeddingAnimationParams$Builder;

    .line 217
    .local v0, "$this$setOpenAnimation_u24lambda_u241":Landroidx/window/embedding/EmbeddingAnimationParams$Builder;
    const/4 v1, 0x0

    .line 171
    .local v1, "$i$a$-apply-EmbeddingAnimationParams$Builder$setOpenAnimation$1":I
    iput-object p1, v0, Landroidx/window/embedding/EmbeddingAnimationParams$Builder;->openAnimation:Landroidx/window/embedding/EmbeddingAnimationParams$AnimationSpec;

    .end local v0    # "$this$setOpenAnimation_u24lambda_u241":Landroidx/window/embedding/EmbeddingAnimationParams$Builder;
    .end local v1    # "$i$a$-apply-EmbeddingAnimationParams$Builder$setOpenAnimation$1":I
    move-object v0, p0

    check-cast v0, Landroidx/window/embedding/EmbeddingAnimationParams$Builder;

    return-object v0
.end method
