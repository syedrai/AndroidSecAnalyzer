.class public final Landroidx/window/embedding/EmbeddingConfiguration$Builder;
.super Ljava/lang/Object;
.source "EmbeddingConfiguration.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/window/embedding/EmbeddingConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nEmbeddingConfiguration.kt\nKotlin\n*S Kotlin\n*F\n+ 1 EmbeddingConfiguration.kt\nandroidx/window/embedding/EmbeddingConfiguration$Builder\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,156:1\n1#2:157\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0010\u0010\u0008\u001a\u00020\u00002\u0006\u0010\t\u001a\u00020\u0005H\u0007J\u0010\u0010\n\u001a\u00020\u00002\u0006\u0010\u000b\u001a\u00020\u0007H\u0007J\u0006\u0010\u000c\u001a\u00020\rR\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000e"
    }
    d2 = {
        "Landroidx/window/embedding/EmbeddingConfiguration$Builder;",
        "",
        "<init>",
        "()V",
        "mDimAreaBehavior",
        "Landroidx/window/embedding/EmbeddingConfiguration$DimAreaBehavior;",
        "mSaveEmbeddingState",
        "",
        "setDimAreaBehavior",
        "area",
        "setAutoSaveEmbeddingState",
        "saveState",
        "build",
        "Landroidx/window/embedding/EmbeddingConfiguration;",
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
.field private mDimAreaBehavior:Landroidx/window/embedding/EmbeddingConfiguration$DimAreaBehavior;

.field private mSaveEmbeddingState:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    sget-object v0, Landroidx/window/embedding/EmbeddingConfiguration$DimAreaBehavior;->UNDEFINED:Landroidx/window/embedding/EmbeddingConfiguration$DimAreaBehavior;

    iput-object v0, p0, Landroidx/window/embedding/EmbeddingConfiguration$Builder;->mDimAreaBehavior:Landroidx/window/embedding/EmbeddingConfiguration$DimAreaBehavior;

    .line 105
    return-void
.end method


# virtual methods
.method public final build()Landroidx/window/embedding/EmbeddingConfiguration;
    .locals 4

    .line 153
    new-instance v0, Landroidx/window/embedding/EmbeddingConfiguration;

    iget-object v1, p0, Landroidx/window/embedding/EmbeddingConfiguration$Builder;->mDimAreaBehavior:Landroidx/window/embedding/EmbeddingConfiguration$DimAreaBehavior;

    iget-boolean v2, p0, Landroidx/window/embedding/EmbeddingConfiguration$Builder;->mSaveEmbeddingState:Z

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Landroidx/window/embedding/EmbeddingConfiguration;-><init>(Landroidx/window/embedding/EmbeddingConfiguration$DimAreaBehavior;ZLkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

.method public final setAutoSaveEmbeddingState(Z)Landroidx/window/embedding/EmbeddingConfiguration$Builder;
    .locals 2
    .param p1, "saveState"    # Z

    .line 143
    move-object v0, p0

    check-cast v0, Landroidx/window/embedding/EmbeddingConfiguration$Builder;

    .local v0, "$this$setAutoSaveEmbeddingState_u24lambda_u241":Landroidx/window/embedding/EmbeddingConfiguration$Builder;
    const/4 v1, 0x0

    .line 144
    .local v1, "$i$a$-apply-EmbeddingConfiguration$Builder$setAutoSaveEmbeddingState$1":I
    iput-boolean p1, v0, Landroidx/window/embedding/EmbeddingConfiguration$Builder;->mSaveEmbeddingState:Z

    .line 145
    nop

    .line 143
    .end local v0    # "$this$setAutoSaveEmbeddingState_u24lambda_u241":Landroidx/window/embedding/EmbeddingConfiguration$Builder;
    .end local v1    # "$i$a$-apply-EmbeddingConfiguration$Builder$setAutoSaveEmbeddingState$1":I
    move-object v0, p0

    check-cast v0, Landroidx/window/embedding/EmbeddingConfiguration$Builder;

    .line 145
    return-object v0
.end method

.method public final setDimAreaBehavior(Landroidx/window/embedding/EmbeddingConfiguration$DimAreaBehavior;)Landroidx/window/embedding/EmbeddingConfiguration$Builder;
    .locals 2
    .param p1, "area"    # Landroidx/window/embedding/EmbeddingConfiguration$DimAreaBehavior;

    const-string v0, "area"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 121
    move-object v0, p0

    check-cast v0, Landroidx/window/embedding/EmbeddingConfiguration$Builder;

    .line 157
    .local v0, "$this$setDimAreaBehavior_u24lambda_u240":Landroidx/window/embedding/EmbeddingConfiguration$Builder;
    const/4 v1, 0x0

    .line 121
    .local v1, "$i$a$-apply-EmbeddingConfiguration$Builder$setDimAreaBehavior$1":I
    iput-object p1, v0, Landroidx/window/embedding/EmbeddingConfiguration$Builder;->mDimAreaBehavior:Landroidx/window/embedding/EmbeddingConfiguration$DimAreaBehavior;

    .end local v0    # "$this$setDimAreaBehavior_u24lambda_u240":Landroidx/window/embedding/EmbeddingConfiguration$Builder;
    .end local v1    # "$i$a$-apply-EmbeddingConfiguration$Builder$setDimAreaBehavior$1":I
    move-object v0, p0

    check-cast v0, Landroidx/window/embedding/EmbeddingConfiguration$Builder;

    return-object v0
.end method
