.class public Landroid/support/v7/widget/AppCompatTextView;
.super Landroid/widget/TextView;
.source "AppCompatTextView.java"

# interfaces
.implements Landroidx/core/view/TintableBackgroundView;
.implements Landroidx/core/widget/TintableCompoundDrawablesView;
.implements Landroidx/core/widget/AutoSizeableTextView;
.implements Landroid/support/v7/widget/EmojiCompatConfigurationView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/widget/AppCompatTextView$SuperCaller;,
        Landroid/support/v7/widget/AppCompatTextView$SuperCallerApi34;,
        Landroid/support/v7/widget/AppCompatTextView$SuperCallerApi28;,
        Landroid/support/v7/widget/AppCompatTextView$SuperCallerApi26;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "AppCompatTextView"


# instance fields
.field private final mBackgroundTintHelper:Landroid/support/v7/widget/AppCompatBackgroundHelper;

.field private mEmojiTextViewHelper:Landroid/support/v7/widget/AppCompatEmojiTextHelper;

.field private mFontVariationSettings:Ljava/lang/String;

.field private mIsSetTypefaceProcessing:Z

.field private mLastKnownTypefaceSetOnPaint:Landroid/graphics/Typeface;

.field private mOriginalTypeface:Landroid/graphics/Typeface;

.field private mPrecomputedTextFuture:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future<",
            "Landroidx/core/text/PrecomputedTextCompat;",
            ">;"
        }
    .end annotation
.end field

.field private mSuperCaller:Landroid/support/v7/widget/AppCompatTextView$SuperCaller;

.field private final mTextClassifierHelper:Landroid/support/v7/widget/AppCompatTextClassifierHelper;

