.class public Lcom/google/android/setupcompat/template/FooterBarMixin;
.super Ljava/lang/Object;
.source "FooterBarMixin.java"

# interfaces
.implements Lcom/google/android/setupcompat/template/Mixin;


# static fields
.field private static final KEY_HOST_FRAGMENT_NAME:Ljava/lang/String; = "HostFragmentName"

.field private static final KEY_HOST_FRAGMENT_TAG:Ljava/lang/String; = "HostFragmentTag"

.field private static final LOG:Lcom/google/android/setupcompat/util/Logger;


# instance fields
.field final applyDynamicColor:Z

.field final applyPartnerResources:Z

.field public buttonContainer:Landroid/widget/LinearLayout;

.field private containerVisibility:I

.field private final context:Landroid/content/Context;

.field defaultPadding:I

.field final footerBarButtonMiddleSpacing:I

.field private footerBarPaddingBottom:I

.field footerBarPaddingEnd:I

.field footerBarPaddingStart:I

.field private footerBarPaddingTop:I

.field private final footerBarPrimaryBackgroundColor:I

.field private final footerBarPrimaryButtonDisabledTextColor:I

.field private final footerBarPrimaryButtonEnabledTextColor:I

.field private final footerBarSecondaryBackgroundColor:I

.field private final footerBarSecondaryButtonDisabledTextColor:I

.field private final footerBarSecondaryButtonEnabledTextColor:I

.field final footerButtonAlignEnd:Z

.field private final footerStub:Landroid/view/ViewStub;

.field private hostFragmentName:Ljava/lang/String;

.field private hostFragmentTag:Ljava/lang/String;

.field private isSecondaryButtonInPrimaryStyle:Z

.field private loggingObserver:Lcom/google/android/setupcompat/logging/LoggingObserver;

.field public final metrics:Lcom/google/android/setupcompat/logging/internal/FooterBarMixinMetrics;

.field private primaryButton:Lcom/google/android/setupcompat/template/FooterButton;

.field private primaryButtonId:I

.field public primaryButtonPartnerConfigForTesting:Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig;

.field private removeFooterBarWhenEmpty:Z

.field private secondaryButton:Lcom/google/android/setupcompat/template/FooterButton;

.field private secondaryButtonId:I

.field public secondaryButtonPartnerConfigForTesting:Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig;

.field private tertiaryButton:Lcom/google/android/setupcompat/template/FooterButton;

.field private tertiaryButtonId:I

.field public tertiaryButtonPartnerConfigForTesting:Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig;

.field final useFullDynamicColor:Z


