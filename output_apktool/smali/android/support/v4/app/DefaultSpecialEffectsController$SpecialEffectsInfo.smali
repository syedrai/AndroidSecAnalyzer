.class public Landroid/support/v4/app/DefaultSpecialEffectsController$SpecialEffectsInfo;
.super Ljava/lang/Object;
.source "DefaultSpecialEffectsController.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/app/DefaultSpecialEffectsController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SpecialEffectsInfo"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0002\u0008\u0010\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007R\u0011\u0010\u0008\u001a\u00020\t8F\u00a2\u0006\u0006\u001a\u0004\u0008\u0008\u0010\n\u00a8\u0006\u000b"
    }
    d2 = {
        "Landroid/support/v4/app/DefaultSpecialEffectsController$SpecialEffectsInfo;",
        "",
        "operation",
        "Landroid/support/v4/app/SpecialEffectsController$Operation;",
        "<init>",
        "(Landroid/support/v4/app/SpecialEffectsController$Operation;)V",
        "getOperation",
        "()Landroid/support/v4/app/SpecialEffectsController$Operation;",
        "isVisibilityUnchanged",
        "",
        "()Z",
        "fragment_release"
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
.field private final operation:Landroid/support/v4/app/SpecialEffectsController$Operation;


# direct methods
.method public constructor <init>(Landroid/support/v4/app/SpecialEffectsController$Operation;)V
    .locals 1
    .param p1, "operation"    # Landroid/support/v4/app/SpecialEffectsController$Operation;

    const-string v0, "operation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 417
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/support/v4/app/DefaultSpecialEffectsController$SpecialEffectsInfo;->operation:Landroid/support/v4/app/SpecialEffectsController$Operation;

    return-void
.end method


# virtual methods
.method public final getOperation()Landroid/support/v4/app/SpecialEffectsController$Operation;
    .locals 1

    .line 417
    iget-object v0, p0, Landroid/support/v4/app/DefaultSpecialEffectsController$SpecialEffectsInfo;->operation:Landroid/support/v4/app/SpecialEffectsController$Operation;

    return-object v0
.end method

.method public final isVisibilityUnchanged()Z
    .locals 3

    .line 421
    iget-object v0, p0, Landroid/support/v4/app/DefaultSpecialEffectsController$SpecialEffectsInfo;->operation:Landroid/support/v4/app/SpecialEffectsController$Operation;

    invoke-virtual {v0}, Landroid/support/v4/app/SpecialEffectsController$Operation;->getFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    iget-object v0, v0, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    if-eqz v0, :cond_0

    sget-object v1, Landroid/support/v4/app/SpecialEffectsController$Operation$State;->Companion:Landroid/support/v4/app/SpecialEffectsController$Operation$State$Companion;

    invoke-virtual {v1, v0}, Landroid/support/v4/app/SpecialEffectsController$Operation$State$Companion;->asOperationState(Landroid/view/View;)Landroid/support/v4/app/SpecialEffectsController$Operation$State;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 422
    .local v0, "currentState":Landroid/support/v4/app/SpecialEffectsController$Operation$State;
    :goto_0
    iget-object v1, p0, Landroid/support/v4/app/DefaultSpecialEffectsController$SpecialEffectsInfo;->operation:Landroid/support/v4/app/SpecialEffectsController$Operation;

    invoke-virtual {v1}, Landroid/support/v4/app/SpecialEffectsController$Operation;->getFinalState()Landroid/support/v4/app/SpecialEffectsController$Operation$State;

    move-result-object v1

    .line 423
    .local v1, "finalState":Landroid/support/v4/app/SpecialEffectsController$Operation$State;
    if-eq v0, v1, :cond_2

    .line 424
    sget-object v2, Landroid/support/v4/app/SpecialEffectsController$Operation$State;->VISIBLE:Landroid/support/v4/app/SpecialEffectsController$Operation$State;

    if-eq v0, v2, :cond_1

    .line 425
    sget-object v2, Landroid/support/v4/app/SpecialEffectsController$Operation$State;->VISIBLE:Landroid/support/v4/app/SpecialEffectsController$Operation$State;

    if-eq v1, v2, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v2, 0x1

    .line 423
    :goto_2
    return v2
.end method
