.class Lcom/google/android/material/progressindicator/BaseProgressIndicator$3;
.super Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;
.source "BaseProgressIndicator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/progressindicator/BaseProgressIndicator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/material/progressindicator/BaseProgressIndicator;


# direct methods
.method constructor <init>(Lcom/google/android/material/progressindicator/BaseProgressIndicator;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/android/material/progressindicator/BaseProgressIndicator;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 1008
    .local p0, "this":Lcom/google/android/material/progressindicator/BaseProgressIndicator$3;, "Lcom/google/android/material/progressindicator/BaseProgressIndicator$3;"
    iput-object p1, p0, Lcom/google/android/material/progressindicator/BaseProgressIndicator$3;->this$0:Lcom/google/android/material/progressindicator/BaseProgressIndicator;

    invoke-direct {p0}, Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/graphics/drawable/Drawable;)V
    .locals 3
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "drawable"
        }
    .end annotation

    .line 1012
    .local p0, "this":Lcom/google/android/material/progressindicator/BaseProgressIndicator$3;, "Lcom/google/android/material/progressindicator/BaseProgressIndicator$3;"
    iget-object v0, p0, Lcom/google/android/material/progressindicator/BaseProgressIndicator$3;->this$0:Lcom/google/android/material/progressindicator/BaseProgressIndicator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->setIndeterminate(Z)V

    .line 1013
    iget-object v0, p0, Lcom/google/android/material/progressindicator/BaseProgressIndicator$3;->this$0:Lcom/google/android/material/progressindicator/BaseProgressIndicator;

    iget-object v1, p0, Lcom/google/android/material/progressindicator/BaseProgressIndicator$3;->this$0:Lcom/google/android/material/progressindicator/BaseProgressIndicator;

    invoke-static {v1}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->-$$Nest$fgetstoredProgress(Lcom/google/android/material/progressindicator/BaseProgressIndicator;)I

    move-result v1

    iget-object v2, p0, Lcom/google/android/material/progressindicator/BaseProgressIndicator$3;->this$0:Lcom/google/android/material/progressindicator/BaseProgressIndicator;

    invoke-static {v2}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->-$$Nest$fgetstoredProgressAnimated(Lcom/google/android/material/progressindicator/BaseProgressIndicator;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->setProgressCompat(IZ)V

    .line 1014
    return-void
.end method
