.class Lcom/google/android/material/transition/platform/MaterialContainerTransformSharedElementCallback$1;
.super Lcom/google/android/material/transition/platform/TransitionListenerAdapter;
.source "MaterialContainerTransformSharedElementCallback.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/transition/platform/MaterialContainerTransformSharedElementCallback;->setUpEnterTransform(Landroid/view/Window;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$window:Landroid/view/Window;


# direct methods
.method constructor <init>(Lcom/google/android/material/transition/platform/MaterialContainerTransformSharedElementCallback;Landroid/view/Window;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/android/material/transition/platform/MaterialContainerTransformSharedElementCallback;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$window"
        }
    .end annotation

    .line 239
    iput-object p2, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransformSharedElementCallback$1;->val$window:Landroid/view/Window;

    invoke-direct {p0}, Lcom/google/android/material/transition/platform/TransitionListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onTransitionEnd(Landroid/transition/Transition;)V
    .locals 1
    .param p1, "transition"    # Landroid/transition/Transition;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "transition"
        }
    .end annotation

    .line 247
    iget-object v0, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransformSharedElementCallback$1;->val$window:Landroid/view/Window;

    invoke-static {v0}, Lcom/google/android/material/transition/platform/MaterialContainerTransformSharedElementCallback;->-$$Nest$smrestoreWindowBackground(Landroid/view/Window;)V

    .line 248
    return-void
.end method

.method public onTransitionStart(Landroid/transition/Transition;)V
    .locals 1
    .param p1, "transition"    # Landroid/transition/Transition;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "transition"
        }
    .end annotation

    .line 242
    iget-object v0, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransformSharedElementCallback$1;->val$window:Landroid/view/Window;

    invoke-static {v0}, Lcom/google/android/material/transition/platform/MaterialContainerTransformSharedElementCallback;->-$$Nest$smremoveWindowBackground(Landroid/view/Window;)V

    .line 243
    return-void
.end method
