.class Lcom/google/android/setupdesign/template/RequireScrollMixin$6;
.super Ljava/lang/Object;
.source "RequireScrollMixin.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/setupdesign/template/RequireScrollMixin;->postScrollStateChange(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/setupdesign/template/RequireScrollMixin;

.field final synthetic val$scrollNeeded:Z


# direct methods
.method constructor <init>(Lcom/google/android/setupdesign/template/RequireScrollMixin;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/android/setupdesign/template/RequireScrollMixin;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$scrollNeeded"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 456
    iput-boolean p2, p0, Lcom/google/android/setupdesign/template/RequireScrollMixin$6;->val$scrollNeeded:Z

    iput-object p1, p0, Lcom/google/android/setupdesign/template/RequireScrollMixin$6;->this$0:Lcom/google/android/setupdesign/template/RequireScrollMixin;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 459
    iget-object v0, p0, Lcom/google/android/setupdesign/template/RequireScrollMixin$6;->this$0:Lcom/google/android/setupdesign/template/RequireScrollMixin;

    invoke-static {v0}, Lcom/google/android/setupdesign/template/RequireScrollMixin;->-$$Nest$fgetlistener(Lcom/google/android/setupdesign/template/RequireScrollMixin;)Lcom/google/android/setupdesign/template/RequireScrollMixin$OnRequireScrollStateChangedListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 460
    iget-object v0, p0, Lcom/google/android/setupdesign/template/RequireScrollMixin$6;->this$0:Lcom/google/android/setupdesign/template/RequireScrollMixin;

    invoke-static {v0}, Lcom/google/android/setupdesign/template/RequireScrollMixin;->-$$Nest$fgetlistener(Lcom/google/android/setupdesign/template/RequireScrollMixin;)Lcom/google/android/setupdesign/template/RequireScrollMixin$OnRequireScrollStateChangedListener;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/android/setupdesign/template/RequireScrollMixin$6;->val$scrollNeeded:Z

    invoke-interface {v0, v1}, Lcom/google/android/setupdesign/template/RequireScrollMixin$OnRequireScrollStateChangedListener;->onRequireScrollStateChanged(Z)V

    .line 462
    :cond_0
    return-void
.end method
