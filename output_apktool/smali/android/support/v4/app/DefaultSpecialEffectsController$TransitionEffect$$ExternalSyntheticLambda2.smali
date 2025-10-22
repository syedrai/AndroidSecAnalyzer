.class public final synthetic Landroid/support/v4/app/DefaultSpecialEffectsController$TransitionEffect$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public synthetic f$0:Landroid/support/v4/app/FragmentTransitionImpl;

.field public synthetic f$1:Landroid/view/View;

.field public synthetic f$2:Landroid/graphics/Rect;


# direct methods
.method public synthetic constructor <init>(Landroid/support/v4/app/FragmentTransitionImpl;Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/support/v4/app/DefaultSpecialEffectsController$TransitionEffect$$ExternalSyntheticLambda2;->f$0:Landroid/support/v4/app/FragmentTransitionImpl;

    iput-object p2, p0, Landroid/support/v4/app/DefaultSpecialEffectsController$TransitionEffect$$ExternalSyntheticLambda2;->f$1:Landroid/view/View;

    iput-object p3, p0, Landroid/support/v4/app/DefaultSpecialEffectsController$TransitionEffect$$ExternalSyntheticLambda2;->f$2:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 0
    iget-object v0, p0, Landroid/support/v4/app/DefaultSpecialEffectsController$TransitionEffect$$ExternalSyntheticLambda2;->f$0:Landroid/support/v4/app/FragmentTransitionImpl;

    iget-object v1, p0, Landroid/support/v4/app/DefaultSpecialEffectsController$TransitionEffect$$ExternalSyntheticLambda2;->f$1:Landroid/view/View;

    iget-object v2, p0, Landroid/support/v4/app/DefaultSpecialEffectsController$TransitionEffect$$ExternalSyntheticLambda2;->f$2:Landroid/graphics/Rect;

    invoke-static {v0, v1, v2}, Landroid/support/v4/app/DefaultSpecialEffectsController$TransitionEffect;->$r8$lambda$RHDd8OI53zzwMfODcYSNxFPI-yg(Landroid/support/v4/app/FragmentTransitionImpl;Landroid/view/View;Landroid/graphics/Rect;)V

    return-void
.end method
