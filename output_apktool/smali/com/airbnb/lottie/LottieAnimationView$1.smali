.class Lcom/airbnb/lottie/LottieAnimationView$1;
.super Ljava/lang/Object;
.source "LottieAnimationView.java"

# interfaces
.implements Lcom/airbnb/lottie/LottieListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/lottie/LottieAnimationView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/airbnb/lottie/LottieListener<",
        "Ljava/lang/Throwable;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/lottie/LottieAnimationView;


# direct methods
.method constructor <init>(Lcom/airbnb/lottie/LottieAnimationView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/airbnb/lottie/LottieAnimationView;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 75
    iput-object p1, p0, Lcom/airbnb/lottie/LottieAnimationView$1;->this$0:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onResult(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "result"
        }
    .end annotation

    .line 75
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/LottieAnimationView$1;->onResult(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onResult(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "result"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "result"
        }
    .end annotation

    .line 78
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView$1;->this$0:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-static {v0}, Lcom/airbnb/lottie/LottieAnimationView;->-$$Nest$fgetfallbackResource(Lcom/airbnb/lottie/LottieAnimationView;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView$1;->this$0:Lcom/airbnb/lottie/LottieAnimationView;

    iget-object v1, p0, Lcom/airbnb/lottie/LottieAnimationView$1;->this$0:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-static {v1}, Lcom/airbnb/lottie/LottieAnimationView;->-$$Nest$fgetfallbackResource(Lcom/airbnb/lottie/LottieAnimationView;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setImageResource(I)V

    .line 82
    :cond_0
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView$1;->this$0:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-static {v0}, Lcom/airbnb/lottie/LottieAnimationView;->-$$Nest$fgetfailureListener(Lcom/airbnb/lottie/LottieAnimationView;)Lcom/airbnb/lottie/LottieListener;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/airbnb/lottie/LottieAnimationView;->-$$Nest$sfgetDEFAULT_FAILURE_LISTENER()Lcom/airbnb/lottie/LottieListener;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView$1;->this$0:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-static {v0}, Lcom/airbnb/lottie/LottieAnimationView;->-$$Nest$fgetfailureListener(Lcom/airbnb/lottie/LottieAnimationView;)Lcom/airbnb/lottie/LottieListener;

    move-result-object v0

    .line 83
    .local v0, "l":Lcom/airbnb/lottie/LottieListener;, "Lcom/airbnb/lottie/LottieListener<Ljava/lang/Throwable;>;"
    :goto_0
    invoke-interface {v0, p1}, Lcom/airbnb/lottie/LottieListener;->onResult(Ljava/lang/Object;)V

    .line 84
    return-void
.end method
