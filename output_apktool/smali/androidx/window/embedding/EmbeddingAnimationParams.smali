.class public final Landroidx/window/embedding/EmbeddingAnimationParams;
.super Ljava/lang/Object;
.source "EmbeddingAnimationParams.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/window/embedding/EmbeddingAnimationParams$AnimationSpec;,
        Landroidx/window/embedding/EmbeddingAnimationParams$Builder;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001:\u0002\u0017\u0018B1\u0008\u0002\u0012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0005\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u0008\u0010\u0010\u001a\u00020\u0011H\u0016J\u0013\u0010\u0012\u001a\u00020\u00132\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u0001H\u0096\u0002J\u0008\u0010\u0015\u001a\u00020\u0016H\u0016R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000bR\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\rR\u0011\u0010\u0006\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\rR\u0011\u0010\u0007\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\r\u00a8\u0006\u0019"
    }
    d2 = {
        "Landroidx/window/embedding/EmbeddingAnimationParams;",
        "",
        "animationBackground",
        "Landroidx/window/embedding/EmbeddingAnimationBackground;",
        "openAnimation",
        "Landroidx/window/embedding/EmbeddingAnimationParams$AnimationSpec;",
        "closeAnimation",
        "changeAnimation",
        "<init>",
        "(Landroidx/window/embedding/EmbeddingAnimationBackground;Landroidx/window/embedding/EmbeddingAnimationParams$AnimationSpec;Landroidx/window/embedding/EmbeddingAnimationParams$AnimationSpec;Landroidx/window/embedding/EmbeddingAnimationParams$AnimationSpec;)V",
        "getAnimationBackground",
        "()Landroidx/window/embedding/EmbeddingAnimationBackground;",
        "getOpenAnimation",
        "()Landroidx/window/embedding/EmbeddingAnimationParams$AnimationSpec;",
        "getCloseAnimation",
        "getChangeAnimation",
        "hashCode",
        "",
        "equals",
        "",
        "other",
        "toString",
        "",
        "AnimationSpec",
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
.field private final animationBackground:Landroidx/window/embedding/EmbeddingAnimationBackground;

.field private final changeAnimation:Landroidx/window/embedding/EmbeddingAnimationParams$AnimationSpec;

.field private final closeAnimation:Landroidx/window/embedding/EmbeddingAnimationParams$AnimationSpec;

.field private final openAnimation:Landroidx/window/embedding/EmbeddingAnimationParams$AnimationSpec;


# direct methods
.method private constructor <init>(Landroidx/window/embedding/EmbeddingAnimationBackground;Landroidx/window/embedding/EmbeddingAnimationParams$AnimationSpec;Landroidx/window/embedding/EmbeddingAnimationParams$AnimationSpec;Landroidx/window/embedding/EmbeddingAnimationParams$AnimationSpec;)V
    .locals 0
    .param p1, "animationBackground"    # Landroidx/window/embedding/EmbeddingAnimationBackground;
    .param p2, "openAnimation"    # Landroidx/window/embedding/EmbeddingAnimationParams$AnimationSpec;
    .param p3, "closeAnimation"    # Landroidx/window/embedding/EmbeddingAnimationParams$AnimationSpec;
    .param p4, "changeAnimation"    # Landroidx/window/embedding/EmbeddingAnimationParams$AnimationSpec;

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Landroidx/window/embedding/EmbeddingAnimationParams;->animationBackground:Landroidx/window/embedding/EmbeddingAnimationBackground;

    .line 44
    iput-object p2, p0, Landroidx/window/embedding/EmbeddingAnimationParams;->openAnimation:Landroidx/window/embedding/EmbeddingAnimationParams$AnimationSpec;

    .line 45
    iput-object p3, p0, Landroidx/window/embedding/EmbeddingAnimationParams;->closeAnimation:Landroidx/window/embedding/EmbeddingAnimationParams$AnimationSpec;

    .line 46
    iput-object p4, p0, Landroidx/window/embedding/EmbeddingAnimationParams;->changeAnimation:Landroidx/window/embedding/EmbeddingAnimationParams$AnimationSpec;

    .line 42
    return-void
.end method

.method synthetic constructor <init>(Landroidx/window/embedding/EmbeddingAnimationBackground;Landroidx/window/embedding/EmbeddingAnimationParams$AnimationSpec;Landroidx/window/embedding/EmbeddingAnimationParams$AnimationSpec;Landroidx/window/embedding/EmbeddingAnimationParams$AnimationSpec;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 42
    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    .line 43
    sget-object p1, Landroidx/window/embedding/EmbeddingAnimationBackground;->DEFAULT:Landroidx/window/embedding/EmbeddingAnimationBackground;

    .line 42
    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    .line 44
    sget-object p2, Landroidx/window/embedding/EmbeddingAnimationParams$AnimationSpec;->DEFAULT:Landroidx/window/embedding/EmbeddingAnimationParams$AnimationSpec;

    .line 42
    :cond_1
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    .line 45
    sget-object p3, Landroidx/window/embedding/EmbeddingAnimationParams$AnimationSpec;->DEFAULT:Landroidx/window/embedding/EmbeddingAnimationParams$AnimationSpec;

    .line 42
    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    .line 46
    sget-object p4, Landroidx/window/embedding/EmbeddingAnimationParams$AnimationSpec;->DEFAULT:Landroidx/window/embedding/EmbeddingAnimationParams$AnimationSpec;

    .line 42
    :cond_3
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/window/embedding/EmbeddingAnimationParams;-><init>(Landroidx/window/embedding/EmbeddingAnimationBackground;Landroidx/window/embedding/EmbeddingAnimationParams$AnimationSpec;Landroidx/window/embedding/EmbeddingAnimationParams$AnimationSpec;Landroidx/window/embedding/EmbeddingAnimationParams$AnimationSpec;)V

    .line 47
    return-void
.end method

.method public synthetic constructor <init>(Landroidx/window/embedding/EmbeddingAnimationBackground;Landroidx/window/embedding/EmbeddingAnimationParams$AnimationSpec;Landroidx/window/embedding/EmbeddingAnimationParams$AnimationSpec;Landroidx/window/embedding/EmbeddingAnimationParams$AnimationSpec;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/window/embedding/EmbeddingAnimationParams;-><init>(Landroidx/window/embedding/EmbeddingAnimationBackground;Landroidx/window/embedding/EmbeddingAnimationParams$AnimationSpec;Landroidx/window/embedding/EmbeddingAnimationParams$AnimationSpec;Landroidx/window/embedding/EmbeddingAnimationParams$AnimationSpec;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "other"    # Ljava/lang/Object;

    .line 117
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 118
    :cond_0
    instance-of v1, p1, Landroidx/window/embedding/EmbeddingAnimationParams;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 119
    :cond_1
    iget-object v1, p0, Landroidx/window/embedding/EmbeddingAnimationParams;->animationBackground:Landroidx/window/embedding/EmbeddingAnimationBackground;

    move-object v3, p1

    check-cast v3, Landroidx/window/embedding/EmbeddingAnimationParams;

    iget-object v3, v3, Landroidx/window/embedding/EmbeddingAnimationParams;->animationBackground:Landroidx/window/embedding/EmbeddingAnimationBackground;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 120
    iget-object v1, p0, Landroidx/window/embedding/EmbeddingAnimationParams;->openAnimation:Landroidx/window/embedding/EmbeddingAnimationParams$AnimationSpec;

    move-object v3, p1

    check-cast v3, Landroidx/window/embedding/EmbeddingAnimationParams;

    iget-object v3, v3, Landroidx/window/embedding/EmbeddingAnimationParams;->openAnimation:Landroidx/window/embedding/EmbeddingAnimationParams$AnimationSpec;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 121
    iget-object v1, p0, Landroidx/window/embedding/EmbeddingAnimationParams;->closeAnimation:Landroidx/window/embedding/EmbeddingAnimationParams$AnimationSpec;

    move-object v3, p1

    check-cast v3, Landroidx/window/embedding/EmbeddingAnimationParams;

    iget-object v3, v3, Landroidx/window/embedding/EmbeddingAnimationParams;->closeAnimation:Landroidx/window/embedding/EmbeddingAnimationParams$AnimationSpec;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 122
    iget-object v1, p0, Landroidx/window/embedding/EmbeddingAnimationParams;->changeAnimation:Landroidx/window/embedding/EmbeddingAnimationParams$AnimationSpec;

    move-object v3, p1

    check-cast v3, Landroidx/window/embedding/EmbeddingAnimationParams;

    iget-object v3, v3, Landroidx/window/embedding/EmbeddingAnimationParams;->changeAnimation:Landroidx/window/embedding/EmbeddingAnimationParams$AnimationSpec;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 119
    :goto_0
    return v0
.end method

.method public final getAnimationBackground()Landroidx/window/embedding/EmbeddingAnimationBackground;
    .locals 1

    .line 43
    iget-object v0, p0, Landroidx/window/embedding/EmbeddingAnimationParams;->animationBackground:Landroidx/window/embedding/EmbeddingAnimationBackground;

    return-object v0
.end method

.method public final getChangeAnimation()Landroidx/window/embedding/EmbeddingAnimationParams$AnimationSpec;
    .locals 1

    .line 46
    iget-object v0, p0, Landroidx/window/embedding/EmbeddingAnimationParams;->changeAnimation:Landroidx/window/embedding/EmbeddingAnimationParams$AnimationSpec;

    return-object v0
.end method

.method public final getCloseAnimation()Landroidx/window/embedding/EmbeddingAnimationParams$AnimationSpec;
    .locals 1

    .line 45
    iget-object v0, p0, Landroidx/window/embedding/EmbeddingAnimationParams;->closeAnimation:Landroidx/window/embedding/EmbeddingAnimationParams$AnimationSpec;

    return-object v0
.end method

.method public final getOpenAnimation()Landroidx/window/embedding/EmbeddingAnimationParams$AnimationSpec;
    .locals 1

    .line 44
    iget-object v0, p0, Landroidx/window/embedding/EmbeddingAnimationParams;->openAnimation:Landroidx/window/embedding/EmbeddingAnimationParams$AnimationSpec;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 103
    iget-object v0, p0, Landroidx/window/embedding/EmbeddingAnimationParams;->animationBackground:Landroidx/window/embedding/EmbeddingAnimationBackground;

    invoke-virtual {v0}, Landroidx/window/embedding/EmbeddingAnimationBackground;->hashCode()I

    move-result v0

    .line 104
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroidx/window/embedding/EmbeddingAnimationParams;->openAnimation:Landroidx/window/embedding/EmbeddingAnimationParams$AnimationSpec;

    invoke-virtual {v2}, Landroidx/window/embedding/EmbeddingAnimationParams$AnimationSpec;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    .line 105
    .end local v0    # "result":I
    .local v1, "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Landroidx/window/embedding/EmbeddingAnimationParams;->closeAnimation:Landroidx/window/embedding/EmbeddingAnimationParams$AnimationSpec;

    invoke-virtual {v2}, Landroidx/window/embedding/EmbeddingAnimationParams$AnimationSpec;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    .line 106
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroidx/window/embedding/EmbeddingAnimationParams;->changeAnimation:Landroidx/window/embedding/EmbeddingAnimationParams$AnimationSpec;

    invoke-virtual {v2}, Landroidx/window/embedding/EmbeddingAnimationParams$AnimationSpec;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    .line 107
    .end local v0    # "result":I
    .restart local v1    # "result":I
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 131
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Landroidx/window/embedding/EmbeddingAnimationParams;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":{animationBackground="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 132
    iget-object v1, p0, Landroidx/window/embedding/EmbeddingAnimationParams;->animationBackground:Landroidx/window/embedding/EmbeddingAnimationBackground;

    .line 131
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 132
    nop

    .line 131
    const-string v1, ", openAnimation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 132
    iget-object v1, p0, Landroidx/window/embedding/EmbeddingAnimationParams;->openAnimation:Landroidx/window/embedding/EmbeddingAnimationParams$AnimationSpec;

    .line 131
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 132
    nop

    .line 131
    const-string v1, ", closeAnimation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 133
    iget-object v1, p0, Landroidx/window/embedding/EmbeddingAnimationParams;->closeAnimation:Landroidx/window/embedding/EmbeddingAnimationParams$AnimationSpec;

    .line 131
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 133
    nop

    .line 131
    const-string v1, ", changeAnimation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 133
    iget-object v1, p0, Landroidx/window/embedding/EmbeddingAnimationParams;->changeAnimation:Landroidx/window/embedding/EmbeddingAnimationParams$AnimationSpec;

    .line 131
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 133
    nop

    .line 131
    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 133
    return-object v0
.end method
