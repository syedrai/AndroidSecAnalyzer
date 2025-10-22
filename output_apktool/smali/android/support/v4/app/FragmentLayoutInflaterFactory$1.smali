.class Landroid/support/v4/app/FragmentLayoutInflaterFactory$1;
.super Ljava/lang/Object;
.source "FragmentLayoutInflaterFactory.java"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v4/app/FragmentLayoutInflaterFactory;->onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v4/app/FragmentLayoutInflaterFactory;

.field final synthetic val$fragmentStateManager:Landroid/support/v4/app/FragmentStateManager;


# direct methods
.method constructor <init>(Landroid/support/v4/app/FragmentLayoutInflaterFactory;Landroid/support/v4/app/FragmentStateManager;)V
    .locals 0
    .param p1, "this$0"    # Landroid/support/v4/app/FragmentLayoutInflaterFactory;
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

    .line 159
    iput-object p1, p0, Landroid/support/v4/app/FragmentLayoutInflaterFactory$1;->this$0:Landroid/support/v4/app/FragmentLayoutInflaterFactory;

    iput-object p2, p0, Landroid/support/v4/app/FragmentLayoutInflaterFactory$1;->val$fragmentStateManager:Landroid/support/v4/app/FragmentStateManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .line 162
    iget-object v0, p0, Landroid/support/v4/app/FragmentLayoutInflaterFactory$1;->val$fragmentStateManager:Landroid/support/v4/app/FragmentStateManager;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentStateManager;->getFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 163
    .local v0, "fragment":Landroid/support/v4/app/Fragment;
    iget-object v1, p0, Landroid/support/v4/app/FragmentLayoutInflaterFactory$1;->val$fragmentStateManager:Landroid/support/v4/app/FragmentStateManager;

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentStateManager;->moveToExpectedState()V

    .line 164
    iget-object v1, v0, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    .line 165
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iget-object v2, p0, Landroid/support/v4/app/FragmentLayoutInflaterFactory$1;->this$0:Landroid/support/v4/app/FragmentLayoutInflaterFactory;

    iget-object v2, v2, Landroid/support/v4/app/FragmentLayoutInflaterFactory;->mFragmentManager:Landroid/support/v4/app/FragmentManager;

    invoke-static {v1, v2}, Landroid/support/v4/app/SpecialEffectsController;->getOrCreateController(Landroid/view/ViewGroup;Landroid/support/v4/app/FragmentManager;)Landroid/support/v4/app/SpecialEffectsController;

    move-result-object v1

    .line 167
    .local v1, "controller":Landroid/support/v4/app/SpecialEffectsController;
    invoke-virtual {v1}, Landroid/support/v4/app/SpecialEffectsController;->forceCompleteAllOperations()V

    .line 168
    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .line 171
    return-void
.end method
