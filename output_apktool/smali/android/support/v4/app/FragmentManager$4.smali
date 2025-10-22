.class Landroid/support/v4/app/FragmentManager$4;
.super Ljava/lang/Object;
.source "FragmentManager.java"

# interfaces
.implements Landroid/support/v4/app/SpecialEffectsControllerFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/app/FragmentManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v4/app/FragmentManager;


# direct methods
.method constructor <init>(Landroid/support/v4/app/FragmentManager;)V
    .locals 0
    .param p1, "this$0"    # Landroid/support/v4/app/FragmentManager;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 665
    iput-object p1, p0, Landroid/support/v4/app/FragmentManager$4;->this$0:Landroid/support/v4/app/FragmentManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createController(Landroid/view/ViewGroup;)Landroid/support/v4/app/SpecialEffectsController;
    .locals 1
    .param p1, "container"    # Landroid/view/ViewGroup;

    .line 669
    new-instance v0, Landroid/support/v4/app/DefaultSpecialEffectsController;

    invoke-direct {v0, p1}, Landroid/support/v4/app/DefaultSpecialEffectsController;-><init>(Landroid/view/ViewGroup;)V

    return-object v0
.end method
