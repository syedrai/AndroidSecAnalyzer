.class public final Landroid/support/v4/app/SpecialEffectsController$Operation$State$Companion;
.super Ljava/lang/Object;
.source "SpecialEffectsController.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/app/SpecialEffectsController$Operation$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\n\u0010\u0004\u001a\u00020\u0005*\u00020\u0006J\u0010\u0010\u0007\u001a\u00020\u00052\u0006\u0010\u0008\u001a\u00020\tH\u0007\u00a8\u0006\n"
    }
    d2 = {
        "Landroid/support/v4/app/SpecialEffectsController$Operation$State$Companion;",
        "",
        "<init>",
        "()V",
        "asOperationState",
        "Landroid/support/v4/app/SpecialEffectsController$Operation$State;",
        "Landroid/view/View;",
        "from",
        "visibility",
        "",
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


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 570
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Landroid/support/v4/app/SpecialEffectsController$Operation$State$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final asOperationState(Landroid/view/View;)Landroid/support/v4/app/SpecialEffectsController$Operation$State;
    .locals 2
    .param p1, "$this$asOperationState"    # Landroid/view/View;

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 573
    invoke-virtual {p1}, Landroid/view/View;->getAlpha()F

    move-result v0

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 575
    sget-object v0, Landroid/support/v4/app/SpecialEffectsController$Operation$State;->INVISIBLE:Landroid/support/v4/app/SpecialEffectsController$Operation$State;

    goto :goto_1

    .line 577
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/support/v4/app/SpecialEffectsController$Operation$State$Companion;->from(I)Landroid/support/v4/app/SpecialEffectsController$Operation$State;

    move-result-object v0

    .line 578
    :goto_1
    return-object v0
.end method

.method public final from(I)Landroid/support/v4/app/SpecialEffectsController$Operation$State;
    .locals 3
    .param p1, "visibility"    # I
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 588
    sparse-switch p1, :sswitch_data_0

    .line 592
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown visibility "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 591
    :sswitch_0
    sget-object v0, Landroid/support/v4/app/SpecialEffectsController$Operation$State;->GONE:Landroid/support/v4/app/SpecialEffectsController$Operation$State;

    goto :goto_0

    .line 590
    :sswitch_1
    sget-object v0, Landroid/support/v4/app/SpecialEffectsController$Operation$State;->INVISIBLE:Landroid/support/v4/app/SpecialEffectsController$Operation$State;

    goto :goto_0

    .line 589
    :sswitch_2
    sget-object v0, Landroid/support/v4/app/SpecialEffectsController$Operation$State;->VISIBLE:Landroid/support/v4/app/SpecialEffectsController$Operation$State;

    .line 588
    :goto_0
    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_2
        0x4 -> :sswitch_1
        0x8 -> :sswitch_0
    .end sparse-switch
.end method
