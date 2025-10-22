.class Lcom/google/android/setupdesign/template/RecyclerViewScrollHandlingDelegate$2;
.super Ljava/lang/Object;
.source "RecyclerViewScrollHandlingDelegate.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/setupdesign/template/RecyclerViewScrollHandlingDelegate;->startListening()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/setupdesign/template/RecyclerViewScrollHandlingDelegate;


# direct methods
.method constructor <init>(Lcom/google/android/setupdesign/template/RecyclerViewScrollHandlingDelegate;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/android/setupdesign/template/RecyclerViewScrollHandlingDelegate;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 71
    iput-object p1, p0, Lcom/google/android/setupdesign/template/RecyclerViewScrollHandlingDelegate$2;->this$0:Lcom/google/android/setupdesign/template/RecyclerViewScrollHandlingDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 2

    .line 74
    iget-object v0, p0, Lcom/google/android/setupdesign/template/RecyclerViewScrollHandlingDelegate$2;->this$0:Lcom/google/android/setupdesign/template/RecyclerViewScrollHandlingDelegate;

    invoke-static {v0}, Lcom/google/android/setupdesign/template/RecyclerViewScrollHandlingDelegate;->-$$Nest$fgetrequireScrollMixin(Lcom/google/android/setupdesign/template/RecyclerViewScrollHandlingDelegate;)Lcom/google/android/setupdesign/template/RequireScrollMixin;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/setupdesign/template/RecyclerViewScrollHandlingDelegate$2;->this$0:Lcom/google/android/setupdesign/template/RecyclerViewScrollHandlingDelegate;

    invoke-static {v1}, Lcom/google/android/setupdesign/template/RecyclerViewScrollHandlingDelegate;->-$$Nest$mcanScrollDown(Lcom/google/android/setupdesign/template/RecyclerViewScrollHandlingDelegate;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/setupdesign/template/RequireScrollMixin;->notifyScrollabilityChange(Z)V

    .line 75
    return-void
.end method
