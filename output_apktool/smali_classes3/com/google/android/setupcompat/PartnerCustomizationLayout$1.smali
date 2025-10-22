.class Lcom/google/android/setupcompat/PartnerCustomizationLayout$1;
.super Landroid/support/v4/app/FragmentManager$FragmentLifecycleCallbacks;
.source "PartnerCustomizationLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/setupcompat/PartnerCustomizationLayout;->tryRegisterFragmentCallbacks(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/setupcompat/PartnerCustomizationLayout;


# direct methods
.method constructor <init>(Lcom/google/android/setupcompat/PartnerCustomizationLayout;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/android/setupcompat/PartnerCustomizationLayout;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 368
    iput-object p1, p0, Lcom/google/android/setupcompat/PartnerCustomizationLayout$1;->this$0:Lcom/google/android/setupcompat/PartnerCustomizationLayout;

    invoke-direct {p0}, Landroid/support/v4/app/FragmentManager$FragmentLifecycleCallbacks;-><init>()V

    return-void
.end method


# virtual methods
.method public onFragmentAttached(Landroid/support/v4/app/FragmentManager;Landroid/support/v4/app/Fragment;Landroid/content/Context;)V
    .locals 2
    .param p1, "fm"    # Landroid/support/v4/app/FragmentManager;
    .param p2, "f"    # Landroid/support/v4/app/Fragment;
    .param p3, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "fm",
            "f",
            "context"
        }
    .end annotation

    .line 372
    iget-object v0, p0, Lcom/google/android/setupcompat/PartnerCustomizationLayout$1;->this$0:Lcom/google/android/setupcompat/PartnerCustomizationLayout;

    const-string v1, "onFragmentAttached"

    invoke-static {v0, p2, v1}, Lcom/google/android/setupcompat/PartnerCustomizationLayout;->-$$Nest$mprintFragmentInfoAtDebug(Lcom/google/android/setupcompat/PartnerCustomizationLayout;Landroid/support/v4/app/Fragment;Ljava/lang/String;)V

    .line 373
    iget-object v0, p0, Lcom/google/android/setupcompat/PartnerCustomizationLayout$1;->this$0:Lcom/google/android/setupcompat/PartnerCustomizationLayout;

    const-class v1, Lcom/google/android/setupcompat/template/FooterBarMixin;

    invoke-virtual {v0, v1}, Lcom/google/android/setupcompat/PartnerCustomizationLayout;->getMixin(Ljava/lang/Class;)Lcom/google/android/setupcompat/template/Mixin;

    move-result-object v0

    check-cast v0, Lcom/google/android/setupcompat/template/FooterBarMixin;

    invoke-virtual {v0, p2}, Lcom/google/android/setupcompat/template/FooterBarMixin;->setFragmentInfo(Landroid/support/v4/app/Fragment;)V

    .line 374
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/FragmentManager$FragmentLifecycleCallbacks;->onFragmentAttached(Landroid/support/v4/app/FragmentManager;Landroid/support/v4/app/Fragment;Landroid/content/Context;)V

    .line 375
    return-void
.end method
