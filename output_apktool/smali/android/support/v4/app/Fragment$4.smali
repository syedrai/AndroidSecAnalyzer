.class Landroid/support/v4/app/Fragment$4;
.super Ljava/lang/Object;
.source "Fragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v4/app/Fragment;->callStartTransitionListener(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v4/app/Fragment;

.field final synthetic val$controller:Landroid/support/v4/app/SpecialEffectsController;


# direct methods
.method constructor <init>(Landroid/support/v4/app/Fragment;Landroid/support/v4/app/SpecialEffectsController;)V
    .locals 0
    .param p1, "this$0"    # Landroid/support/v4/app/Fragment;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 2874
    iput-object p1, p0, Landroid/support/v4/app/Fragment$4;->this$0:Landroid/support/v4/app/Fragment;

    iput-object p2, p0, Landroid/support/v4/app/Fragment$4;->val$controller:Landroid/support/v4/app/SpecialEffectsController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 2877
    iget-object v0, p0, Landroid/support/v4/app/Fragment$4;->val$controller:Landroid/support/v4/app/SpecialEffectsController;

    invoke-virtual {v0}, Landroid/support/v4/app/SpecialEffectsController;->isPendingExecute()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2878
    iget-object v0, p0, Landroid/support/v4/app/Fragment$4;->val$controller:Landroid/support/v4/app/SpecialEffectsController;

    invoke-virtual {v0}, Landroid/support/v4/app/SpecialEffectsController;->executePendingOperations()V

    .line 2880
    :cond_0
    return-void
.end method