# direct methods
.method public static synthetic $r8$lambda$3z0zwtq7q8x_Cwpr_VK_k8nkZm8(Lcom/google/android/setupcompat/template/FooterBarMixin;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/setupcompat/template/FooterBarMixin;->lambda$setButtonWidthForExpressiveStyle$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$4dXzmuuQs1vomad9t8kaYW_x-2M(Lcom/google/android/setupcompat/template/FooterBarMixin;Landroid/widget/Button;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/setupcompat/template/FooterBarMixin;->lambda$setSecondaryButton$0(Landroid/widget/Button;)V

    return-void
.end method

.method public static synthetic $r8$lambda$TXz4BnIiWC7z15XmvhQssF3xUKg(Lcom/google/android/setupcompat/template/FooterBarMixin;Landroid/widget/Button;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/setupcompat/template/FooterBarMixin;->lambda$setTertiaryButton$0(Landroid/widget/Button;)V

    return-void
.end method

.method public static synthetic $r8$lambda$lgo6ljqlTmlrmHy3CrIoDT9gvFs(Lcom/google/android/setupcompat/template/FooterBarMixin;Landroid/widget/Button;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/setupcompat/template/FooterBarMixin;->lambda$setPrimaryButton$0(Landroid/widget/Button;)V

    return-void
.end method

.method public static synthetic $r8$lambda$puxAbbbzIXCrsCVEtCTBLvDss9U(Lcom/google/android/setupcompat/template/FooterBarMixin;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/setupcompat/template/FooterBarMixin;->lambda$setDownButtonForExpressiveStyle$0()V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetcontext(Lcom/google/android/setupcompat/template/FooterBarMixin;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->context:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetfooterBarPrimaryButtonDisabledTextColor(Lcom/google/android/setupcompat/template/FooterBarMixin;)I
    .locals 0

    iget p0, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->footerBarPrimaryButtonDisabledTextColor:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetfooterBarPrimaryButtonEnabledTextColor(Lcom/google/android/setupcompat/template/FooterBarMixin;)I
    .locals 0

    iget p0, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->footerBarPrimaryButtonEnabledTextColor:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetfooterBarSecondaryButtonDisabledTextColor(Lcom/google/android/setupcompat/template/FooterBarMixin;)I
    .locals 0

    iget p0, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->footerBarSecondaryButtonDisabledTextColor:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetfooterBarSecondaryButtonEnabledTextColor(Lcom/google/android/setupcompat/template/FooterBarMixin;)I
    .locals 0

    iget p0, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->footerBarSecondaryButtonEnabledTextColor:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetisSecondaryButtonInPrimaryStyle(Lcom/google/android/setupcompat/template/FooterBarMixin;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->isSecondaryButtonInPrimaryStyle:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetprimaryButtonId(Lcom/google/android/setupcompat/template/FooterBarMixin;)I
    .locals 0

    iget p0, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->primaryButtonId:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetsecondaryButtonId(Lcom/google/android/setupcompat/template/FooterBarMixin;)I
    .locals 0

    iget p0, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->secondaryButtonId:I

    return p0
.end method

.method static bridge synthetic -$$Nest$mautoSetButtonBarVisibility(Lcom/google/android/setupcompat/template/FooterBarMixin;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/setupcompat/template/FooterBarMixin;->autoSetButtonBarVisibility()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateButtonTextColorWithStates(Lcom/google/android/setupcompat/template/FooterBarMixin;Landroid/widget/Button;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/setupcompat/template/FooterBarMixin;->updateButtonTextColorWithStates(Landroid/widget/Button;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateTextColorForButton(Lcom/google/android/setupcompat/template/FooterBarMixin;Landroid/widget/Button;ZI)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/setupcompat/template/FooterBarMixin;->updateTextColorForButton(Landroid/widget/Button;ZI)V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetLOG()Lcom/google/android/setupcompat/util/Logger;
    .locals 1

    sget-object v0, Lcom/google/android/setupcompat/template/FooterBarMixin;->LOG:Lcom/google/android/setupcompat/util/Logger;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 78
    new-instance v0, Lcom/google/android/setupcompat/util/Logger;

    const-string v1, "FooterBarMixin"

    invoke-direct {v0, v1}, Lcom/google/android/setupcompat/util/Logger;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/setupcompat/template/FooterBarMixin;->LOG:Lcom/google/android/setupcompat/util/Logger;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/setupcompat/internal/TemplateLayout;Landroid/util/AttributeSet;I)V
    .locals 6
    .param p1, "layout"    # Lcom/google/android/setupcompat/internal/TemplateLayout;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "layout",
            "attrs",
            "defStyleAttr"
        }
    .end annotation

    .line 234
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->removeFooterBarWhenEmpty:Z

    .line 109
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->isSecondaryButtonInPrimaryStyle:Z

    .line 122
    new-instance v2, Lcom/google/android/setupcompat/logging/internal/FooterBarMixinMetrics;

    invoke-direct {v2}, Lcom/google/android/setupcompat/logging/internal/FooterBarMixinMetrics;-><init>()V

    iput-object v2, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->metrics:Lcom/google/android/setupcompat/logging/internal/FooterBarMixinMetrics;

    .line 235
    invoke-virtual {p1}, Lcom/google/android/setupcompat/internal/TemplateLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->context:Landroid/content/Context;

    .line 236
    sget v2, Lcom/google/android/setupcompat/R$id;->suc_layout_footer:I

    invoke-virtual {p1, v2}, Lcom/google/android/setupcompat/internal/TemplateLayout;->findManagedViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewStub;

    iput-object v2, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->footerStub:Landroid/view/ViewStub;

    .line 237
    invoke-static {}, Lcom/google/android/setupcompat/template/FooterButtonStyleUtils;->clearSavedDefaultTextColor()V

    .line 239
    instance-of v2, p1, Lcom/google/android/setupcompat/PartnerCustomizationLayout;

    if-eqz v2, :cond_0

    move-object v2, p1

    check-cast v2, Lcom/google/android/setupcompat/PartnerCustomizationLayout;

    .line 241
    invoke-virtual {v2}, Lcom/google/android/setupcompat/PartnerCustomizationLayout;->shouldApplyPartnerResource()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    iput-boolean v2, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->applyPartnerResources:Z

    .line 243
    instance-of v2, p1, Lcom/google/android/setupcompat/PartnerCustomizationLayout;

    if-eqz v2, :cond_1

    move-object v2, p1

    check-cast v2, Lcom/google/android/setupcompat/PartnerCustomizationLayout;

    .line 245
    invoke-virtual {v2}, Lcom/google/android/setupcompat/PartnerCustomizationLayout;->shouldApplyDynamicColor()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    iput-boolean v2, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->applyDynamicColor:Z

    .line 247
    instance-of v2, p1, Lcom/google/android/setupcompat/PartnerCustomizationLayout;

    if-eqz v2, :cond_2

    move-object v2, p1

    check-cast v2, Lcom/google/android/setupcompat/PartnerCustomizationLayout;

    .line 249
    invoke-virtual {v2}, Lcom/google/android/setupcompat/PartnerCustomizationLayout;->useFullDynamicColor()Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    iput-boolean v2, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->useFullDynamicColor:Z

    .line 251
    iget-object v2, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->context:Landroid/content/Context;

    sget-object v3, Lcom/google/android/setupcompat/R$styleable;->SucFooterBarMixin:[I

    .line 252
    invoke-virtual {v2, p2, v3, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 253
    .local v2, "a":Landroid/content/res/TypedArray;
    sget v3, Lcom/google/android/setupcompat/R$styleable;->SucFooterBarMixin_sucFooterBarPaddingVertical:I

    .line 254
    invoke-virtual {v2, v3, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->defaultPadding:I

    .line 255
    sget v3, Lcom/google/android/setupcompat/R$styleable;->SucFooterBarMixin_sucFooterBarPaddingTop:I

    iget v4, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->defaultPadding:I

    .line 256
    invoke-virtual {v2, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->footerBarPaddingTop:I

    .line 258
    sget v3, Lcom/google/android/setupcompat/R$styleable;->SucFooterBarMixin_sucFooterBarPaddingBottom:I

    iget v4, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->defaultPadding:I

    .line 259
    invoke-virtual {v2, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->footerBarPaddingBottom:I

    .line 261
    sget v3, Lcom/google/android/setupcompat/R$styleable;->SucFooterBarMixin_sucFooterBarPaddingStart:I

    .line 262
    invoke-virtual {v2, v3, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->footerBarPaddingStart:I

    .line 263
    sget v3, Lcom/google/android/setupcompat/R$styleable;->SucFooterBarMixin_sucFooterBarPaddingEnd:I

    .line 264
    invoke-virtual {v2, v3, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->footerBarPaddingEnd:I

    .line 265
    sget v3, Lcom/google/android/setupcompat/R$styleable;->SucFooterBarMixin_sucFooterBarPrimaryFooterBackground:I

    .line 266
    invoke-virtual {v2, v3, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    iput v3, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->footerBarPrimaryBackgroundColor:I

    .line 267
    sget v3, Lcom/google/android/setupcompat/R$styleable;->SucFooterBarMixin_sucFooterBarSecondaryFooterBackground:I

    .line 268
    invoke-virtual {v2, v3, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    iput v3, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->footerBarSecondaryBackgroundColor:I

    .line 269
    sget v3, Lcom/google/android/setupcompat/R$styleable;->SucFooterBarMixin_sucFooterBarButtonAlignEnd:I

    .line 270
    invoke-virtual {v2, v3, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->footerButtonAlignEnd:Z

    .line 271
    sget v3, Lcom/google/android/setupcompat/R$styleable;->SucFooterBarMixin_sucFooterBarPrimaryFooterButtonEnabledTextColor:I

    .line 272
    invoke-virtual {v2, v3, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    iput v3, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->footerBarPrimaryButtonEnabledTextColor:I

    .line 274
    sget v3, Lcom/google/android/setupcompat/R$styleable;->SucFooterBarMixin_sucFooterBarSecondaryFooterButtonEnabledTextColor:I

    .line 275
    invoke-virtual {v2, v3, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    iput v3, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->footerBarSecondaryButtonEnabledTextColor:I

    .line 277
    sget v3, Lcom/google/android/setupcompat/R$styleable;->SucFooterBarMixin_sucFooterBarPrimaryFooterButtonDisabledTextColor:I

    .line 278
    invoke-virtual {v2, v3, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    iput v3, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->footerBarPrimaryButtonDisabledTextColor:I

    .line 280
    sget v3, Lcom/google/android/setupcompat/R$styleable;->SucFooterBarMixin_sucFooterBarSecondaryFooterButtonDisabledTextColor:I

    .line 281
    invoke-virtual {v2, v3, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    iput v3, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->footerBarSecondaryButtonDisabledTextColor:I

    .line 283
    sget v3, Lcom/google/android/setupcompat/R$styleable;->SucFooterBarMixin_sucFooterBarButtonMiddleSpacing:I

    .line 284
    invoke-virtual {v2, v3, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->footerBarButtonMiddleSpacing:I

    .line 286
    sget v3, Lcom/google/android/setupcompat/R$styleable;->SucFooterBarMixin_sucFooterBarPrimaryFooterButton:I

    .line 287
    invoke-virtual {v2, v3, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    .line 288
    .local v3, "primaryBtn":I
    sget v4, Lcom/google/android/setupcompat/R$styleable;->SucFooterBarMixin_sucFooterBarSecondaryFooterButton:I

    .line 289
    invoke-virtual {v2, v4, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 290
    .local v1, "secondaryBtn":I
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 292
    new-instance v4, Lcom/google/android/setupcompat/template/FooterButtonInflater;

    iget-object v5, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->context:Landroid/content/Context;

    invoke-direct {v4, v5}, Lcom/google/android/setupcompat/template/FooterButtonInflater;-><init>(Landroid/content/Context;)V

    .line 294
    .local v4, "inflater":Lcom/google/android/setupcompat/template/FooterButtonInflater;
    if-eqz v1, :cond_3

    .line 295
    invoke-virtual {v4, v1}, Lcom/google/android/setupcompat/template/FooterButtonInflater;->inflate(I)Lcom/google/android/setupcompat/template/FooterButton;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/google/android/setupcompat/template/FooterBarMixin;->setSecondaryButton(Lcom/google/android/setupcompat/template/FooterButton;)V

    .line 296
    iget-object v5, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->metrics:Lcom/google/android/setupcompat/logging/internal/FooterBarMixinMetrics;

    invoke-virtual {v5, v0, v0}, Lcom/google/android/setupcompat/logging/internal/FooterBarMixinMetrics;->logPrimaryButtonInitialStateVisibility(ZZ)V

    .line 299
    :cond_3
    if-eqz v3, :cond_4

    .line 300
    invoke-virtual {v4, v3}, Lcom/google/android/setupcompat/template/FooterButtonInflater;->inflate(I)Lcom/google/android/setupcompat/template/FooterButton;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/google/android/setupcompat/template/FooterBarMixin;->setPrimaryButton(Lcom/google/android/setupcompat/template/FooterButton;)V

    .line 301
    iget-object v5, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->metrics:Lcom/google/android/setupcompat/logging/internal/FooterBarMixinMetrics;

    invoke-virtual {v5, v0, v0}, Lcom/google/android/setupcompat/logging/internal/FooterBarMixinMetrics;->logSecondaryButtonInitialStateVisibility(ZZ)V

    .line 304
    :cond_4
    return-void
.end method

.method private addSpace()Landroid/view/View;
    .locals 5

    .line 351
    invoke-direct {p0}, Lcom/google/android/setupcompat/template/FooterBarMixin;->ensureFooterInflated()Landroid/widget/LinearLayout;

    move-result-object v0

    .line 352
    .local v0, "buttonContainerLayout":Landroid/widget/LinearLayout;
    new-instance v1, Landroid/view/View;

    iget-object v2, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->context:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 353
    .local v1, "space":Landroid/view/View;
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v2, v3, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 354
    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 355
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 356
    return-object v1
.end method

.method private autoSetButtonBarVisibility()V
    .locals 6

    .line 1311
    invoke-virtual {p0}, Lcom/google/android/setupcompat/template/FooterBarMixin;->getPrimaryButtonView()Landroid/widget/Button;

    move-result-object v0

    .line 1312
    .local v0, "primaryButton":Landroid/widget/Button;
    invoke-virtual {p0}, Lcom/google/android/setupcompat/template/FooterBarMixin;->getSecondaryButtonView()Landroid/widget/Button;

    move-result-object v1

    .line 1313
    .local v1, "secondaryButton":Landroid/widget/Button;
    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/Button;->getVisibility()I

    move-result v4

    if-nez v4, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    .line 1314
    .local v4, "primaryVisible":Z
    :goto_0
    if-eqz v1, :cond_1

    .line 1315
    invoke-virtual {v1}, Landroid/widget/Button;->getVisibility()I

    move-result v5

    if-nez v5, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    .line 1317
    .local v2, "secondaryVisible":Z
    :goto_1
    iget-object v5, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->buttonContainer:Landroid/widget/LinearLayout;

    if-eqz v5, :cond_5

    .line 1318
    iget-object v5, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->buttonContainer:Landroid/widget/LinearLayout;

    .line 1319
    if-nez v4, :cond_4

    if-eqz v2, :cond_2

    goto :goto_2

    .line 1321
    :cond_2
    iget-boolean v3, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->removeFooterBarWhenEmpty:Z

    if-eqz v3, :cond_3

    const/16 v3, 0x8

    goto :goto_3

    :cond_3
    const/4 v3, 0x4

    goto :goto_3

    .line 1320
    :cond_4
    :goto_2
    nop

    .line 1318
    :goto_3
    invoke-virtual {v5, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1323
    :cond_5
    return-void
.end method

.method private createButtonEventListener(I)Lcom/google/android/setupcompat/template/FooterButton$OnButtonEventListener;
    .locals 1
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "id"
        }
    .end annotation

    .line 126
    new-instance v0, Lcom/google/android/setupcompat/template/FooterBarMixin$1;

    invoke-direct {v0, p0, p1}, Lcom/google/android/setupcompat/template/FooterBarMixin$1;-><init>(Lcom/google/android/setupcompat/template/FooterBarMixin;I)V

    return-object v0
.end method

.method private ensureFooterInflated()Landroid/widget/LinearLayout;
    .locals 2

    .line 361
    iget-object v0, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->buttonContainer:Landroid/widget/LinearLayout;

    if-nez v0, :cond_1

    .line 362
    iget-object v0, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->footerStub:Landroid/view/ViewStub;

    if-eqz v0, :cond_0

    .line 365
    sget v0, Lcom/google/android/setupcompat/R$layout;->suc_footer_button_bar:I

    invoke-virtual {p0, v0}, Lcom/google/android/setupcompat/template/FooterBarMixin;->inflateFooter(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->buttonContainer:Landroid/widget/LinearLayout;

    .line 366
    iget-object v0, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->buttonContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Lcom/google/android/setupcompat/template/FooterBarMixin;->onFooterBarInflated(Landroid/widget/LinearLayout;)V

    .line 367
    iget-object v0, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->buttonContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Lcom/google/android/setupcompat/template/FooterBarMixin;->onFooterBarApplyPartnerResource(Landroid/widget/LinearLayout;)V

    goto :goto_0

    .line 363
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Footer stub is not found in this template"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 369
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->buttonContainer:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method private forceStackButtonInThreeButtonMode(Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/Button;I)V
    .locals 5
    .param p1, "primaryButton"    # Landroid/widget/Button;
    .param p2, "secondaryButton"    # Landroid/widget/Button;
    .param p3, "tertiaryButton"    # Landroid/widget/Button;
    .param p4, "availableFooterBarWidth"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "primaryButton",
            "secondaryButton",
            "tertiaryButton",
            "availableFooterBarWidth"
        }
    .end annotation

    .line 1133
    invoke-virtual {p1}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 1134
    .local v0, "primaryLayoutParams":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {p2}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 1135
    .local v1, "secondaryLayoutParams":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {p3}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 1137
    .local v2, "tertiaryLayoutParams":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v3, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->buttonContainer:Landroid/widget/LinearLayout;

    instance-of v4, v3, Lcom/google/android/setupcompat/view/ButtonBarLayout;

    if-eqz v4, :cond_0

    check-cast v3, Lcom/google/android/setupcompat/view/ButtonBarLayout;

    .line 1138
    .local v3, "buttonBarLayout":Lcom/google/android/setupcompat/view/ButtonBarLayout;
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/google/android/setupcompat/view/ButtonBarLayout;->setStackedButtonForExpressiveStyle(Z)V

    .line 1139
    iget v4, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->footerBarButtonMiddleSpacing:I

    div-int/lit8 v4, v4, 0x2

    .line 1140
    .local v4, "stackButtonMiddleSpacing":I
    iput p4, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 1141
    iput v4, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 1142
    invoke-virtual {p2, v1}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1144
    iput p4, v2, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 1145
    iput v4, v2, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 1146
    iput v4, v2, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 1147
    invoke-virtual {p3, v2}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1149
    iput p4, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 1150
    iput v4, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 1151
    invoke-virtual {p1, v0}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1153
    .end local v3    # "buttonBarLayout":Lcom/google/android/setupcompat/view/ButtonBarLayout;
    .end local v4    # "stackButtonMiddleSpacing":I
    :cond_0
    return-void
.end method

.method private static getDrawablePartnerConfig(I)Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;
    .locals 1
    .param p0, "buttonType"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "buttonType"
        }
    .end annotation

    .line 1409
    packed-switch p0, :pswitch_data_0

    .line 1436
    const/4 v0, 0x0

    .local v0, "result":Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;
    goto :goto_0

    .line 1432
    .end local v0    # "result":Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;
    :pswitch_0
    sget-object v0, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->CONFIG_FOOTER_BUTTON_ICON_STOP:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    .line 1433
    .restart local v0    # "result":Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;
    goto :goto_0

    .line 1429
    .end local v0    # "result":Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;
    :pswitch_1
    sget-object v0, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->CONFIG_FOOTER_BUTTON_ICON_SKIP:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    .line 1430
    .restart local v0    # "result":Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;
    goto :goto_0

    .line 1426
    .end local v0    # "result":Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;
    :pswitch_2
    sget-object v0, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->CONFIG_FOOTER_BUTTON_ICON_OPT_IN:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    .line 1427
    .restart local v0    # "result":Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;
    goto :goto_0

    .line 1423
    .end local v0    # "result":Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;
    :pswitch_3
    sget-object v0, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->CONFIG_FOOTER_BUTTON_ICON_NEXT:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    .line 1424
    .restart local v0    # "result":Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;
    goto :goto_0

    .line 1420
    .end local v0    # "result":Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;
    :pswitch_4
    sget-object v0, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->CONFIG_FOOTER_BUTTON_ICON_DONE:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    .line 1421
    .restart local v0    # "result":Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;
    goto :goto_0

    .line 1417
    .end local v0    # "result":Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;
    :pswitch_5
    sget-object v0, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->CONFIG_FOOTER_BUTTON_ICON_CLEAR:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    .line 1418
    .restart local v0    # "result":Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;
    goto :goto_0

    .line 1414
    .end local v0    # "result":Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;
    :pswitch_6
    sget-object v0, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->CONFIG_FOOTER_BUTTON_ICON_CANCEL:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    .line 1415
    .restart local v0    # "result":Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;
    goto :goto_0

    .line 1411
    .end local v0    # "result":Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;
    :pswitch_7
    sget-object v0, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->CONFIG_FOOTER_BUTTON_ICON_ADD_ANOTHER:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    .line 1412
    .restart local v0    # "result":Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;
    nop

    .line 1442
    :goto_0
    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getPartnerTheme(Lcom/google/android/setupcompat/template/FooterButton;ILcom/google/android/setupcompat/partnerconfig/PartnerConfig;)I
    .locals 3
    .param p1, "footerButton"    # Lcom/google/android/setupcompat/template/FooterButton;
    .param p2, "defaultPartnerTheme"    # I
    .param p3, "buttonBackgroundColorConfig"    # Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "footerButton",
            "defaultPartnerTheme",
            "buttonBackgroundColorConfig"
        }
    .end annotation

    .line 1258
    invoke-virtual {p1}, Lcom/google/android/setupcompat/template/FooterButton;->getTheme()I

    move-result v0

    .line 1261
    .local v0, "overrideTheme":I
    invoke-virtual {p1}, Lcom/google/android/setupcompat/template/FooterButton;->getTheme()I

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->applyPartnerResources:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->context:Landroid/content/Context;

    .line 1263
    invoke-static {v1}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->isGlifExpressiveEnabled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1264
    :cond_0
    move v0, p2

    .line 1269
    :cond_1
    iget-boolean v1, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->applyPartnerResources:Z

    if-eqz v1, :cond_5

    .line 1270
    iget-object v1, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->get(Landroid/content/Context;)Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->context:Landroid/content/Context;

    invoke-virtual {v1, v2, p3}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->getColor(Landroid/content/Context;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;)I

    move-result v1

    .line 1271
    .local v1, "color":I
    if-nez v1, :cond_3

    .line 1273
    iget-object v2, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->isGlifExpressiveEnabled(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1274
    sget v2, Lcom/google/android/setupcompat/R$style;->SucGlifMaterialButton_Secondary:I

    goto :goto_0

    .line 1275
    :cond_2
    sget v2, Lcom/google/android/setupcompat/R$style;->SucPartnerCustomizationButton_Secondary:I

    :goto_0
    move v0, v2

    goto :goto_2

    .line 1278
    :cond_3
    iget-object v2, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->isGlifExpressiveEnabled(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1279
    sget v2, Lcom/google/android/setupcompat/R$style;->SucGlifMaterialButton_Primary:I

    goto :goto_1

    .line 1280
    :cond_4
    sget v2, Lcom/google/android/setupcompat/R$style;->SucPartnerCustomizationButton_Primary:I

    :goto_1
    move v0, v2

    .line 1283
    .end local v1    # "color":I
    :cond_5
    :goto_2
    return v0
.end method

.method private inflateButton(Lcom/google/android/setupcompat/template/FooterButton;Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig;)Lcom/google/android/setupcompat/template/IFooterActionButton;
    .locals 4
    .param p1, "footerButton"    # Lcom/google/android/setupcompat/template/FooterButton;
    .param p2, "footerButtonPartnerConfig"    # Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "footerButton",
            "footerButtonPartnerConfig"
        }
    .end annotation

    .line 1350
    iget-object v0, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->context:Landroid/content/Context;

    .line 1351
    invoke-virtual {p2}, Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig;->getPartnerTheme()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/setupcompat/template/FooterBarMixin;->createThemedButton(Landroid/content/Context;I)Lcom/google/android/setupcompat/template/IFooterActionButton;

    move-result-object v0

    .line 1352
    .local v0, "buttonImpl":Lcom/google/android/setupcompat/template/IFooterActionButton;
    move-object v1, v0

    check-cast v1, Landroid/widget/Button;

    .line 1353
    .local v1, "button":Landroid/widget/Button;
    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setId(I)V

    .line 1356
    invoke-virtual {p1}, Lcom/google/android/setupcompat/template/FooterButton;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1357
    invoke-virtual {v1, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1358
    invoke-virtual {p1}, Lcom/google/android/setupcompat/template/FooterButton;->getVisibility()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 1359
    invoke-virtual {p1}, Lcom/google/android/setupcompat/template/FooterButton;->isEnabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1360
    instance-of v2, v0, Lcom/google/android/setupcompat/template/MaterialFooterActionButton;

    if-eqz v2, :cond_0

    .line 1361
    move-object v2, v0

    check-cast v2, Lcom/google/android/setupcompat/template/MaterialFooterActionButton;

    invoke-virtual {v2, p1}, Lcom/google/android/setupcompat/template/MaterialFooterActionButton;->setFooterButton(Lcom/google/android/setupcompat/template/FooterButton;)V

    goto :goto_0

    .line 1362
    :cond_0
    instance-of v2, v1, Lcom/google/android/setupcompat/template/FooterActionButton;

    if-eqz v2, :cond_1

    .line 1363
    move-object v2, v0

    check-cast v2, Lcom/google/android/setupcompat/template/FooterActionButton;

    invoke-virtual {v2, p1}, Lcom/google/android/setupcompat/template/FooterActionButton;->setFooterButton(Lcom/google/android/setupcompat/template/FooterButton;)V

    goto :goto_0

    .line 1365
    :cond_1
    sget-object v2, Lcom/google/android/setupcompat/template/FooterBarMixin;->LOG:Lcom/google/android/setupcompat/util/Logger;

    const-string v3, "Set the footer button error!"

    invoke-virtual {v2, v3}, Lcom/google/android/setupcompat/util/Logger;->e(Ljava/lang/String;)V

    .line 1367
    :goto_0
    invoke-virtual {v1}, Landroid/widget/Button;->getId()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/google/android/setupcompat/template/FooterBarMixin;->createButtonEventListener(I)Lcom/google/android/setupcompat/template/FooterButton$OnButtonEventListener;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/google/android/setupcompat/template/FooterButton;->setOnButtonEventListener(Lcom/google/android/setupcompat/template/FooterButton$OnButtonEventListener;)V

    .line 1368
    return-object v0
.end method

.method private isBothButtons(Landroid/widget/Button;Landroid/widget/Button;)Z
    .locals 7
    .param p1, "primaryButton"    # Landroid/widget/Button;
    .param p2, "secondaryButton"    # Landroid/widget/Button;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "primaryButton",
            "secondaryButton"
        }
    .end annotation

    .line 1168
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 1169
    invoke-virtual {p1}, Landroid/widget/Button;->getVisibility()I

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 1170
    .local v2, "isPrimaryVisible":Z
    :goto_0
    if-eqz p2, :cond_1

    .line 1171
    invoke-virtual {p2}, Landroid/widget/Button;->getVisibility()I

    move-result v3

    if-nez v3, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    .line 1172
    .local v3, "isSecondaryVisible":Z
    :goto_1
    sget-object v4, Lcom/google/android/setupcompat/template/FooterBarMixin;->LOG:Lcom/google/android/setupcompat/util/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isPrimaryVisible="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", isSecondaryVisible="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/google/android/setupcompat/util/Logger;->atDebug(Ljava/lang/String;)V

    .line 1174
    if-eqz v2, :cond_2

    if-eqz v3, :cond_2

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    :goto_2
    return v0
.end method

.method private isPrimaryButtonOnly(Landroid/widget/Button;Landroid/widget/Button;)Z
    .locals 7
    .param p1, "primaryButton"    # Landroid/widget/Button;
    .param p2, "secondaryButton"    # Landroid/widget/Button;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "primaryButton",
            "secondaryButton"
        }
    .end annotation

    .line 1178
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    if-nez p2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 1179
    .local v2, "isPrimaryOnly":Z
    :goto_0
    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    .line 1181
    invoke-virtual {p2}, Landroid/widget/Button;->getVisibility()I

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    .line 1182
    .local v3, "isPrimaryOnlyButSecondaryInvisible":Z
    :goto_1
    sget-object v4, Lcom/google/android/setupcompat/template/FooterBarMixin;->LOG:Lcom/google/android/setupcompat/util/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isPrimaryOnly="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", isPrimaryOnlyButSecondaryInvisible="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/google/android/setupcompat/util/Logger;->atDebug(Ljava/lang/String;)V

    .line 1187
    if-nez v2, :cond_3

    if-eqz v3, :cond_2

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    :cond_3
    :goto_2
    return v0
.end method

.method private isSecondaryOnly(Landroid/widget/Button;Landroid/widget/Button;)Z
    .locals 7
    .param p1, "primaryButton"    # Landroid/widget/Button;
    .param p2, "secondaryButton"    # Landroid/widget/Button;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "primaryButton",
            "secondaryButton"
        }
    .end annotation

    .line 1191
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    if-nez p1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 1192
    .local v2, "isSecondaryOnly":Z
    :goto_0
    if-eqz p2, :cond_1

    if-eqz p1, :cond_1

    .line 1194
    invoke-virtual {p1}, Landroid/widget/Button;->getVisibility()I

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    .line 1195
    .local v3, "isSecondaryOnlyButPrimaryInvisible":Z
    :goto_1
    sget-object v4, Lcom/google/android/setupcompat/template/FooterBarMixin;->LOG:Lcom/google/android/setupcompat/util/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isSecondaryOnly="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", isSecondaryOnlyButPrimaryInvisible="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/google/android/setupcompat/util/Logger;->atDebug(Ljava/lang/String;)V

    .line 1200
    if-nez v2, :cond_3

    if-eqz v3, :cond_2

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    :cond_3
    :goto_2
    return v0
.end method

.method private isThreeButtons(Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/Button;)Z
    .locals 6
    .param p1, "primaryButton"    # Landroid/widget/Button;
    .param p2, "secondaryButton"    # Landroid/widget/Button;
    .param p3, "tertiaryButton"    # Landroid/widget/Button;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "primaryButton",
            "secondaryButton",
            "tertiaryButton"
        }
    .end annotation

    .line 1161
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p3, :cond_0

    .line 1162
    invoke-virtual {p3}, Landroid/widget/Button;->getVisibility()I

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 1163
    .local v2, "isTertiaryButtonVisible":Z
    :goto_0
    sget-object v3, Lcom/google/android/setupcompat/template/FooterBarMixin;->LOG:Lcom/google/android/setupcompat/util/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isTertiaryButtonVisible="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/setupcompat/util/Logger;->atDebug(Ljava/lang/String;)V

    .line 1164
    if-eqz v2, :cond_1

    invoke-direct {p0, p1, p2}, Lcom/google/android/setupcompat/template/FooterBarMixin;->isBothButtons(Landroid/widget/Button;Landroid/widget/Button;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    return v0
.end method

.method private isTwoPaneLayout()Z
    .locals 2

    .line 1156
    iget-object v0, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/google/android/setupcompat/R$bool;->sucTwoPaneLayoutStyle:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method private synthetic lambda$setButtonWidthForExpressiveStyle$0()V
    .locals 11

    .line 943
    iget-object v0, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->buttonContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v0

    .line 944
    .local v0, "containerWidth":I
    invoke-virtual {p0}, Lcom/google/android/setupcompat/template/FooterBarMixin;->getPrimaryButtonView()Landroid/widget/Button;

    move-result-object v1

    .line 945
    .local v1, "primaryButton":Landroid/widget/Button;
    invoke-virtual {p0}, Lcom/google/android/setupcompat/template/FooterBarMixin;->getSecondaryButtonView()Landroid/widget/Button;

    move-result-object v2

    .line 946
    .local v2, "secondaryButton":Landroid/widget/Button;
    invoke-virtual {p0}, Lcom/google/android/setupcompat/template/FooterBarMixin;->getTertiaryButtonView()Landroid/widget/Button;

    move-result-object v3

    .line 947
    .local v3, "tertiaryButton":Landroid/widget/Button;
    invoke-direct {p0}, Lcom/google/android/setupcompat/template/FooterBarMixin;->isTwoPaneLayout()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 948
    div-int/lit8 v0, v0, 0x2

    .line 949
    iget-object v4, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->buttonContainer:Landroid/widget/LinearLayout;

    const v5, 0x800005

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 953
    :cond_0
    iget v4, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->footerBarPaddingStart:I

    sub-int v4, v0, v4

    iget v5, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->footerBarPaddingEnd:I

    sub-int/2addr v4, v5

    iget v5, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->footerBarButtonMiddleSpacing:I

    sub-int/2addr v4, v5

    .line 958
    .local v4, "availableFooterBarWidth":I
    div-int/lit8 v5, v4, 0x2

    .line 960
    .local v5, "maxButtonWidth":I
    invoke-direct {p0, v1, v2, v3}, Lcom/google/android/setupcompat/template/FooterBarMixin;->isThreeButtons(Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/Button;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 961
    invoke-direct {p0, v1, v2, v3, v4}, Lcom/google/android/setupcompat/template/FooterBarMixin;->forceStackButtonInThreeButtonMode(Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/Button;I)V

    goto/16 :goto_0

    .line 963
    :cond_1
    invoke-direct {p0, v1, v2}, Lcom/google/android/setupcompat/template/FooterBarMixin;->isBothButtons(Landroid/widget/Button;Landroid/widget/Button;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 964
    invoke-virtual {v1}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout$LayoutParams;

    .line 965
    .local v6, "primaryLayoutParams":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v2}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout$LayoutParams;

    .line 966
    .local v7, "secondaryLayoutParams":Landroid/widget/LinearLayout$LayoutParams;
    div-int/lit8 v5, v4, 0x2

    .line 968
    int-to-float v8, v5

    .line 969
    invoke-virtual {p0, v1, v2, v8, v4}, Lcom/google/android/setupcompat/template/FooterBarMixin;->stackButtonIfTextOverFlow(Landroid/widget/Button;Landroid/widget/Button;FI)Z

    move-result v8

    .line 972
    .local v8, "isButtonStacked":Z
    if-nez v8, :cond_4

    .line 976
    nop

    .line 978
    invoke-virtual {v6}, Landroid/widget/LinearLayout$LayoutParams;->getMarginStart()I

    move-result v9

    sub-int v9, v4, v9

    .line 979
    invoke-virtual {v7}, Landroid/widget/LinearLayout$LayoutParams;->getMarginEnd()I

    move-result v10

    sub-int/2addr v9, v10

    div-int/lit8 v9, v9, 0x2

    .line 981
    .end local v5    # "maxButtonWidth":I
    .local v9, "maxButtonWidth":I
    if-eqz v6, :cond_2

    .line 982
    iput v9, v6, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 983
    iget v5, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->footerBarButtonMiddleSpacing:I

    div-int/lit8 v5, v5, 0x2

    invoke-virtual {v6, v5}, Landroid/widget/LinearLayout$LayoutParams;->setMarginStart(I)V

    .line 984
    invoke-virtual {v1, v6}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 986
    :cond_2
    if-eqz v7, :cond_3

    .line 987
    iput v9, v7, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 988
    iget v5, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->footerBarButtonMiddleSpacing:I

    div-int/lit8 v5, v5, 0x2

    invoke-virtual {v7, v5}, Landroid/widget/LinearLayout$LayoutParams;->setMarginEnd(I)V

    .line 989
    invoke-virtual {v2, v7}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 992
    .end local v6    # "primaryLayoutParams":Landroid/widget/LinearLayout$LayoutParams;
    .end local v7    # "secondaryLayoutParams":Landroid/widget/LinearLayout$LayoutParams;
    .end local v8    # "isButtonStacked":Z
    :cond_3
    move v5, v9

    .end local v9    # "maxButtonWidth":I
    .restart local v5    # "maxButtonWidth":I
    :cond_4
    goto :goto_0

    :cond_5
    invoke-direct {p0, v1, v2}, Lcom/google/android/setupcompat/template/FooterBarMixin;->isPrimaryButtonOnly(Landroid/widget/Button;Landroid/widget/Button;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 993
    invoke-virtual {v1}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout$LayoutParams;

    .line 994
    .restart local v6    # "primaryLayoutParams":Landroid/widget/LinearLayout$LayoutParams;
    if-eqz v6, :cond_6

    .line 995
    iput v4, v6, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 996
    invoke-virtual {v1, v6}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 998
    .end local v6    # "primaryLayoutParams":Landroid/widget/LinearLayout$LayoutParams;
    :cond_6
    goto :goto_0

    :cond_7
    invoke-direct {p0, v1, v2}, Lcom/google/android/setupcompat/template/FooterBarMixin;->isSecondaryOnly(Landroid/widget/Button;Landroid/widget/Button;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 999
    invoke-virtual {v2}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout$LayoutParams;

    .line 1000
    .local v6, "secondaryLayoutParams":Landroid/widget/LinearLayout$LayoutParams;
    if-eqz v6, :cond_8

    .line 1001
    iput v4, v6, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 1002
    invoke-virtual {v2, v6}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1004
    .end local v6    # "secondaryLayoutParams":Landroid/widget/LinearLayout$LayoutParams;
    :cond_8
    goto :goto_0

    .line 1005
    :cond_9
    sget-object v6, Lcom/google/android/setupcompat/template/FooterBarMixin;->LOG:Lcom/google/android/setupcompat/util/Logger;

    const-string v7, "There are no button visible in the footer bar."

    invoke-virtual {v6, v7}, Lcom/google/android/setupcompat/util/Logger;->atInfo(Ljava/lang/String;)V

    .line 1008
    :goto_0
    iget-object v6, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->buttonContainer:Landroid/widget/LinearLayout;

    iget v7, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->containerVisibility:I

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1009
    return-void
.end method

.method private synthetic lambda$setDownButtonForExpressiveStyle$0()V
    .locals 6

    .line 1016
    iget-object v0, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->buttonContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v0

    .line 1018
    .local v0, "containerWidth":I
    invoke-virtual {p0}, Lcom/google/android/setupcompat/template/FooterBarMixin;->getSecondaryButtonView()Landroid/widget/Button;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1019
    invoke-virtual {p0}, Lcom/google/android/setupcompat/template/FooterBarMixin;->getSecondaryButtonView()Landroid/widget/Button;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 1021
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/setupcompat/template/FooterBarMixin;->getPrimaryButtonView()Landroid/widget/Button;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/android/setupcompat/template/FooterBarMixin;->setDownButtonStyle(Landroid/widget/Button;)V

    .line 1022
    invoke-direct {p0}, Lcom/google/android/setupcompat/template/FooterBarMixin;->isTwoPaneLayout()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1023
    iget-object v1, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->buttonContainer:Landroid/widget/LinearLayout;

    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    goto :goto_0

    .line 1025
    :cond_1
    iget-object v1, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->buttonContainer:Landroid/widget/LinearLayout;

    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 1027
    invoke-virtual {p0}, Lcom/google/android/setupcompat/template/FooterBarMixin;->getPrimaryButtonView()Landroid/widget/Button;

    move-result-object v1

    .line 1028
    .local v1, "downButtonView":Landroid/widget/Button;
    invoke-virtual {v1}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 1029
    .local v2, "primaryLayoutParams":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v3, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->context:Landroid/content/Context;

    .line 1031
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/google/android/setupcompat/R$dimen;->suc_glif_expressive_down_button_width:I

    .line 1032
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 1034
    .local v3, "downButtonWidth":I
    div-int/lit8 v4, v0, 0x2

    div-int/lit8 v5, v0, 0x4

    add-int/2addr v4, v5

    sub-int/2addr v4, v3

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMarginStart(I)V

    .line 1036
    invoke-virtual {v1, v2}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1038
    .end local v1    # "downButtonView":Landroid/widget/Button;
    .end local v2    # "primaryLayoutParams":Landroid/widget/LinearLayout$LayoutParams;
    .end local v3    # "downButtonWidth":I
    :goto_0
    return-void
.end method

.method private synthetic lambda$setPrimaryButton$0(Landroid/widget/Button;)V
    .locals 1
    .param p1, "button"    # Landroid/widget/Button;

    .line 574
    iget-object v0, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/setupcompat/util/KeyboardHelper;->isKeyboardFocusEnhancementEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->context:Landroid/content/Context;

    .line 575
    invoke-static {v0}, Lcom/google/android/setupcompat/util/KeyboardHelper;->hasHardwareKeyboard(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 576
    invoke-virtual {p1}, Landroid/widget/Button;->requestFocus()Z

    .line 578
    :cond_0
    return-void
.end method

.method private synthetic lambda$setSecondaryButton$0(Landroid/widget/Button;)V
    .locals 1
    .param p1, "button"    # Landroid/widget/Button;

    .line 710
    iget-object v0, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/setupcompat/util/KeyboardHelper;->isKeyboardFocusEnhancementEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->context:Landroid/content/Context;

    .line 711
    invoke-static {v0}, Lcom/google/android/setupcompat/util/KeyboardHelper;->hasHardwareKeyboard(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->primaryButtonId:I

    if-eqz v0, :cond_0

    .line 714
    invoke-virtual {p0}, Lcom/google/android/setupcompat/template/FooterBarMixin;->getPrimaryButtonView()Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Button;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    .line 715
    :cond_0
    invoke-virtual {p1}, Landroid/widget/Button;->requestFocus()Z

    .line 717
    :cond_1
    return-void
.end method

.method private synthetic lambda$setTertiaryButton$0(Landroid/widget/Button;)V
    .locals 1
    .param p1, "button"    # Landroid/widget/Button;

    .line 823
    iget-object v0, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/setupcompat/util/KeyboardHelper;->isKeyboardFocusEnhancementEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->context:Landroid/content/Context;

    .line 824
    invoke-static {v0}, Lcom/google/android/setupcompat/util/KeyboardHelper;->hasHardwareKeyboard(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 825
    invoke-virtual {p1}, Landroid/widget/Button;->requestFocus()Z

    .line 827
    :cond_0
    return-void
.end method

.method private onFooterButtonApplyPartnerResource(Landroid/widget/Button;Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig;)V
    .locals 4
    .param p1, "button"    # Landroid/widget/Button;
    .param p2, "footerButtonPartnerConfig"    # Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "button",
            "footerButtonPartnerConfig"
        }
    .end annotation

    .line 1375
    iget-boolean v0, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->applyPartnerResources:Z

    if-nez v0, :cond_0

    .line 1376
    return-void

    .line 1378
    :cond_0
    iget-object v0, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->context:Landroid/content/Context;

    iget-boolean v1, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->applyDynamicColor:Z

    .line 1382
    invoke-virtual {p1}, Landroid/widget/Button;->getId()I

    move-result v2

    iget v3, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->primaryButtonId:I

    if-ne v2, v3, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 1378
    :goto_0
    invoke-static {v0, p1, v1, v2, p2}, Lcom/google/android/setupcompat/template/FooterButtonStyleUtils;->applyButtonPartnerResources(Landroid/content/Context;Landroid/widget/Button;ZZLcom/google/android/setupcompat/internal/FooterButtonPartnerConfig;)V

    .line 1384
    iget-boolean v0, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->applyDynamicColor:Z

    if-nez v0, :cond_2

    .line 1386
    nop

    .line 1388
    invoke-virtual {p2}, Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig;->getButtonTextColorConfig()Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    move-result-object v0

    .line 1389
    invoke-virtual {p2}, Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig;->getButtonDisableTextColorConfig()Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    move-result-object v1

    .line 1386
    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/setupcompat/template/FooterBarMixin;->updateButtonTextColorWithStates(Landroid/widget/Button;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;)V

    .line 1391
    :cond_2
    return-void
.end method

.method private setDownButtonRadius(Landroid/widget/Button;)V
    .locals 3
    .param p1, "button"    # Landroid/widget/Button;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "button"
        }
    .end annotation

    .line 1222
    iget-object v0, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->context:Landroid/content/Context;

    .line 1223
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/google/android/setupcompat/R$dimen;->suc_glif_expressive_down_button_radius:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    .line 1224
    .local v0, "radius":F
    if-eqz p1, :cond_1

    .line 1225
    instance-of v1, p1, Lcom/google/android/material/button/MaterialButton;

    if-eqz v1, :cond_0

    .line 1226
    move-object v1, p1

    check-cast v1, Lcom/google/android/material/button/MaterialButton;

    float-to-int v2, v0

    invoke-virtual {v1, v2}, Lcom/google/android/material/button/MaterialButton;->setCornerRadius(I)V

    goto :goto_0

    .line 1228
    :cond_0
    invoke-static {p1}, Lcom/google/android/setupcompat/template/FooterButtonStyleUtils;->getGradientDrawable(Landroid/widget/Button;)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v1

    .line 1229
    .local v1, "gradientDrawable":Landroid/graphics/drawable/GradientDrawable;
    if-eqz v1, :cond_1

    .line 1230
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 1234
    .end local v1    # "gradientDrawable":Landroid/graphics/drawable/GradientDrawable;
    :cond_1
    :goto_0
    return-void
.end method

.method private setDownButtonStyle(Landroid/widget/Button;)V
    .locals 3
    .param p1, "button"    # Landroid/widget/Button;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "button"
        }
    .end annotation

    .line 1205
    iget-object v0, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->context:Landroid/content/Context;

    .line 1206
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/google/android/setupcompat/R$dimen;->suc_glif_expressive_down_button_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 1207
    .local v0, "width":I
    iget-object v1, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->context:Landroid/content/Context;

    .line 1209
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/google/android/setupcompat/R$dimen;->suc_glif_expressive_down_button_height:I

    .line 1210
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 1212
    .local v1, "height":I
    if-eqz p1, :cond_0

    .line 1213
    invoke-virtual {p1}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 1214
    .local v2, "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    iput v0, v2, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 1215
    iput v1, v2, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 1216
    invoke-virtual {p1, v2}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1218
    .end local v2    # "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    :cond_0
    invoke-direct {p0, p1}, Lcom/google/android/setupcompat/template/FooterBarMixin;->setDownButtonRadius(Landroid/widget/Button;)V

    .line 1219
    return-void
.end method

.method private setEvenlyWeightedButtons(Landroid/widget/Button;Landroid/widget/Button;Z)V
    .locals 4
    .param p1, "primaryButton"    # Landroid/widget/Button;
    .param p2, "secondaryButton"    # Landroid/widget/Button;
    .param p3, "isEvenlyWeighted"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "primaryButton",
            "secondaryButton",
            "isEvenlyWeighted"
        }
    .end annotation

    .line 906
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    .line 907
    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0}, Landroid/widget/Button;->measure(II)V

    .line 908
    invoke-virtual {p1}, Landroid/widget/Button;->getMeasuredWidth()I

    move-result v1

    .line 909
    .local v1, "primaryButtonMeasuredWidth":I
    invoke-virtual {p2, v0, v0}, Landroid/widget/Button;->measure(II)V

    .line 911
    invoke-virtual {p2}, Landroid/widget/Button;->getMeasuredWidth()I

    move-result v0

    .line 912
    .local v0, "secondaryButtonMeasuredWidth":I
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 914
    .local v2, "maxButtonMeasureWidth":I
    invoke-virtual {p1}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    iput v2, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 915
    invoke-virtual {p2}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    iput v2, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 916
    .end local v0    # "secondaryButtonMeasuredWidth":I
    .end local v1    # "primaryButtonMeasuredWidth":I
    .end local v2    # "maxButtonMeasureWidth":I
    goto :goto_0

    .line 917
    :cond_0
    const/4 v0, 0x0

    const/4 v1, -0x2

    if-eqz p1, :cond_1

    .line 918
    nop

    .line 919
    invoke-virtual {p1}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 920
    .local v2, "primaryLayoutParams":Landroid/widget/LinearLayout$LayoutParams;
    if-eqz v2, :cond_1

    .line 921
    iput v1, v2, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 922
    iput v0, v2, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 923
    invoke-virtual {p1, v2}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 926
    .end local v2    # "primaryLayoutParams":Landroid/widget/LinearLayout$LayoutParams;
    :cond_1
    if-eqz p2, :cond_2

    .line 927
    nop

    .line 928
    invoke-virtual {p2}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 929
    .local v2, "secondaryLayoutParams":Landroid/widget/LinearLayout$LayoutParams;
    if-eqz v2, :cond_2

    .line 930
    iput v1, v2, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 931
    iput v0, v2, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 932
    invoke-virtual {p2, v2}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 936
    .end local v2    # "secondaryLayoutParams":Landroid/widget/LinearLayout$LayoutParams;
    :cond_2
    :goto_0
    return-void
.end method

.method private updateButtonTextColorWithStates(Landroid/widget/Button;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;)V
    .locals 1
    .param p1, "button"    # Landroid/widget/Button;
    .param p2, "buttonTextColorConfig"    # Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;
    .param p3, "buttonTextDisabledColorConfig"    # Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "button",
            "buttonTextColorConfig",
            "buttonTextDisabledColorConfig"
        }
    .end annotation

    .line 1397
    invoke-virtual {p1}, Landroid/widget/Button;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1398
    iget-object v0, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->context:Landroid/content/Context;

    invoke-static {v0, p1, p2}, Lcom/google/android/setupcompat/template/FooterButtonStyleUtils;->updateButtonTextEnabledColorWithPartnerConfig(Landroid/content/Context;Landroid/widget/Button;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;)V

    goto :goto_0

    .line 1401
    :cond_0
    iget-object v0, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->context:Landroid/content/Context;

    invoke-static {v0, p1, p3}, Lcom/google/android/setupcompat/template/FooterButtonStyleUtils;->updateButtonTextDisabledColorWithPartnerConfig(Landroid/content/Context;Landroid/widget/Button;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;)V

    .line 1404
    :goto_0
    return-void
.end method

.method private updateFooterBarPadding(Landroid/widget/LinearLayout;IIII)V
    .locals 1
    .param p1, "buttonContainer"    # Landroid/widget/LinearLayout;
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "buttonContainer",
            "left",
            "top",
            "right",
            "bottom"
        }
    .end annotation

    .line 1457
    if-nez p1, :cond_0

    .line 1459
    return-void

    .line 1461
    :cond_0
    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 1463
    iget-object v0, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->isGlifExpressiveEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1466
    nop

    .line 1467
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->requestApplyInsets()V

    .line 1470
    :cond_1
    return-void
.end method

.method private updateTextColorForButton(Landroid/widget/Button;ZI)V
    .locals 0
    .param p1, "button"    # Landroid/widget/Button;
    .param p2, "enable"    # Z
    .param p3, "color"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "button",
            "enable",
            "color"
        }
    .end annotation

    .line 1522
    if-eqz p2, :cond_0

    .line 1523
    invoke-static {p1, p3}, Lcom/google/android/setupcompat/template/FooterButtonStyleUtils;->updateButtonTextEnabledColor(Landroid/widget/Button;I)V

    goto :goto_0

    .line 1525
    :cond_0
    invoke-static {p1, p3}, Lcom/google/android/setupcompat/template/FooterButtonStyleUtils;->updateButtonTextDisabledColor(Landroid/widget/Button;I)V

    .line 1527
    :goto_0
    return-void
.end method


# virtual methods
.method protected createThemedButton(Landroid/content/Context;I)Lcom/google/android/setupcompat/template/IFooterActionButton;
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "theme"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "theme"
        }
    .end annotation

    .line 470
    invoke-static {p1}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->isGlifExpressiveEnabled(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 472
    :try_start_0
    sget v0, Lcom/google/android/setupcompat/R$style;->SucGlifMaterialButton_Primary:I

    if-ne p2, v0, :cond_0

    .line 473
    new-instance v0, Lcom/google/android/setupcompat/template/MaterialFooterActionButton;

    new-instance v2, Landroid/view/ContextThemeWrapper;

    invoke-direct {v2, p1, p2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    sget v3, Lcom/google/android/setupcompat/R$attr;->sucMaterialButtonStyle:I

    invoke-direct {v0, v2, v1, v3}, Lcom/google/android/setupcompat/template/MaterialFooterActionButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-object v0

    .line 476
    :cond_0
    new-instance v0, Lcom/google/android/setupcompat/template/MaterialFooterActionButton;

    new-instance v2, Landroid/view/ContextThemeWrapper;

    invoke-direct {v2, p1, p2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    sget v3, Lcom/google/android/setupcompat/R$attr;->sucMaterialOutlinedButtonStyle:I

    invoke-direct {v0, v2, v1, v3}, Lcom/google/android/setupcompat/template/MaterialFooterActionButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 479
    :catch_0
    move-exception v0

    .line 480
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    sget-object v2, Lcom/google/android/setupcompat/template/FooterBarMixin;->LOG:Lcom/google/android/setupcompat/util/Logger;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Applyed invalid material theme: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/setupcompat/util/Logger;->e(Ljava/lang/String;)V

    .line 482
    sget v2, Lcom/google/android/setupcompat/R$style;->SucGlifMaterialButton_Primary:I

    if-ne p2, v2, :cond_1

    .line 483
    sget p2, Lcom/google/android/setupcompat/R$style;->SucPartnerCustomizationButton_Primary:I

    goto :goto_0

    .line 485
    :cond_1
    sget p2, Lcom/google/android/setupcompat/R$style;->SucPartnerCustomizationButton_Secondary:I

    .line 491
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :cond_2
    :goto_0
    new-instance v0, Landroid/view/ContextThemeWrapper;

    invoke-direct {v0, p1, p2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 492
    .local v0, "inflater":Landroid/view/LayoutInflater;
    sget v2, Lcom/google/android/setupcompat/R$layout;->suc_button:I

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/setupcompat/template/IFooterActionButton;

    return-object v1
.end method

.method public getButtonContainer()Landroid/widget/LinearLayout;
    .locals 1

    .line 1288
    iget-object v0, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->buttonContainer:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public getLoggingMetrics()Landroid/os/PersistableBundle;
    .locals 5

    .line 1505
    sget-object v0, Lcom/google/android/setupcompat/template/FooterBarMixin;->LOG:Lcom/google/android/setupcompat/util/Logger;

    iget-object v1, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->hostFragmentName:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->hostFragmentTag:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "FooterBarMixin fragment name="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", Tag="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/setupcompat/util/Logger;->atDebug(Ljava/lang/String;)V

    .line 1506
    iget-object v0, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->metrics:Lcom/google/android/setupcompat/logging/internal/FooterBarMixinMetrics;

    invoke-virtual {v0}, Lcom/google/android/setupcompat/logging/internal/FooterBarMixinMetrics;->getMetrics()Landroid/os/PersistableBundle;

    move-result-object v0

    .line 1507
    .local v0, "persistableBundle":Landroid/os/PersistableBundle;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1d

    if-lt v1, v2, :cond_1

    iget-object v1, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->context:Landroid/content/Context;

    .line 1508
    invoke-static {v1}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->isEnhancedSetupDesignMetricsEnabled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1509
    iget-object v1, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->hostFragmentName:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1510
    iget-object v1, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->hostFragmentName:Ljava/lang/String;

    .line 1511
    invoke-static {v1}, Lcom/google/android/setupcompat/logging/CustomEvent;->trimsStringOverMaxLength(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1510
    const-string v2, "HostFragmentName"

    invoke-virtual {v0, v2, v1}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1513
    :cond_0
    iget-object v1, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->hostFragmentTag:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 1514
    iget-object v1, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->hostFragmentTag:Ljava/lang/String;

    .line 1515
    invoke-static {v1}, Lcom/google/android/setupcompat/logging/CustomEvent;->trimsStringOverMaxLength(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1514
    const-string v2, "HostFragmentTag"

    invoke-virtual {v0, v2, v1}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1518
    :cond_1
    return-object v0
.end method

.method getPaddingBottom()I
    .locals 1

    .line 1481
    iget-object v0, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->buttonContainer:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 1482
    iget-object v0, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->buttonContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getPaddingBottom()I

    move-result v0

    goto :goto_0

    .line 1483
    :cond_0
    iget-object v0, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->footerStub:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->getPaddingBottom()I

    move-result v0

    .line 1481
    :goto_0
    return v0
.end method

.method getPaddingTop()I
    .locals 1

    .line 1475
    iget-object v0, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->buttonContainer:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->buttonContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getPaddingTop()I

    move-result v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->footerStub:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->getPaddingTop()I

    move-result v0

    :goto_0
    return v0
.end method

.method public getPrimaryButton()Lcom/google/android/setupcompat/template/FooterButton;
    .locals 1

    .line 583
    iget-object v0, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->primaryButton:Lcom/google/android/setupcompat/template/FooterButton;

    return-object v0
.end method

.method public getPrimaryButtonView()Landroid/widget/Button;
    .locals 2

    .line 594
    iget-object v0, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->buttonContainer:Landroid/widget/LinearLayout;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->buttonContainer:Landroid/widget/LinearLayout;

    iget v1, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->primaryButtonId:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    :goto_0
    return-object v0
.end method

.method public getSecondaryButton()Lcom/google/android/setupcompat/template/FooterButton;
    .locals 1

    .line 1293
    iget-object v0, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->secondaryButton:Lcom/google/android/setupcompat/template/FooterButton;

    return-object v0
.end method

.method public getSecondaryButtonView()Landroid/widget/Button;
    .locals 2

    .line 1339
    iget-object v0, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->buttonContainer:Landroid/widget/LinearLayout;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->buttonContainer:Landroid/widget/LinearLayout;

    iget v1, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->secondaryButtonId:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    :goto_0
    return-object v0
.end method

.method public getTertiaryButtonView()Landroid/widget/Button;
    .locals 3

    .line 832
    iget-object v0, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->isGlifExpressiveEnabled(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 833
    sget-object v0, Lcom/google/android/setupcompat/template/FooterBarMixin;->LOG:Lcom/google/android/setupcompat/util/Logger;

    const-string v2, "Cannot get tertiary button when glif expressive is not enabled."

    invoke-virtual {v0, v2}, Lcom/google/android/setupcompat/util/Logger;->atDebug(Ljava/lang/String;)V

    .line 834
    return-object v1

    .line 836
    :cond_0
    iget-object v0, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->buttonContainer:Landroid/widget/LinearLayout;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->buttonContainer:Landroid/widget/LinearLayout;

    iget v1, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->tertiaryButtonId:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/widget/Button;

    :goto_0
    return-object v1
.end method

.method public getVisibility()I
    .locals 1

    .line 1328
    iget-object v0, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->buttonContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    return v0
.end method

.method protected inflateFooter(I)Landroid/view/View;
    .locals 3
    .param p1, "footer"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "footer"
        }
    .end annotation

    .line 1446
    new-instance v0, Landroid/view/ContextThemeWrapper;

    iget-object v1, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->context:Landroid/content/Context;

    sget v2, Lcom/google/android/setupcompat/R$style;->SucPartnerCustomizationButtonBar_Stackable:I

    invoke-direct {v0, v1, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 1447
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 1449
    .local v0, "inflater":Landroid/view/LayoutInflater;
    iget-object v1, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->footerStub:Landroid/view/ViewStub;

    invoke-virtual {v1, v0}, Landroid/view/ViewStub;->setLayoutInflater(Landroid/view/LayoutInflater;)V

    .line 1451
    iget-object v1, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->footerStub:Landroid/view/ViewStub;

    invoke-virtual {v1, p1}, Landroid/view/ViewStub;->setLayoutResource(I)V

    .line 1452
    iget-object v1, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->footerStub:Landroid/view/ViewStub;

    invoke-virtual {v1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v1

    return-object v1
.end method

.method protected isFooterButtonAlignedEnd()Z
    .locals 4

    .line 333
    iget-object v0, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->get(Landroid/content/Context;)Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;

    move-result-object v0

    sget-object v1, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->CONFIG_FOOTER_BUTTON_ALIGNED_END:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    .line 334
    invoke-virtual {v0, v1}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->isPartnerConfigAvailable(Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 335
    iget-object v0, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->get(Landroid/content/Context;)Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->context:Landroid/content/Context;

    sget-object v2, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->CONFIG_FOOTER_BUTTON_ALIGNED_END:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    .line 336
    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->getBoolean(Landroid/content/Context;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;Z)Z

    move-result v0

    .line 335
    return v0

    .line 338
    :cond_0
    iget-boolean v0, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->footerButtonAlignEnd:Z

    return v0
.end method

.method protected isFooterButtonsEvenlyWeighted()Z
    .locals 1

    .line 343
    iget-boolean v0, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->isSecondaryButtonInPrimaryStyle:Z

    if-nez v0, :cond_0

    .line 344
    const/4 v0, 0x0

    return v0

    .line 346
    :cond_0
    iget-object v0, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->get(Landroid/content/Context;)Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;

    .line 347
    iget-object v0, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->isNeutralButtonStyleEnabled(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method isPrimaryButtonVisible()Z
    .locals 1

    .line 599
    invoke-virtual {p0}, Lcom/google/android/setupcompat/template/FooterBarMixin;->getPrimaryButtonView()Landroid/widget/Button;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/setupcompat/template/FooterBarMixin;->getPrimaryButtonView()Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Button;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method isSecondaryButtonVisible()Z
    .locals 1

    .line 1344
    invoke-virtual {p0}, Lcom/google/android/setupcompat/template/FooterBarMixin;->getSecondaryButtonView()Landroid/widget/Button;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1345
    invoke-virtual {p0}, Lcom/google/android/setupcompat/template/FooterBarMixin;->getSecondaryButtonView()Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Button;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1344
    :goto_0
    return v0
.end method

.method public onAttachedToWindow()V
    .locals 3

    .line 1488
    iget-object v0, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->metrics:Lcom/google/android/setupcompat/logging/internal/FooterBarMixinMetrics;

    .line 1489
    invoke-virtual {p0}, Lcom/google/android/setupcompat/template/FooterBarMixin;->isPrimaryButtonVisible()Z

    move-result v1

    .line 1488
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/google/android/setupcompat/logging/internal/FooterBarMixinMetrics;->logPrimaryButtonInitialStateVisibility(ZZ)V

    .line 1490
    iget-object v0, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->metrics:Lcom/google/android/setupcompat/logging/internal/FooterBarMixinMetrics;

    .line 1491
    invoke-virtual {p0}, Lcom/google/android/setupcompat/template/FooterBarMixin;->isSecondaryButtonVisible()Z

    move-result v1

    .line 1490
    invoke-virtual {v0, v1, v2}, Lcom/google/android/setupcompat/logging/internal/FooterBarMixinMetrics;->logSecondaryButtonInitialStateVisibility(ZZ)V

    .line 1492
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 3

    .line 1496
    iget-object v0, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->metrics:Lcom/google/android/setupcompat/logging/internal/FooterBarMixinMetrics;

    invoke-virtual {p0}, Lcom/google/android/setupcompat/template/FooterBarMixin;->isPrimaryButtonVisible()Z

    move-result v1

    invoke-virtual {p0}, Lcom/google/android/setupcompat/template/FooterBarMixin;->isSecondaryButtonVisible()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/setupcompat/logging/internal/FooterBarMixinMetrics;->updateButtonVisibility(ZZ)V

    .line 1497
    return-void
.end method

.method protected onFooterBarApplyPartnerResource(Landroid/widget/LinearLayout;)V
    .locals 7
    .param p1, "buttonContainer"    # Landroid/widget/LinearLayout;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "buttonContainer"
        }
    .end annotation

    .line 400
    if-nez p1, :cond_0

    .line 402
    return-void

    .line 404
    :cond_0
    iget-boolean v0, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->applyPartnerResources:Z

    if-nez v0, :cond_1

    .line 405
    return-void

    .line 409
    :cond_1
    iget-boolean v0, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->useFullDynamicColor:Z

    if-nez v0, :cond_2

    .line 411
    iget-object v0, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->context:Landroid/content/Context;

    .line 412
    invoke-static {v0}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->get(Landroid/content/Context;)Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->context:Landroid/content/Context;

    sget-object v2, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->CONFIG_FOOTER_BAR_BG_COLOR:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    .line 413
    invoke-virtual {v0, v1, v2}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->getColor(Landroid/content/Context;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;)I

    move-result v0

    .line 414
    .local v0, "color":I
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 417
    .end local v0    # "color":I
    :cond_2
    iget-object v0, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->get(Landroid/content/Context;)Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;

    move-result-object v0

    sget-object v1, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->CONFIG_FOOTER_BUTTON_PADDING_TOP:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    .line 418
    invoke-virtual {v0, v1}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->isPartnerConfigAvailable(Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 419
    iget-object v0, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->context:Landroid/content/Context;

    .line 421
    invoke-static {v0}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->get(Landroid/content/Context;)Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->context:Landroid/content/Context;

    sget-object v2, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->CONFIG_FOOTER_BUTTON_PADDING_TOP:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    .line 422
    invoke-virtual {v0, v1, v2}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->getDimension(Landroid/content/Context;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->footerBarPaddingTop:I

    .line 424
    :cond_3
    iget-object v0, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->get(Landroid/content/Context;)Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;

    move-result-object v0

    sget-object v1, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->CONFIG_FOOTER_BUTTON_PADDING_BOTTOM:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    .line 425
    invoke-virtual {v0, v1}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->isPartnerConfigAvailable(Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 426
    iget-object v0, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->context:Landroid/content/Context;

    .line 428
    invoke-static {v0}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->get(Landroid/content/Context;)Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->context:Landroid/content/Context;

    sget-object v2, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->CONFIG_FOOTER_BUTTON_PADDING_BOTTOM:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    .line 429
    invoke-virtual {v0, v1, v2}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->getDimension(Landroid/content/Context;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->footerBarPaddingBottom:I

    .line 431
    :cond_4
    iget-object v0, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->get(Landroid/content/Context;)Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;

    move-result-object v0

    sget-object v1, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->CONFIG_FOOTER_BAR_PADDING_START:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    .line 432
    invoke-virtual {v0, v1}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->isPartnerConfigAvailable(Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 433
    iget-object v0, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->context:Landroid/content/Context;

    .line 435
    invoke-static {v0}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->get(Landroid/content/Context;)Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->context:Landroid/content/Context;

    sget-object v2, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->CONFIG_FOOTER_BAR_PADDING_START:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    .line 436
    invoke-virtual {v0, v1, v2}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->getDimension(Landroid/content/Context;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->footerBarPaddingStart:I

    .line 438
    :cond_5
    iget-object v0, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->get(Landroid/content/Context;)Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;

    move-result-object v0

    sget-object v1, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->CONFIG_FOOTER_BAR_PADDING_END:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    .line 439
    invoke-virtual {v0, v1}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->isPartnerConfigAvailable(Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 440
    iget-object v0, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->context:Landroid/content/Context;

    .line 442
    invoke-static {v0}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->get(Landroid/content/Context;)Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->context:Landroid/content/Context;

    sget-object v2, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->CONFIG_FOOTER_BAR_PADDING_END:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    .line 443
    invoke-virtual {v0, v1, v2}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->getDimension(Landroid/content/Context;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->footerBarPaddingEnd:I

    .line 445
    :cond_6
    iget v3, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->footerBarPaddingStart:I

    iget v4, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->footerBarPaddingTop:I

    iget v5, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->footerBarPaddingEnd:I

    iget v6, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->footerBarPaddingBottom:I

    move-object v1, p0

    move-object v2, p1

    .end local p1    # "buttonContainer":Landroid/widget/LinearLayout;
    .local v2, "buttonContainer":Landroid/widget/LinearLayout;
    invoke-direct/range {v1 .. v6}, Lcom/google/android/setupcompat/template/FooterBarMixin;->updateFooterBarPadding(Landroid/widget/LinearLayout;IIII)V

    .line 452
    iget-object p1, v1, Lcom/google/android/setupcompat/template/FooterBarMixin;->context:Landroid/content/Context;

    invoke-static {p1}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->get(Landroid/content/Context;)Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;

    move-result-object p1

    sget-object v0, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->CONFIG_FOOTER_BAR_MIN_HEIGHT:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    .line 453
    invoke-virtual {p1, v0}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->isPartnerConfigAvailable(Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 454
    iget-object p1, v1, Lcom/google/android/setupcompat/template/FooterBarMixin;->context:Landroid/content/Context;

    .line 456
    invoke-static {p1}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->get(Landroid/content/Context;)Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;

    move-result-object p1

    iget-object v0, v1, Lcom/google/android/setupcompat/template/FooterBarMixin;->context:Landroid/content/Context;

    sget-object v3, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->CONFIG_FOOTER_BAR_MIN_HEIGHT:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    .line 457
    invoke-virtual {p1, v0, v3}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->getDimension(Landroid/content/Context;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;)F

    move-result p1

    float-to-int p1, p1

    .line 458
    .local p1, "minHeight":I
    if-lez p1, :cond_7

    .line 459
    invoke-virtual {v2, p1}, Landroid/widget/LinearLayout;->setMinimumHeight(I)V

    .line 462
    .end local p1    # "minHeight":I
    :cond_7
    return-void
.end method

.method protected onFooterBarInflated(Landroid/widget/LinearLayout;)V
    .locals 7
    .param p1, "buttonContainer"    # Landroid/widget/LinearLayout;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "buttonContainer"
        }
    .end annotation

    .line 378
    if-nez p1, :cond_0

    .line 380
    return-void

    .line 382
    :cond_0
    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setId(I)V

    .line 383
    iget v3, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->footerBarPaddingStart:I

    iget v4, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->footerBarPaddingTop:I

    iget v5, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->footerBarPaddingEnd:I

    iget v6, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->footerBarPaddingBottom:I

    move-object v1, p0

    move-object v2, p1

    .end local p1    # "buttonContainer":Landroid/widget/LinearLayout;
    .local v2, "buttonContainer":Landroid/widget/LinearLayout;
    invoke-direct/range {v1 .. v6}, Lcom/google/android/setupcompat/template/FooterBarMixin;->updateFooterBarPadding(Landroid/widget/LinearLayout;IIII)V

    .line 389
    invoke-virtual {p0}, Lcom/google/android/setupcompat/template/FooterBarMixin;->isFooterButtonAlignedEnd()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 390
    const p1, 0x800015

    invoke-virtual {v2, p1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 392
    :cond_1
    return-void
.end method

.method protected onFooterButtonInflated(Landroid/widget/Button;I)V
    .locals 1
    .param p1, "button"    # Landroid/widget/Button;
    .param p2, "defaultButtonBackgroundColor"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "button",
            "defaultButtonBackgroundColor"
        }
    .end annotation

    .line 1243
    iget-boolean v0, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->applyDynamicColor:Z

    if-nez v0, :cond_0

    .line 1244
    if-eqz p2, :cond_0

    .line 1245
    invoke-static {p1, p2}, Lcom/google/android/setupcompat/template/FooterButtonStyleUtils;->updateButtonBackground(Landroid/widget/Button;I)V

    .line 1250
    :cond_0
    iget-object v0, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->buttonContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1251
    invoke-direct {p0}, Lcom/google/android/setupcompat/template/FooterBarMixin;->autoSetButtonBarVisibility()V

    .line 1252
    return-void
.end method

.method protected repopulateButtons()V
    .locals 11

    .line 844
    invoke-direct {p0}, Lcom/google/android/setupcompat/template/FooterBarMixin;->ensureFooterInflated()Landroid/widget/LinearLayout;

    move-result-object v1

    .line 845
    .local v1, "buttonContainer":Landroid/widget/LinearLayout;
    invoke-virtual {p0}, Lcom/google/android/setupcompat/template/FooterBarMixin;->getPrimaryButtonView()Landroid/widget/Button;

    move-result-object v6

    .line 846
    .local v6, "tempPrimaryButton":Landroid/widget/Button;
    invoke-virtual {p0}, Lcom/google/android/setupcompat/template/FooterBarMixin;->getSecondaryButtonView()Landroid/widget/Button;

    move-result-object v7

    .line 847
    .local v7, "tempSecondaryButton":Landroid/widget/Button;
    invoke-virtual {p0}, Lcom/google/android/setupcompat/template/FooterBarMixin;->getTertiaryButtonView()Landroid/widget/Button;

    move-result-object v8

    .line 848
    .local v8, "tempTertiaryButton":Landroid/widget/Button;
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 850
    invoke-virtual {p0}, Lcom/google/android/setupcompat/template/FooterBarMixin;->isFooterButtonsEvenlyWeighted()Z

    move-result v9

    .line 851
    .local v9, "isEvenlyWeightedButtons":Z
    iget-object v0, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->context:Landroid/content/Context;

    .line 852
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move v10, v0

    .line 854
    .local v10, "isLandscape":Z
    if-eqz v10, :cond_1

    if-eqz v9, :cond_1

    .line 856
    invoke-virtual {p0}, Lcom/google/android/setupcompat/template/FooterBarMixin;->isFooterButtonAlignedEnd()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->context:Landroid/content/Context;

    .line 857
    invoke-static {v0}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->isGlifExpressiveEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 858
    invoke-direct {p0}, Lcom/google/android/setupcompat/template/FooterBarMixin;->addSpace()Landroid/view/View;

    .line 862
    :cond_1
    iget-object v0, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->isGlifExpressiveEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 863
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    iput v0, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->containerVisibility:I

    .line 864
    iget v0, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->containerVisibility:I

    if-nez v0, :cond_2

    .line 865
    const/4 v0, 0x4

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 869
    :cond_2
    if-eqz v7, :cond_4

    .line 870
    iget-boolean v0, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->isSecondaryButtonInPrimaryStyle:Z

    if-eqz v0, :cond_3

    .line 873
    nop

    .line 875
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getPaddingRight()I

    move-result v2

    .line 876
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getPaddingTop()I

    move-result v3

    .line 877
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getPaddingRight()I

    move-result v4

    .line 878
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getPaddingBottom()I

    move-result v5

    .line 873
    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/setupcompat/template/FooterBarMixin;->updateFooterBarPadding(Landroid/widget/LinearLayout;IIII)V

    goto :goto_1

    .line 870
    :cond_3
    move-object v0, p0

    .line 880
    :goto_1
    invoke-virtual {v1, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_2

    .line 869
    :cond_4
    move-object v0, p0

    .line 882
    :goto_2
    invoke-virtual {p0}, Lcom/google/android/setupcompat/template/FooterBarMixin;->isFooterButtonAlignedEnd()Z

    move-result v2

    if-nez v2, :cond_5

    iget-object v2, v0, Lcom/google/android/setupcompat/template/FooterBarMixin;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->isGlifExpressiveEnabled(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 883
    invoke-direct {p0}, Lcom/google/android/setupcompat/template/FooterBarMixin;->addSpace()Landroid/view/View;

    .line 886
    :cond_5
    iget-object v2, v0, Lcom/google/android/setupcompat/template/FooterBarMixin;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->isGlifExpressiveEnabled(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_7

    if-eqz v8, :cond_7

    .line 887
    invoke-direct {p0, v6, v7}, Lcom/google/android/setupcompat/template/FooterBarMixin;->isBothButtons(Landroid/widget/Button;Landroid/widget/Button;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 888
    invoke-virtual {v1, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_3

    .line 890
    :cond_6
    sget-object v2, Lcom/google/android/setupcompat/template/FooterBarMixin;->LOG:Lcom/google/android/setupcompat/util/Logger;

    const-string v3, "Cannot add tertiary button when primary or secondary button is null."

    invoke-virtual {v2, v3}, Lcom/google/android/setupcompat/util/Logger;->atDebug(Ljava/lang/String;)V

    .line 894
    :cond_7
    :goto_3
    if-eqz v6, :cond_8

    .line 895
    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 898
    :cond_8
    invoke-direct {p0, v6, v7, v9}, Lcom/google/android/setupcompat/template/FooterBarMixin;->setEvenlyWeightedButtons(Landroid/widget/Button;Landroid/widget/Button;Z)V

    .line 899
    iget-object v2, v0, Lcom/google/android/setupcompat/template/FooterBarMixin;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->isGlifExpressiveEnabled(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 900
    invoke-virtual {p0}, Lcom/google/android/setupcompat/template/FooterBarMixin;->setButtonWidthForExpressiveStyle()V

    .line 902
    :cond_9
    return-void
.end method

.method public setButtonWidthForExpressiveStyle()V
    .locals 2

    .line 941
    iget-object v0, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->buttonContainer:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/google/android/setupcompat/template/FooterBarMixin$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lcom/google/android/setupcompat/template/FooterBarMixin$$ExternalSyntheticLambda4;-><init>(Lcom/google/android/setupcompat/template/FooterBarMixin;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->post(Ljava/lang/Runnable;)Z

    .line 1010
    return-void
.end method

.method public setDownButtonForExpressiveStyle()V
    .locals 2

    .line 1014
    iget-object v0, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->buttonContainer:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/google/android/setupcompat/template/FooterBarMixin$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/google/android/setupcompat/template/FooterBarMixin$$ExternalSyntheticLambda3;-><init>(Lcom/google/android/setupcompat/template/FooterBarMixin;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->post(Ljava/lang/Runnable;)Z

    .line 1039
    return-void
.end method

.method public setFragmentInfo(Landroid/support/v4/app/Fragment;)V
    .locals 1
    .param p1, "fragment"    # Landroid/support/v4/app/Fragment;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "fragment"
        }
    .end annotation

    .line 307
    if-eqz p1, :cond_0

    .line 308
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->hostFragmentName:Ljava/lang/String;

    .line 309
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getTag()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->hostFragmentTag:Ljava/lang/String;

    .line 311
    :cond_0
    return-void
.end method

.method public setLoggingObserver(Lcom/google/android/setupcompat/logging/LoggingObserver;)V
    .locals 4
    .param p1, "observer"    # Lcom/google/android/setupcompat/logging/LoggingObserver;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "observer"
        }
    .end annotation

    .line 314
    iput-object p1, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->loggingObserver:Lcom/google/android/setupcompat/logging/LoggingObserver;

    .line 319
    iget v0, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->primaryButtonId:I

    if-eqz v0, :cond_0

    .line 320
    iget-object v0, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->loggingObserver:Lcom/google/android/setupcompat/logging/LoggingObserver;

    new-instance v1, Lcom/google/android/setupcompat/logging/LoggingObserver$SetupCompatUiEvent$ButtonInflatedEvent;

    .line 321
    invoke-virtual {p0}, Lcom/google/android/setupcompat/template/FooterBarMixin;->getPrimaryButtonView()Landroid/widget/Button;

    move-result-object v2

    sget-object v3, Lcom/google/android/setupcompat/logging/LoggingObserver$ButtonType;->PRIMARY:Lcom/google/android/setupcompat/logging/LoggingObserver$ButtonType;

    invoke-direct {v1, v2, v3}, Lcom/google/android/setupcompat/logging/LoggingObserver$SetupCompatUiEvent$ButtonInflatedEvent;-><init>(Landroid/view/View;Lcom/google/android/setupcompat/logging/LoggingObserver$ButtonType;)V

    .line 320
    invoke-interface {v0, v1}, Lcom/google/android/setupcompat/logging/LoggingObserver;->log(Lcom/google/android/setupcompat/logging/LoggingObserver$SetupCompatUiEvent;)V

    .line 322
    invoke-virtual {p0}, Lcom/google/android/setupcompat/template/FooterBarMixin;->getPrimaryButton()Lcom/google/android/setupcompat/template/FooterButton;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/setupcompat/template/FooterButton;->setLoggingObserver(Lcom/google/android/setupcompat/logging/LoggingObserver;)V

    .line 325
    :cond_0
    iget v0, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->secondaryButtonId:I

    if-eqz v0, :cond_1

    .line 326
    iget-object v0, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->loggingObserver:Lcom/google/android/setupcompat/logging/LoggingObserver;

    new-instance v1, Lcom/google/android/setupcompat/logging/LoggingObserver$SetupCompatUiEvent$ButtonInflatedEvent;

    .line 327
    invoke-virtual {p0}, Lcom/google/android/setupcompat/template/FooterBarMixin;->getSecondaryButtonView()Landroid/widget/Button;

    move-result-object v2

    sget-object v3, Lcom/google/android/setupcompat/logging/LoggingObserver$ButtonType;->SECONDARY:Lcom/google/android/setupcompat/logging/LoggingObserver$ButtonType;

    invoke-direct {v1, v2, v3}, Lcom/google/android/setupcompat/logging/LoggingObserver$SetupCompatUiEvent$ButtonInflatedEvent;-><init>(Landroid/view/View;Lcom/google/android/setupcompat/logging/LoggingObserver$ButtonType;)V

    .line 326
    invoke-interface {v0, v1}, Lcom/google/android/setupcompat/logging/LoggingObserver;->log(Lcom/google/android/setupcompat/logging/LoggingObserver$SetupCompatUiEvent;)V

    .line 328
    invoke-virtual {p0}, Lcom/google/android/setupcompat/template/FooterBarMixin;->getSecondaryButton()Lcom/google/android/setupcompat/template/FooterButton;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/setupcompat/template/FooterButton;->setLoggingObserver(Lcom/google/android/setupcompat/logging/LoggingObserver;)V

    .line 330
    :cond_1
    return-void
.end method

.method public setPrimaryButton(Lcom/google/android/setupcompat/template/FooterButton;)V
    .locals 8
    .param p1, "footerButton"    # Lcom/google/android/setupcompat/template/FooterButton;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "footerButton"
        }
    .end annotation

    .line 498
    const-string v0, "setPrimaryButton"

    invoke-static {v0}, Lcom/google/android/setupcompat/internal/Preconditions;->ensureOnMainThread(Ljava/lang/String;)V

    .line 499
    invoke-direct {p0}, Lcom/google/android/setupcompat/template/FooterBarMixin;->ensureFooterInflated()Landroid/widget/LinearLayout;

    .line 502
    iget-object v0, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->isGlifExpressiveEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 503
    sget v0, Lcom/google/android/setupcompat/R$style;->SucGlifMaterialButton_Primary:I

    .local v0, "defaultPartnerTheme":I
    goto :goto_0

    .line 505
    .end local v0    # "defaultPartnerTheme":I
    :cond_0
    sget v0, Lcom/google/android/setupcompat/R$style;->SucPartnerCustomizationButton_Primary:I

    .line 510
    .restart local v0    # "defaultPartnerTheme":I
    :goto_0
    new-instance v1, Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig$Builder;

    invoke-direct {v1, p1}, Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig$Builder;-><init>(Lcom/google/android/setupcompat/template/FooterButton;)V

    sget-object v2, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->CONFIG_FOOTER_PRIMARY_BUTTON_BG_COLOR:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    .line 513
    invoke-direct {p0, p1, v0, v2}, Lcom/google/android/setupcompat/template/FooterBarMixin;->getPartnerTheme(Lcom/google/android/setupcompat/template/FooterButton;ILcom/google/android/setupcompat/partnerconfig/PartnerConfig;)I

    move-result v2

    .line 512
    invoke-virtual {v1, v2}, Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig$Builder;->setPartnerTheme(I)Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig$Builder;

    move-result-object v1

    sget-object v2, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->CONFIG_FOOTER_PRIMARY_BUTTON_BG_COLOR:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    .line 518
    invoke-virtual {v1, v2}, Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig$Builder;->setButtonBackgroundConfig(Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;)Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig$Builder;

    move-result-object v1

    sget-object v2, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->CONFIG_FOOTER_BUTTON_DISABLED_ALPHA:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    .line 519
    invoke-virtual {v1, v2}, Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig$Builder;->setButtonDisableAlphaConfig(Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;)Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig$Builder;

    move-result-object v1

    sget-object v2, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->CONFIG_FOOTER_BUTTON_DISABLED_BG_COLOR:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    .line 520
    invoke-virtual {v1, v2}, Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig$Builder;->setButtonDisableBackgroundConfig(Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;)Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig$Builder;

    move-result-object v1

    sget-object v2, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->CONFIG_FOOTER_PRIMARY_BUTTON_DISABLED_TEXT_COLOR:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    .line 521
    invoke-virtual {v1, v2}, Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig$Builder;->setButtonDisableTextColorConfig(Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;)Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig$Builder;

    move-result-object v1

    .line 523
    invoke-virtual {p1}, Lcom/google/android/setupcompat/template/FooterButton;->getButtonType()I

    move-result v2

    invoke-static {v2}, Lcom/google/android/setupcompat/template/FooterBarMixin;->getDrawablePartnerConfig(I)Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig$Builder;->setButtonIconConfig(Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;)Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig$Builder;

    move-result-object v1

    sget-object v2, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->CONFIG_FOOTER_BUTTON_RADIUS:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    .line 524
    invoke-virtual {v1, v2}, Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig$Builder;->setButtonRadiusConfig(Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;)Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig$Builder;

    move-result-object v1

    sget-object v2, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->CONFIG_FOOTER_BUTTON_RIPPLE_COLOR_ALPHA:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    .line 525
    invoke-virtual {v1, v2}, Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig$Builder;->setButtonRippleColorAlphaConfig(Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;)Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig$Builder;

    move-result-object v1

    sget-object v2, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->CONFIG_FOOTER_PRIMARY_BUTTON_TEXT_COLOR:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    .line 526
    invoke-virtual {v1, v2}, Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig$Builder;->setTextColorConfig(Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;)Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig$Builder;

    move-result-object v1

    sget-object v2, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->CONFIG_FOOTER_PRIMARY_BUTTON_MARGIN_START:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    .line 527
    invoke-virtual {v1, v2}, Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig$Builder;->setMarginStartConfig(Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;)Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig$Builder;

    move-result-object v1

    sget-object v2, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->CONFIG_FOOTER_BUTTON_TEXT_SIZE:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    .line 528
    invoke-virtual {v1, v2}, Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig$Builder;->setTextSizeConfig(Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;)Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig$Builder;

    move-result-object v1

    sget-object v2, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->CONFIG_FOOTER_BUTTON_MIN_HEIGHT:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    .line 529
    invoke-virtual {v1, v2}, Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig$Builder;->setButtonMinHeight(Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;)Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig$Builder;

    move-result-object v1

    sget-object v2, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->CONFIG_FOOTER_BUTTON_FONT_FAMILY:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    .line 530
    invoke-virtual {v1, v2}, Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig$Builder;->setTextTypeFaceConfig(Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;)Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig$Builder;

    move-result-object v1

    sget-object v2, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->CONFIG_FOOTER_BUTTON_FONT_WEIGHT:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    .line 531
    invoke-virtual {v1, v2}, Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig$Builder;->setTextWeightConfig(Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;)Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig$Builder;

    move-result-object v1

    sget-object v2, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->CONFIG_FOOTER_BUTTON_TEXT_STYLE:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    .line 532
    invoke-virtual {v1, v2}, Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig$Builder;->setTextStyleConfig(Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;)Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig$Builder;

    move-result-object v1

    .line 533
    invoke-virtual {v1}, Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig$Builder;->build()Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig;

    move-result-object v1

    .line 535
    .local v1, "footerButtonPartnerConfig":Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig;
    invoke-direct {p0, p1, v1}, Lcom/google/android/setupcompat/template/FooterBarMixin;->inflateButton(Lcom/google/android/setupcompat/template/FooterButton;Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig;)Lcom/google/android/setupcompat/template/IFooterActionButton;

    move-result-object v2

    .line 537
    .local v2, "buttonImpl":Lcom/google/android/setupcompat/template/IFooterActionButton;
    move-object v3, v2

    check-cast v3, Landroid/widget/Button;

    .line 538
    .local v3, "button":Landroid/widget/Button;
    invoke-virtual {v3}, Landroid/widget/Button;->getId()I

    move-result v4

    iput v4, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->primaryButtonId:I

    .line 539
    instance-of v4, v2, Lcom/google/android/setupcompat/template/MaterialFooterActionButton;

    const/4 v5, 0x1

    if-eqz v4, :cond_1

    .line 540
    move-object v4, v2

    check-cast v4, Lcom/google/android/setupcompat/template/MaterialFooterActionButton;

    .line 541
    invoke-virtual {v4, v5}, Lcom/google/android/setupcompat/template/MaterialFooterActionButton;->setPrimaryButtonStyle(Z)V

    goto :goto_1

    .line 542
    :cond_1
    instance-of v4, v3, Lcom/google/android/setupcompat/template/FooterActionButton;

    if-eqz v4, :cond_2

    .line 543
    move-object v4, v2

    check-cast v4, Lcom/google/android/setupcompat/template/FooterActionButton;

    invoke-virtual {v4, v5}, Lcom/google/android/setupcompat/template/FooterActionButton;->setPrimaryButtonStyle(Z)V

    goto :goto_1

    .line 545
    :cond_2
    sget-object v4, Lcom/google/android/setupcompat/template/FooterBarMixin;->LOG:Lcom/google/android/setupcompat/util/Logger;

    const-string v5, "Set the primary button style error when setting primary button."

    invoke-virtual {v4, v5}, Lcom/google/android/setupcompat/util/Logger;->e(Ljava/lang/String;)V

    .line 547
    :goto_1
    iput-object p1, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->primaryButton:Lcom/google/android/setupcompat/template/FooterButton;

    .line 548
    iput-object v1, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->primaryButtonPartnerConfigForTesting:Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig;

    .line 549
    iget v4, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->footerBarPrimaryBackgroundColor:I

    invoke-virtual {p0, v3, v4}, Lcom/google/android/setupcompat/template/FooterBarMixin;->onFooterButtonInflated(Landroid/widget/Button;I)V

    .line 550
    invoke-direct {p0, v3, v1}, Lcom/google/android/setupcompat/template/FooterBarMixin;->onFooterButtonApplyPartnerResource(Landroid/widget/Button;Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig;)V

    .line 552
    iget-object v4, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->context:Landroid/content/Context;

    invoke-static {v4}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->isGlifExpressiveEnabled(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 553
    iget-object v4, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->primaryButton:Lcom/google/android/setupcompat/template/FooterButton;

    invoke-virtual {v4}, Lcom/google/android/setupcompat/template/FooterButton;->isEnabled()Z

    move-result v4

    .line 554
    .local v4, "enabled":Z
    nop

    .line 557
    if-eqz v4, :cond_3

    .line 558
    iget v5, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->footerBarPrimaryButtonEnabledTextColor:I

    goto :goto_2

    .line 559
    :cond_3
    iget v5, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->footerBarPrimaryButtonDisabledTextColor:I

    .line 554
    :goto_2
    invoke-direct {p0, v3, v4, v5}, Lcom/google/android/setupcompat/template/FooterBarMixin;->updateTextColorForButton(Landroid/widget/Button;ZI)V

    .line 561
    .end local v4    # "enabled":Z
    :cond_4
    iget-object v4, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->loggingObserver:Lcom/google/android/setupcompat/logging/LoggingObserver;

    if-eqz v4, :cond_5

    .line 562
    iget-object v4, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->loggingObserver:Lcom/google/android/setupcompat/logging/LoggingObserver;

    new-instance v5, Lcom/google/android/setupcompat/logging/LoggingObserver$SetupCompatUiEvent$ButtonInflatedEvent;

    .line 563
    invoke-virtual {p0}, Lcom/google/android/setupcompat/template/FooterBarMixin;->getPrimaryButtonView()Landroid/widget/Button;

    move-result-object v6

    sget-object v7, Lcom/google/android/setupcompat/logging/LoggingObserver$ButtonType;->PRIMARY:Lcom/google/android/setupcompat/logging/LoggingObserver$ButtonType;

    invoke-direct {v5, v6, v7}, Lcom/google/android/setupcompat/logging/LoggingObserver$SetupCompatUiEvent$ButtonInflatedEvent;-><init>(Landroid/view/View;Lcom/google/android/setupcompat/logging/LoggingObserver$ButtonType;)V

    .line 562
    invoke-interface {v4, v5}, Lcom/google/android/setupcompat/logging/LoggingObserver;->log(Lcom/google/android/setupcompat/logging/LoggingObserver$SetupCompatUiEvent;)V

    .line 564
    iget-object v4, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->loggingObserver:Lcom/google/android/setupcompat/logging/LoggingObserver;

    invoke-virtual {p1, v4}, Lcom/google/android/setupcompat/template/FooterButton;->setLoggingObserver(Lcom/google/android/setupcompat/logging/LoggingObserver;)V

    .line 569
    :cond_5
    invoke-virtual {p0}, Lcom/google/android/setupcompat/template/FooterBarMixin;->repopulateButtons()V

    .line 572
    new-instance v4, Lcom/google/android/setupcompat/template/FooterBarMixin$$ExternalSyntheticLambda0;

    invoke-direct {v4, p0, v3}, Lcom/google/android/setupcompat/template/FooterBarMixin$$ExternalSyntheticLambda0;-><init>(Lcom/google/android/setupcompat/template/FooterBarMixin;Landroid/widget/Button;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->post(Ljava/lang/Runnable;)Z

    .line 579
    return-void
.end method

.method public setRemoveFooterBarWhenEmpty(Z)V
    .locals 0
    .param p1, "value"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1302
    iput-boolean p1, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->removeFooterBarWhenEmpty:Z

    .line 1303
    invoke-direct {p0}, Lcom/google/android/setupcompat/template/FooterBarMixin;->autoSetButtonBarVisibility()V

    .line 1304
    return-void
.end method

.method public setSecondaryButton(Lcom/google/android/setupcompat/template/FooterButton;)V
    .locals 1
    .param p1, "footerButton"    # Lcom/google/android/setupcompat/template/FooterButton;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "footerButton"
        }
    .end annotation

    .line 605
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/setupcompat/template/FooterBarMixin;->setSecondaryButton(Lcom/google/android/setupcompat/template/FooterButton;Z)V

    .line 606
    return-void
.end method

.method public setSecondaryButton(Lcom/google/android/setupcompat/template/FooterButton;Z)V
    .locals 7
    .param p1, "footerButton"    # Lcom/google/android/setupcompat/template/FooterButton;
    .param p2, "usePrimaryStyle"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "footerButton",
            "usePrimaryStyle"
        }
    .end annotation

    .line 611
    const-string v0, "setSecondaryButton"

    invoke-static {v0}, Lcom/google/android/setupcompat/internal/Preconditions;->ensureOnMainThread(Ljava/lang/String;)V

    .line 612
    iput-boolean p2, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->isSecondaryButtonInPrimaryStyle:Z

    .line 613
    invoke-direct {p0}, Lcom/google/android/setupcompat/template/FooterBarMixin;->ensureFooterInflated()Landroid/widget/LinearLayout;

    .line 616
    iget-object v0, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->isGlifExpressiveEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 618
    if-eqz p2, :cond_0

    .line 619
    sget v0, Lcom/google/android/setupcompat/R$style;->SucGlifMaterialButton_Primary:I

    goto :goto_0

    .line 620
    :cond_0
    sget v0, Lcom/google/android/setupcompat/R$style;->SucGlifMaterialButton_Secondary:I

    :goto_0
    nop

    .local v0, "defaultPartnerTheme":I
    goto :goto_2

    .line 623
    .end local v0    # "defaultPartnerTheme":I
    :cond_1
    if-eqz p2, :cond_2

    .line 624
    sget v0, Lcom/google/android/setupcompat/R$style;->SucPartnerCustomizationButton_Primary:I

    goto :goto_1

    .line 625
    :cond_2
    sget v0, Lcom/google/android/setupcompat/R$style;->SucPartnerCustomizationButton_Secondary:I

    :goto_1
    nop

    .line 629
    .restart local v0    # "defaultPartnerTheme":I
    :goto_2
    new-instance v1, Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig$Builder;

    invoke-direct {v1, p1}, Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig$Builder;-><init>(Lcom/google/android/setupcompat/template/FooterButton;)V

    .line 635
    if-eqz p2, :cond_3

    .line 636
    sget-object v2, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->CONFIG_FOOTER_PRIMARY_BUTTON_BG_COLOR:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    goto :goto_3

    .line 637
    :cond_3
    sget-object v2, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->CONFIG_FOOTER_SECONDARY_BUTTON_BG_COLOR:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    .line 632
    :goto_3
    invoke-direct {p0, p1, v0, v2}, Lcom/google/android/setupcompat/template/FooterBarMixin;->getPartnerTheme(Lcom/google/android/setupcompat/template/FooterButton;ILcom/google/android/setupcompat/partnerconfig/PartnerConfig;)I

    move-result v2

    .line 631
    invoke-virtual {v1, v2}, Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig$Builder;->setPartnerTheme(I)Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig$Builder;

    move-result-object v1

    .line 639
    if-eqz p2, :cond_4

    .line 640
    sget-object v2, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->CONFIG_FOOTER_PRIMARY_BUTTON_BG_COLOR:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    goto :goto_4

    .line 641
    :cond_4
    sget-object v2, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->CONFIG_FOOTER_SECONDARY_BUTTON_BG_COLOR:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    .line 638
    :goto_4
    invoke-virtual {v1, v2}, Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig$Builder;->setButtonBackgroundConfig(Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;)Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig$Builder;

    move-result-object v1

    sget-object v2, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->CONFIG_FOOTER_BUTTON_DISABLED_ALPHA:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    .line 642
    invoke-virtual {v1, v2}, Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig$Builder;->setButtonDisableAlphaConfig(Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;)Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig$Builder;

    move-result-object v1

    sget-object v2, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->CONFIG_FOOTER_BUTTON_DISABLED_BG_COLOR:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    .line 643
    invoke-virtual {v1, v2}, Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig$Builder;->setButtonDisableBackgroundConfig(Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;)Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig$Builder;

    move-result-object v1

    .line 645
    if-eqz p2, :cond_5

    .line 646
    sget-object v2, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->CONFIG_FOOTER_PRIMARY_BUTTON_DISABLED_TEXT_COLOR:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    goto :goto_5

    .line 647
    :cond_5
    sget-object v2, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->CONFIG_FOOTER_SECONDARY_BUTTON_DISABLED_TEXT_COLOR:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    .line 644
    :goto_5
    invoke-virtual {v1, v2}, Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig$Builder;->setButtonDisableTextColorConfig(Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;)Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig$Builder;

    move-result-object v1

    .line 648
    invoke-virtual {p1}, Lcom/google/android/setupcompat/template/FooterButton;->getButtonType()I

    move-result v2

    invoke-static {v2}, Lcom/google/android/setupcompat/template/FooterBarMixin;->getDrawablePartnerConfig(I)Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig$Builder;->setButtonIconConfig(Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;)Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig$Builder;

    move-result-object v1

    sget-object v2, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->CONFIG_FOOTER_BUTTON_RADIUS:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    .line 649
    invoke-virtual {v1, v2}, Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig$Builder;->setButtonRadiusConfig(Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;)Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig$Builder;

    move-result-object v1

    sget-object v2, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->CONFIG_FOOTER_BUTTON_RIPPLE_COLOR_ALPHA:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    .line 650
    invoke-virtual {v1, v2}, Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig$Builder;->setButtonRippleColorAlphaConfig(Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;)Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig$Builder;

    move-result-object v1

    .line 652
    if-eqz p2, :cond_6

    .line 653
    sget-object v2, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->CONFIG_FOOTER_PRIMARY_BUTTON_TEXT_COLOR:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    goto :goto_6

    .line 654
    :cond_6
    sget-object v2, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->CONFIG_FOOTER_SECONDARY_BUTTON_TEXT_COLOR:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    .line 651
    :goto_6
    invoke-virtual {v1, v2}, Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig$Builder;->setTextColorConfig(Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;)Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig$Builder;

    move-result-object v1

    sget-object v2, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->CONFIG_FOOTER_SECONDARY_BUTTON_MARGIN_START:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    .line 655
    invoke-virtual {v1, v2}, Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig$Builder;->setMarginStartConfig(Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;)Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig$Builder;

    move-result-object v1

    sget-object v2, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->CONFIG_FOOTER_BUTTON_TEXT_SIZE:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    .line 656
    invoke-virtual {v1, v2}, Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig$Builder;->setTextSizeConfig(Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;)Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig$Builder;

    move-result-object v1

    sget-object v2, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->CONFIG_FOOTER_BUTTON_MIN_HEIGHT:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    .line 657
    invoke-virtual {v1, v2}, Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig$Builder;->setButtonMinHeight(Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;)Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig$Builder;

    move-result-object v1

    sget-object v2, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->CONFIG_FOOTER_BUTTON_FONT_FAMILY:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    .line 658
    invoke-virtual {v1, v2}, Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig$Builder;->setTextTypeFaceConfig(Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;)Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig$Builder;

    move-result-object v1

    sget-object v2, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->CONFIG_FOOTER_BUTTON_FONT_WEIGHT:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    .line 659
    invoke-virtual {v1, v2}, Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig$Builder;->setTextWeightConfig(Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;)Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig$Builder;

    move-result-object v1

    sget-object v2, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->CONFIG_FOOTER_BUTTON_TEXT_STYLE:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    .line 660
    invoke-virtual {v1, v2}, Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig$Builder;->setTextStyleConfig(Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;)Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig$Builder;

    move-result-object v1

    .line 661
    invoke-virtual {v1}, Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig$Builder;->build()Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig;

    move-result-object v1

    .line 663
    .local v1, "footerButtonPartnerConfig":Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig;
    invoke-direct {p0, p1, v1}, Lcom/google/android/setupcompat/template/FooterBarMixin;->inflateButton(Lcom/google/android/setupcompat/template/FooterButton;Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig;)Lcom/google/android/setupcompat/template/IFooterActionButton;

    move-result-object v2

    .line 665
    .local v2, "buttonImpl":Lcom/google/android/setupcompat/template/IFooterActionButton;
    move-object v3, v2

    check-cast v3, Landroid/widget/Button;

    .line 666
    .local v3, "button":Landroid/widget/Button;
    invoke-virtual {v3}, Landroid/widget/Button;->getId()I

    move-result v4

    iput v4, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->secondaryButtonId:I

    .line 667
    instance-of v4, v2, Lcom/google/android/setupcompat/template/MaterialFooterActionButton;

    if-eqz v4, :cond_7

    .line 668
    move-object v4, v2

    check-cast v4, Lcom/google/android/setupcompat/template/MaterialFooterActionButton;

    invoke-virtual {v4, p2}, Lcom/google/android/setupcompat/template/MaterialFooterActionButton;->setPrimaryButtonStyle(Z)V

    goto :goto_7

    .line 669
    :cond_7
    instance-of v4, v3, Lcom/google/android/setupcompat/template/FooterActionButton;

    if-eqz v4, :cond_8

    .line 670
    move-object v4, v2

    check-cast v4, Lcom/google/android/setupcompat/template/FooterActionButton;

    invoke-virtual {v4, p2}, Lcom/google/android/setupcompat/template/FooterActionButton;->setPrimaryButtonStyle(Z)V

    goto :goto_7

    .line 672
    :cond_8
    sget-object v4, Lcom/google/android/setupcompat/template/FooterBarMixin;->LOG:Lcom/google/android/setupcompat/util/Logger;

    const-string v5, "Set the primary button style error when setting secondary button."

    invoke-virtual {v4, v5}, Lcom/google/android/setupcompat/util/Logger;->e(Ljava/lang/String;)V

    .line 674
    :goto_7
    iput-object p1, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->secondaryButton:Lcom/google/android/setupcompat/template/FooterButton;

    .line 675
    iput-object v1, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->secondaryButtonPartnerConfigForTesting:Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig;

    .line 677
    iget v4, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->footerBarSecondaryBackgroundColor:I

    invoke-virtual {p0, v3, v4}, Lcom/google/android/setupcompat/template/FooterBarMixin;->onFooterButtonInflated(Landroid/widget/Button;I)V

    .line 678
    invoke-direct {p0, v3, v1}, Lcom/google/android/setupcompat/template/FooterBarMixin;->onFooterButtonApplyPartnerResource(Landroid/widget/Button;Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig;)V

    .line 680
    iget-object v4, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->context:Landroid/content/Context;

    invoke-static {v4}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->isGlifExpressiveEnabled(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 681
    iget-object v4, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->secondaryButton:Lcom/google/android/setupcompat/template/FooterButton;

    invoke-virtual {v4}, Lcom/google/android/setupcompat/template/FooterButton;->isEnabled()Z

    move-result v4

    .line 682
    .local v4, "enabled":Z
    if-eqz p2, :cond_a

    .line 683
    nop

    .line 686
    if-eqz v4, :cond_9

    .line 687
    iget v5, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->footerBarPrimaryButtonEnabledTextColor:I

    goto :goto_8

    .line 688
    :cond_9
    iget v5, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->footerBarPrimaryButtonDisabledTextColor:I

    .line 683
    :goto_8
    invoke-direct {p0, v3, v4, v5}, Lcom/google/android/setupcompat/template/FooterBarMixin;->updateTextColorForButton(Landroid/widget/Button;ZI)V

    goto :goto_a

    .line 690
    :cond_a
    nop

    .line 693
    if-eqz v4, :cond_b

    .line 694
    iget v5, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->footerBarSecondaryButtonEnabledTextColor:I

    goto :goto_9

    .line 695
    :cond_b
    iget v5, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->footerBarSecondaryButtonDisabledTextColor:I

    .line 690
    :goto_9
    invoke-direct {p0, v3, v4, v5}, Lcom/google/android/setupcompat/template/FooterBarMixin;->updateTextColorForButton(Landroid/widget/Button;ZI)V

    .line 698
    .end local v4    # "enabled":Z
    :cond_c
    :goto_a
    iget-object v4, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->loggingObserver:Lcom/google/android/setupcompat/logging/LoggingObserver;

    if-eqz v4, :cond_d

    .line 699
    iget-object v4, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->loggingObserver:Lcom/google/android/setupcompat/logging/LoggingObserver;

    new-instance v5, Lcom/google/android/setupcompat/logging/LoggingObserver$SetupCompatUiEvent$ButtonInflatedEvent;

    sget-object v6, Lcom/google/android/setupcompat/logging/LoggingObserver$ButtonType;->SECONDARY:Lcom/google/android/setupcompat/logging/LoggingObserver$ButtonType;

    invoke-direct {v5, v3, v6}, Lcom/google/android/setupcompat/logging/LoggingObserver$SetupCompatUiEvent$ButtonInflatedEvent;-><init>(Landroid/view/View;Lcom/google/android/setupcompat/logging/LoggingObserver$ButtonType;)V

    invoke-interface {v4, v5}, Lcom/google/android/setupcompat/logging/LoggingObserver;->log(Lcom/google/android/setupcompat/logging/LoggingObserver$SetupCompatUiEvent;)V

    .line 700
    iget-object v4, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->loggingObserver:Lcom/google/android/setupcompat/logging/LoggingObserver;

    invoke-virtual {p1, v4}, Lcom/google/android/setupcompat/template/FooterButton;->setLoggingObserver(Lcom/google/android/setupcompat/logging/LoggingObserver;)V

    .line 705
    :cond_d
    invoke-virtual {p0}, Lcom/google/android/setupcompat/template/FooterBarMixin;->repopulateButtons()V

    .line 708
    new-instance v4, Lcom/google/android/setupcompat/template/FooterBarMixin$$ExternalSyntheticLambda1;

    invoke-direct {v4, p0, v3}, Lcom/google/android/setupcompat/template/FooterBarMixin$$ExternalSyntheticLambda1;-><init>(Lcom/google/android/setupcompat/template/FooterBarMixin;Landroid/widget/Button;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->post(Ljava/lang/Runnable;)Z

    .line 718
    return-void
.end method

.method public setTertiaryButton(Lcom/google/android/setupcompat/template/FooterButton;)V
    .locals 1
    .param p1, "footerButton"    # Lcom/google/android/setupcompat/template/FooterButton;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "footerButton"
        }
    .end annotation

    .line 730
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/google/android/setupcompat/template/FooterBarMixin;->setTertiaryButton(Lcom/google/android/setupcompat/template/FooterButton;Z)V

    .line 731
    return-void
.end method

.method public setTertiaryButton(Lcom/google/android/setupcompat/template/FooterButton;Z)V
    .locals 5
    .param p1, "footerButton"    # Lcom/google/android/setupcompat/template/FooterButton;
    .param p2, "usePrimaryStyle"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "footerButton",
            "usePrimaryStyle"
        }
    .end annotation

    .line 744
    iget-object v0, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->isGlifExpressiveEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 745
    sget-object v0, Lcom/google/android/setupcompat/template/FooterBarMixin;->LOG:Lcom/google/android/setupcompat/util/Logger;

    const-string v1, "Cannot set tertiary button when glif expressive is not enabled."

    invoke-virtual {v0, v1}, Lcom/google/android/setupcompat/util/Logger;->atDebug(Ljava/lang/String;)V

    .line 746
    return-void

    .line 749
    :cond_0
    const-string v0, "setTertiaryButton"

    invoke-static {v0}, Lcom/google/android/setupcompat/internal/Preconditions;->ensureOnMainThread(Ljava/lang/String;)V

    .line 750
    invoke-direct {p0}, Lcom/google/android/setupcompat/template/FooterBarMixin;->ensureFooterInflated()Landroid/widget/LinearLayout;

    .line 753
    new-instance v0, Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig$Builder;

    invoke-direct {v0, p1}, Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig$Builder;-><init>(Lcom/google/android/setupcompat/template/FooterButton;)V

    sget v1, Lcom/google/android/setupcompat/R$style;->SucGlifMaterialButton_Primary:I

    .line 759
    if-eqz p2, :cond_1

    .line 760
    sget-object v2, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->CONFIG_FOOTER_PRIMARY_BUTTON_BG_COLOR:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    goto :goto_0

    .line 761
    :cond_1
    sget-object v2, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->CONFIG_FOOTER_SECONDARY_BUTTON_BG_COLOR:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    .line 756
    :goto_0
    invoke-direct {p0, p1, v1, v2}, Lcom/google/android/setupcompat/template/FooterBarMixin;->getPartnerTheme(Lcom/google/android/setupcompat/template/FooterButton;ILcom/google/android/setupcompat/partnerconfig/PartnerConfig;)I

    move-result v1

    .line 755
    invoke-virtual {v0, v1}, Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig$Builder;->setPartnerTheme(I)Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig$Builder;

    move-result-object v0

    .line 763
    if-eqz p2, :cond_2

    .line 764
    sget-object v1, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->CONFIG_FOOTER_PRIMARY_BUTTON_BG_COLOR:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    goto :goto_1

    .line 765
    :cond_2
    sget-object v1, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->CONFIG_FOOTER_SECONDARY_BUTTON_BG_COLOR:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    .line 762
    :goto_1
    invoke-virtual {v0, v1}, Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig$Builder;->setButtonBackgroundConfig(Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;)Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->CONFIG_FOOTER_BUTTON_DISABLED_ALPHA:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    .line 766
    invoke-virtual {v0, v1}, Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig$Builder;->setButtonDisableAlphaConfig(Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;)Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->CONFIG_FOOTER_BUTTON_DISABLED_BG_COLOR:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    .line 767
    invoke-virtual {v0, v1}, Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig$Builder;->setButtonDisableBackgroundConfig(Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;)Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig$Builder;

    move-result-object v0

    .line 769
    if-eqz p2, :cond_3

    .line 770
    sget-object v1, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->CONFIG_FOOTER_PRIMARY_BUTTON_DISABLED_TEXT_COLOR:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    goto :goto_2

    .line 771
    :cond_3
    sget-object v1, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->CONFIG_FOOTER_SECONDARY_BUTTON_DISABLED_TEXT_COLOR:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    .line 768
    :goto_2
    invoke-virtual {v0, v1}, Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig$Builder;->setButtonDisableTextColorConfig(Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;)Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig$Builder;

    move-result-object v0

    .line 772
    invoke-virtual {p1}, Lcom/google/android/setupcompat/template/FooterButton;->getButtonType()I

    move-result v1

    invoke-static {v1}, Lcom/google/android/setupcompat/template/FooterBarMixin;->getDrawablePartnerConfig(I)Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig$Builder;->setButtonIconConfig(Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;)Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->CONFIG_FOOTER_BUTTON_RADIUS:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    .line 773
    invoke-virtual {v0, v1}, Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig$Builder;->setButtonRadiusConfig(Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;)Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->CONFIG_FOOTER_BUTTON_RIPPLE_COLOR_ALPHA:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    .line 774
    invoke-virtual {v0, v1}, Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig$Builder;->setButtonRippleColorAlphaConfig(Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;)Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig$Builder;

    move-result-object v0

    .line 776
    if-eqz p2, :cond_4

    .line 777
    sget-object v1, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->CONFIG_FOOTER_PRIMARY_BUTTON_TEXT_COLOR:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    goto :goto_3

    .line 778
    :cond_4
    sget-object v1, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->CONFIG_FOOTER_SECONDARY_BUTTON_TEXT_COLOR:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    .line 775
    :goto_3
    invoke-virtual {v0, v1}, Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig$Builder;->setTextColorConfig(Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;)Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->CONFIG_FOOTER_PRIMARY_BUTTON_MARGIN_START:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    .line 779
    invoke-virtual {v0, v1}, Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig$Builder;->setMarginStartConfig(Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;)Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->CONFIG_FOOTER_BUTTON_TEXT_SIZE:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    .line 780
    invoke-virtual {v0, v1}, Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig$Builder;->setTextSizeConfig(Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;)Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->CONFIG_FOOTER_BUTTON_MIN_HEIGHT:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    .line 781
    invoke-virtual {v0, v1}, Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig$Builder;->setButtonMinHeight(Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;)Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->CONFIG_FOOTER_BUTTON_FONT_FAMILY:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    .line 782
    invoke-virtual {v0, v1}, Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig$Builder;->setTextTypeFaceConfig(Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;)Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->CONFIG_FOOTER_BUTTON_FONT_WEIGHT:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    .line 783
    invoke-virtual {v0, v1}, Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig$Builder;->setTextWeightConfig(Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;)Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->CONFIG_FOOTER_BUTTON_TEXT_STYLE:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    .line 784
    invoke-virtual {v0, v1}, Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig$Builder;->setTextStyleConfig(Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;)Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig$Builder;

    move-result-object v0

    .line 785
    invoke-virtual {v0}, Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig$Builder;->build()Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig;

    move-result-object v0

    .line 787
    .local v0, "footerButtonPartnerConfig":Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig;
    invoke-direct {p0, p1, v0}, Lcom/google/android/setupcompat/template/FooterBarMixin;->inflateButton(Lcom/google/android/setupcompat/template/FooterButton;Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig;)Lcom/google/android/setupcompat/template/IFooterActionButton;

    move-result-object v1

    .line 789
    .local v1, "buttonImpl":Lcom/google/android/setupcompat/template/IFooterActionButton;
    move-object v2, v1

    check-cast v2, Landroid/widget/Button;

    .line 790
    .local v2, "button":Landroid/widget/Button;
    invoke-virtual {v2}, Landroid/widget/Button;->getId()I

    move-result v3

    iput v3, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->tertiaryButtonId:I

    .line 791
    instance-of v3, v1, Lcom/google/android/setupcompat/template/MaterialFooterActionButton;

    if-eqz v3, :cond_5

    move-object v3, v1

    check-cast v3, Lcom/google/android/setupcompat/template/MaterialFooterActionButton;

    .line 792
    .local v3, "materialFooterActionButton":Lcom/google/android/setupcompat/template/MaterialFooterActionButton;
    invoke-virtual {v3, p2}, Lcom/google/android/setupcompat/template/MaterialFooterActionButton;->setPrimaryButtonStyle(Z)V

    .line 794
    .end local v3    # "materialFooterActionButton":Lcom/google/android/setupcompat/template/MaterialFooterActionButton;
    :cond_5
    iput-object p1, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->tertiaryButton:Lcom/google/android/setupcompat/template/FooterButton;

    .line 795
    iput-object v0, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->tertiaryButtonPartnerConfigForTesting:Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig;

    .line 796
    iget v3, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->footerBarPrimaryBackgroundColor:I

    invoke-virtual {p0, v2, v3}, Lcom/google/android/setupcompat/template/FooterBarMixin;->onFooterButtonInflated(Landroid/widget/Button;I)V

    .line 797
    invoke-direct {p0, v2, v0}, Lcom/google/android/setupcompat/template/FooterBarMixin;->onFooterButtonApplyPartnerResource(Landroid/widget/Button;Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig;)V

    .line 799
    iget-object v3, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->tertiaryButton:Lcom/google/android/setupcompat/template/FooterButton;

    invoke-virtual {v3}, Lcom/google/android/setupcompat/template/FooterButton;->isEnabled()Z

    move-result v3

    .line 800
    .local v3, "enabled":Z
    if-eqz p2, :cond_7

    .line 801
    nop

    .line 804
    if-eqz v3, :cond_6

    .line 805
    iget v4, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->footerBarPrimaryButtonEnabledTextColor:I

    goto :goto_4

    .line 806
    :cond_6
    iget v4, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->footerBarPrimaryButtonDisabledTextColor:I

    .line 801
    :goto_4
    invoke-direct {p0, v2, v3, v4}, Lcom/google/android/setupcompat/template/FooterBarMixin;->updateTextColorForButton(Landroid/widget/Button;ZI)V

    goto :goto_6

    .line 808
    :cond_7
    nop

    .line 811
    if-eqz v3, :cond_8

    .line 812
    iget v4, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->footerBarSecondaryButtonEnabledTextColor:I

    goto :goto_5

    .line 813
    :cond_8
    iget v4, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->footerBarSecondaryButtonDisabledTextColor:I

    .line 808
    :goto_5
    invoke-direct {p0, v2, v3, v4}, Lcom/google/android/setupcompat/template/FooterBarMixin;->updateTextColorForButton(Landroid/widget/Button;ZI)V

    .line 818
    :goto_6
    invoke-virtual {p0}, Lcom/google/android/setupcompat/template/FooterBarMixin;->repopulateButtons()V

    .line 821
    new-instance v4, Lcom/google/android/setupcompat/template/FooterBarMixin$$ExternalSyntheticLambda2;

    invoke-direct {v4, p0, v2}, Lcom/google/android/setupcompat/template/FooterBarMixin$$ExternalSyntheticLambda2;-><init>(Lcom/google/android/setupcompat/template/FooterBarMixin;Landroid/widget/Button;)V

    invoke-virtual {v2, v4}, Landroid/widget/Button;->post(Ljava/lang/Runnable;)Z

    .line 828
    return-void
.end method

.method stackButtonIfTextOverFlow(Landroid/widget/Button;Landroid/widget/Button;FI)Z
    .locals 21
    .param p1, "primaryButton"    # Landroid/widget/Button;
    .param p2, "secondaryButton"    # Landroid/widget/Button;
    .param p3, "maxButtonWidth"    # F
    .param p4, "availableFooterBarWidth"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "primaryButton",
            "secondaryButton",
            "maxButtonWidth",
            "availableFooterBarWidth"
        }
    .end annotation

    .line 1047
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    invoke-virtual {v1}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout$LayoutParams;

    .line 1048
    .local v5, "primaryLayoutParams":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v2}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout$LayoutParams;

    .line 1050
    .local v6, "secondaryLayoutParams":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v1}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1051
    .local v7, "primaryText":Ljava/lang/String;
    new-instance v8, Landroid/graphics/Paint;

    invoke-direct {v8}, Landroid/graphics/Paint;-><init>()V

    .line 1053
    .local v8, "primaryTextPaint":Landroid/graphics/Paint;
    invoke-virtual {v1}, Landroid/widget/Button;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 1054
    invoke-virtual {v1}, Landroid/widget/Button;->getTextSize()F

    move-result v9

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1056
    nop

    .line 1057
    invoke-virtual {v8, v7}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v9

    .line 1058
    invoke-virtual {v1}, Landroid/widget/Button;->getPaddingLeft()I

    move-result v10

    int-to-float v10, v10

    add-float/2addr v9, v10

    .line 1059
    invoke-virtual {v1}, Landroid/widget/Button;->getPaddingRight()I

    move-result v10

    int-to-float v10, v10

    add-float/2addr v9, v10

    .line 1060
    invoke-virtual {v1}, Landroid/widget/Button;->getPaddingStart()I

    move-result v10

    int-to-float v10, v10

    add-float/2addr v9, v10

    .line 1061
    invoke-virtual {v1}, Landroid/widget/Button;->getPaddingEnd()I

    move-result v10

    int-to-float v10, v10

    add-float/2addr v9, v10

    .line 1063
    .local v9, "primaryButtonWidth":F
    cmpl-float v12, v9, v3

    if-lez v12, :cond_0

    const/4 v12, 0x1

    goto :goto_0

    :cond_0
    const/4 v12, 0x0

    .line 1065
    .local v12, "isPrimaryButtonTextOverFlowing":Z
    :goto_0
    sget-object v13, Lcom/google/android/setupcompat/template/FooterBarMixin;->LOG:Lcom/google/android/setupcompat/util/Logger;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "isPrimaryButtonTextOverFlowing= "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", primaryButtonWidth= "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", maxButtonWidth= "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/google/android/setupcompat/util/Logger;->atDebug(Ljava/lang/String;)V

    .line 1073
    invoke-virtual {v2}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v13

    .line 1074
    .local v13, "secondaryText":Ljava/lang/String;
    new-instance v14, Landroid/graphics/Paint;

    invoke-direct {v14}, Landroid/graphics/Paint;-><init>()V

    .line 1076
    .local v14, "secondaryTextPaint":Landroid/graphics/Paint;
    invoke-virtual {v2}, Landroid/widget/Button;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v10

    invoke-virtual {v14, v10}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 1077
    invoke-virtual {v2}, Landroid/widget/Button;->getTextSize()F

    move-result v10

    invoke-virtual {v14, v10}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1078
    nop

    .line 1079
    invoke-virtual {v14, v13}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v10

    .line 1080
    invoke-virtual {v2}, Landroid/widget/Button;->getPaddingLeft()I

    move-result v11

    int-to-float v11, v11

    add-float/2addr v10, v11

    .line 1081
    invoke-virtual {v2}, Landroid/widget/Button;->getPaddingRight()I

    move-result v11

    int-to-float v11, v11

    add-float/2addr v10, v11

    .line 1082
    invoke-virtual {v2}, Landroid/widget/Button;->getPaddingStart()I

    move-result v11

    int-to-float v11, v11

    add-float/2addr v10, v11

    .line 1083
    invoke-virtual {v2}, Landroid/widget/Button;->getPaddingEnd()I

    move-result v11

    int-to-float v11, v11

    add-float/2addr v10, v11

    .line 1085
    .local v10, "secondaryButtonWidth":F
    cmpl-float v11, v10, v3

    if-lez v11, :cond_1

    const/4 v11, 0x1

    goto :goto_1

    :cond_1
    const/4 v11, 0x0

    .line 1087
    .local v11, "isSecondaryButtonTextOverFlowing":Z
    :goto_1
    move-object/from16 v18, v7

    .end local v7    # "primaryText":Ljava/lang/String;
    .local v18, "primaryText":Ljava/lang/String;
    sget-object v7, Lcom/google/android/setupcompat/template/FooterBarMixin;->LOG:Lcom/google/android/setupcompat/util/Logger;

    move-object/from16 v19, v8

    .end local v8    # "primaryTextPaint":Landroid/graphics/Paint;
    .local v19, "primaryTextPaint":Landroid/graphics/Paint;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v20, v9

    .end local v9    # "primaryButtonWidth":F
    .local v20, "primaryButtonWidth":F
    const-string v9, "isSecondaryButtonTextOverFlowing= "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", secondaryButtonWidth= "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/google/android/setupcompat/util/Logger;->atDebug(Ljava/lang/String;)V

    .line 1095
    if-nez v12, :cond_3

    if-eqz v11, :cond_2

    goto :goto_2

    .line 1110
    :cond_2
    iget-object v7, v0, Lcom/google/android/setupcompat/template/FooterBarMixin;->buttonContainer:Landroid/widget/LinearLayout;

    instance-of v8, v7, Lcom/google/android/setupcompat/view/ButtonBarLayout;

    if-eqz v8, :cond_5

    check-cast v7, Lcom/google/android/setupcompat/view/ButtonBarLayout;

    .line 1111
    .local v7, "buttonBarLayout":Lcom/google/android/setupcompat/view/ButtonBarLayout;
    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/google/android/setupcompat/view/ButtonBarLayout;->setStackedButtonForExpressiveStyle(Z)V

    .line 1112
    iput v4, v5, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 1113
    iget v9, v0, Lcom/google/android/setupcompat/template/FooterBarMixin;->footerBarButtonMiddleSpacing:I

    div-int/lit8 v9, v9, 0x2

    invoke-virtual {v5, v9}, Landroid/widget/LinearLayout$LayoutParams;->setMarginStart(I)V

    .line 1114
    iput v8, v5, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 1115
    invoke-virtual {v1, v5}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1117
    iput v4, v6, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 1118
    iget v9, v0, Lcom/google/android/setupcompat/template/FooterBarMixin;->footerBarButtonMiddleSpacing:I

    div-int/lit8 v9, v9, 0x2

    invoke-virtual {v6, v9}, Landroid/widget/LinearLayout$LayoutParams;->setMarginEnd(I)V

    .line 1119
    iput v8, v6, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 1120
    invoke-virtual {v2, v6}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_3

    .line 1096
    .end local v7    # "buttonBarLayout":Lcom/google/android/setupcompat/view/ButtonBarLayout;
    :cond_3
    :goto_2
    iget-object v7, v0, Lcom/google/android/setupcompat/template/FooterBarMixin;->buttonContainer:Landroid/widget/LinearLayout;

    instance-of v8, v7, Lcom/google/android/setupcompat/view/ButtonBarLayout;

    if-eqz v8, :cond_4

    check-cast v7, Lcom/google/android/setupcompat/view/ButtonBarLayout;

    .line 1097
    .restart local v7    # "buttonBarLayout":Lcom/google/android/setupcompat/view/ButtonBarLayout;
    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lcom/google/android/setupcompat/view/ButtonBarLayout;->setStackedButtonForExpressiveStyle(Z)V

    .line 1098
    iget v8, v0, Lcom/google/android/setupcompat/template/FooterBarMixin;->footerBarButtonMiddleSpacing:I

    div-int/lit8 v8, v8, 0x2

    .line 1099
    .local v8, "stackButtonMiddleSpacing":I
    iput v4, v6, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 1100
    iput v8, v6, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 1101
    invoke-virtual {v2, v6}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1103
    iput v4, v5, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 1104
    iput v8, v5, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 1105
    invoke-virtual {v1, v5}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1106
    const/16 v16, 0x1

    return v16

    .end local v7    # "buttonBarLayout":Lcom/google/android/setupcompat/view/ButtonBarLayout;
    .end local v8    # "stackButtonMiddleSpacing":I
    :cond_4
    nop

    .line 1123
    :cond_5
    :goto_3
    const/16 v17, 0x0

    return v17
.end method
