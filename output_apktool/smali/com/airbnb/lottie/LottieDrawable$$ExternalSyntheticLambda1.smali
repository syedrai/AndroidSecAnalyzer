.class public final synthetic Lcom/airbnb/lottie/LottieDrawable$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/airbnb/lottie/LottieDrawable$LazyCompositionTask;


# instance fields
.field public synthetic f$0:Lcom/airbnb/lottie/LottieDrawable;

.field public synthetic f$1:I

.field public synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/airbnb/lottie/LottieDrawable;II)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/airbnb/lottie/LottieDrawable$$ExternalSyntheticLambda1;->f$0:Lcom/airbnb/lottie/LottieDrawable;

    iput p2, p0, Lcom/airbnb/lottie/LottieDrawable$$ExternalSyntheticLambda1;->f$1:I

    iput p3, p0, Lcom/airbnb/lottie/LottieDrawable$$ExternalSyntheticLambda1;->f$2:I

    return-void
.end method


# virtual methods
.method public final run(Lcom/airbnb/lottie/LottieComposition;)V
    .locals 3

    .line 0
    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable$$ExternalSyntheticLambda1;->f$0:Lcom/airbnb/lottie/LottieDrawable;

    iget v1, p0, Lcom/airbnb/lottie/LottieDrawable$$ExternalSyntheticLambda1;->f$1:I

    iget v2, p0, Lcom/airbnb/lottie/LottieDrawable$$ExternalSyntheticLambda1;->f$2:I

    invoke-static {v0, v1, v2, p1}, Lcom/airbnb/lottie/LottieDrawable;->$r8$lambda$kacFjf7y0bnjV56SM5L7rwZBRS4(Lcom/airbnb/lottie/LottieDrawable;IILcom/airbnb/lottie/LottieComposition;)V

    return-void
.end method
