.class public Lcom/google/android/setupdesign/items/LottieIllustrationItem;
.super Lcom/google/android/setupdesign/items/Item;
.source "LottieIllustrationItem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/setupdesign/items/LottieIllustrationItem$AnimationViewListener;
    }
.end annotation


# instance fields
.field private animationId:I

.field private animationViewListener:Lcom/google/android/setupdesign/items/LottieIllustrationItem$AnimationViewListener;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Lcom/google/android/setupdesign/items/Item;-><init>()V

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "attrs"
        }
    .end annotation

    .line 45
    invoke-direct {p0, p1, p2}, Lcom/google/android/setupdesign/items/Item;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 46
    sget-object v0, Lcom/google/android/setupdesign/R$styleable;->SudIllustrationItem:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 47
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v1, Lcom/google/android/setupdesign/R$styleable;->SudIllustrationItem_sudAnimationId:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/google/android/setupdesign/items/LottieIllustrationItem;->animationId:I

    .line 48
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 49
    return-void
.end method


# virtual methods
.method public getAnimationId()I
    .locals 1

    .line 64
    iget v0, p0, Lcom/google/android/setupdesign/items/LottieIllustrationItem;->animationId:I

    return v0
.end method

.method protected getDefaultLayoutResource()I
    .locals 1

    .line 69
    sget v0, Lcom/google/android/setupdesign/R$layout;->sud_lottie_illustration_item:I

    return v0
.end method

.method public isEnabled()Z
    .locals 1

    .line 103
    const/4 v0, 0x0

    return v0
.end method

.method public isGroupDivider()Z
    .locals 1

    .line 94
    const/4 v0, 0x1

    return v0
.end method

.method public onBindView(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    .line 74
    if-eqz p1, :cond_2

    .line 75
    invoke-virtual {p0}, Lcom/google/android/setupdesign/items/LottieIllustrationItem;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 77
    sget v0, Lcom/google/android/setupdesign/R$id;->sud_item_lottie_illustration:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/LottieAnimationView;

    .line 78
    .local v0, "animationView":Lcom/airbnb/lottie/LottieAnimationView;
    iget v1, p0, Lcom/google/android/setupdesign/items/LottieIllustrationItem;->animationId:I

    if-eqz v1, :cond_0

    .line 79
    iget v1, p0, Lcom/google/android/setupdesign/items/LottieIllustrationItem;->animationId:I

    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(I)V

    .line 81
    :cond_0
    iget-object v1, p0, Lcom/google/android/setupdesign/items/LottieIllustrationItem;->animationViewListener:Lcom/google/android/setupdesign/items/LottieIllustrationItem$AnimationViewListener;

    if-eqz v1, :cond_1

    .line 82
    iget-object v1, p0, Lcom/google/android/setupdesign/items/LottieIllustrationItem;->animationViewListener:Lcom/google/android/setupdesign/items/LottieIllustrationItem$AnimationViewListener;

    invoke-interface {v1, v0}, Lcom/google/android/setupdesign/items/LottieIllustrationItem$AnimationViewListener;->onAnimationViewBound(Lcom/airbnb/lottie/LottieAnimationView;)V

    .line 84
    :cond_1
    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    .line 86
    .end local v0    # "animationView":Lcom/airbnb/lottie/LottieAnimationView;
    :cond_2
    return-void
.end method

.method public setAnimation(ILcom/google/android/setupdesign/items/LottieIllustrationItem$AnimationViewListener;)V
    .locals 0
    .param p1, "animationId"    # I
    .param p2, "animationViewListener"    # Lcom/google/android/setupdesign/items/LottieIllustrationItem$AnimationViewListener;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "animationId",
            "animationViewListener"
        }
    .end annotation

    .line 58
    iput p1, p0, Lcom/google/android/setupdesign/items/LottieIllustrationItem;->animationId:I

    .line 59
    iput-object p2, p0, Lcom/google/android/setupdesign/items/LottieIllustrationItem;->animationViewListener:Lcom/google/android/setupdesign/items/LottieIllustrationItem$AnimationViewListener;

    .line 60
    invoke-virtual {p0}, Lcom/google/android/setupdesign/items/LottieIllustrationItem;->notifyItemChanged()V

    .line 61
    return-void
.end method