.field private final mTextHelper:Landroid/support/v7/widget/AppCompatTextHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 131
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/v7/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 132
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 135
    const v0, 0x1010084

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 136
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 140
    invoke-static {p1}, Landroid/support/v7/widget/TintContextWrapper;->wrap(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 99
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/widget/AppCompatTextView;->mIsSetTypefaceProcessing:Z

    .line 126
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/widget/AppCompatTextView;->mSuperCaller:Landroid/support/v7/widget/AppCompatTextView$SuperCaller;

    .line 142
    invoke-virtual {p0}, Landroid/support/v7/widget/AppCompatTextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/support/v7/widget/ThemeUtils;->checkAppCompatTheme(Landroid/view/View;Landroid/content/Context;)V

    .line 144
    new-instance v0, Landroid/support/v7/widget/AppCompatBackgroundHelper;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/AppCompatBackgroundHelper;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Landroid/support/v7/widget/AppCompatTextView;->mBackgroundTintHelper:Landroid/support/v7/widget/AppCompatBackgroundHelper;

    .line 145
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatTextView;->mBackgroundTintHelper:Landroid/support/v7/widget/AppCompatBackgroundHelper;

    invoke-virtual {v0, p2, p3}, Landroid/support/v7/widget/AppCompatBackgroundHelper;->loadFromAttributes(Landroid/util/AttributeSet;I)V

    .line 147
    new-instance v0, Landroid/support/v7/widget/AppCompatTextHelper;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/AppCompatTextHelper;-><init>(Landroid/widget/TextView;)V

    iput-object v0, p0, Landroid/support/v7/widget/AppCompatTextView;->mTextHelper:Landroid/support/v7/widget/AppCompatTextHelper;

    .line 148
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatTextView;->mTextHelper:Landroid/support/v7/widget/AppCompatTextHelper;

    invoke-virtual {v0, p2, p3}, Landroid/support/v7/widget/AppCompatTextHelper;->loadFromAttributes(Landroid/util/AttributeSet;I)V

    .line 149
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatTextView;->mTextHelper:Landroid/support/v7/widget/AppCompatTextHelper;

    invoke-virtual {v0}, Landroid/support/v7/widget/AppCompatTextHelper;->applyCompoundDrawablesTints()V

    .line 151
    new-instance v0, Landroid/support/v7/widget/AppCompatTextClassifierHelper;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/AppCompatTextClassifierHelper;-><init>(Landroid/widget/TextView;)V

    iput-object v0, p0, Landroid/support/v7/widget/AppCompatTextView;->mTextClassifierHelper:Landroid/support/v7/widget/AppCompatTextClassifierHelper;

    .line 153
    invoke-direct {p0}, Landroid/support/v7/widget/AppCompatTextView;->getEmojiTextViewHelper()Landroid/support/v7/widget/AppCompatEmojiTextHelper;

    move-result-object v0

    .line 154
    .local v0, "emojiTextViewHelper":Landroid/support/v7/widget/AppCompatEmojiTextHelper;
    invoke-virtual {v0, p2, p3}, Landroid/support/v7/widget/AppCompatEmojiTextHelper;->loadFromAttributes(Landroid/util/AttributeSet;I)V

    .line 155
    return-void
.end method

.method static synthetic access$001(Landroid/support/v7/widget/AppCompatTextView;)I
    .locals 1
    .param p0, "x0"    # Landroid/support/v7/widget/AppCompatTextView;

    .line 89
    invoke-super {p0}, Landroid/widget/TextView;->getAutoSizeMaxTextSize()I

    move-result v0

    return v0
.end method

.method static synthetic access$1001(Landroid/support/v7/widget/AppCompatTextView;I)V
    .locals 0
    .param p0, "x0"    # Landroid/support/v7/widget/AppCompatTextView;
    .param p1, "x1"    # I

    .line 89
    invoke-super {p0, p1}, Landroid/widget/TextView;->setFirstBaselineToTopHeight(I)V

    return-void
.end method

.method static synthetic access$101(Landroid/support/v7/widget/AppCompatTextView;)I
    .locals 1
    .param p0, "x0"    # Landroid/support/v7/widget/AppCompatTextView;

    .line 89
    invoke-super {p0}, Landroid/widget/TextView;->getAutoSizeMinTextSize()I

    move-result v0

    return v0
.end method

.method static synthetic access$1101(Landroid/support/v7/widget/AppCompatTextView;I)V
    .locals 0
    .param p0, "x0"    # Landroid/support/v7/widget/AppCompatTextView;
    .param p1, "x1"    # I

    .line 89
    invoke-super {p0, p1}, Landroid/widget/TextView;->setLastBaselineToBottomHeight(I)V

    return-void
.end method

.method static synthetic access$1201(Landroid/support/v7/widget/AppCompatTextView;IF)V
    .locals 0
    .param p0, "x0"    # Landroid/support/v7/widget/AppCompatTextView;
    .param p1, "x1"    # I
    .param p2, "x2"    # F

    .line 89
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->setLineHeight(IF)V

    return-void
.end method

.method static synthetic access$201(Landroid/support/v7/widget/AppCompatTextView;)I
    .locals 1
    .param p0, "x0"    # Landroid/support/v7/widget/AppCompatTextView;

    .line 89
    invoke-super {p0}, Landroid/widget/TextView;->getAutoSizeStepGranularity()I

    move-result v0

    return v0
.end method

.method static synthetic access$301(Landroid/support/v7/widget/AppCompatTextView;)[I
    .locals 1
    .param p0, "x0"    # Landroid/support/v7/widget/AppCompatTextView;

    .line 89
    invoke-super {p0}, Landroid/widget/TextView;->getAutoSizeTextAvailableSizes()[I

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$401(Landroid/support/v7/widget/AppCompatTextView;)I
    .locals 1
    .param p0, "x0"    # Landroid/support/v7/widget/AppCompatTextView;

    .line 89
    invoke-super {p0}, Landroid/widget/TextView;->getAutoSizeTextType()I

    move-result v0

    return v0
.end method

.method static synthetic access$501(Landroid/support/v7/widget/AppCompatTextView;)Landroid/view/textclassifier/TextClassifier;
    .locals 1
    .param p0, "x0"    # Landroid/support/v7/widget/AppCompatTextView;

    .line 89
    invoke-super {p0}, Landroid/widget/TextView;->getTextClassifier()Landroid/view/textclassifier/TextClassifier;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$601(Landroid/support/v7/widget/AppCompatTextView;IIII)V
    .locals 0
    .param p0, "x0"    # Landroid/support/v7/widget/AppCompatTextView;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # I

    .line 89
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->setAutoSizeTextTypeUniformWithConfiguration(IIII)V

    return-void
.end method

.method static synthetic access$701(Landroid/support/v7/widget/AppCompatTextView;[II)V
    .locals 0
    .param p0, "x0"    # Landroid/support/v7/widget/AppCompatTextView;
    .param p1, "x1"    # [I
    .param p2, "x2"    # I

    .line 89
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->setAutoSizeTextTypeUniformWithPresetSizes([II)V

    return-void
.end method

.method static synthetic access$801(Landroid/support/v7/widget/AppCompatTextView;I)V
    .locals 0
    .param p0, "x0"    # Landroid/support/v7/widget/AppCompatTextView;
    .param p1, "x1"    # I

    .line 89
    invoke-super {p0, p1}, Landroid/widget/TextView;->setAutoSizeTextTypeWithDefaults(I)V

    return-void
.end method

.method static synthetic access$901(Landroid/support/v7/widget/AppCompatTextView;Landroid/view/textclassifier/TextClassifier;)V
    .locals 0
    .param p0, "x0"    # Landroid/support/v7/widget/AppCompatTextView;
    .param p1, "x1"    # Landroid/view/textclassifier/TextClassifier;

    .line 89
    invoke-super {p0, p1}, Landroid/widget/TextView;->setTextClassifier(Landroid/view/textclassifier/TextClassifier;)V

    return-void
.end method

.method private consumeTextFutureAndSetBlocking()V
    .locals 2

    .line 603
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatTextView;->mPrecomputedTextFuture:Ljava/util/concurrent/Future;

    if-eqz v0, :cond_0

    .line 605
    :try_start_0
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatTextView;->mPrecomputedTextFuture:Ljava/util/concurrent/Future;

    .line 606
    .local v0, "future":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<Landroidx/core/text/PrecomputedTextCompat;>;"
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/support/v7/widget/AppCompatTextView;->mPrecomputedTextFuture:Ljava/util/concurrent/Future;

    .line 607
    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/core/text/PrecomputedTextCompat;

    invoke-static {p0, v1}, Landroidx/core/widget/TextViewCompat;->setPrecomputedText(Landroid/widget/TextView;Landroidx/core/text/PrecomputedTextCompat;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 610
    .end local v0    # "future":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<Landroidx/core/text/PrecomputedTextCompat;>;"
    goto :goto_0

    .line 608
    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    .line 612
    :cond_0
    :goto_0
    return-void
.end method

.method private getEmojiTextViewHelper()Landroid/support/v7/widget/AppCompatEmojiTextHelper;
    .locals 1

    .line 162
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatTextView;->mEmojiTextViewHelper:Landroid/support/v7/widget/AppCompatEmojiTextHelper;

    if-nez v0, :cond_0

    .line 163
    new-instance v0, Landroid/support/v7/widget/AppCompatEmojiTextHelper;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/AppCompatEmojiTextHelper;-><init>(Landroid/widget/TextView;)V

    iput-object v0, p0, Landroid/support/v7/widget/AppCompatTextView;->mEmojiTextViewHelper:Landroid/support/v7/widget/AppCompatEmojiTextHelper;

    .line 165
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatTextView;->mEmojiTextViewHelper:Landroid/support/v7/widget/AppCompatEmojiTextHelper;

    return-object v0
.end method

.method private setTypefaceInternal(Landroid/graphics/Typeface;)V
    .locals 0
    .param p1, "tf"    # Landroid/graphics/Typeface;

    .line 833
    iput-object p1, p0, Landroid/support/v7/widget/AppCompatTextView;->mLastKnownTypefaceSetOnPaint:Landroid/graphics/Typeface;

    .line 834
    invoke-super {p0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 835
    return-void
.end method


# virtual methods
.method protected drawableStateChanged()V
    .locals 1

    .line 303
    invoke-super {p0}, Landroid/widget/TextView;->drawableStateChanged()V

    .line 304
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatTextView;->mBackgroundTintHelper:Landroid/support/v7/widget/AppCompatBackgroundHelper;

    if-eqz v0, :cond_0

    .line 305
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatTextView;->mBackgroundTintHelper:Landroid/support/v7/widget/AppCompatBackgroundHelper;

    invoke-virtual {v0}, Landroid/support/v7/widget/AppCompatBackgroundHelper;->applySupportBackgroundTint()V

    .line 307
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatTextView;->mTextHelper:Landroid/support/v7/widget/AppCompatTextHelper;

    if-eqz v0, :cond_1

    .line 308
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatTextView;->mTextHelper:Landroid/support/v7/widget/AppCompatTextHelper;

    invoke-virtual {v0}, Landroid/support/v7/widget/AppCompatTextHelper;->applyCompoundDrawablesTints()V

    .line 310
    :cond_1
    return-void
.end method

.method public getAutoSizeMaxTextSize()I
    .locals 1

    .line 471
    sget-boolean v0, Landroid/support/v7/widget/ViewUtils;->SDK_LEVEL_SUPPORTS_AUTOSIZE:Z

    if-eqz v0, :cond_0

    .line 472
    invoke-virtual {p0}, Landroid/support/v7/widget/AppCompatTextView;->getSuperCaller()Landroid/support/v7/widget/AppCompatTextView$SuperCaller;

    move-result-object v0

    invoke-interface {v0}, Landroid/support/v7/widget/AppCompatTextView$SuperCaller;->getAutoSizeMaxTextSize()I

    move-result v0

    return v0

    .line 474
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatTextView;->mTextHelper:Landroid/support/v7/widget/AppCompatTextHelper;

    if-eqz v0, :cond_1

    .line 475
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatTextView;->mTextHelper:Landroid/support/v7/widget/AppCompatTextHelper;

    invoke-virtual {v0}, Landroid/support/v7/widget/AppCompatTextHelper;->getAutoSizeMaxTextSize()I

    move-result v0

    return v0

    .line 478
    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method public getAutoSizeMinTextSize()I
    .locals 1

    .line 453
    sget-boolean v0, Landroid/support/v7/widget/ViewUtils;->SDK_LEVEL_SUPPORTS_AUTOSIZE:Z

    if-eqz v0, :cond_0

    .line 454
    invoke-virtual {p0}, Landroid/support/v7/widget/AppCompatTextView;->getSuperCaller()Landroid/support/v7/widget/AppCompatTextView$SuperCaller;

    move-result-object v0

    invoke-interface {v0}, Landroid/support/v7/widget/AppCompatTextView$SuperCaller;->getAutoSizeMinTextSize()I

    move-result v0

    return v0

    .line 456
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatTextView;->mTextHelper:Landroid/support/v7/widget/AppCompatTextHelper;

    if-eqz v0, :cond_1

    .line 457
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatTextView;->mTextHelper:Landroid/support/v7/widget/AppCompatTextHelper;

    invoke-virtual {v0}, Landroid/support/v7/widget/AppCompatTextHelper;->getAutoSizeMinTextSize()I

    move-result v0

    return v0

    .line 460
    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method public getAutoSizeStepGranularity()I
    .locals 1

    .line 435
    sget-boolean v0, Landroid/support/v7/widget/ViewUtils;->SDK_LEVEL_SUPPORTS_AUTOSIZE:Z

    if-eqz v0, :cond_0

    .line 436
    invoke-virtual {p0}, Landroid/support/v7/widget/AppCompatTextView;->getSuperCaller()Landroid/support/v7/widget/AppCompatTextView$SuperCaller;

    move-result-object v0

    invoke-interface {v0}, Landroid/support/v7/widget/AppCompatTextView$SuperCaller;->getAutoSizeStepGranularity()I

    move-result v0

    return v0

    .line 438
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatTextView;->mTextHelper:Landroid/support/v7/widget/AppCompatTextHelper;

    if-eqz v0, :cond_1

    .line 439
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatTextView;->mTextHelper:Landroid/support/v7/widget/AppCompatTextHelper;

    invoke-virtual {v0}, Landroid/support/v7/widget/AppCompatTextHelper;->getAutoSizeStepGranularity()I

    move-result v0

    return v0

    .line 442
    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method public getAutoSizeTextAvailableSizes()[I
    .locals 1

    .line 489
    sget-boolean v0, Landroid/support/v7/widget/ViewUtils;->SDK_LEVEL_SUPPORTS_AUTOSIZE:Z

    if-eqz v0, :cond_0

    .line 490
    invoke-virtual {p0}, Landroid/support/v7/widget/AppCompatTextView;->getSuperCaller()Landroid/support/v7/widget/AppCompatTextView$SuperCaller;

    move-result-object v0

    invoke-interface {v0}, Landroid/support/v7/widget/AppCompatTextView$SuperCaller;->getAutoSizeTextAvailableSizes()[I

    move-result-object v0

    return-object v0

    .line 492
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatTextView;->mTextHelper:Landroid/support/v7/widget/AppCompatTextHelper;

    if-eqz v0, :cond_1

    .line 493
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatTextView;->mTextHelper:Landroid/support/v7/widget/AppCompatTextHelper;

    invoke-virtual {v0}, Landroid/support/v7/widget/AppCompatTextHelper;->getAutoSizeTextAvailableSizes()[I

    move-result-object v0

    return-object v0

    .line 496
    :cond_1
    const/4 v0, 0x0

    new-array v0, v0, [I

    return-object v0
.end method

.method public getAutoSizeTextType()I
    .locals 3

    .line 414
    sget-boolean v0, Landroid/support/v7/widget/ViewUtils;->SDK_LEVEL_SUPPORTS_AUTOSIZE:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 415
    invoke-virtual {p0}, Landroid/support/v7/widget/AppCompatTextView;->getSuperCaller()Landroid/support/v7/widget/AppCompatTextView$SuperCaller;

    move-result-object v0

    invoke-interface {v0}, Landroid/support/v7/widget/AppCompatTextView$SuperCaller;->getAutoSizeTextType()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 417
    const/4 v1, 0x1

    goto :goto_0

    .line 418
    :cond_0
    nop

    .line 415
    :goto_0
    return v1

    .line 420
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatTextView;->mTextHelper:Landroid/support/v7/widget/AppCompatTextHelper;

    if-eqz v0, :cond_2

    .line 421
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatTextView;->mTextHelper:Landroid/support/v7/widget/AppCompatTextHelper;

    invoke-virtual {v0}, Landroid/support/v7/widget/AppCompatTextHelper;->getAutoSizeTextType()I

    move-result v0

    return v0

    .line 424
    :cond_2
    return v1
.end method

.method public getCustomSelectionActionModeCallback()Landroid/view/ActionMode$Callback;
    .locals 1

    .line 563
    nop

    .line 564
    invoke-super {p0}, Landroid/widget/TextView;->getCustomSelectionActionModeCallback()Landroid/view/ActionMode$Callback;

    move-result-object v0

    .line 563
    invoke-static {v0}, Landroidx/core/widget/TextViewCompat;->unwrapCustomSelectionActionModeCallback(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode$Callback;

    move-result-object v0

    return-object v0
.end method

.method public getFirstBaselineToTopHeight()I
    .locals 1

    .line 528
    invoke-static {p0}, Landroidx/core/widget/TextViewCompat;->getFirstBaselineToTopHeight(Landroid/widget/TextView;)I

    move-result v0

    return v0
.end method

.method public getFontVariationSettings()Ljava/lang/String;
    .locals 1

    .line 277
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatTextView;->mFontVariationSettings:Ljava/lang/String;

    return-object v0
.end method

.method public getLastBaselineToBottomHeight()I
    .locals 1

    .line 533
    invoke-static {p0}, Landroidx/core/widget/TextViewCompat;->getLastBaselineToBottomHeight(Landroid/widget/TextView;)I

    move-result v0

    return v0
.end method

.method getSuperCaller()Landroid/support/v7/widget/AppCompatTextView$SuperCaller;
    .locals 2

    .line 887
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatTextView;->mSuperCaller:Landroid/support/v7/widget/AppCompatTextView$SuperCaller;

    if-nez v0, :cond_2

    .line 888
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x22

    if-lt v0, v1, :cond_0

    .line 889
    new-instance v0, Landroid/support/v7/widget/AppCompatTextView$SuperCallerApi34;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/AppCompatTextView$SuperCallerApi34;-><init>(Landroid/support/v7/widget/AppCompatTextView;)V

    iput-object v0, p0, Landroid/support/v7/widget/AppCompatTextView;->mSuperCaller:Landroid/support/v7/widget/AppCompatTextView$SuperCaller;

    goto :goto_0

    .line 890
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_1

    .line 891
    new-instance v0, Landroid/support/v7/widget/AppCompatTextView$SuperCallerApi28;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/AppCompatTextView$SuperCallerApi28;-><init>(Landroid/support/v7/widget/AppCompatTextView;)V

    iput-object v0, p0, Landroid/support/v7/widget/AppCompatTextView;->mSuperCaller:Landroid/support/v7/widget/AppCompatTextView$SuperCaller;

    goto :goto_0

    .line 892
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_2

    .line 893
    new-instance v0, Landroid/support/v7/widget/AppCompatTextView$SuperCallerApi26;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/AppCompatTextView$SuperCallerApi26;-><init>(Landroid/support/v7/widget/AppCompatTextView;)V

    iput-object v0, p0, Landroid/support/v7/widget/AppCompatTextView;->mSuperCaller:Landroid/support/v7/widget/AppCompatTextView$SuperCaller;

    .line 896
    :cond_2
    :goto_0
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatTextView;->mSuperCaller:Landroid/support/v7/widget/AppCompatTextView$SuperCaller;

    return-object v0
.end method

.method public getSupportBackgroundTintList()Landroid/content/res/ColorStateList;
    .locals 1

    .line 203
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatTextView;->mBackgroundTintHelper:Landroid/support/v7/widget/AppCompatBackgroundHelper;

    if-eqz v0, :cond_0

    .line 204
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatTextView;->mBackgroundTintHelper:Landroid/support/v7/widget/AppCompatBackgroundHelper;

    invoke-virtual {v0}, Landroid/support/v7/widget/AppCompatBackgroundHelper;->getSupportBackgroundTintList()Landroid/content/res/ColorStateList;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 203
    :goto_0
    return-object v0
.end method

.method public getSupportBackgroundTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 1

    .line 226
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatTextView;->mBackgroundTintHelper:Landroid/support/v7/widget/AppCompatBackgroundHelper;

    if-eqz v0, :cond_0

    .line 227
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatTextView;->mBackgroundTintHelper:Landroid/support/v7/widget/AppCompatBackgroundHelper;

    invoke-virtual {v0}, Landroid/support/v7/widget/AppCompatBackgroundHelper;->getSupportBackgroundTintMode()Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 226
    :goto_0
    return-object v0
.end method

.method public getSupportCompoundDrawablesTintList()Landroid/content/res/ColorStateList;
    .locals 1

    .line 749
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatTextView;->mTextHelper:Landroid/support/v7/widget/AppCompatTextHelper;

    invoke-virtual {v0}, Landroid/support/v7/widget/AppCompatTextHelper;->getCompoundDrawableTintList()Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method

.method public getSupportCompoundDrawablesTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 1

    .line 789
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatTextView;->mTextHelper:Landroid/support/v7/widget/AppCompatTextHelper;

    invoke-virtual {v0}, Landroid/support/v7/widget/AppCompatTextHelper;->getCompoundDrawableTintMode()Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    return-object v0
.end method

.method public getText()Ljava/lang/CharSequence;
    .locals 1

    .line 616
    invoke-direct {p0}, Landroid/support/v7/widget/AppCompatTextView;->consumeTextFutureAndSetBlocking()V

    .line 617
    invoke-super {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getTextClassifier()Landroid/view/textclassifier/TextClassifier;
    .locals 2

    .line 643
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-ge v0, v1, :cond_1

    iget-object v0, p0, Landroid/support/v7/widget/AppCompatTextView;->mTextClassifierHelper:Landroid/support/v7/widget/AppCompatTextClassifierHelper;

    if-nez v0, :cond_0

    goto :goto_0

    .line 646
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatTextView;->mTextClassifierHelper:Landroid/support/v7/widget/AppCompatTextClassifierHelper;

    invoke-virtual {v0}, Landroid/support/v7/widget/AppCompatTextClassifierHelper;->getTextClassifier()Landroid/view/textclassifier/TextClassifier;

    move-result-object v0

    return-object v0

    .line 644
    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroid/support/v7/widget/AppCompatTextView;->getSuperCaller()Landroid/support/v7/widget/AppCompatTextView$SuperCaller;

    move-result-object v0

    invoke-interface {v0}, Landroid/support/v7/widget/AppCompatTextView$SuperCaller;->getTextClassifier()Landroid/view/textclassifier/TextClassifier;

    move-result-object v0

    return-object v0
.end method

.method public getTextMetricsParamsCompat()Landroidx/core/text/PrecomputedTextCompat$Params;
    .locals 1

    .line 575
    invoke-static {p0}, Landroidx/core/widget/TextViewCompat;->getTextMetricsParams(Landroid/widget/TextView;)Landroidx/core/text/PrecomputedTextCompat$Params;

    move-result-object v0

    return-object v0
.end method

.method public getTypeface()Landroid/graphics/Typeface;
    .locals 1

    .line 841
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatTextView;->mOriginalTypeface:Landroid/graphics/Typeface;

    return-object v0
.end method

.method public isEmojiCompatEnabled()Z
    .locals 1

    .line 298
    invoke-direct {p0}, Landroid/support/v7/widget/AppCompatTextView;->getEmojiTextViewHelper()Landroid/support/v7/widget/AppCompatEmojiTextHelper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/AppCompatEmojiTextHelper;->isEnabled()Z

    move-result v0

    return v0
.end method

.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 2
    .param p1, "outAttrs"    # Landroid/view/inputmethod/EditorInfo;

    .line 501
    invoke-super {p0, p1}, Landroid/widget/TextView;->onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 502
    .local v0, "ic":Landroid/view/inputmethod/InputConnection;
    iget-object v1, p0, Landroid/support/v7/widget/AppCompatTextView;->mTextHelper:Landroid/support/v7/widget/AppCompatTextHelper;

    invoke-virtual {v1, p0, v0, p1}, Landroid/support/v7/widget/AppCompatTextHelper;->populateSurroundingTextIfNeeded(Landroid/widget/TextView;Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;)V

    .line 503
    invoke-static {v0, p1, p0}, Landroid/support/v7/widget/AppCompatHintHelper;->onCreateInputConnection(Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;Landroid/view/View;)Landroid/view/inputmethod/InputConnection;

    move-result-object v1

    return-object v1
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 871
    invoke-super {p0}, Landroid/widget/TextView;->onDetachedFromWindow()V

    .line 872
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    if-ge v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/widget/AppCompatTextView;->onCheckIsTextEditor()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 873
    invoke-virtual {p0}, Landroid/support/v7/widget/AppCompatTextView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 880
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {v0, p0}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    .line 882
    .end local v0    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 6
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .line 314
    invoke-super/range {p0 .. p5}, Landroid/widget/TextView;->onLayout(ZIIII)V

    .line 315
    move v1, p1

    move-object p1, p0

    .end local p1    # "changed":Z
    .local v1, "changed":Z
    iget-object v0, p1, Landroid/support/v7/widget/AppCompatTextView;->mTextHelper:Landroid/support/v7/widget/AppCompatTextHelper;

    if-eqz v0, :cond_0

    .line 316
    iget-object v0, p1, Landroid/support/v7/widget/AppCompatTextView;->mTextHelper:Landroid/support/v7/widget/AppCompatTextHelper;

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    .end local p2    # "left":I
    .end local p3    # "top":I
    .end local p4    # "right":I
    .end local p5    # "bottom":I
    .local v2, "left":I
    .local v3, "top":I
    .local v4, "right":I
    .local v5, "bottom":I
    invoke-virtual/range {v0 .. v5}, Landroid/support/v7/widget/AppCompatTextHelper;->onLayout(ZIIII)V

    .line 318
    .end local v2    # "left":I
    .end local v3    # "top":I
    .end local v4    # "right":I
    .end local v5    # "bottom":I
    .restart local p2    # "left":I
    .restart local p3    # "top":I
    .restart local p4    # "right":I
    .restart local p5    # "bottom":I
    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 0
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 670
    invoke-direct {p0}, Landroid/support/v7/widget/AppCompatTextView;->consumeTextFutureAndSetBlocking()V

    .line 671
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->onMeasure(II)V

    .line 672
    return-void
.end method

.method protected onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "lengthBefore"    # I
    .param p4, "lengthAfter"    # I

    .line 333
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->onTextChanged(Ljava/lang/CharSequence;III)V

    .line 334
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatTextView;->mTextHelper:Landroid/support/v7/widget/AppCompatTextHelper;

    if-eqz v0, :cond_0

    sget-boolean v0, Landroid/support/v7/widget/ViewUtils;->SDK_LEVEL_SUPPORTS_AUTOSIZE:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/AppCompatTextView;->mTextHelper:Landroid/support/v7/widget/AppCompatTextHelper;

    .line 335
    invoke-virtual {v0}, Landroid/support/v7/widget/AppCompatTextHelper;->isAutoSizeEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 336
    .local v0, "useHelper":Z
    :goto_0
    if-eqz v0, :cond_1

    .line 337
    iget-object v1, p0, Landroid/support/v7/widget/AppCompatTextView;->mTextHelper:Landroid/support/v7/widget/AppCompatTextHelper;

    invoke-virtual {v1}, Landroid/support/v7/widget/AppCompatTextHelper;->autoSizeText()V

    .line 339
    :cond_1
    return-void
.end method

.method public setAllCaps(Z)V
    .locals 1
    .param p1, "allCaps"    # Z

    .line 287
    invoke-super {p0, p1}, Landroid/widget/TextView;->setAllCaps(Z)V

    .line 288
    invoke-direct {p0}, Landroid/support/v7/widget/AppCompatTextView;->getEmojiTextViewHelper()Landroid/support/v7/widget/AppCompatEmojiTextHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/AppCompatEmojiTextHelper;->setAllCaps(Z)V

    .line 289
    return-void
.end method

.method public setAutoSizeTextTypeUniformWithConfiguration(IIII)V
    .locals 1
    .param p1, "autoSizeMinTextSize"    # I
    .param p2, "autoSizeMaxTextSize"    # I
    .param p3, "autoSizeStepGranularity"    # I
    .param p4, "unit"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 373
    sget-boolean v0, Landroid/support/v7/widget/ViewUtils;->SDK_LEVEL_SUPPORTS_AUTOSIZE:Z

    if-eqz v0, :cond_0

    .line 374
    invoke-virtual {p0}, Landroid/support/v7/widget/AppCompatTextView;->getSuperCaller()Landroid/support/v7/widget/AppCompatTextView$SuperCaller;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/support/v7/widget/AppCompatTextView$SuperCaller;->setAutoSizeTextTypeUniformWithConfiguration(IIII)V

    goto :goto_0

    .line 377
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatTextView;->mTextHelper:Landroid/support/v7/widget/AppCompatTextHelper;

    if-eqz v0, :cond_1

    .line 378
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatTextView;->mTextHelper:Landroid/support/v7/widget/AppCompatTextHelper;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/support/v7/widget/AppCompatTextHelper;->setAutoSizeTextTypeUniformWithConfiguration(IIII)V

    .line 382
    :cond_1
    :goto_0
    return-void
.end method

.method public setAutoSizeTextTypeUniformWithPresetSizes([II)V
    .locals 1
    .param p1, "presetSizes"    # [I
    .param p2, "unit"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 394
    sget-boolean v0, Landroid/support/v7/widget/ViewUtils;->SDK_LEVEL_SUPPORTS_AUTOSIZE:Z

    if-eqz v0, :cond_0

    .line 395
    invoke-virtual {p0}, Landroid/support/v7/widget/AppCompatTextView;->getSuperCaller()Landroid/support/v7/widget/AppCompatTextView$SuperCaller;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/support/v7/widget/AppCompatTextView$SuperCaller;->setAutoSizeTextTypeUniformWithPresetSizes([II)V

    goto :goto_0

    .line 397
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatTextView;->mTextHelper:Landroid/support/v7/widget/AppCompatTextHelper;

    if-eqz v0, :cond_1

    .line 398
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatTextView;->mTextHelper:Landroid/support/v7/widget/AppCompatTextHelper;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/widget/AppCompatTextHelper;->setAutoSizeTextTypeUniformWithPresetSizes([II)V

    .line 401
    :cond_1
    :goto_0
    return-void
.end method

.method public setAutoSizeTextTypeWithDefaults(I)V
    .locals 1
    .param p1, "autoSizeTextType"    # I

    .line 351
    sget-boolean v0, Landroid/support/v7/widget/ViewUtils;->SDK_LEVEL_SUPPORTS_AUTOSIZE:Z

    if-eqz v0, :cond_0

    .line 352
    invoke-virtual {p0}, Landroid/support/v7/widget/AppCompatTextView;->getSuperCaller()Landroid/support/v7/widget/AppCompatTextView$SuperCaller;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/support/v7/widget/AppCompatTextView$SuperCaller;->setAutoSizeTextTypeWithDefaults(I)V

    goto :goto_0

    .line 354
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatTextView;->mTextHelper:Landroid/support/v7/widget/AppCompatTextHelper;

    if-eqz v0, :cond_1

    .line 355
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatTextView;->mTextHelper:Landroid/support/v7/widget/AppCompatTextHelper;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/AppCompatTextHelper;->setAutoSizeTextTypeWithDefaults(I)V

    .line 358
    :cond_1
    :goto_0
    return-void
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "background"    # Landroid/graphics/drawable/Drawable;

    .line 178
    invoke-super {p0, p1}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 179
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatTextView;->mBackgroundTintHelper:Landroid/support/v7/widget/AppCompatBackgroundHelper;

    if-eqz v0, :cond_0

    .line 180
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatTextView;->mBackgroundTintHelper:Landroid/support/v7/widget/AppCompatBackgroundHelper;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/AppCompatBackgroundHelper;->onSetBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 182
    :cond_0
    return-void
.end method

.method public setBackgroundResource(I)V
    .locals 1
    .param p1, "resId"    # I

    .line 170
    invoke-super {p0, p1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 171
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatTextView;->mBackgroundTintHelper:Landroid/support/v7/widget/AppCompatBackgroundHelper;

    if-eqz v0, :cond_0

    .line 172
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatTextView;->mBackgroundTintHelper:Landroid/support/v7/widget/AppCompatBackgroundHelper;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/AppCompatBackgroundHelper;->onSetBackgroundResource(I)V

    .line 174
    :cond_0
    return-void
.end method

.method public setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "left"    # Landroid/graphics/drawable/Drawable;
    .param p2, "top"    # Landroid/graphics/drawable/Drawable;
    .param p3, "right"    # Landroid/graphics/drawable/Drawable;
    .param p4, "bottom"    # Landroid/graphics/drawable/Drawable;

    .line 677
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 678
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatTextView;->mTextHelper:Landroid/support/v7/widget/AppCompatTextHelper;

    if-eqz v0, :cond_0

    .line 679
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatTextView;->mTextHelper:Landroid/support/v7/widget/AppCompatTextHelper;

    invoke-virtual {v0}, Landroid/support/v7/widget/AppCompatTextHelper;->onSetCompoundDrawables()V

    .line 681
    :cond_0
    return-void
.end method

.method public setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "start"    # Landroid/graphics/drawable/Drawable;
    .param p2, "top"    # Landroid/graphics/drawable/Drawable;
    .param p3, "end"    # Landroid/graphics/drawable/Drawable;
    .param p4, "bottom"    # Landroid/graphics/drawable/Drawable;

    .line 686
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 687
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatTextView;->mTextHelper:Landroid/support/v7/widget/AppCompatTextHelper;

    if-eqz v0, :cond_0

    .line 688
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatTextView;->mTextHelper:Landroid/support/v7/widget/AppCompatTextHelper;

    invoke-virtual {v0}, Landroid/support/v7/widget/AppCompatTextHelper;->onSetCompoundDrawables()V

    .line 690
    :cond_0
    return-void
.end method

.method public setCompoundDrawablesRelativeWithIntrinsicBounds(IIII)V
    .locals 5
    .param p1, "start"    # I
    .param p2, "top"    # I
    .param p3, "end"    # I
    .param p4, "bottom"    # I

    .line 726
    invoke-virtual {p0}, Landroid/support/v7/widget/AppCompatTextView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 727
    .local v0, "context":Landroid/content/Context;
    nop

    .line 728
    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-static {v0, p1}, Landroid/support/v7/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    .line 729
    :goto_0
    if-eqz p2, :cond_1

    invoke-static {v0, p2}, Landroid/support/v7/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    goto :goto_1

    :cond_1
    move-object v3, v1

    .line 730
    :goto_1
    if-eqz p3, :cond_2

    invoke-static {v0, p3}, Landroid/support/v7/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    goto :goto_2

    :cond_2
    move-object v4, v1

    .line 731
    :goto_2
    if-eqz p4, :cond_3

    invoke-static {v0, p4}, Landroid/support/v7/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 727
    :cond_3
    invoke-virtual {p0, v2, v3, v4, v1}, Landroid/support/v7/widget/AppCompatTextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 732
    iget-object v1, p0, Landroid/support/v7/widget/AppCompatTextView;->mTextHelper:Landroid/support/v7/widget/AppCompatTextHelper;

    if-eqz v1, :cond_4

    .line 733
    iget-object v1, p0, Landroid/support/v7/widget/AppCompatTextView;->mTextHelper:Landroid/support/v7/widget/AppCompatTextHelper;

    invoke-virtual {v1}, Landroid/support/v7/widget/AppCompatTextHelper;->onSetCompoundDrawables()V

    .line 735
    :cond_4
    return-void
.end method

.method public setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "start"    # Landroid/graphics/drawable/Drawable;
    .param p2, "top"    # Landroid/graphics/drawable/Drawable;
    .param p3, "end"    # Landroid/graphics/drawable/Drawable;
    .param p4, "bottom"    # Landroid/graphics/drawable/Drawable;

    .line 717
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 718
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatTextView;->mTextHelper:Landroid/support/v7/widget/AppCompatTextHelper;

    if-eqz v0, :cond_0

    .line 719
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatTextView;->mTextHelper:Landroid/support/v7/widget/AppCompatTextHelper;

    invoke-virtual {v0}, Landroid/support/v7/widget/AppCompatTextHelper;->onSetCompoundDrawables()V

    .line 721
    :cond_0
    return-void
.end method

.method public setCompoundDrawablesWithIntrinsicBounds(IIII)V
    .locals 5
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .line 703
    invoke-virtual {p0}, Landroid/support/v7/widget/AppCompatTextView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 704
    .local v0, "context":Landroid/content/Context;
    nop

    .line 705
    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-static {v0, p1}, Landroid/support/v7/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    .line 706
    :goto_0
    if-eqz p2, :cond_1

    invoke-static {v0, p2}, Landroid/support/v7/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    goto :goto_1

    :cond_1
    move-object v3, v1

    .line 707
    :goto_1
    if-eqz p3, :cond_2

    invoke-static {v0, p3}, Landroid/support/v7/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    goto :goto_2

    :cond_2
    move-object v4, v1

    .line 708
    :goto_2
    if-eqz p4, :cond_3

    invoke-static {v0, p4}, Landroid/support/v7/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 704
    :cond_3
    invoke-virtual {p0, v2, v3, v4, v1}, Landroid/support/v7/widget/AppCompatTextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 709
    iget-object v1, p0, Landroid/support/v7/widget/AppCompatTextView;->mTextHelper:Landroid/support/v7/widget/AppCompatTextHelper;

    if-eqz v1, :cond_4

    .line 710
    iget-object v1, p0, Landroid/support/v7/widget/AppCompatTextView;->mTextHelper:Landroid/support/v7/widget/AppCompatTextHelper;

    invoke-virtual {v1}, Landroid/support/v7/widget/AppCompatTextHelper;->onSetCompoundDrawables()V

    .line 712
    :cond_4
    return-void
.end method

.method public setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "left"    # Landroid/graphics/drawable/Drawable;
    .param p2, "top"    # Landroid/graphics/drawable/Drawable;
    .param p3, "right"    # Landroid/graphics/drawable/Drawable;
    .param p4, "bottom"    # Landroid/graphics/drawable/Drawable;

    .line 695
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 696
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatTextView;->mTextHelper:Landroid/support/v7/widget/AppCompatTextHelper;

    if-eqz v0, :cond_0

    .line 697
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatTextView;->mTextHelper:Landroid/support/v7/widget/AppCompatTextHelper;

    invoke-virtual {v0}, Landroid/support/v7/widget/AppCompatTextHelper;->onSetCompoundDrawables()V

    .line 699
    :cond_0
    return-void
.end method

.method public setCustomSelectionActionModeCallback(Landroid/view/ActionMode$Callback;)V
    .locals 1
    .param p1, "actionModeCallback"    # Landroid/view/ActionMode$Callback;

    .line 557
    nop

    .line 558
    invoke-static {p0, p1}, Landroidx/core/widget/TextViewCompat;->wrapCustomSelectionActionModeCallback(Landroid/widget/TextView;Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode$Callback;

    move-result-object v0

    .line 557
    invoke-super {p0, v0}, Landroid/widget/TextView;->setCustomSelectionActionModeCallback(Landroid/view/ActionMode$Callback;)V

    .line 559
    return-void
.end method

.method public setEmojiCompatEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .line 293
    invoke-direct {p0}, Landroid/support/v7/widget/AppCompatTextView;->getEmojiTextViewHelper()Landroid/support/v7/widget/AppCompatEmojiTextHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/AppCompatEmojiTextHelper;->setEnabled(Z)V

    .line 294
    return-void
.end method

.method public setFilters([Landroid/text/InputFilter;)V
    .locals 1
    .param p1, "filters"    # [Landroid/text/InputFilter;

    .line 282
    invoke-direct {p0}, Landroid/support/v7/widget/AppCompatTextView;->getEmojiTextViewHelper()Landroid/support/v7/widget/AppCompatEmojiTextHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/AppCompatEmojiTextHelper;->getFilters([Landroid/text/InputFilter;)[Landroid/text/InputFilter;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    .line 283
    return-void
.end method

.method public setFirstBaselineToTopHeight(I)V
    .locals 2
    .param p1, "firstBaselineToTopHeight"    # I

    .line 508
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_0

    .line 509
    invoke-virtual {p0}, Landroid/support/v7/widget/AppCompatTextView;->getSuperCaller()Landroid/support/v7/widget/AppCompatTextView$SuperCaller;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/support/v7/widget/AppCompatTextView$SuperCaller;->setFirstBaselineToTopHeight(I)V

    goto :goto_0

    .line 511
    :cond_0
    invoke-static {p0, p1}, Landroidx/core/widget/TextViewCompat;->setFirstBaselineToTopHeight(Landroid/widget/TextView;I)V

    .line 513
    :goto_0
    return-void
.end method

.method public setFontVariationSettings(Ljava/lang/String;)Z
    .locals 3
    .param p1, "fontVariationSettings"    # Ljava/lang/String;

    .line 254
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatTextView;->mOriginalTypeface:Landroid/graphics/Typeface;

    .line 257
    .local v0, "baseTypeface":Landroid/graphics/Typeface;
    iget-object v1, p0, Landroid/support/v7/widget/AppCompatTextView;->mLastKnownTypefaceSetOnPaint:Landroid/graphics/Typeface;

    invoke-virtual {p0}, Landroid/support/v7/widget/AppCompatTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    invoke-virtual {v2}, Landroid/text/TextPaint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v2

    if-eq v1, v2, :cond_0

    .line 258
    const-string v1, "AppCompatTextView"

    const-string v2, "getPaint().getTypeface() changed unexpectedly. App code should not modify the result of getPaint()."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    invoke-virtual {p0}, Landroid/support/v7/widget/AppCompatTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    invoke-virtual {v1}, Landroid/text/TextPaint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    .line 263
    :cond_0
    invoke-static {v0, p1}, Landroid/support/v7/widget/AppCompatTextHelper$Api26Impl;->createVariationInstance(Landroid/graphics/Typeface;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    .line 265
    .local v1, "variationTypefaceInstance":Landroid/graphics/Typeface;
    if-eqz v1, :cond_1

    .line 266
    invoke-direct {p0, v1}, Landroid/support/v7/widget/AppCompatTextView;->setTypefaceInternal(Landroid/graphics/Typeface;)V

    .line 267
    iput-object p1, p0, Landroid/support/v7/widget/AppCompatTextView;->mFontVariationSettings:Ljava/lang/String;

    .line 268
    const/4 v2, 0x1

    return v2

    .line 270
    :cond_1
    const/4 v2, 0x0

    return v2
.end method

.method public setLastBaselineToBottomHeight(I)V
    .locals 2
    .param p1, "lastBaselineToBottomHeight"    # I

    .line 518
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_0

    .line 519
    invoke-virtual {p0}, Landroid/support/v7/widget/AppCompatTextView;->getSuperCaller()Landroid/support/v7/widget/AppCompatTextView$SuperCaller;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/support/v7/widget/AppCompatTextView$SuperCaller;->setLastBaselineToBottomHeight(I)V

    goto :goto_0

    .line 521
    :cond_0
    invoke-static {p0, p1}, Landroidx/core/widget/TextViewCompat;->setLastBaselineToBottomHeight(Landroid/widget/TextView;I)V

    .line 524
    :goto_0
    return-void
.end method

.method public setLineHeight(I)V
    .locals 0
    .param p1, "lineHeight"    # I

    .line 538
    invoke-static {p0, p1}, Landroidx/core/widget/TextViewCompat;->setLineHeight(Landroid/widget/TextView;I)V

    .line 539
    return-void
.end method

.method public setLineHeight(IF)V
    .locals 2
    .param p1, "unit"    # I
    .param p2, "lineHeight"    # F

    .line 543
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x22

    if-lt v0, v1, :cond_0

    .line 544
    invoke-virtual {p0}, Landroid/support/v7/widget/AppCompatTextView;->getSuperCaller()Landroid/support/v7/widget/AppCompatTextView$SuperCaller;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/support/v7/widget/AppCompatTextView$SuperCaller;->setLineHeight(IF)V

    goto :goto_0

    .line 546
    :cond_0
    invoke-static {p0, p1, p2}, Landroidx/core/widget/TextViewCompat;->setLineHeight(Landroid/widget/TextView;IF)V

    .line 548
    :goto_0
    return-void
.end method

.method public setPrecomputedText(Landroidx/core/text/PrecomputedTextCompat;)V
    .locals 0
    .param p1, "precomputed"    # Landroidx/core/text/PrecomputedTextCompat;

    .line 599
    invoke-static {p0, p1}, Landroidx/core/widget/TextViewCompat;->setPrecomputedText(Landroid/widget/TextView;Landroidx/core/text/PrecomputedTextCompat;)V

    .line 600
    return-void
.end method

.method public setSupportBackgroundTintList(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1, "tint"    # Landroid/content/res/ColorStateList;

    .line 191
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatTextView;->mBackgroundTintHelper:Landroid/support/v7/widget/AppCompatBackgroundHelper;

    if-eqz v0, :cond_0

    .line 192
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatTextView;->mBackgroundTintHelper:Landroid/support/v7/widget/AppCompatBackgroundHelper;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/AppCompatBackgroundHelper;->setSupportBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 194
    :cond_0
    return-void
.end method

.method public setSupportBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1
    .param p1, "tintMode"    # Landroid/graphics/PorterDuff$Mode;

    .line 214
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatTextView;->mBackgroundTintHelper:Landroid/support/v7/widget/AppCompatBackgroundHelper;

    if-eqz v0, :cond_0

    .line 215
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatTextView;->mBackgroundTintHelper:Landroid/support/v7/widget/AppCompatBackgroundHelper;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/AppCompatBackgroundHelper;->setSupportBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 217
    :cond_0
    return-void
.end method

.method public setSupportCompoundDrawablesTintList(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1, "tintList"    # Landroid/content/res/ColorStateList;

    .line 771
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatTextView;->mTextHelper:Landroid/support/v7/widget/AppCompatTextHelper;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/AppCompatTextHelper;->setCompoundDrawableTintList(Landroid/content/res/ColorStateList;)V

    .line 772
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatTextView;->mTextHelper:Landroid/support/v7/widget/AppCompatTextHelper;

    invoke-virtual {v0}, Landroid/support/v7/widget/AppCompatTextHelper;->applyCompoundDrawablesTints()V

    .line 773
    return-void
.end method

.method public setSupportCompoundDrawablesTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1
    .param p1, "tintMode"    # Landroid/graphics/PorterDuff$Mode;

    .line 808
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatTextView;->mTextHelper:Landroid/support/v7/widget/AppCompatTextHelper;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/AppCompatTextHelper;->setCompoundDrawableTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 809
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatTextView;->mTextHelper:Landroid/support/v7/widget/AppCompatTextHelper;

    invoke-virtual {v0}, Landroid/support/v7/widget/AppCompatTextHelper;->applyCompoundDrawablesTints()V

    .line 810
    return-void
.end method

.method public setTextAppearance(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resId"    # I

    .line 232
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 233
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatTextView;->mTextHelper:Landroid/support/v7/widget/AppCompatTextHelper;

    if-eqz v0, :cond_0

    .line 234
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatTextView;->mTextHelper:Landroid/support/v7/widget/AppCompatTextHelper;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/widget/AppCompatTextHelper;->onSetTextAppearance(Landroid/content/Context;I)V

    .line 236
    :cond_0
    return-void
.end method

.method public setTextClassifier(Landroid/view/textclassifier/TextClassifier;)V
    .locals 2
    .param p1, "textClassifier"    # Landroid/view/textclassifier/TextClassifier;

    .line 626
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-ge v0, v1, :cond_1

    iget-object v0, p0, Landroid/support/v7/widget/AppCompatTextView;->mTextClassifierHelper:Landroid/support/v7/widget/AppCompatTextClassifierHelper;

    if-nez v0, :cond_0

    goto :goto_0

    .line 630
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatTextView;->mTextClassifierHelper:Landroid/support/v7/widget/AppCompatTextClassifierHelper;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/AppCompatTextClassifierHelper;->setTextClassifier(Landroid/view/textclassifier/TextClassifier;)V

    .line 631
    return-void

    .line 627
    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroid/support/v7/widget/AppCompatTextView;->getSuperCaller()Landroid/support/v7/widget/AppCompatTextView$SuperCaller;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/support/v7/widget/AppCompatTextView$SuperCaller;->setTextClassifier(Landroid/view/textclassifier/TextClassifier;)V

    .line 628
    return-void
.end method

.method public setTextFuture(Ljava/util/concurrent/Future;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Future<",
            "Landroidx/core/text/PrecomputedTextCompat;",
            ">;)V"
        }
    .end annotation

    .line 662
    .local p1, "future":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<Landroidx/core/text/PrecomputedTextCompat;>;"
    iput-object p1, p0, Landroid/support/v7/widget/AppCompatTextView;->mPrecomputedTextFuture:Ljava/util/concurrent/Future;

    .line 663
    if-eqz p1, :cond_0

    .line 664
    invoke-virtual {p0}, Landroid/support/v7/widget/AppCompatTextView;->requestLayout()V

    .line 666
    :cond_0
    return-void
.end method

.method public setTextMetricsParamsCompat(Landroidx/core/text/PrecomputedTextCompat$Params;)V
    .locals 0
    .param p1, "params"    # Landroidx/core/text/PrecomputedTextCompat$Params;

    .line 586
    invoke-static {p0, p1}, Landroidx/core/widget/TextViewCompat;->setTextMetricsParams(Landroid/widget/TextView;Landroidx/core/text/PrecomputedTextCompat$Params;)V

    .line 587
    return-void
.end method

.method public setTextSize(IF)V
    .locals 1
    .param p1, "unit"    # I
    .param p2, "size"    # F

    .line 322
    sget-boolean v0, Landroid/support/v7/widget/ViewUtils;->SDK_LEVEL_SUPPORTS_AUTOSIZE:Z

    if-eqz v0, :cond_0

    .line 323
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->setTextSize(IF)V

    goto :goto_0

    .line 325
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatTextView;->mTextHelper:Landroid/support/v7/widget/AppCompatTextHelper;

    if-eqz v0, :cond_1

    .line 326
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatTextView;->mTextHelper:Landroid/support/v7/widget/AppCompatTextHelper;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/widget/AppCompatTextHelper;->setTextSize(IF)V

    .line 329
    :cond_1
    :goto_0
    return-void
.end method

.method public setTypeface(Landroid/graphics/Typeface;)V
    .locals 0
    .param p1, "tf"    # Landroid/graphics/Typeface;

    .line 816
    iput-object p1, p0, Landroid/support/v7/widget/AppCompatTextView;->mOriginalTypeface:Landroid/graphics/Typeface;

    .line 817
    invoke-direct {p0, p1}, Landroid/support/v7/widget/AppCompatTextView;->setTypefaceInternal(Landroid/graphics/Typeface;)V

    .line 818
    return-void
.end method

.method public setTypeface(Landroid/graphics/Typeface;I)V
    .locals 3
    .param p1, "tf"    # Landroid/graphics/Typeface;
    .param p2, "style"    # I

    .line 846
    iget-boolean v0, p0, Landroid/support/v7/widget/AppCompatTextView;->mIsSetTypefaceProcessing:Z

    if-eqz v0, :cond_0

    .line 851
    return-void

    .line 854
    :cond_0
    if-eqz p1, :cond_1

    if-lez p2, :cond_1

    .line 855
    invoke-virtual {p0}, Landroid/support/v7/widget/AppCompatTextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroidx/core/graphics/TypefaceCompat;->create(Landroid/content/Context;Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v0

    .local v0, "finalTypeface":Landroid/graphics/Typeface;
    goto :goto_0

    .line 857
    .end local v0    # "finalTypeface":Landroid/graphics/Typeface;
    :cond_1
    move-object v0, p1

    .line 860
    .restart local v0    # "finalTypeface":Landroid/graphics/Typeface;
    :goto_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/support/v7/widget/AppCompatTextView;->mIsSetTypefaceProcessing:Z

    .line 862
    const/4 v1, 0x0

    :try_start_0
    invoke-super {p0, v0, p2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 864
    iput-boolean v1, p0, Landroid/support/v7/widget/AppCompatTextView;->mIsSetTypefaceProcessing:Z

    .line 865
    nop

    .line 867
    return-void

    .line 864
    :catchall_0
    move-exception v2

    iput-boolean v1, p0, Landroid/support/v7/widget/AppCompatTextView;->mIsSetTypefaceProcessing:Z

    .line 865
    throw v2
.end method
