.class Landroid/support/v7/widget/AppCompatTextHelper;
.super Ljava/lang/Object;
.source "AppCompatTextHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/widget/AppCompatTextHelper$Api24Impl;,
        Landroid/support/v7/widget/AppCompatTextHelper$Api21Impl;,
        Landroid/support/v7/widget/AppCompatTextHelper$Api26Impl;,
        Landroid/support/v7/widget/AppCompatTextHelper$Api28Impl;
    }
.end annotation


# static fields
.field private static final MONOSPACE:I = 0x3

.field private static final SANS:I = 0x1

.field private static final SERIF:I = 0x2

.field private static final TEXT_FONT_WEIGHT_UNSPECIFIED:I = -0x1


# instance fields
.field private mAsyncFontPending:Z

.field private final mAutoSizeTextHelper:Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;

.field private mDrawableBottomTint:Landroid/support/v7/widget/TintInfo;

.field private mDrawableEndTint:Landroid/support/v7/widget/TintInfo;

.field private mDrawableLeftTint:Landroid/support/v7/widget/TintInfo;

.field private mDrawableRightTint:Landroid/support/v7/widget/TintInfo;

.field private mDrawableStartTint:Landroid/support/v7/widget/TintInfo;

.field private mDrawableTint:Landroid/support/v7/widget/TintInfo;

.field private mDrawableTopTint:Landroid/support/v7/widget/TintInfo;

.field private mFontTypeface:Landroid/graphics/Typeface;

.field private mFontVariationSettings:Ljava/lang/String;

.field private mFontWeight:I

.field private mStyle:I

.field private final mView:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Landroid/widget/TextView;)V
    .locals 2
    .param p1, "view"    # Landroid/widget/TextView;

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v7/widget/AppCompatTextHelper;->mStyle:I

    .line 81
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v7/widget/AppCompatTextHelper;->mFontWeight:I

    .line 83
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/widget/AppCompatTextHelper;->mFontVariationSettings:Ljava/lang/String;

    .line 87
    iput-object p1, p0, Landroid/support/v7/widget/AppCompatTextHelper;->mView:Landroid/widget/TextView;

    .line 88
    new-instance v0, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;

    iget-object v1, p0, Landroid/support/v7/widget/AppCompatTextHelper;->mView:Landroid/widget/TextView;

    invoke-direct {v0, v1}, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;-><init>(Landroid/widget/TextView;)V

    iput-object v0, p0, Landroid/support/v7/widget/AppCompatTextHelper;->mAutoSizeTextHelper:Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;

    .line 89
    return-void
.end method

.method static synthetic access$000(Landroid/widget/TextView;Landroid/graphics/Typeface;I)V
    .locals 0
    .param p0, "x0"    # Landroid/widget/TextView;
    .param p1, "x1"    # Landroid/graphics/Typeface;
    .param p2, "x2"    # I

    .line 59
    invoke-static {p0, p1, p2}, Landroid/support/v7/widget/AppCompatTextHelper;->applyNewTypefacePreservingVariationSettings(Landroid/widget/TextView;Landroid/graphics/Typeface;I)V

    return-void
.end method

