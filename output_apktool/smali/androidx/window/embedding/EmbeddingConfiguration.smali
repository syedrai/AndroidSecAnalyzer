.class public final Landroidx/window/embedding/EmbeddingConfiguration;
.super Ljava/lang/Object;
.source "EmbeddingConfiguration.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/window/embedding/EmbeddingConfiguration$Builder;,
        Landroidx/window/embedding/EmbeddingConfiguration$DimAreaBehavior;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0008\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001:\u0002\u0011\u0012B\u001d\u0008\u0002\u0012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u0013\u0010\u000b\u001a\u00020\u00052\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u0001H\u0096\u0002J\u0008\u0010\r\u001a\u00020\u000eH\u0016J\u0008\u0010\u000f\u001a\u00020\u0010H\u0016R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0004\u0010\n\u00a8\u0006\u0013"
    }
    d2 = {
        "Landroidx/window/embedding/EmbeddingConfiguration;",
        "",
        "dimAreaBehavior",
        "Landroidx/window/embedding/EmbeddingConfiguration$DimAreaBehavior;",
        "isAutoSaveEmbeddingState",
        "",
        "<init>",
        "(Landroidx/window/embedding/EmbeddingConfiguration$DimAreaBehavior;Z)V",
        "getDimAreaBehavior",
        "()Landroidx/window/embedding/EmbeddingConfiguration$DimAreaBehavior;",
        "()Z",
        "equals",
        "other",
        "hashCode",
        "",
        "toString",
        "",
        "DimAreaBehavior",
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
.field private final dimAreaBehavior:Landroidx/window/embedding/EmbeddingConfiguration$DimAreaBehavior;

.field private final isAutoSaveEmbeddingState:Z


# direct methods
.method private constructor <init>(Landroidx/window/embedding/EmbeddingConfiguration$DimAreaBehavior;Z)V
    .locals 0
    .param p1, "dimAreaBehavior"    # Landroidx/window/embedding/EmbeddingConfiguration$DimAreaBehavior;
    .param p2, "isAutoSaveEmbeddingState"    # Z

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Landroidx/window/embedding/EmbeddingConfiguration;->dimAreaBehavior:Landroidx/window/embedding/EmbeddingConfiguration$DimAreaBehavior;

    .line 33
    iput-boolean p2, p0, Landroidx/window/embedding/EmbeddingConfiguration;->isAutoSaveEmbeddingState:Z

    .line 31
    return-void
.end method

.method synthetic constructor <init>(Landroidx/window/embedding/EmbeddingConfiguration$DimAreaBehavior;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 31
    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    .line 32
    sget-object p1, Landroidx/window/embedding/EmbeddingConfiguration$DimAreaBehavior;->UNDEFINED:Landroidx/window/embedding/EmbeddingConfiguration$DimAreaBehavior;

    .line 31
    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    .line 33
    const/4 p2, 0x0

    .line 31
    :cond_1
    invoke-direct {p0, p1, p2}, Landroidx/window/embedding/EmbeddingConfiguration;-><init>(Landroidx/window/embedding/EmbeddingConfiguration$DimAreaBehavior;Z)V

    .line 34
    return-void
.end method

.method public synthetic constructor <init>(Landroidx/window/embedding/EmbeddingConfiguration$DimAreaBehavior;ZLkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroidx/window/embedding/EmbeddingConfiguration;-><init>(Landroidx/window/embedding/EmbeddingConfiguration$DimAreaBehavior;Z)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "other"    # Ljava/lang/Object;

    .line 87
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 88
    :cond_0
    instance-of v1, p1, Landroidx/window/embedding/EmbeddingConfiguration;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 90
    :cond_1
    iget-object v1, p0, Landroidx/window/embedding/EmbeddingConfiguration;->dimAreaBehavior:Landroidx/window/embedding/EmbeddingConfiguration$DimAreaBehavior;

    move-object v3, p1

    check-cast v3, Landroidx/window/embedding/EmbeddingConfiguration;

    iget-object v3, v3, Landroidx/window/embedding/EmbeddingConfiguration;->dimAreaBehavior:Landroidx/window/embedding/EmbeddingConfiguration$DimAreaBehavior;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    .line 91
    :cond_2
    iget-boolean v1, p0, Landroidx/window/embedding/EmbeddingConfiguration;->isAutoSaveEmbeddingState:Z

    move-object v3, p1

    check-cast v3, Landroidx/window/embedding/EmbeddingConfiguration;

    iget-boolean v3, v3, Landroidx/window/embedding/EmbeddingConfiguration;->isAutoSaveEmbeddingState:Z

    if-eq v1, v3, :cond_3

    return v2

    .line 92
    :cond_3
    return v0
.end method

.method public final getDimAreaBehavior()Landroidx/window/embedding/EmbeddingConfiguration$DimAreaBehavior;
    .locals 1

    .line 32
    iget-object v0, p0, Landroidx/window/embedding/EmbeddingConfiguration;->dimAreaBehavior:Landroidx/window/embedding/EmbeddingConfiguration$DimAreaBehavior;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 96
    iget-object v0, p0, Landroidx/window/embedding/EmbeddingConfiguration;->dimAreaBehavior:Landroidx/window/embedding/EmbeddingConfiguration$DimAreaBehavior;

    invoke-virtual {v0}, Landroidx/window/embedding/EmbeddingConfiguration$DimAreaBehavior;->hashCode()I

    move-result v0

    .line 97
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-boolean v2, p0, Landroidx/window/embedding/EmbeddingConfiguration;->isAutoSaveEmbeddingState:Z

    invoke-static {v2}, Landroidx/window/embedding/ActivityRule$$ExternalSyntheticBackport0;->m(Z)I

    move-result v2

    add-int/2addr v1, v2

    .line 98
    .end local v0    # "result":I
    .local v1, "result":I
    return v1
.end method

.method public final isAutoSaveEmbeddingState()Z
    .locals 1

    .line 33
    iget-boolean v0, p0, Landroidx/window/embedding/EmbeddingConfiguration;->isAutoSaveEmbeddingState:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 102
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EmbeddingConfiguration{dimArea="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroidx/window/embedding/EmbeddingConfiguration;->dimAreaBehavior:Landroidx/window/embedding/EmbeddingConfiguration$DimAreaBehavior;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", saveState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroidx/window/embedding/EmbeddingConfiguration;->isAutoSaveEmbeddingState:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