.method private applyCompoundDrawableTint(Landroid/graphics/drawable/Drawable;Landroid/support/v7/widget/TintInfo;)V
    .locals 1
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "info"    # Landroid/support/v7/widget/TintInfo;

    .line 605
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 606
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatTextHelper;->mView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getDrawableState()[I

    move-result-object v0

    invoke-static {p1, p2, v0}, Landroid/support/v7/widget/AppCompatDrawableManager;->tintDrawable(Landroid/graphics/drawable/Drawable;Landroid/support/v7/widget/TintInfo;[I)V

    .line 608
    :cond_0
    return-void
.end method

.method private applyFontAndVariationSettings(Z)V
    .locals 3
    .param p1, "forceNullSet"    # Z

    .line 355
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatTextHelper;->mFontTypeface:Landroid/graphics/Typeface;

    if-eqz v0, :cond_1

    .line 356
    iget v0, p0, Landroid/support/v7/widget/AppCompatTextHelper;->mFontWeight:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 357
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatTextHelper;->mView:Landroid/widget/TextView;

    iget-object v1, p0, Landroid/support/v7/widget/AppCompatTextHelper;->mFontTypeface:Landroid/graphics/Typeface;

    iget v2, p0, Landroid/support/v7/widget/AppCompatTextHelper;->mStyle:I

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    goto :goto_0

    .line 359
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatTextHelper;->mView:Landroid/widget/TextView;

    iget-object v1, p0, Landroid/support/v7/widget/AppCompatTextHelper;->mFontTypeface:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    goto :goto_0

    .line 361
    :cond_1
    if-eqz p1, :cond_2

    .line 362
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatTextHelper;->mView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 365
    :cond_2
    :goto_0
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatTextHelper;->mFontVariationSettings:Ljava/lang/String;

    if-eqz v0, :cond_3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_3

    .line 366
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatTextHelper;->mView:Landroid/widget/TextView;

    iget-object v1, p0, Landroid/support/v7/widget/AppCompatTextHelper;->mFontVariationSettings:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/support/v7/widget/AppCompatTextHelper$Api26Impl;->setFontVariationSettings(Landroid/widget/TextView;Ljava/lang/String;)Z

    .line 368
    :cond_3
    return-void
.end method

.method private static applyNewTypefacePreservingVariationSettings(Landroid/widget/TextView;Landroid/graphics/Typeface;I)V
    .locals 3
    .param p0, "textView"    # Landroid/widget/TextView;
    .param p1, "typeface"    # Landroid/graphics/Typeface;
    .param p2, "style"    # I

    .line 519
    const/4 v0, 0x0

    .line 520
    .local v0, "fontVariationSettings":Ljava/lang/String;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v1, v2, :cond_0

    .line 521
    invoke-static {p0}, Landroid/support/v7/widget/AppCompatTextHelper$Api26Impl;->getFontVariationSettings(Landroid/widget/TextView;)Ljava/lang/String;

    move-result-object v0

    .line 522
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 523
    const/4 v1, 0x0

    invoke-static {p0, v1}, Landroid/support/v7/widget/AppCompatTextHelper$Api26Impl;->setFontVariationSettings(Landroid/widget/TextView;Ljava/lang/String;)Z

    .line 527
    :cond_0
    invoke-virtual {p0, p1, p2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 528
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v2, :cond_1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 529
    invoke-static {p0, v0}, Landroid/support/v7/widget/AppCompatTextHelper$Api26Impl;->setFontVariationSettings(Landroid/widget/TextView;Ljava/lang/String;)Z

    .line 531
    :cond_1
    return-void
.end method

.method private static createTintInfo(Landroid/content/Context;Landroid/support/v7/widget/AppCompatDrawableManager;I)Landroid/support/v7/widget/TintInfo;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "drawableManager"    # Landroid/support/v7/widget/AppCompatDrawableManager;
    .param p2, "drawableId"    # I

    .line 612
    invoke-virtual {p1, p0, p2}, Landroid/support/v7/widget/AppCompatDrawableManager;->getTintList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    .line 613
    .local v0, "tintList":Landroid/content/res/ColorStateList;
    if-eqz v0, :cond_0

    .line 614
    new-instance v1, Landroid/support/v7/widget/TintInfo;

    invoke-direct {v1}, Landroid/support/v7/widget/TintInfo;-><init>()V

    .line 615
    .local v1, "tintInfo":Landroid/support/v7/widget/TintInfo;
    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/support/v7/widget/TintInfo;->mHasTintList:Z

    .line 616
    iput-object v0, v1, Landroid/support/v7/widget/TintInfo;->mTintList:Landroid/content/res/ColorStateList;

    .line 617
    return-object v1

    .line 619
    .end local v1    # "tintInfo":Landroid/support/v7/widget/TintInfo;
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method private makeFontCallback(II)Landroidx/core/content/res/ResourcesCompat$FontCallback;
    .locals 2
    .param p1, "fontWeight"    # I
    .param p2, "style"    # I

    .line 474
    new-instance v0, Ljava/lang/ref/WeakReference;

    iget-object v1, p0, Landroid/support/v7/widget/AppCompatTextHelper;->mView:Landroid/widget/TextView;

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 475
    .local v0, "textViewWeak":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/widget/TextView;>;"
    new-instance v1, Landroid/support/v7/widget/AppCompatTextHelper$1;

    invoke-direct {v1, p0, p1, p2, v0}, Landroid/support/v7/widget/AppCompatTextHelper$1;-><init>(Landroid/support/v7/widget/AppCompatTextHelper;IILjava/lang/ref/WeakReference;)V

    return-object v1
.end method

.method private setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 7
    .param p1, "drawableLeft"    # Landroid/graphics/drawable/Drawable;
    .param p2, "drawableTop"    # Landroid/graphics/drawable/Drawable;
    .param p3, "drawableRight"    # Landroid/graphics/drawable/Drawable;
    .param p4, "drawableBottom"    # Landroid/graphics/drawable/Drawable;
    .param p5, "drawableStart"    # Landroid/graphics/drawable/Drawable;
    .param p6, "drawableEnd"    # Landroid/graphics/drawable/Drawable;

    .line 730
    const/4 v0, 0x3

    const/4 v1, 0x1

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-nez p5, :cond_b

    if-eqz p6, :cond_0

    goto/16 :goto_9

    .line 737
    :cond_0
    if-nez p1, :cond_2

    if-nez p2, :cond_2

    if-nez p3, :cond_2

    if-eqz p4, :cond_1

    goto :goto_1

    :cond_1
    :goto_0
    goto/16 :goto_e

    .line 740
    :cond_2
    :goto_1
    iget-object v4, p0, Landroid/support/v7/widget/AppCompatTextHelper;->mView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getCompoundDrawablesRelative()[Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 741
    .local v4, "existingRel":[Landroid/graphics/drawable/Drawable;
    aget-object v5, v4, v3

    if-nez v5, :cond_8

    aget-object v5, v4, v2

    if-eqz v5, :cond_3

    goto :goto_6

    .line 749
    :cond_3
    iget-object v5, p0, Landroid/support/v7/widget/AppCompatTextHelper;->mView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 750
    .local v5, "existingAbs":[Landroid/graphics/drawable/Drawable;
    iget-object v6, p0, Landroid/support/v7/widget/AppCompatTextHelper;->mView:Landroid/widget/TextView;

    .line 751
    if-eqz p1, :cond_4

    move-object v3, p1

    goto :goto_2

    :cond_4
    aget-object v3, v5, v3

    .line 752
    :goto_2
    if-eqz p2, :cond_5

    move-object v1, p2

    goto :goto_3

    :cond_5
    aget-object v1, v5, v1

    .line 753
    :goto_3
    if-eqz p3, :cond_6

    move-object v2, p3

    goto :goto_4

    :cond_6
    aget-object v2, v5, v2

    .line 754
    :goto_4
    if-eqz p4, :cond_7

    move-object v0, p4

    goto :goto_5

    :cond_7
    aget-object v0, v5, v0

    .line 750
    :goto_5
    invoke-virtual {v6, v3, v1, v2, v0}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_e

    .line 742
    .end local v5    # "existingAbs":[Landroid/graphics/drawable/Drawable;
    :cond_8
    :goto_6
    if-eqz p2, :cond_9

    move-object v1, p2

    goto :goto_7

    :cond_9
    aget-object v1, v4, v1

    .line 743
    .local v1, "top":Landroid/graphics/drawable/Drawable;
    :goto_7
    if-eqz p4, :cond_a

    move-object v0, p4

    goto :goto_8

    :cond_a
    aget-object v0, v4, v0

    .line 744
    .local v0, "bottom":Landroid/graphics/drawable/Drawable;
    :goto_8
    iget-object v5, p0, Landroid/support/v7/widget/AppCompatTextHelper;->mView:Landroid/widget/TextView;

    aget-object v3, v4, v3

    aget-object v2, v4, v2

    invoke-virtual {v5, v3, v1, v2, v0}, Landroid/widget/TextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 746
    return-void

    .line 731
    .end local v0    # "bottom":Landroid/graphics/drawable/Drawable;
    .end local v1    # "top":Landroid/graphics/drawable/Drawable;
    .end local v4    # "existingRel":[Landroid/graphics/drawable/Drawable;
    :cond_b
    :goto_9
    iget-object v4, p0, Landroid/support/v7/widget/AppCompatTextHelper;->mView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getCompoundDrawablesRelative()[Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 732
    .restart local v4    # "existingRel":[Landroid/graphics/drawable/Drawable;
    if-eqz p5, :cond_c

    move-object v3, p5

    goto :goto_a

    :cond_c
    aget-object v3, v4, v3

    .line 733
    .local v3, "start":Landroid/graphics/drawable/Drawable;
    :goto_a
    if-eqz p2, :cond_d

    move-object v1, p2

    goto :goto_b

    :cond_d
    aget-object v1, v4, v1

    .line 734
    .restart local v1    # "top":Landroid/graphics/drawable/Drawable;
    :goto_b
    if-eqz p6, :cond_e

    move-object v2, p6

    goto :goto_c

    :cond_e
    aget-object v2, v4, v2

    .line 735
    .local v2, "end":Landroid/graphics/drawable/Drawable;
    :goto_c
    iget-object v5, p0, Landroid/support/v7/widget/AppCompatTextHelper;->mView:Landroid/widget/TextView;

    .line 736
    if-eqz p4, :cond_f

    move-object v0, p4

    goto :goto_d

    :cond_f
    aget-object v0, v4, v0

    .line 735
    :goto_d
    invoke-virtual {v5, v3, v1, v2, v0}, Landroid/widget/TextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .end local v1    # "top":Landroid/graphics/drawable/Drawable;
    .end local v2    # "end":Landroid/graphics/drawable/Drawable;
    .end local v3    # "start":Landroid/graphics/drawable/Drawable;
    .end local v4    # "existingRel":[Landroid/graphics/drawable/Drawable;
    goto :goto_0

    .line 757
    :goto_e
    return-void
.end method

.method private setCompoundTints()V
    .locals 1

    .line 718
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatTextHelper;->mDrawableTint:Landroid/support/v7/widget/TintInfo;

    iput-object v0, p0, Landroid/support/v7/widget/AppCompatTextHelper;->mDrawableLeftTint:Landroid/support/v7/widget/TintInfo;

    .line 719
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatTextHelper;->mDrawableTint:Landroid/support/v7/widget/TintInfo;

    iput-object v0, p0, Landroid/support/v7/widget/AppCompatTextHelper;->mDrawableTopTint:Landroid/support/v7/widget/TintInfo;

    .line 720
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatTextHelper;->mDrawableTint:Landroid/support/v7/widget/TintInfo;

    iput-object v0, p0, Landroid/support/v7/widget/AppCompatTextHelper;->mDrawableRightTint:Landroid/support/v7/widget/TintInfo;

    .line 721
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatTextHelper;->mDrawableTint:Landroid/support/v7/widget/TintInfo;

    iput-object v0, p0, Landroid/support/v7/widget/AppCompatTextHelper;->mDrawableBottomTint:Landroid/support/v7/widget/TintInfo;

    .line 722
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatTextHelper;->mDrawableTint:Landroid/support/v7/widget/TintInfo;

    iput-object v0, p0, Landroid/support/v7/widget/AppCompatTextHelper;->mDrawableStartTint:Landroid/support/v7/widget/TintInfo;

    .line 723
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatTextHelper;->mDrawableTint:Landroid/support/v7/widget/TintInfo;

    iput-object v0, p0, Landroid/support/v7/widget/AppCompatTextHelper;->mDrawableEndTint:Landroid/support/v7/widget/TintInfo;

    .line 724
    return-void
.end method

.method private setTextSizeInternal(IF)V
    .locals 1
    .param p1, "unit"    # I
    .param p2, "size"    # F

    .line 649
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatTextHelper;->mAutoSizeTextHelper:Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->setTextSizeInternal(IF)V

    .line 650
    return-void
.end method

.method private updateTypefaceAndStyle(Landroid/content/Context;Landroid/support/v7/widget/TintTypedArray;)Z
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "a"    # Landroid/support/v7/widget/TintTypedArray;

    .line 380
    sget v0, Landroid/support/v7/appcompat/R$styleable;->TextAppearance_android_textStyle:I

    iget v1, p0, Landroid/support/v7/widget/AppCompatTextHelper;->mStyle:I

    invoke-virtual {p2, v0, v1}, Landroid/support/v7/widget/TintTypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/AppCompatTextHelper;->mStyle:I

    .line 382
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/16 v3, 0x1c

    if-lt v0, v3, :cond_0

    .line 383
    sget v0, Landroid/support/v7/appcompat/R$styleable;->TextAppearance_android_textFontWeight:I

    invoke-virtual {p2, v0, v1}, Landroid/support/v7/widget/TintTypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/AppCompatTextHelper;->mFontWeight:I

    .line 385
    iget v0, p0, Landroid/support/v7/widget/AppCompatTextHelper;->mFontWeight:I

    if-eq v0, v1, :cond_0

    .line 386
    iget v0, p0, Landroid/support/v7/widget/AppCompatTextHelper;->mStyle:I

    and-int/lit8 v0, v0, 0x2

    or-int/2addr v0, v2

    iput v0, p0, Landroid/support/v7/widget/AppCompatTextHelper;->mStyle:I

    .line 390
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1a

    if-lt v0, v4, :cond_1

    sget v0, Landroid/support/v7/appcompat/R$styleable;->TextAppearance_fontVariationSettings:I

    .line 391
    invoke-virtual {p2, v0}, Landroid/support/v7/widget/TintTypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 392
    sget v0, Landroid/support/v7/appcompat/R$styleable;->TextAppearance_fontVariationSettings:I

    invoke-virtual {p2, v0}, Landroid/support/v7/widget/TintTypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/AppCompatTextHelper;->mFontVariationSettings:Ljava/lang/String;

    .line 395
    :cond_1
    sget v0, Landroid/support/v7/appcompat/R$styleable;->TextAppearance_android_fontFamily:I

    invoke-virtual {p2, v0}, Landroid/support/v7/widget/TintTypedArray;->hasValue(I)Z

    move-result v0

    const/4 v4, 0x1

    if-nez v0, :cond_6

    sget v0, Landroid/support/v7/appcompat/R$styleable;->TextAppearance_fontFamily:I

    .line 396
    invoke-virtual {p2, v0}, Landroid/support/v7/widget/TintTypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    .line 443
    :cond_2
    sget v0, Landroid/support/v7/appcompat/R$styleable;->TextAppearance_android_typeface:I

    invoke-virtual {p2, v0}, Landroid/support/v7/widget/TintTypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 445
    iput-boolean v2, p0, Landroid/support/v7/widget/AppCompatTextHelper;->mAsyncFontPending:Z

    .line 446
    sget v0, Landroid/support/v7/appcompat/R$styleable;->TextAppearance_android_typeface:I

    invoke-virtual {p2, v0, v4}, Landroid/support/v7/widget/TintTypedArray;->getInt(II)I

    move-result v0

    .line 447
    .local v0, "typefaceIndex":I
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 457
    :pswitch_0
    sget-object v1, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    iput-object v1, p0, Landroid/support/v7/widget/AppCompatTextHelper;->mFontTypeface:Landroid/graphics/Typeface;

    goto :goto_0

    .line 453
    :pswitch_1
    sget-object v1, Landroid/graphics/Typeface;->SERIF:Landroid/graphics/Typeface;

    iput-object v1, p0, Landroid/support/v7/widget/AppCompatTextHelper;->mFontTypeface:Landroid/graphics/Typeface;

    .line 454
    goto :goto_0

    .line 449
    :pswitch_2
    sget-object v1, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    iput-object v1, p0, Landroid/support/v7/widget/AppCompatTextHelper;->mFontTypeface:Landroid/graphics/Typeface;

    .line 450
    nop

    .line 460
    :goto_0
    return v4

    .line 463
    .end local v0    # "typefaceIndex":I
    :cond_3
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v3, :cond_5

    iget v0, p0, Landroid/support/v7/widget/AppCompatTextHelper;->mFontWeight:I

    if-eq v0, v1, :cond_5

    iget-object v0, p0, Landroid/support/v7/widget/AppCompatTextHelper;->mFontTypeface:Landroid/graphics/Typeface;

    if-eqz v0, :cond_5

    .line 465
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatTextHelper;->mFontTypeface:Landroid/graphics/Typeface;

    iget v1, p0, Landroid/support/v7/widget/AppCompatTextHelper;->mFontWeight:I

    iget v3, p0, Landroid/support/v7/widget/AppCompatTextHelper;->mStyle:I

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_4

    const/4 v2, 0x1

    :cond_4
    invoke-static {v0, v1, v2}, Landroid/support/v7/widget/AppCompatTextHelper$Api28Impl;->create(Landroid/graphics/Typeface;IZ)Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/AppCompatTextHelper;->mFontTypeface:Landroid/graphics/Typeface;

    .line 467
    return v4

    .line 470
    :cond_5
    return v2

    .line 397
    :cond_6
    :goto_1
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/widget/AppCompatTextHelper;->mFontTypeface:Landroid/graphics/Typeface;

    .line 398
    sget v0, Landroid/support/v7/appcompat/R$styleable;->TextAppearance_fontFamily:I

    invoke-virtual {p2, v0}, Landroid/support/v7/widget/TintTypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 399
    sget v0, Landroid/support/v7/appcompat/R$styleable;->TextAppearance_fontFamily:I

    goto :goto_2

    .line 400
    :cond_7
    sget v0, Landroid/support/v7/appcompat/R$styleable;->TextAppearance_android_fontFamily:I

    :goto_2
    nop

    .line 401
    .local v0, "fontFamilyId":I
    iget v5, p0, Landroid/support/v7/widget/AppCompatTextHelper;->mFontWeight:I

    .line 402
    .local v5, "fontWeight":I
    iget v6, p0, Landroid/support/v7/widget/AppCompatTextHelper;->mStyle:I

    .line 403
    .local v6, "style":I
    invoke-virtual {p1}, Landroid/content/Context;->isRestricted()Z

    move-result v7

    if-nez v7, :cond_c

    .line 404
    invoke-direct {p0, v5, v6}, Landroid/support/v7/widget/AppCompatTextHelper;->makeFontCallback(II)Landroidx/core/content/res/ResourcesCompat$FontCallback;

    move-result-object v7

    .line 408
    .local v7, "replyCallback":Landroidx/core/content/res/ResourcesCompat$FontCallback;
    :try_start_0
    iget v8, p0, Landroid/support/v7/widget/AppCompatTextHelper;->mStyle:I

    invoke-virtual {p2, v0, v8, v7}, Landroid/support/v7/widget/TintTypedArray;->getFont(IILandroidx/core/content/res/ResourcesCompat$FontCallback;)Landroid/graphics/Typeface;

    move-result-object v8

    .line 410
    .local v8, "typeface":Landroid/graphics/Typeface;
    if-eqz v8, :cond_a

    .line 411
    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v9, v3, :cond_9

    iget v9, p0, Landroid/support/v7/widget/AppCompatTextHelper;->mFontWeight:I

    if-eq v9, v1, :cond_9

    .line 413
    nop

    .line 414
    invoke-static {v8, v2}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v9

    iget v10, p0, Landroid/support/v7/widget/AppCompatTextHelper;->mFontWeight:I

    iget v11, p0, Landroid/support/v7/widget/AppCompatTextHelper;->mStyle:I

    and-int/lit8 v11, v11, 0x2

    if-eqz v11, :cond_8

    const/4 v11, 0x1

    goto :goto_3

    :cond_8
    const/4 v11, 0x0

    .line 413
    :goto_3
    invoke-static {v9, v10, v11}, Landroid/support/v7/widget/AppCompatTextHelper$Api28Impl;->create(Landroid/graphics/Typeface;IZ)Landroid/graphics/Typeface;

    move-result-object v9

    iput-object v9, p0, Landroid/support/v7/widget/AppCompatTextHelper;->mFontTypeface:Landroid/graphics/Typeface;

    goto :goto_4

    .line 417
    :cond_9
    iput-object v8, p0, Landroid/support/v7/widget/AppCompatTextHelper;->mFontTypeface:Landroid/graphics/Typeface;

    .line 421
    :cond_a
    :goto_4
    iget-object v9, p0, Landroid/support/v7/widget/AppCompatTextHelper;->mFontTypeface:Landroid/graphics/Typeface;

    if-nez v9, :cond_b

    const/4 v9, 0x1

    goto :goto_5

    :cond_b
    const/4 v9, 0x0

    :goto_5
    iput-boolean v9, p0, Landroid/support/v7/widget/AppCompatTextHelper;->mAsyncFontPending:Z
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 424
    .end local v8    # "typeface":Landroid/graphics/Typeface;
    goto :goto_6

    .line 422
    :catch_0
    move-exception v8

    goto :goto_6

    :catch_1
    move-exception v8

    .line 426
    .end local v7    # "replyCallback":Landroidx/core/content/res/ResourcesCompat$FontCallback;
    :cond_c
    :goto_6
    iget-object v7, p0, Landroid/support/v7/widget/AppCompatTextHelper;->mFontTypeface:Landroid/graphics/Typeface;

    if-nez v7, :cond_f

    .line 428
    invoke-virtual {p2, v0}, Landroid/support/v7/widget/TintTypedArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 429
    .local v7, "fontFamilyName":Ljava/lang/String;
    if-eqz v7, :cond_f

    .line 430
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v8, v3, :cond_e

    iget v3, p0, Landroid/support/v7/widget/AppCompatTextHelper;->mFontWeight:I

    if-eq v3, v1, :cond_e

    .line 432
    nop

    .line 433
    invoke-static {v7, v2}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v1

    iget v3, p0, Landroid/support/v7/widget/AppCompatTextHelper;->mFontWeight:I

    iget v8, p0, Landroid/support/v7/widget/AppCompatTextHelper;->mStyle:I

    and-int/lit8 v8, v8, 0x2

    if-eqz v8, :cond_d

    const/4 v2, 0x1

    .line 432
    :cond_d
    invoke-static {v1, v3, v2}, Landroid/support/v7/widget/AppCompatTextHelper$Api28Impl;->create(Landroid/graphics/Typeface;IZ)Landroid/graphics/Typeface;

    move-result-object v1

    iput-object v1, p0, Landroid/support/v7/widget/AppCompatTextHelper;->mFontTypeface:Landroid/graphics/Typeface;

    goto :goto_7

    .line 436
    :cond_e
    iget v1, p0, Landroid/support/v7/widget/AppCompatTextHelper;->mStyle:I

    invoke-static {v7, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v1

    iput-object v1, p0, Landroid/support/v7/widget/AppCompatTextHelper;->mFontTypeface:Landroid/graphics/Typeface;

    .line 440
    .end local v7    # "fontFamilyName":Ljava/lang/String;
    :cond_f
    :goto_7
    return v4

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method applyCompoundDrawablesTints()V
    .locals 5

    .line 589
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatTextHelper;->mDrawableLeftTint:Landroid/support/v7/widget/TintInfo;

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/AppCompatTextHelper;->mDrawableTopTint:Landroid/support/v7/widget/TintInfo;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/AppCompatTextHelper;->mDrawableRightTint:Landroid/support/v7/widget/TintInfo;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/AppCompatTextHelper;->mDrawableBottomTint:Landroid/support/v7/widget/TintInfo;

    if-eqz v0, :cond_1

    .line 591
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatTextHelper;->mView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 592
    .local v0, "compoundDrawables":[Landroid/graphics/drawable/Drawable;
    aget-object v3, v0, v2

    iget-object v4, p0, Landroid/support/v7/widget/AppCompatTextHelper;->mDrawableLeftTint:Landroid/support/v7/widget/TintInfo;

    invoke-direct {p0, v3, v4}, Landroid/support/v7/widget/AppCompatTextHelper;->applyCompoundDrawableTint(Landroid/graphics/drawable/Drawable;Landroid/support/v7/widget/TintInfo;)V

    .line 593
    const/4 v3, 0x1

    aget-object v3, v0, v3

    iget-object v4, p0, Landroid/support/v7/widget/AppCompatTextHelper;->mDrawableTopTint:Landroid/support/v7/widget/TintInfo;

    invoke-direct {p0, v3, v4}, Landroid/support/v7/widget/AppCompatTextHelper;->applyCompoundDrawableTint(Landroid/graphics/drawable/Drawable;Landroid/support/v7/widget/TintInfo;)V

    .line 594
    aget-object v3, v0, v1

    iget-object v4, p0, Landroid/support/v7/widget/AppCompatTextHelper;->mDrawableRightTint:Landroid/support/v7/widget/TintInfo;

    invoke-direct {p0, v3, v4}, Landroid/support/v7/widget/AppCompatTextHelper;->applyCompoundDrawableTint(Landroid/graphics/drawable/Drawable;Landroid/support/v7/widget/TintInfo;)V

    .line 595
    const/4 v3, 0x3

    aget-object v3, v0, v3

    iget-object v4, p0, Landroid/support/v7/widget/AppCompatTextHelper;->mDrawableBottomTint:Landroid/support/v7/widget/TintInfo;

    invoke-direct {p0, v3, v4}, Landroid/support/v7/widget/AppCompatTextHelper;->applyCompoundDrawableTint(Landroid/graphics/drawable/Drawable;Landroid/support/v7/widget/TintInfo;)V

    .line 597
    .end local v0    # "compoundDrawables":[Landroid/graphics/drawable/Drawable;
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatTextHelper;->mDrawableStartTint:Landroid/support/v7/widget/TintInfo;

    if-nez v0, :cond_2

    iget-object v0, p0, Landroid/support/v7/widget/AppCompatTextHelper;->mDrawableEndTint:Landroid/support/v7/widget/TintInfo;

    if-eqz v0, :cond_3

    .line 598
    :cond_2
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatTextHelper;->mView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getCompoundDrawablesRelative()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 599
    .restart local v0    # "compoundDrawables":[Landroid/graphics/drawable/Drawable;
    aget-object v2, v0, v2

    iget-object v3, p0, Landroid/support/v7/widget/AppCompatTextHelper;->mDrawableStartTint:Landroid/support/v7/widget/TintInfo;

    invoke-direct {p0, v2, v3}, Landroid/support/v7/widget/AppCompatTextHelper;->applyCompoundDrawableTint(Landroid/graphics/drawable/Drawable;Landroid/support/v7/widget/TintInfo;)V

    .line 600
    aget-object v1, v0, v1

    iget-object v2, p0, Landroid/support/v7/widget/AppCompatTextHelper;->mDrawableEndTint:Landroid/support/v7/widget/TintInfo;

    invoke-direct {p0, v1, v2}, Landroid/support/v7/widget/AppCompatTextHelper;->applyCompoundDrawableTint(Landroid/graphics/drawable/Drawable;Landroid/support/v7/widget/TintInfo;)V

    .line 602
    .end local v0    # "compoundDrawables":[Landroid/graphics/drawable/Drawable;
    :cond_3
    return-void
.end method

.method autoSizeText()V
    .locals 1

    .line 640
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatTextHelper;->mAutoSizeTextHelper:Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;

    invoke-virtual {v0}, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->autoSizeText()V

    .line 641
    return-void
.end method

.method getAutoSizeMaxTextSize()I
    .locals 1

    .line 684
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatTextHelper;->mAutoSizeTextHelper:Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;

    invoke-virtual {v0}, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->getAutoSizeMaxTextSize()I

    move-result v0

    return v0
.end method

.method getAutoSizeMinTextSize()I
    .locals 1

    .line 680
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatTextHelper;->mAutoSizeTextHelper:Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;

    invoke-virtual {v0}, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->getAutoSizeMinTextSize()I

    move-result v0

    return v0
.end method

.method getAutoSizeStepGranularity()I
    .locals 1

    .line 676
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatTextHelper;->mAutoSizeTextHelper:Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;

    invoke-virtual {v0}, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->getAutoSizeStepGranularity()I

    move-result v0

    return v0
.end method

.method getAutoSizeTextAvailableSizes()[I
    .locals 1

    .line 688
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatTextHelper;->mAutoSizeTextHelper:Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;

    invoke-virtual {v0}, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->getAutoSizeTextAvailableSizes()[I

    move-result-object v0

    return-object v0
.end method

.method getAutoSizeTextType()I
    .locals 1

    .line 672
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatTextHelper;->mAutoSizeTextHelper:Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;

    invoke-virtual {v0}, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->getAutoSizeTextType()I

    move-result v0

    return v0
.end method

.method getCompoundDrawableTintList()Landroid/content/res/ColorStateList;
    .locals 1

    .line 692
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatTextHelper;->mDrawableTint:Landroid/support/v7/widget/TintInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/AppCompatTextHelper;->mDrawableTint:Landroid/support/v7/widget/TintInfo;

    iget-object v0, v0, Landroid/support/v7/widget/TintInfo;->mTintList:Landroid/content/res/ColorStateList;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method getCompoundDrawableTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 1

    .line 705
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatTextHelper;->mDrawableTint:Landroid/support/v7/widget/TintInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/AppCompatTextHelper;->mDrawableTint:Landroid/support/v7/widget/TintInfo;

    iget-object v0, v0, Landroid/support/v7/widget/TintInfo;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method isAutoSizeEnabled()Z
    .locals 1

    .line 645
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatTextHelper;->mAutoSizeTextHelper:Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;

    invoke-virtual {v0}, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->isAutoSizeEnabled()Z

    move-result v0

    return v0
.end method

.method loadFromAttributes(Landroid/util/AttributeSet;I)V
    .locals 35
    .param p1, "attrs"    # Landroid/util/AttributeSet;
    .param p2, "defStyleAttr"    # I

    .line 93
    move-object/from16 v0, p0

    move-object/from16 v4, p1

    move/from16 v6, p2

    iget-object v1, v0, Landroid/support/v7/widget/AppCompatTextHelper;->mView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v8

    .line 94
    .local v8, "context":Landroid/content/Context;
    invoke-static {}, Landroid/support/v7/widget/AppCompatDrawableManager;->get()Landroid/support/v7/widget/AppCompatDrawableManager;

    move-result-object v9

    .line 97
    .local v9, "drawableManager":Landroid/support/v7/widget/AppCompatDrawableManager;
    sget-object v1, Landroid/support/v7/appcompat/R$styleable;->AppCompatTextHelper:[I

    const/4 v10, 0x0

    invoke-static {v8, v4, v1, v6, v10}, Landroid/support/v7/widget/TintTypedArray;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroid/support/v7/widget/TintTypedArray;

    move-result-object v11

    .line 99
    .local v11, "a":Landroid/support/v7/widget/TintTypedArray;
    iget-object v1, v0, Landroid/support/v7/widget/AppCompatTextHelper;->mView:Landroid/widget/TextView;

    iget-object v2, v0, Landroid/support/v7/widget/AppCompatTextHelper;->mView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Landroid/support/v7/appcompat/R$styleable;->AppCompatTextHelper:[I

    .line 100
    invoke-virtual {v11}, Landroid/support/v7/widget/TintTypedArray;->getWrappedTypeArray()Landroid/content/res/TypedArray;

    move-result-object v5

    .line 99
    const/4 v7, 0x0

    invoke-static/range {v1 .. v7}, Landroidx/core/view/ViewCompat;->saveAttributeDataForStyleable(Landroid/view/View;Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;II)V

    .line 103
    move-object v7, v4

    move v12, v6

    sget v1, Landroid/support/v7/appcompat/R$styleable;->AppCompatTextHelper_android_textAppearance:I

    const/4 v13, -0x1

    invoke-virtual {v11, v1, v13}, Landroid/support/v7/widget/TintTypedArray;->getResourceId(II)I

    move-result v14

    .line 105
    .local v14, "ap":I
    sget v1, Landroid/support/v7/appcompat/R$styleable;->AppCompatTextHelper_android_drawableLeft:I

    invoke-virtual {v11, v1}, Landroid/support/v7/widget/TintTypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 106
    sget v1, Landroid/support/v7/appcompat/R$styleable;->AppCompatTextHelper_android_drawableLeft:I

    .line 107
    invoke-virtual {v11, v1, v10}, Landroid/support/v7/widget/TintTypedArray;->getResourceId(II)I

    move-result v1

    .line 106
    invoke-static {v8, v9, v1}, Landroid/support/v7/widget/AppCompatTextHelper;->createTintInfo(Landroid/content/Context;Landroid/support/v7/widget/AppCompatDrawableManager;I)Landroid/support/v7/widget/TintInfo;

    move-result-object v1

    iput-object v1, v0, Landroid/support/v7/widget/AppCompatTextHelper;->mDrawableLeftTint:Landroid/support/v7/widget/TintInfo;

    .line 109
    :cond_0
    sget v1, Landroid/support/v7/appcompat/R$styleable;->AppCompatTextHelper_android_drawableTop:I

    invoke-virtual {v11, v1}, Landroid/support/v7/widget/TintTypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 110
    sget v1, Landroid/support/v7/appcompat/R$styleable;->AppCompatTextHelper_android_drawableTop:I

    .line 111
    invoke-virtual {v11, v1, v10}, Landroid/support/v7/widget/TintTypedArray;->getResourceId(II)I

    move-result v1

    .line 110
    invoke-static {v8, v9, v1}, Landroid/support/v7/widget/AppCompatTextHelper;->createTintInfo(Landroid/content/Context;Landroid/support/v7/widget/AppCompatDrawableManager;I)Landroid/support/v7/widget/TintInfo;

    move-result-object v1

    iput-object v1, v0, Landroid/support/v7/widget/AppCompatTextHelper;->mDrawableTopTint:Landroid/support/v7/widget/TintInfo;

    .line 113
    :cond_1
    sget v1, Landroid/support/v7/appcompat/R$styleable;->AppCompatTextHelper_android_drawableRight:I

    invoke-virtual {v11, v1}, Landroid/support/v7/widget/TintTypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 114
    sget v1, Landroid/support/v7/appcompat/R$styleable;->AppCompatTextHelper_android_drawableRight:I

    .line 115
    invoke-virtual {v11, v1, v10}, Landroid/support/v7/widget/TintTypedArray;->getResourceId(II)I

    move-result v1

    .line 114
    invoke-static {v8, v9, v1}, Landroid/support/v7/widget/AppCompatTextHelper;->createTintInfo(Landroid/content/Context;Landroid/support/v7/widget/AppCompatDrawableManager;I)Landroid/support/v7/widget/TintInfo;

    move-result-object v1

    iput-object v1, v0, Landroid/support/v7/widget/AppCompatTextHelper;->mDrawableRightTint:Landroid/support/v7/widget/TintInfo;

    .line 117
    :cond_2
    sget v1, Landroid/support/v7/appcompat/R$styleable;->AppCompatTextHelper_android_drawableBottom:I

    invoke-virtual {v11, v1}, Landroid/support/v7/widget/TintTypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 118
    sget v1, Landroid/support/v7/appcompat/R$styleable;->AppCompatTextHelper_android_drawableBottom:I

    .line 119
    invoke-virtual {v11, v1, v10}, Landroid/support/v7/widget/TintTypedArray;->getResourceId(II)I

    move-result v1

    .line 118
    invoke-static {v8, v9, v1}, Landroid/support/v7/widget/AppCompatTextHelper;->createTintInfo(Landroid/content/Context;Landroid/support/v7/widget/AppCompatDrawableManager;I)Landroid/support/v7/widget/TintInfo;

    move-result-object v1

    iput-object v1, v0, Landroid/support/v7/widget/AppCompatTextHelper;->mDrawableBottomTint:Landroid/support/v7/widget/TintInfo;

    .line 121
    :cond_3
    sget v1, Landroid/support/v7/appcompat/R$styleable;->AppCompatTextHelper_android_drawableStart:I

    invoke-virtual {v11, v1}, Landroid/support/v7/widget/TintTypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 122
    sget v1, Landroid/support/v7/appcompat/R$styleable;->AppCompatTextHelper_android_drawableStart:I

    .line 123
    invoke-virtual {v11, v1, v10}, Landroid/support/v7/widget/TintTypedArray;->getResourceId(II)I

    move-result v1

    .line 122
    invoke-static {v8, v9, v1}, Landroid/support/v7/widget/AppCompatTextHelper;->createTintInfo(Landroid/content/Context;Landroid/support/v7/widget/AppCompatDrawableManager;I)Landroid/support/v7/widget/TintInfo;

    move-result-object v1

    iput-object v1, v0, Landroid/support/v7/widget/AppCompatTextHelper;->mDrawableStartTint:Landroid/support/v7/widget/TintInfo;

    .line 125
    :cond_4
    sget v1, Landroid/support/v7/appcompat/R$styleable;->AppCompatTextHelper_android_drawableEnd:I

    invoke-virtual {v11, v1}, Landroid/support/v7/widget/TintTypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 126
    sget v1, Landroid/support/v7/appcompat/R$styleable;->AppCompatTextHelper_android_drawableEnd:I

    .line 127
    invoke-virtual {v11, v1, v10}, Landroid/support/v7/widget/TintTypedArray;->getResourceId(II)I

    move-result v1

    .line 126
    invoke-static {v8, v9, v1}, Landroid/support/v7/widget/AppCompatTextHelper;->createTintInfo(Landroid/content/Context;Landroid/support/v7/widget/AppCompatDrawableManager;I)Landroid/support/v7/widget/TintInfo;

    move-result-object v1

    iput-object v1, v0, Landroid/support/v7/widget/AppCompatTextHelper;->mDrawableEndTint:Landroid/support/v7/widget/TintInfo;

    .line 130
    :cond_5
    invoke-virtual {v11}, Landroid/support/v7/widget/TintTypedArray;->recycle()V

    .line 135
    iget-object v1, v0, Landroid/support/v7/widget/AppCompatTextHelper;->mView:Landroid/widget/TextView;

    .line 136
    invoke-virtual {v1}, Landroid/widget/TextView;->getTransformationMethod()Landroid/text/method/TransformationMethod;

    move-result-object v1

    instance-of v15, v1, Landroid/text/method/PasswordTransformationMethod;

    .line 137
    .local v15, "hasPwdTm":Z
    const/4 v1, 0x0

    .line 138
    .local v1, "allCaps":Z
    const/4 v2, 0x0

    .line 139
    .local v2, "allCapsSet":Z
    const/4 v3, 0x0

    .line 140
    .local v3, "textColor":Landroid/content/res/ColorStateList;
    const/4 v4, 0x0

    .line 141
    .local v4, "textColorHint":Landroid/content/res/ColorStateList;
    const/4 v5, 0x0

    .line 142
    .local v5, "textColorLink":Landroid/content/res/ColorStateList;
    const/4 v6, 0x0

    .line 145
    .local v6, "localeListString":Ljava/lang/String;
    if-eq v14, v13, :cond_b

    .line 146
    sget-object v13, Landroid/support/v7/appcompat/R$styleable;->TextAppearance:[I

    invoke-static {v8, v14, v13}, Landroid/support/v7/widget/TintTypedArray;->obtainStyledAttributes(Landroid/content/Context;I[I)Landroid/support/v7/widget/TintTypedArray;

    move-result-object v11

    .line 147
    if-nez v15, :cond_6

    sget v13, Landroid/support/v7/appcompat/R$styleable;->TextAppearance_textAllCaps:I

    invoke-virtual {v11, v13}, Landroid/support/v7/widget/TintTypedArray;->hasValue(I)Z

    move-result v13

    if-eqz v13, :cond_6

    .line 148
    const/4 v2, 0x1

    .line 149
    sget v13, Landroid/support/v7/appcompat/R$styleable;->TextAppearance_textAllCaps:I

    const/4 v10, 0x0

    invoke-virtual {v11, v13, v10}, Landroid/support/v7/widget/TintTypedArray;->getBoolean(IZ)Z

    move-result v1

    .line 152
    :cond_6
    invoke-direct {v0, v8, v11}, Landroid/support/v7/widget/AppCompatTextHelper;->updateTypefaceAndStyle(Landroid/content/Context;Landroid/support/v7/widget/TintTypedArray;)Z

    .line 153
    sget v10, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v13, 0x17

    if-ge v10, v13, :cond_9

    .line 156
    sget v10, Landroid/support/v7/appcompat/R$styleable;->TextAppearance_android_textColor:I

    invoke-virtual {v11, v10}, Landroid/support/v7/widget/TintTypedArray;->hasValue(I)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 157
    sget v10, Landroid/support/v7/appcompat/R$styleable;->TextAppearance_android_textColor:I

    invoke-virtual {v11, v10}, Landroid/support/v7/widget/TintTypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    .line 159
    :cond_7
    sget v10, Landroid/support/v7/appcompat/R$styleable;->TextAppearance_android_textColorHint:I

    invoke-virtual {v11, v10}, Landroid/support/v7/widget/TintTypedArray;->hasValue(I)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 160
    sget v10, Landroid/support/v7/appcompat/R$styleable;->TextAppearance_android_textColorHint:I

    invoke-virtual {v11, v10}, Landroid/support/v7/widget/TintTypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    .line 163
    :cond_8
    sget v10, Landroid/support/v7/appcompat/R$styleable;->TextAppearance_android_textColorLink:I

    invoke-virtual {v11, v10}, Landroid/support/v7/widget/TintTypedArray;->hasValue(I)Z

    move-result v10

    if-eqz v10, :cond_9

    .line 164
    sget v10, Landroid/support/v7/appcompat/R$styleable;->TextAppearance_android_textColorLink:I

    invoke-virtual {v11, v10}, Landroid/support/v7/widget/TintTypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v5

    .line 168
    :cond_9
    sget v10, Landroid/support/v7/appcompat/R$styleable;->TextAppearance_textLocale:I

    invoke-virtual {v11, v10}, Landroid/support/v7/widget/TintTypedArray;->hasValue(I)Z

    move-result v10

    if-eqz v10, :cond_a

    .line 169
    sget v10, Landroid/support/v7/appcompat/R$styleable;->TextAppearance_textLocale:I

    invoke-virtual {v11, v10}, Landroid/support/v7/widget/TintTypedArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 171
    :cond_a
    invoke-virtual {v11}, Landroid/support/v7/widget/TintTypedArray;->recycle()V

    .line 175
    :cond_b
    sget-object v10, Landroid/support/v7/appcompat/R$styleable;->TextAppearance:[I

    const/4 v13, 0x0

    invoke-static {v8, v7, v10, v12, v13}, Landroid/support/v7/widget/TintTypedArray;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroid/support/v7/widget/TintTypedArray;

    move-result-object v10

    .line 177
    .end local v11    # "a":Landroid/support/v7/widget/TintTypedArray;
    .local v10, "a":Landroid/support/v7/widget/TintTypedArray;
    if-nez v15, :cond_c

    sget v11, Landroid/support/v7/appcompat/R$styleable;->TextAppearance_textAllCaps:I

    invoke-virtual {v10, v11}, Landroid/support/v7/widget/TintTypedArray;->hasValue(I)Z

    move-result v11

    if-eqz v11, :cond_c

    .line 178
    const/4 v2, 0x1

    .line 179
    sget v11, Landroid/support/v7/appcompat/R$styleable;->TextAppearance_textAllCaps:I

    invoke-virtual {v10, v11, v13}, Landroid/support/v7/widget/TintTypedArray;->getBoolean(IZ)Z

    move-result v1

    move v11, v1

    move v13, v2

    goto :goto_0

    .line 181
    :cond_c
    move v11, v1

    move v13, v2

    .end local v1    # "allCaps":Z
    .end local v2    # "allCapsSet":Z
    .local v11, "allCaps":Z
    .local v13, "allCapsSet":Z
    :goto_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-ge v1, v2, :cond_10

    .line 184
    sget v1, Landroid/support/v7/appcompat/R$styleable;->TextAppearance_android_textColor:I

    invoke-virtual {v10, v1}, Landroid/support/v7/widget/TintTypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 185
    sget v1, Landroid/support/v7/appcompat/R$styleable;->TextAppearance_android_textColor:I

    invoke-virtual {v10, v1}, Landroid/support/v7/widget/TintTypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    .line 187
    :cond_d
    sget v1, Landroid/support/v7/appcompat/R$styleable;->TextAppearance_android_textColorHint:I

    invoke-virtual {v10, v1}, Landroid/support/v7/widget/TintTypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 188
    sget v1, Landroid/support/v7/appcompat/R$styleable;->TextAppearance_android_textColorHint:I

    invoke-virtual {v10, v1}, Landroid/support/v7/widget/TintTypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    .line 191
    :cond_e
    sget v1, Landroid/support/v7/appcompat/R$styleable;->TextAppearance_android_textColorLink:I

    invoke-virtual {v10, v1}, Landroid/support/v7/widget/TintTypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 192
    sget v1, Landroid/support/v7/appcompat/R$styleable;->TextAppearance_android_textColorLink:I

    invoke-virtual {v10, v1}, Landroid/support/v7/widget/TintTypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v5

    move-object v1, v3

    move-object v2, v4

    move-object v3, v5

    goto :goto_1

    .line 191
    :cond_f
    move-object v1, v3

    move-object v2, v4

    move-object v3, v5

    goto :goto_1

    .line 181
    :cond_10
    move-object v1, v3

    move-object v2, v4

    move-object v3, v5

    .line 196
    .end local v4    # "textColorHint":Landroid/content/res/ColorStateList;
    .end local v5    # "textColorLink":Landroid/content/res/ColorStateList;
    .local v1, "textColor":Landroid/content/res/ColorStateList;
    .local v2, "textColorHint":Landroid/content/res/ColorStateList;
    .local v3, "textColorLink":Landroid/content/res/ColorStateList;
    :goto_1
    sget v4, Landroid/support/v7/appcompat/R$styleable;->TextAppearance_textLocale:I

    invoke-virtual {v10, v4}, Landroid/support/v7/widget/TintTypedArray;->hasValue(I)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 197
    sget v4, Landroid/support/v7/appcompat/R$styleable;->TextAppearance_textLocale:I

    invoke-virtual {v10, v4}, Landroid/support/v7/widget/TintTypedArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object v4, v6

    goto :goto_2

    .line 196
    :cond_11
    move-object v4, v6

    .line 201
    .end local v6    # "localeListString":Ljava/lang/String;
    .local v4, "localeListString":Ljava/lang/String;
    :goto_2
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x1c

    if-lt v5, v6, :cond_14

    sget v5, Landroid/support/v7/appcompat/R$styleable;->TextAppearance_android_textSize:I

    .line 202
    invoke-virtual {v10, v5}, Landroid/support/v7/widget/TintTypedArray;->hasValue(I)Z

    move-result v5

    if-eqz v5, :cond_13

    .line 203
    sget v5, Landroid/support/v7/appcompat/R$styleable;->TextAppearance_android_textSize:I

    const/4 v6, -0x1

    invoke-virtual {v10, v5, v6}, Landroid/support/v7/widget/TintTypedArray;->getDimensionPixelSize(II)I

    move-result v5

    if-nez v5, :cond_12

    .line 204
    iget-object v5, v0, Landroid/support/v7/widget/AppCompatTextHelper;->mView:Landroid/widget/TextView;

    const/4 v6, 0x0

    move/from16 v18, v13

    const/4 v13, 0x0

    .end local v13    # "allCapsSet":Z
    .local v18, "allCapsSet":Z
    invoke-virtual {v5, v13, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    goto :goto_3

    .line 203
    .end local v18    # "allCapsSet":Z
    .restart local v13    # "allCapsSet":Z
    :cond_12
    move/from16 v18, v13

    .end local v13    # "allCapsSet":Z
    .restart local v18    # "allCapsSet":Z
    goto :goto_3

    .line 202
    .end local v18    # "allCapsSet":Z
    .restart local v13    # "allCapsSet":Z
    :cond_13
    move/from16 v18, v13

    .end local v13    # "allCapsSet":Z
    .restart local v18    # "allCapsSet":Z
    goto :goto_3

    .line 201
    .end local v18    # "allCapsSet":Z
    .restart local v13    # "allCapsSet":Z
    :cond_14
    move/from16 v18, v13

    .line 208
    .end local v13    # "allCapsSet":Z
    .restart local v18    # "allCapsSet":Z
    :goto_3
    invoke-direct {v0, v8, v10}, Landroid/support/v7/widget/AppCompatTextHelper;->updateTypefaceAndStyle(Landroid/content/Context;Landroid/support/v7/widget/TintTypedArray;)Z

    .line 209
    invoke-virtual {v10}, Landroid/support/v7/widget/TintTypedArray;->recycle()V

    .line 211
    if-eqz v1, :cond_15

    .line 212
    iget-object v5, v0, Landroid/support/v7/widget/AppCompatTextHelper;->mView:Landroid/widget/TextView;

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 214
    :cond_15
    if-eqz v2, :cond_16

    .line 215
    iget-object v5, v0, Landroid/support/v7/widget/AppCompatTextHelper;->mView:Landroid/widget/TextView;

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setHintTextColor(Landroid/content/res/ColorStateList;)V

    .line 217
    :cond_16
    if-eqz v3, :cond_17

    .line 218
    iget-object v5, v0, Landroid/support/v7/widget/AppCompatTextHelper;->mView:Landroid/widget/TextView;

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setLinkTextColor(Landroid/content/res/ColorStateList;)V

    .line 220
    :cond_17
    if-nez v15, :cond_18

    if-eqz v18, :cond_18

    .line 221
    invoke-virtual {v0, v11}, Landroid/support/v7/widget/AppCompatTextHelper;->setAllCaps(Z)V

    .line 224
    :cond_18
    const/4 v13, 0x0

    invoke-direct {v0, v13}, Landroid/support/v7/widget/AppCompatTextHelper;->applyFontAndVariationSettings(Z)V

    .line 226
    if-eqz v4, :cond_1a

    .line 227
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x18

    if-lt v5, v6, :cond_19

    .line 228
    iget-object v5, v0, Landroid/support/v7/widget/AppCompatTextHelper;->mView:Landroid/widget/TextView;

    invoke-static {v4}, Landroid/support/v7/widget/AppCompatTextHelper$Api24Impl;->forLanguageTags(Ljava/lang/String;)Landroid/os/LocaleList;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/support/v7/widget/AppCompatTextHelper$Api24Impl;->setTextLocales(Landroid/widget/TextView;Landroid/os/LocaleList;)V

    goto :goto_4

    .line 229
    :cond_19
    nop

    .line 231
    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    const/16 v16, 0x0

    aget-object v5, v5, v16

    .line 232
    .local v5, "firstLanTag":Ljava/lang/String;
    iget-object v6, v0, Landroid/support/v7/widget/AppCompatTextHelper;->mView:Landroid/widget/TextView;

    invoke-static {v5}, Landroid/support/v7/widget/AppCompatTextHelper$Api21Impl;->forLanguageTag(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v13

    invoke-virtual {v6, v13}, Landroid/widget/TextView;->setTextLocale(Ljava/util/Locale;)V

    .line 236
    .end local v5    # "firstLanTag":Ljava/lang/String;
    :cond_1a
    :goto_4
    iget-object v5, v0, Landroid/support/v7/widget/AppCompatTextHelper;->mAutoSizeTextHelper:Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;

    invoke-virtual {v5, v7, v12}, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->loadFromAttributes(Landroid/util/AttributeSet;I)V

    .line 238
    sget-boolean v5, Landroid/support/v7/widget/ViewUtils;->SDK_LEVEL_SUPPORTS_AUTOSIZE:Z

    const/high16 v13, -0x40800000    # -1.0f

    if-eqz v5, :cond_1e

    .line 240
    iget-object v5, v0, Landroid/support/v7/widget/AppCompatTextHelper;->mAutoSizeTextHelper:Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;

    invoke-virtual {v5}, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->getAutoSizeTextType()I

    move-result v5

    if-eqz v5, :cond_1d

    .line 242
    iget-object v5, v0, Landroid/support/v7/widget/AppCompatTextHelper;->mAutoSizeTextHelper:Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;

    .line 243
    invoke-virtual {v5}, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->getAutoSizeTextAvailableSizes()[I

    move-result-object v5

    .line 244
    .local v5, "autoSizeTextSizesInPx":[I
    array-length v6, v5

    if-lez v6, :cond_1c

    .line 245
    iget-object v6, v0, Landroid/support/v7/widget/AppCompatTextHelper;->mView:Landroid/widget/TextView;

    invoke-static {v6}, Landroid/support/v7/widget/AppCompatTextHelper$Api26Impl;->getAutoSizeStepGranularity(Landroid/widget/TextView;)I

    move-result v6

    int-to-float v6, v6

    cmpl-float v6, v6, v13

    if-eqz v6, :cond_1b

    .line 249
    iget-object v6, v0, Landroid/support/v7/widget/AppCompatTextHelper;->mView:Landroid/widget/TextView;

    const/high16 v19, -0x40800000    # -1.0f

    iget-object v13, v0, Landroid/support/v7/widget/AppCompatTextHelper;->mAutoSizeTextHelper:Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;

    .line 250
    invoke-virtual {v13}, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->getAutoSizeMinTextSize()I

    move-result v13

    move-object/from16 v20, v1

    .end local v1    # "textColor":Landroid/content/res/ColorStateList;
    .local v20, "textColor":Landroid/content/res/ColorStateList;
    iget-object v1, v0, Landroid/support/v7/widget/AppCompatTextHelper;->mAutoSizeTextHelper:Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;

    .line 251
    invoke-virtual {v1}, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->getAutoSizeMaxTextSize()I

    move-result v1

    move-object/from16 v21, v2

    .end local v2    # "textColorHint":Landroid/content/res/ColorStateList;
    .local v21, "textColorHint":Landroid/content/res/ColorStateList;
    iget-object v2, v0, Landroid/support/v7/widget/AppCompatTextHelper;->mAutoSizeTextHelper:Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;

    .line 252
    invoke-virtual {v2}, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->getAutoSizeStepGranularity()I

    move-result v2

    .line 249
    move-object/from16 v22, v3

    const/4 v3, 0x0

    .end local v3    # "textColorLink":Landroid/content/res/ColorStateList;
    .local v22, "textColorLink":Landroid/content/res/ColorStateList;
    invoke-static {v6, v13, v1, v2, v3}, Landroid/support/v7/widget/AppCompatTextHelper$Api26Impl;->setAutoSizeTextTypeUniformWithConfiguration(Landroid/widget/TextView;IIII)V

    goto :goto_5

    .line 255
    .end local v20    # "textColor":Landroid/content/res/ColorStateList;
    .end local v21    # "textColorHint":Landroid/content/res/ColorStateList;
    .end local v22    # "textColorLink":Landroid/content/res/ColorStateList;
    .restart local v1    # "textColor":Landroid/content/res/ColorStateList;
    .restart local v2    # "textColorHint":Landroid/content/res/ColorStateList;
    .restart local v3    # "textColorLink":Landroid/content/res/ColorStateList;
    :cond_1b
    move-object/from16 v20, v1

    move-object/from16 v21, v2

    move-object/from16 v22, v3

    const/4 v3, 0x0

    const/high16 v19, -0x40800000    # -1.0f

    .end local v1    # "textColor":Landroid/content/res/ColorStateList;
    .end local v2    # "textColorHint":Landroid/content/res/ColorStateList;
    .end local v3    # "textColorLink":Landroid/content/res/ColorStateList;
    .restart local v20    # "textColor":Landroid/content/res/ColorStateList;
    .restart local v21    # "textColorHint":Landroid/content/res/ColorStateList;
    .restart local v22    # "textColorLink":Landroid/content/res/ColorStateList;
    iget-object v1, v0, Landroid/support/v7/widget/AppCompatTextHelper;->mView:Landroid/widget/TextView;

    invoke-static {v1, v5, v3}, Landroid/support/v7/widget/AppCompatTextHelper$Api26Impl;->setAutoSizeTextTypeUniformWithPresetSizes(Landroid/widget/TextView;[II)V

    goto :goto_5

    .line 244
    .end local v20    # "textColor":Landroid/content/res/ColorStateList;
    .end local v21    # "textColorHint":Landroid/content/res/ColorStateList;
    .end local v22    # "textColorLink":Landroid/content/res/ColorStateList;
    .restart local v1    # "textColor":Landroid/content/res/ColorStateList;
    .restart local v2    # "textColorHint":Landroid/content/res/ColorStateList;
    .restart local v3    # "textColorLink":Landroid/content/res/ColorStateList;
    :cond_1c
    move-object/from16 v20, v1

    move-object/from16 v21, v2

    move-object/from16 v22, v3

    const/high16 v19, -0x40800000    # -1.0f

    .end local v1    # "textColor":Landroid/content/res/ColorStateList;
    .end local v2    # "textColorHint":Landroid/content/res/ColorStateList;
    .end local v3    # "textColorLink":Landroid/content/res/ColorStateList;
    .restart local v20    # "textColor":Landroid/content/res/ColorStateList;
    .restart local v21    # "textColorHint":Landroid/content/res/ColorStateList;
    .restart local v22    # "textColorLink":Landroid/content/res/ColorStateList;
    goto :goto_5

    .line 240
    .end local v5    # "autoSizeTextSizesInPx":[I
    .end local v20    # "textColor":Landroid/content/res/ColorStateList;
    .end local v21    # "textColorHint":Landroid/content/res/ColorStateList;
    .end local v22    # "textColorLink":Landroid/content/res/ColorStateList;
    .restart local v1    # "textColor":Landroid/content/res/ColorStateList;
    .restart local v2    # "textColorHint":Landroid/content/res/ColorStateList;
    .restart local v3    # "textColorLink":Landroid/content/res/ColorStateList;
    :cond_1d
    move-object/from16 v20, v1

    move-object/from16 v21, v2

    move-object/from16 v22, v3

    const/high16 v19, -0x40800000    # -1.0f

    .end local v1    # "textColor":Landroid/content/res/ColorStateList;
    .end local v2    # "textColorHint":Landroid/content/res/ColorStateList;
    .end local v3    # "textColorLink":Landroid/content/res/ColorStateList;
    .restart local v20    # "textColor":Landroid/content/res/ColorStateList;
    .restart local v21    # "textColorHint":Landroid/content/res/ColorStateList;
    .restart local v22    # "textColorLink":Landroid/content/res/ColorStateList;
    goto :goto_5

    .line 238
    .end local v20    # "textColor":Landroid/content/res/ColorStateList;
    .end local v21    # "textColorHint":Landroid/content/res/ColorStateList;
    .end local v22    # "textColorLink":Landroid/content/res/ColorStateList;
    .restart local v1    # "textColor":Landroid/content/res/ColorStateList;
    .restart local v2    # "textColorHint":Landroid/content/res/ColorStateList;
    .restart local v3    # "textColorLink":Landroid/content/res/ColorStateList;
    :cond_1e
    move-object/from16 v20, v1

    move-object/from16 v21, v2

    move-object/from16 v22, v3

    const/high16 v19, -0x40800000    # -1.0f

    .line 263
    .end local v1    # "textColor":Landroid/content/res/ColorStateList;
    .end local v2    # "textColorHint":Landroid/content/res/ColorStateList;
    .end local v3    # "textColorLink":Landroid/content/res/ColorStateList;
    .restart local v20    # "textColor":Landroid/content/res/ColorStateList;
    .restart local v21    # "textColorHint":Landroid/content/res/ColorStateList;
    .restart local v22    # "textColorLink":Landroid/content/res/ColorStateList;
    :goto_5
    sget-object v1, Landroid/support/v7/appcompat/R$styleable;->AppCompatTextView:[I

    invoke-static {v8, v7, v1}, Landroid/support/v7/widget/TintTypedArray;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[I)Landroid/support/v7/widget/TintTypedArray;

    move-result-object v10

    .line 266
    const/4 v1, 0x0

    .local v1, "drawableLeft":Landroid/graphics/drawable/Drawable;
    const/4 v2, 0x0

    .local v2, "drawableTop":Landroid/graphics/drawable/Drawable;
    const/4 v3, 0x0

    .line 267
    .local v3, "drawableRight":Landroid/graphics/drawable/Drawable;
    const/4 v5, 0x0

    .local v5, "drawableBottom":Landroid/graphics/drawable/Drawable;
    const/4 v6, 0x0

    .local v6, "drawableStart":Landroid/graphics/drawable/Drawable;
    const/4 v13, 0x0

    .line 268
    .local v13, "drawableEnd":Landroid/graphics/drawable/Drawable;
    sget v0, Landroid/support/v7/appcompat/R$styleable;->AppCompatTextView_drawableLeftCompat:I

    move-object/from16 v16, v1

    const/4 v1, -0x1

    .end local v1    # "drawableLeft":Landroid/graphics/drawable/Drawable;
    .local v16, "drawableLeft":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v10, v0, v1}, Landroid/support/v7/widget/TintTypedArray;->getResourceId(II)I

    move-result v0

    .line 270
    .local v0, "drawableLeftId":I
    if-eq v0, v1, :cond_1f

    .line 271
    invoke-virtual {v9, v8, v0}, Landroid/support/v7/widget/AppCompatDrawableManager;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v16

    .line 273
    :cond_1f
    move/from16 v23, v0

    .end local v0    # "drawableLeftId":I
    .local v23, "drawableLeftId":I
    sget v0, Landroid/support/v7/appcompat/R$styleable;->AppCompatTextView_drawableTopCompat:I

    invoke-virtual {v10, v0, v1}, Landroid/support/v7/widget/TintTypedArray;->getResourceId(II)I

    move-result v0

    .line 275
    .local v0, "drawableTopId":I
    if-eq v0, v1, :cond_20

    .line 276
    invoke-virtual {v9, v8, v0}, Landroid/support/v7/widget/AppCompatDrawableManager;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 278
    :cond_20
    move/from16 v24, v0

    .end local v0    # "drawableTopId":I
    .local v24, "drawableTopId":I
    sget v0, Landroid/support/v7/appcompat/R$styleable;->AppCompatTextView_drawableRightCompat:I

    invoke-virtual {v10, v0, v1}, Landroid/support/v7/widget/TintTypedArray;->getResourceId(II)I

    move-result v0

    .line 280
    .local v0, "drawableRightId":I
    if-eq v0, v1, :cond_21

    .line 281
    invoke-virtual {v9, v8, v0}, Landroid/support/v7/widget/AppCompatDrawableManager;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 283
    :cond_21
    move/from16 v25, v0

    .end local v0    # "drawableRightId":I
    .local v25, "drawableRightId":I
    sget v0, Landroid/support/v7/appcompat/R$styleable;->AppCompatTextView_drawableBottomCompat:I

    invoke-virtual {v10, v0, v1}, Landroid/support/v7/widget/TintTypedArray;->getResourceId(II)I

    move-result v0

    .line 285
    .local v0, "drawableBottomId":I
    if-eq v0, v1, :cond_22

    .line 286
    invoke-virtual {v9, v8, v0}, Landroid/support/v7/widget/AppCompatDrawableManager;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 288
    :cond_22
    move/from16 v26, v0

    .end local v0    # "drawableBottomId":I
    .local v26, "drawableBottomId":I
    sget v0, Landroid/support/v7/appcompat/R$styleable;->AppCompatTextView_drawableStartCompat:I

    invoke-virtual {v10, v0, v1}, Landroid/support/v7/widget/TintTypedArray;->getResourceId(II)I

    move-result v0

    .line 290
    .local v0, "drawableStartId":I
    if-eq v0, v1, :cond_23

    .line 291
    invoke-virtual {v9, v8, v0}, Landroid/support/v7/widget/AppCompatDrawableManager;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 293
    :cond_23
    move/from16 v27, v0

    .end local v0    # "drawableStartId":I
    .local v27, "drawableStartId":I
    sget v0, Landroid/support/v7/appcompat/R$styleable;->AppCompatTextView_drawableEndCompat:I

    invoke-virtual {v10, v0, v1}, Landroid/support/v7/widget/TintTypedArray;->getResourceId(II)I

    move-result v0

    .line 295
    .local v0, "drawableEndId":I
    if-eq v0, v1, :cond_24

    .line 296
    invoke-virtual {v9, v8, v0}, Landroid/support/v7/widget/AppCompatDrawableManager;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v13

    .line 298
    :cond_24
    move-object v1, v13

    move-object v13, v4

    move-object v4, v5

    move-object v5, v6

    move-object v6, v1

    move-object/from16 v1, v16

    move/from16 v16, v0

    move-object/from16 v0, p0

    .end local v0    # "drawableEndId":I
    .restart local v1    # "drawableLeft":Landroid/graphics/drawable/Drawable;
    .local v4, "drawableBottom":Landroid/graphics/drawable/Drawable;
    .local v5, "drawableStart":Landroid/graphics/drawable/Drawable;
    .local v6, "drawableEnd":Landroid/graphics/drawable/Drawable;
    .local v13, "localeListString":Ljava/lang/String;
    .local v16, "drawableEndId":I
    invoke-direct/range {v0 .. v6}, Landroid/support/v7/widget/AppCompatTextHelper;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 301
    move-object/from16 v28, v1

    .end local v1    # "drawableLeft":Landroid/graphics/drawable/Drawable;
    .local v28, "drawableLeft":Landroid/graphics/drawable/Drawable;
    sget v1, Landroid/support/v7/appcompat/R$styleable;->AppCompatTextView_drawableTint:I

    invoke-virtual {v10, v1}, Landroid/support/v7/widget/TintTypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_25

    .line 302
    sget v1, Landroid/support/v7/appcompat/R$styleable;->AppCompatTextView_drawableTint:I

    invoke-virtual {v10, v1}, Landroid/support/v7/widget/TintTypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    .line 304
    .local v1, "tintList":Landroid/content/res/ColorStateList;
    move-object/from16 v29, v2

    .end local v2    # "drawableTop":Landroid/graphics/drawable/Drawable;
    .local v29, "drawableTop":Landroid/graphics/drawable/Drawable;
    iget-object v2, v0, Landroid/support/v7/widget/AppCompatTextHelper;->mView:Landroid/widget/TextView;

    invoke-static {v2, v1}, Landroidx/core/widget/TextViewCompat;->setCompoundDrawableTintList(Landroid/widget/TextView;Landroid/content/res/ColorStateList;)V

    goto :goto_6

    .line 301
    .end local v1    # "tintList":Landroid/content/res/ColorStateList;
    .end local v29    # "drawableTop":Landroid/graphics/drawable/Drawable;
    .restart local v2    # "drawableTop":Landroid/graphics/drawable/Drawable;
    :cond_25
    move-object/from16 v29, v2

    .line 306
    .end local v2    # "drawableTop":Landroid/graphics/drawable/Drawable;
    .restart local v29    # "drawableTop":Landroid/graphics/drawable/Drawable;
    :goto_6
    sget v1, Landroid/support/v7/appcompat/R$styleable;->AppCompatTextView_drawableTintMode:I

    invoke-virtual {v10, v1}, Landroid/support/v7/widget/TintTypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_26

    .line 307
    sget v1, Landroid/support/v7/appcompat/R$styleable;->AppCompatTextView_drawableTintMode:I

    .line 308
    const/4 v2, -0x1

    invoke-virtual {v10, v1, v2}, Landroid/support/v7/widget/TintTypedArray;->getInt(II)I

    move-result v1

    .line 307
    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/support/v7/widget/DrawableUtils;->parseTintMode(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v1

    .line 309
    .local v1, "tintMode":Landroid/graphics/PorterDuff$Mode;
    iget-object v2, v0, Landroid/support/v7/widget/AppCompatTextHelper;->mView:Landroid/widget/TextView;

    invoke-static {v2, v1}, Landroidx/core/widget/TextViewCompat;->setCompoundDrawableTintMode(Landroid/widget/TextView;Landroid/graphics/PorterDuff$Mode;)V

    .line 312
    .end local v1    # "tintMode":Landroid/graphics/PorterDuff$Mode;
    :cond_26
    sget v1, Landroid/support/v7/appcompat/R$styleable;->AppCompatTextView_firstBaselineToTopHeight:I

    const/4 v2, -0x1

    invoke-virtual {v10, v1, v2}, Landroid/support/v7/widget/TintTypedArray;->getDimensionPixelSize(II)I

    move-result v1

    .line 314
    .local v1, "firstBaselineToTopHeight":I
    move-object/from16 v30, v3

    .end local v3    # "drawableRight":Landroid/graphics/drawable/Drawable;
    .local v30, "drawableRight":Landroid/graphics/drawable/Drawable;
    sget v3, Landroid/support/v7/appcompat/R$styleable;->AppCompatTextView_lastBaselineToBottomHeight:I

    invoke-virtual {v10, v3, v2}, Landroid/support/v7/widget/TintTypedArray;->getDimensionPixelSize(II)I

    move-result v3

    .line 316
    .local v3, "lastBaselineToBottomHeight":I
    const/high16 v2, -0x40800000    # -1.0f

    .line 317
    .local v2, "lineHeight":F
    const/16 v31, -0x1

    .line 318
    .local v31, "lineHeightUnit":I
    move/from16 v32, v2

    .end local v2    # "lineHeight":F
    .local v32, "lineHeight":F
    sget v2, Landroid/support/v7/appcompat/R$styleable;->AppCompatTextView_lineHeight:I

    invoke-virtual {v10, v2}, Landroid/support/v7/widget/TintTypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_29

    .line 319
    sget v2, Landroid/support/v7/appcompat/R$styleable;->AppCompatTextView_lineHeight:I

    invoke-virtual {v10, v2}, Landroid/support/v7/widget/TintTypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v2

    .line 320
    .local v2, "peekValue":Landroid/util/TypedValue;
    if-eqz v2, :cond_27

    move-object/from16 v33, v4

    .end local v4    # "drawableBottom":Landroid/graphics/drawable/Drawable;
    .local v33, "drawableBottom":Landroid/graphics/drawable/Drawable;
    iget v4, v2, Landroid/util/TypedValue;->type:I

    move-object/from16 v34, v5

    .end local v5    # "drawableStart":Landroid/graphics/drawable/Drawable;
    .local v34, "drawableStart":Landroid/graphics/drawable/Drawable;
    const/4 v5, 0x5

    if-ne v4, v5, :cond_28

    .line 321
    iget v4, v2, Landroid/util/TypedValue;->data:I

    invoke-static {v4}, Landroidx/core/util/TypedValueCompat;->getUnitFromComplexDimension(I)I

    move-result v31

    .line 322
    iget v4, v2, Landroid/util/TypedValue;->data:I

    invoke-static {v4}, Landroid/util/TypedValue;->complexToFloat(I)F

    move-result v4

    move v2, v4

    move/from16 v4, v31

    const/4 v5, -0x1

    .end local v32    # "lineHeight":F
    .local v4, "lineHeight":F
    goto :goto_7

    .line 320
    .end local v33    # "drawableBottom":Landroid/graphics/drawable/Drawable;
    .end local v34    # "drawableStart":Landroid/graphics/drawable/Drawable;
    .local v4, "drawableBottom":Landroid/graphics/drawable/Drawable;
    .restart local v5    # "drawableStart":Landroid/graphics/drawable/Drawable;
    .restart local v32    # "lineHeight":F
    :cond_27
    move-object/from16 v33, v4

    move-object/from16 v34, v5

    .line 324
    .end local v4    # "drawableBottom":Landroid/graphics/drawable/Drawable;
    .end local v5    # "drawableStart":Landroid/graphics/drawable/Drawable;
    .restart local v33    # "drawableBottom":Landroid/graphics/drawable/Drawable;
    .restart local v34    # "drawableStart":Landroid/graphics/drawable/Drawable;
    :cond_28
    sget v4, Landroid/support/v7/appcompat/R$styleable;->AppCompatTextView_lineHeight:I

    const/4 v5, -0x1

    invoke-virtual {v10, v4, v5}, Landroid/support/v7/widget/TintTypedArray;->getDimensionPixelSize(II)I

    move-result v4

    int-to-float v4, v4

    move v2, v4

    move/from16 v4, v31

    .end local v32    # "lineHeight":F
    .local v4, "lineHeight":F
    goto :goto_7

    .line 318
    .end local v2    # "peekValue":Landroid/util/TypedValue;
    .end local v33    # "drawableBottom":Landroid/graphics/drawable/Drawable;
    .end local v34    # "drawableStart":Landroid/graphics/drawable/Drawable;
    .local v4, "drawableBottom":Landroid/graphics/drawable/Drawable;
    .restart local v5    # "drawableStart":Landroid/graphics/drawable/Drawable;
    .restart local v32    # "lineHeight":F
    :cond_29
    move-object/from16 v33, v4

    move-object/from16 v34, v5

    const/4 v5, -0x1

    .end local v4    # "drawableBottom":Landroid/graphics/drawable/Drawable;
    .end local v5    # "drawableStart":Landroid/graphics/drawable/Drawable;
    .restart local v33    # "drawableBottom":Landroid/graphics/drawable/Drawable;
    .restart local v34    # "drawableStart":Landroid/graphics/drawable/Drawable;
    move/from16 v4, v31

    move/from16 v2, v32

    .line 331
    .end local v31    # "lineHeightUnit":I
    .end local v32    # "lineHeight":F
    .local v2, "lineHeight":F
    .local v4, "lineHeightUnit":I
    :goto_7
    invoke-virtual {v10}, Landroid/support/v7/widget/TintTypedArray;->recycle()V

    .line 332
    if-eq v1, v5, :cond_2a

    .line 333
    iget-object v5, v0, Landroid/support/v7/widget/AppCompatTextHelper;->mView:Landroid/widget/TextView;

    invoke-static {v5, v1}, Landroidx/core/widget/TextViewCompat;->setFirstBaselineToTopHeight(Landroid/widget/TextView;I)V

    .line 335
    :cond_2a
    const/4 v5, -0x1

    if-eq v3, v5, :cond_2b

    .line 336
    iget-object v5, v0, Landroid/support/v7/widget/AppCompatTextHelper;->mView:Landroid/widget/TextView;

    invoke-static {v5, v3}, Landroidx/core/widget/TextViewCompat;->setLastBaselineToBottomHeight(Landroid/widget/TextView;I)V

    .line 338
    :cond_2b
    cmpl-float v5, v2, v19

    if-eqz v5, :cond_2d

    .line 339
    const/4 v5, -0x1

    if-ne v4, v5, :cond_2c

    .line 340
    iget-object v5, v0, Landroid/support/v7/widget/AppCompatTextHelper;->mView:Landroid/widget/TextView;

    move/from16 v17, v1

    .end local v1    # "firstBaselineToTopHeight":I
    .local v17, "firstBaselineToTopHeight":I
    float-to-int v1, v2

    invoke-static {v5, v1}, Landroidx/core/widget/TextViewCompat;->setLineHeight(Landroid/widget/TextView;I)V

    goto :goto_8

    .line 342
    .end local v17    # "firstBaselineToTopHeight":I
    .restart local v1    # "firstBaselineToTopHeight":I
    :cond_2c
    move/from16 v17, v1

    .end local v1    # "firstBaselineToTopHeight":I
    .restart local v17    # "firstBaselineToTopHeight":I
    iget-object v1, v0, Landroid/support/v7/widget/AppCompatTextHelper;->mView:Landroid/widget/TextView;

    invoke-static {v1, v4, v2}, Landroidx/core/widget/TextViewCompat;->setLineHeight(Landroid/widget/TextView;IF)V

    goto :goto_8

    .line 338
    .end local v17    # "firstBaselineToTopHeight":I
    .restart local v1    # "firstBaselineToTopHeight":I
    :cond_2d
    move/from16 v17, v1

    .line 345
    .end local v1    # "firstBaselineToTopHeight":I
    .restart local v17    # "firstBaselineToTopHeight":I
    :goto_8
    return-void
.end method

.method onAsyncTypefaceReceived(Ljava/lang/ref/WeakReference;Landroid/graphics/Typeface;)V
    .locals 3
    .param p2, "typeface"    # Landroid/graphics/Typeface;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/widget/TextView;",
            ">;",
            "Landroid/graphics/Typeface;",
            ")V"
        }
    .end annotation

    .line 496
    .local p1, "textViewWeak":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/widget/TextView;>;"
    iget-boolean v0, p0, Landroid/support/v7/widget/AppCompatTextHelper;->mAsyncFontPending:Z

    if-eqz v0, :cond_1

    .line 498
    iput-object p2, p0, Landroid/support/v7/widget/AppCompatTextHelper;->mFontTypeface:Landroid/graphics/Typeface;

    .line 500
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 501
    .local v0, "textView":Landroid/widget/TextView;
    if-eqz v0, :cond_1

    .line 502
    invoke-virtual {v0}, Landroid/widget/TextView;->isAttachedToWindow()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 503
    iget v1, p0, Landroid/support/v7/widget/AppCompatTextHelper;->mStyle:I

    .line 504
    .local v1, "style":I
    new-instance v2, Landroid/support/v7/widget/AppCompatTextHelper$2;

    invoke-direct {v2, p0, v0, p2, v1}, Landroid/support/v7/widget/AppCompatTextHelper$2;-><init>(Landroid/support/v7/widget/AppCompatTextHelper;Landroid/widget/TextView;Landroid/graphics/Typeface;I)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z

    .line 510
    .end local v1    # "style":I
    goto :goto_0

    .line 511
    :cond_0
    iget v1, p0, Landroid/support/v7/widget/AppCompatTextHelper;->mStyle:I

    invoke-static {v0, p2, v1}, Landroid/support/v7/widget/AppCompatTextHelper;->applyNewTypefacePreservingVariationSettings(Landroid/widget/TextView;Landroid/graphics/Typeface;I)V

    .line 515
    .end local v0    # "textView":Landroid/widget/TextView;
    :cond_1
    :goto_0
    return-void
.end method

.method onLayout(ZIIII)V
    .locals 1
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .line 624
    sget-boolean v0, Landroid/support/v7/widget/ViewUtils;->SDK_LEVEL_SUPPORTS_AUTOSIZE:Z

    if-nez v0, :cond_0

    .line 625
    invoke-virtual {p0}, Landroid/support/v7/widget/AppCompatTextHelper;->autoSizeText()V

    .line 627
    :cond_0
    return-void
.end method

.method onSetCompoundDrawables()V
    .locals 0

    .line 585
    invoke-virtual {p0}, Landroid/support/v7/widget/AppCompatTextHelper;->applyCompoundDrawablesTints()V

    .line 586
    return-void
.end method

.method onSetTextAppearance(Landroid/content/Context;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resId"    # I

    .line 534
    sget-object v0, Landroid/support/v7/appcompat/R$styleable;->TextAppearance:[I

    invoke-static {p1, p2, v0}, Landroid/support/v7/widget/TintTypedArray;->obtainStyledAttributes(Landroid/content/Context;I[I)Landroid/support/v7/widget/TintTypedArray;

    move-result-object v0

    .line 536
    .local v0, "a":Landroid/support/v7/widget/TintTypedArray;
    sget v1, Landroid/support/v7/appcompat/R$styleable;->TextAppearance_textAllCaps:I

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/TintTypedArray;->hasValue(I)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 541
    sget v1, Landroid/support/v7/appcompat/R$styleable;->TextAppearance_textAllCaps:I

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/widget/TintTypedArray;->getBoolean(IZ)Z

    move-result v1

    invoke-virtual {p0, v1}, Landroid/support/v7/widget/AppCompatTextHelper;->setAllCaps(Z)V

    .line 543
    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-ge v1, v3, :cond_3

    .line 546
    sget v1, Landroid/support/v7/appcompat/R$styleable;->TextAppearance_android_textColor:I

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/TintTypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 547
    sget v1, Landroid/support/v7/appcompat/R$styleable;->TextAppearance_android_textColor:I

    .line 548
    invoke-virtual {v0, v1}, Landroid/support/v7/widget/TintTypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    .line 549
    .local v1, "textColor":Landroid/content/res/ColorStateList;
    if-eqz v1, :cond_1

    .line 550
    iget-object v3, p0, Landroid/support/v7/widget/AppCompatTextHelper;->mView:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 553
    .end local v1    # "textColor":Landroid/content/res/ColorStateList;
    :cond_1
    sget v1, Landroid/support/v7/appcompat/R$styleable;->TextAppearance_android_textColorLink:I

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/TintTypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 554
    sget v1, Landroid/support/v7/appcompat/R$styleable;->TextAppearance_android_textColorLink:I

    .line 555
    invoke-virtual {v0, v1}, Landroid/support/v7/widget/TintTypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    .line 556
    .local v1, "textColorLink":Landroid/content/res/ColorStateList;
    if-eqz v1, :cond_2

    .line 557
    iget-object v3, p0, Landroid/support/v7/widget/AppCompatTextHelper;->mView:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setLinkTextColor(Landroid/content/res/ColorStateList;)V

    .line 560
    .end local v1    # "textColorLink":Landroid/content/res/ColorStateList;
    :cond_2
    sget v1, Landroid/support/v7/appcompat/R$styleable;->TextAppearance_android_textColorHint:I

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/TintTypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 561
    sget v1, Landroid/support/v7/appcompat/R$styleable;->TextAppearance_android_textColorHint:I

    .line 562
    invoke-virtual {v0, v1}, Landroid/support/v7/widget/TintTypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    .line 563
    .local v1, "textColorHint":Landroid/content/res/ColorStateList;
    if-eqz v1, :cond_3

    .line 564
    iget-object v3, p0, Landroid/support/v7/widget/AppCompatTextHelper;->mView:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setHintTextColor(Landroid/content/res/ColorStateList;)V

    .line 569
    .end local v1    # "textColorHint":Landroid/content/res/ColorStateList;
    :cond_3
    sget v1, Landroid/support/v7/appcompat/R$styleable;->TextAppearance_android_textSize:I

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/TintTypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 570
    sget v1, Landroid/support/v7/appcompat/R$styleable;->TextAppearance_android_textSize:I

    const/4 v3, -0x1

    invoke-virtual {v0, v1, v3}, Landroid/support/v7/widget/TintTypedArray;->getDimensionPixelSize(II)I

    move-result v1

    if-nez v1, :cond_4

    .line 571
    iget-object v1, p0, Landroid/support/v7/widget/AppCompatTextHelper;->mView:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 575
    :cond_4
    invoke-direct {p0, p1, v0}, Landroid/support/v7/widget/AppCompatTextHelper;->updateTypefaceAndStyle(Landroid/content/Context;Landroid/support/v7/widget/TintTypedArray;)Z

    move-result v1

    .line 576
    .local v1, "containsTypeface":Z
    invoke-virtual {v0}, Landroid/support/v7/widget/TintTypedArray;->recycle()V

    .line 577
    invoke-direct {p0, v1}, Landroid/support/v7/widget/AppCompatTextHelper;->applyFontAndVariationSettings(Z)V

    .line 578
    return-void
.end method

.method populateSurroundingTextIfNeeded(Landroid/widget/TextView;Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;)V
    .locals 2
    .param p1, "textView"    # Landroid/widget/TextView;
    .param p2, "inputConnection"    # Landroid/view/inputmethod/InputConnection;
    .param p3, "editorInfo"    # Landroid/view/inputmethod/EditorInfo;

    .line 775
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-ge v0, v1, :cond_0

    if-eqz p2, :cond_0

    .line 776
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {p3, v0}, Landroidx/core/view/inputmethod/EditorInfoCompat;->setInitialSurroundingText(Landroid/view/inputmethod/EditorInfo;Ljava/lang/CharSequence;)V

    .line 778
    :cond_0
    return-void
.end method

.method setAllCaps(Z)V
    .locals 1
    .param p1, "allCaps"    # Z

    .line 581
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatTextHelper;->mView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setAllCaps(Z)V

    .line 582
    return-void
.end method

.method setAutoSizeTextTypeUniformWithConfiguration(IIII)V
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

    .line 661
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatTextHelper;->mAutoSizeTextHelper:Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->setAutoSizeTextTypeUniformWithConfiguration(IIII)V

    .line 663
    return-void
.end method

.method setAutoSizeTextTypeUniformWithPresetSizes([II)V
    .locals 1
    .param p1, "presetSizes"    # [I
    .param p2, "unit"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 667
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatTextHelper;->mAutoSizeTextHelper:Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->setAutoSizeTextTypeUniformWithPresetSizes([II)V

    .line 668
    return-void
.end method

.method setAutoSizeTextTypeWithDefaults(I)V
    .locals 1
    .param p1, "autoSizeTextType"    # I

    .line 653
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatTextHelper;->mAutoSizeTextHelper:Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->setAutoSizeTextTypeWithDefaults(I)V

    .line 654
    return-void
.end method

.method setCompoundDrawableTintList(Landroid/content/res/ColorStateList;)V
    .locals 2
    .param p1, "tintList"    # Landroid/content/res/ColorStateList;

    .line 696
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatTextHelper;->mDrawableTint:Landroid/support/v7/widget/TintInfo;

    if-nez v0, :cond_0

    .line 697
    new-instance v0, Landroid/support/v7/widget/TintInfo;

    invoke-direct {v0}, Landroid/support/v7/widget/TintInfo;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/AppCompatTextHelper;->mDrawableTint:Landroid/support/v7/widget/TintInfo;

    .line 699
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatTextHelper;->mDrawableTint:Landroid/support/v7/widget/TintInfo;

    iput-object p1, v0, Landroid/support/v7/widget/TintInfo;->mTintList:Landroid/content/res/ColorStateList;

    .line 700
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatTextHelper;->mDrawableTint:Landroid/support/v7/widget/TintInfo;

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, v0, Landroid/support/v7/widget/TintInfo;->mHasTintList:Z

    .line 701
    invoke-direct {p0}, Landroid/support/v7/widget/AppCompatTextHelper;->setCompoundTints()V

    .line 702
    return-void
.end method

.method setCompoundDrawableTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 2
    .param p1, "tintMode"    # Landroid/graphics/PorterDuff$Mode;

    .line 709
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatTextHelper;->mDrawableTint:Landroid/support/v7/widget/TintInfo;

    if-nez v0, :cond_0

    .line 710
    new-instance v0, Landroid/support/v7/widget/TintInfo;

    invoke-direct {v0}, Landroid/support/v7/widget/TintInfo;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/AppCompatTextHelper;->mDrawableTint:Landroid/support/v7/widget/TintInfo;

    .line 712
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatTextHelper;->mDrawableTint:Landroid/support/v7/widget/TintInfo;

    iput-object p1, v0, Landroid/support/v7/widget/TintInfo;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 713
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatTextHelper;->mDrawableTint:Landroid/support/v7/widget/TintInfo;

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, v0, Landroid/support/v7/widget/TintInfo;->mHasTintMode:Z

    .line 714
    invoke-direct {p0}, Landroid/support/v7/widget/AppCompatTextHelper;->setCompoundTints()V

    .line 715
    return-void
.end method

.method setTextSize(IF)V
    .locals 1
    .param p1, "unit"    # I
    .param p2, "size"    # F

    .line 631
    sget-boolean v0, Landroid/support/v7/widget/ViewUtils;->SDK_LEVEL_SUPPORTS_AUTOSIZE:Z

    if-nez v0, :cond_0

    .line 632
    invoke-virtual {p0}, Landroid/support/v7/widget/AppCompatTextHelper;->isAutoSizeEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 633
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/AppCompatTextHelper;->setTextSizeInternal(IF)V

    .line 636
    :cond_0
    return-void
.end method
