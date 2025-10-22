.class public Lcom/google/android/setupdesign/template/RequireScrollMixin;
.super Ljava/lang/Object;
.source "RequireScrollMixin.java"

# interfaces
.implements Lcom/google/android/setupcompat/template/Mixin;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/setupdesign/template/RequireScrollMixin$ScrollHandlingDelegate;,
        Lcom/google/android/setupdesign/template/RequireScrollMixin$OnRequireScrollStateChangedListener;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "RequireScrollMixin"


# instance fields
.field private delegate:Lcom/google/android/setupdesign/template/RequireScrollMixin$ScrollHandlingDelegate;

.field private everScrolledToBottom:Z

.field private final handler:Landroid/os/Handler;

.field private listener:Lcom/google/android/setupdesign/template/RequireScrollMixin$OnRequireScrollStateChangedListener;

.field private requiringScrollToBottom:Z

.field private final templateLayout:Lcom/google/android/setupcompat/internal/TemplateLayout;


# direct methods
.method public static synthetic $r8$lambda$_Xxxsb3EbNhY0KzfG4bMUBKCZqY(Lcom/google/android/setupdesign/template/RequireScrollMixin;Landroid/content/Context;Landroid/widget/Button;Lcom/google/android/setupcompat/template/FooterBarMixin;Landroid/widget/LinearLayout;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)V
    .locals 0

    invoke-direct/range {p0 .. p7}, Lcom/google/android/setupdesign/template/RequireScrollMixin;->lambda$requireScrollWithDownButton$0(Landroid/content/Context;Landroid/widget/Button;Lcom/google/android/setupcompat/template/FooterBarMixin;Landroid/widget/LinearLayout;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetdelegate(Lcom/google/android/setupdesign/template/RequireScrollMixin;)Lcom/google/android/setupdesign/template/RequireScrollMixin$ScrollHandlingDelegate;
    .locals 0

    iget-object p0, p0, Lcom/google/android/setupdesign/template/RequireScrollMixin;->delegate:Lcom/google/android/setupdesign/template/RequireScrollMixin$ScrollHandlingDelegate;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetlistener(Lcom/google/android/setupdesign/template/RequireScrollMixin;)Lcom/google/android/setupdesign/template/RequireScrollMixin$OnRequireScrollStateChangedListener;
    .locals 0

    iget-object p0, p0, Lcom/google/android/setupdesign/template/RequireScrollMixin;->listener:Lcom/google/android/setupdesign/template/RequireScrollMixin$OnRequireScrollStateChangedListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetrequiringScrollToBottom(Lcom/google/android/setupdesign/template/RequireScrollMixin;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/setupdesign/template/RequireScrollMixin;->requiringScrollToBottom:Z

    return p0
.end method

.method public constructor <init>(Lcom/google/android/setupcompat/internal/TemplateLayout;)V
    .locals 2
    .param p1, "templateLayout"    # Lcom/google/android/setupcompat/internal/TemplateLayout;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "templateLayout"
        }
    .end annotation

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/google/android/setupdesign/template/RequireScrollMixin;->handler:Landroid/os/Handler;

    .line 86
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/setupdesign/template/RequireScrollMixin;->requiringScrollToBottom:Z

    .line 89
    iput-boolean v0, p0, Lcom/google/android/setupdesign/template/RequireScrollMixin;->everScrolledToBottom:Z

    .line 101
    iput-object p1, p0, Lcom/google/android/setupdesign/template/RequireScrollMixin;->templateLayout:Lcom/google/android/setupcompat/internal/TemplateLayout;

    .line 102
    return-void
.end method

.method private synthetic lambda$requireScrollWithDownButton$0(Landroid/content/Context;Landroid/widget/Button;Lcom/google/android/setupcompat/template/FooterBarMixin;Landroid/widget/LinearLayout;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "primaryButtonView"    # Landroid/widget/Button;
    .param p3, "footerBarMixin"    # Lcom/google/android/setupcompat/template/FooterBarMixin;
    .param p4, "footerContainer"    # Landroid/widget/LinearLayout;
    .param p5, "nextText"    # Ljava/lang/CharSequence;
    .param p6, "contentDescription"    # Ljava/lang/CharSequence;
    .param p7, "scrollNeeded"    # Z

    .line 361
    if-eqz p7, :cond_0

    .line 362
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/setupdesign/template/RequireScrollMixin;->generateGlifExpressiveDownButton(Landroid/content/Context;Landroid/widget/Button;Lcom/google/android/setupcompat/template/FooterBarMixin;)V

    .line 363
    iget-object v0, p0, Lcom/google/android/setupdesign/template/RequireScrollMixin;->templateLayout:Lcom/google/android/setupcompat/internal/TemplateLayout;

    check-cast v0, Lcom/google/android/setupdesign/GlifLayout;

    .line 364
    invoke-virtual {v0}, Lcom/google/android/setupdesign/GlifLayout;->getFooterBackgroundColorFromStyle()I

    move-result v0

    .line 363
    invoke-virtual {p4, v0}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    goto :goto_0

    .line 367
    :cond_0
    instance-of v0, p2, Lcom/google/android/material/button/MaterialButton;

    if-eqz v0, :cond_2

    move-object v0, p2

    check-cast v0, Lcom/google/android/material/button/MaterialButton;

    .line 370
    .local v0, "materialButton":Lcom/google/android/material/button/MaterialButton;
    invoke-virtual {p3}, Lcom/google/android/setupcompat/template/FooterBarMixin;->getPrimaryButton()Lcom/google/android/setupcompat/template/FooterButton;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/google/android/setupcompat/template/FooterButton;->setVisibility(I)V

    .line 371
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/material/button/MaterialButton;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 372
    invoke-virtual {p3}, Lcom/google/android/setupcompat/template/FooterBarMixin;->getPrimaryButton()Lcom/google/android/setupcompat/template/FooterButton;

    move-result-object v1

    invoke-virtual {v1, p5}, Lcom/google/android/setupcompat/template/FooterButton;->setText(Ljava/lang/CharSequence;)V

    .line 373
    invoke-virtual {p3}, Lcom/google/android/setupcompat/template/FooterBarMixin;->getPrimaryButton()Lcom/google/android/setupcompat/template/FooterButton;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/android/setupcompat/template/FooterButton;->setVisibility(I)V

    .line 375
    invoke-virtual {p3}, Lcom/google/android/setupcompat/template/FooterBarMixin;->getSecondaryButton()Lcom/google/android/setupcompat/template/FooterButton;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 376
    invoke-virtual {p3}, Lcom/google/android/setupcompat/template/FooterBarMixin;->getSecondaryButton()Lcom/google/android/setupcompat/template/FooterButton;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/google/android/setupcompat/template/FooterButton;->setVisibility(I)V

    .line 378
    :cond_1
    invoke-virtual {p2, p6}, Landroid/widget/Button;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 379
    invoke-virtual {p4, v2}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    goto :goto_0

    .line 381
    .end local v0    # "materialButton":Lcom/google/android/material/button/MaterialButton;
    :cond_2
    const-string v0, "RequireScrollMixin"

    const-string v1, "Cannot clean up icon for the button. Skipping set text."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    :goto_0
    return-void
.end method

.method private postScrollStateChange(Z)V
    .locals 2
    .param p1, "scrollNeeded"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "scrollNeeded"
        }
    .end annotation

    .line 455
    iget-object v0, p0, Lcom/google/android/setupdesign/template/RequireScrollMixin;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/setupdesign/template/RequireScrollMixin$6;

    invoke-direct {v1, p0, p1}, Lcom/google/android/setupdesign/template/RequireScrollMixin$6;-><init>(Lcom/google/android/setupdesign/template/RequireScrollMixin;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 464
    return-void
.end method


# virtual methods
.method public createOnClickListener(Landroid/view/View$OnClickListener;)Landroid/view/View$OnClickListener;
    .locals 1
    .param p1, "listener"    # Landroid/view/View$OnClickListener;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "listener"
        }
    .end annotation

    .line 139
    new-instance v0, Lcom/google/android/setupdesign/template/RequireScrollMixin$1;

    invoke-direct {v0, p0, p1}, Lcom/google/android/setupdesign/template/RequireScrollMixin$1;-><init>(Lcom/google/android/setupdesign/template/RequireScrollMixin;Landroid/view/View$OnClickListener;)V

    return-object v0
.end method

.method public generateGlifExpressiveDownButton(Landroid/content/Context;Landroid/widget/Button;Lcom/google/android/setupcompat/template/FooterBarMixin;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "button"    # Landroid/widget/Button;
    .param p3, "footerBarMixin"    # Lcom/google/android/setupcompat/template/FooterBarMixin;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "button",
            "footerBarMixin"
        }
    .end annotation

    .line 392
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/google/android/setupdesign/R$drawable;->sud_ic_down_arrow:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 393
    .local v0, "icon":Landroid/graphics/drawable/Drawable;
    instance-of v1, p2, Lcom/google/android/material/button/MaterialButton;

    if-eqz v1, :cond_0

    move-object v1, p2

    check-cast v1, Lcom/google/android/material/button/MaterialButton;

    .line 395
    .local v1, "materialButton":Lcom/google/android/material/button/MaterialButton;
    const-string v2, ""

    invoke-virtual {v1, v2}, Lcom/google/android/material/button/MaterialButton;->setText(Ljava/lang/CharSequence;)V

    .line 396
    invoke-virtual {v1, v0}, Lcom/google/android/material/button/MaterialButton;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 397
    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/google/android/material/button/MaterialButton;->setIconGravity(I)V

    .line 398
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/android/material/button/MaterialButton;->setIconPadding(I)V

    .line 399
    nop

    .line 401
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/google/android/setupdesign/R$dimen;->sud_glif_expressive_down_button_icon_size:I

    .line 402
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 399
    invoke-virtual {v1, v2}, Lcom/google/android/material/button/MaterialButton;->setIconSize(I)V

    .line 403
    sget v2, Lcom/google/android/setupdesign/strings/R$string;->sud_expressive_accessibility_more_button_label:I

    .line 404
    invoke-virtual {p1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 403
    invoke-virtual {v1, v2}, Lcom/google/android/material/button/MaterialButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 407
    invoke-virtual {p3}, Lcom/google/android/setupcompat/template/FooterBarMixin;->setDownButtonForExpressiveStyle()V

    goto :goto_0

    .line 409
    .end local v1    # "materialButton":Lcom/google/android/material/button/MaterialButton;
    :cond_0
    const-string v1, "RequireScrollMixin"

    const-string v2, "Cannot set icon for the button. Skipping clean up text."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    :goto_0
    return-void
.end method

.method public getOnRequireScrollStateChangedListener()Lcom/google/android/setupdesign/template/RequireScrollMixin$OnRequireScrollStateChangedListener;
    .locals 1

    .line 124
    iget-object v0, p0, Lcom/google/android/setupdesign/template/RequireScrollMixin;->listener:Lcom/google/android/setupdesign/template/RequireScrollMixin$OnRequireScrollStateChangedListener;

    return-object v0
.end method

.method public isScrollingRequired()Z
    .locals 1

    .line 419
    iget-boolean v0, p0, Lcom/google/android/setupdesign/template/RequireScrollMixin;->requiringScrollToBottom:Z

    return v0
.end method

.method notifyScrollabilityChange(Z)V
    .locals 2
    .param p1, "canScrollDown"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "canScrollDown"
        }
    .end annotation

    .line 438
    iget-boolean v0, p0, Lcom/google/android/setupdesign/template/RequireScrollMixin;->requiringScrollToBottom:Z

    if-ne p1, v0, :cond_0

    .line 440
    return-void

    .line 442
    :cond_0
    const/4 v0, 0x1

    if-eqz p1, :cond_1

    .line 443
    iget-boolean v1, p0, Lcom/google/android/setupdesign/template/RequireScrollMixin;->everScrolledToBottom:Z

    if-nez v1, :cond_2

    .line 444
    invoke-direct {p0, v0}, Lcom/google/android/setupdesign/template/RequireScrollMixin;->postScrollStateChange(Z)V

    .line 445
    iput-boolean v0, p0, Lcom/google/android/setupdesign/template/RequireScrollMixin;->requiringScrollToBottom:Z

    goto :goto_0

    .line 448
    :cond_1
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/google/android/setupdesign/template/RequireScrollMixin;->postScrollStateChange(Z)V

    .line 449
    iput-boolean v1, p0, Lcom/google/android/setupdesign/template/RequireScrollMixin;->requiringScrollToBottom:Z

    .line 450
    iput-boolean v0, p0, Lcom/google/android/setupdesign/template/RequireScrollMixin;->everScrolledToBottom:Z

    .line 452
    :cond_2
    :goto_0
    return-void
.end method

.method public requireScroll()V
    .locals 1

    .line 428
    iget-object v0, p0, Lcom/google/android/setupdesign/template/RequireScrollMixin;->delegate:Lcom/google/android/setupdesign/template/RequireScrollMixin$ScrollHandlingDelegate;

    invoke-interface {v0}, Lcom/google/android/setupdesign/template/RequireScrollMixin$ScrollHandlingDelegate;->startListening()V

    .line 429
    return-void
.end method

.method public requireScrollWithButton(Landroid/content/Context;Lcom/google/android/setupcompat/template/FooterButton;ILandroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "button"    # Lcom/google/android/setupcompat/template/FooterButton;
    .param p3, "moreText"    # I
    .param p4, "onClickListener"    # Landroid/view/View$OnClickListener;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "button",
            "moreText",
            "onClickListener"
        }
    .end annotation

    .line 229
    invoke-virtual {p1, p3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, p2, v0, p4}, Lcom/google/android/setupdesign/template/RequireScrollMixin;->requireScrollWithButton(Lcom/google/android/setupcompat/template/FooterButton;Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)V

    .line 230
    return-void
.end method

.method public requireScrollWithButton(Landroid/content/Context;Lcom/google/android/setupcompat/template/FooterButton;Lcom/google/android/setupcompat/template/FooterButton;ILandroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "primaryButton"    # Lcom/google/android/setupcompat/template/FooterButton;
    .param p3, "secondaryButton"    # Lcom/google/android/setupcompat/template/FooterButton;
    .param p4, "moreText"    # I
    .param p5, "onClickListener"    # Landroid/view/View$OnClickListener;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "primaryButton",
            "secondaryButton",
            "moreText",
            "onClickListener"
        }
    .end annotation

    .line 299
    nop

    .line 300
    invoke-virtual {p1, p4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 299
    invoke-virtual {p0, p2, p3, v0, p5}, Lcom/google/android/setupdesign/template/RequireScrollMixin;->requireScrollWithButton(Lcom/google/android/setupcompat/template/FooterButton;Lcom/google/android/setupcompat/template/FooterButton;Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)V

    .line 301
    return-void
.end method

.method public requireScrollWithButton(Landroid/widget/Button;ILandroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "button"    # Landroid/widget/Button;
    .param p2, "moreText"    # I
    .param p3, "onClickListener"    # Landroid/view/View$OnClickListener;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "button",
            "moreText",
            "onClickListener"
        }
    .end annotation

    .line 171
    invoke-virtual {p1}, Landroid/widget/Button;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p3}, Lcom/google/android/setupdesign/template/RequireScrollMixin;->requireScrollWithButton(Landroid/widget/Button;Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)V

    .line 172
    return-void
.end method

.method public requireScrollWithButton(Landroid/widget/Button;Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)V
    .locals 2
    .param p1, "button"    # Landroid/widget/Button;
    .param p2, "moreText"    # Ljava/lang/CharSequence;
    .param p3, "onClickListener"    # Landroid/view/View$OnClickListener;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x0
        }
        names = {
            "button",
            "moreText",
            "onClickListener"
        }
    .end annotation

    .line 195
    invoke-virtual {p1}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 196
    .local v0, "nextText":Ljava/lang/CharSequence;
    invoke-virtual {p0, p3}, Lcom/google/android/setupdesign/template/RequireScrollMixin;->createOnClickListener(Landroid/view/View$OnClickListener;)Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 197
    new-instance v1, Lcom/google/android/setupdesign/template/RequireScrollMixin$3;

    invoke-direct {v1, p0, p1, p2, v0}, Lcom/google/android/setupdesign/template/RequireScrollMixin$3;-><init>(Lcom/google/android/setupdesign/template/RequireScrollMixin;Landroid/widget/Button;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    invoke-virtual {p0, v1}, Lcom/google/android/setupdesign/template/RequireScrollMixin;->setOnRequireScrollStateChangedListener(Lcom/google/android/setupdesign/template/RequireScrollMixin$OnRequireScrollStateChangedListener;)V

    .line 204
    invoke-virtual {p0}, Lcom/google/android/setupdesign/template/RequireScrollMixin;->requireScroll()V

    .line 205
    return-void
.end method

.method public requireScrollWithButton(Lcom/google/android/setupcompat/template/FooterButton;Lcom/google/android/setupcompat/template/FooterButton;Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)V
    .locals 8
    .param p1, "primaryButton"    # Lcom/google/android/setupcompat/template/FooterButton;
    .param p2, "secondaryButton"    # Lcom/google/android/setupcompat/template/FooterButton;
    .param p3, "moreText"    # Ljava/lang/CharSequence;
    .param p4, "onClickListener"    # Landroid/view/View$OnClickListener;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x0
        }
        names = {
            "primaryButton",
            "secondaryButton",
            "moreText",
            "onClickListener"
        }
    .end annotation

    .line 330
    iget-object v0, p0, Lcom/google/android/setupdesign/template/RequireScrollMixin;->templateLayout:Lcom/google/android/setupcompat/internal/TemplateLayout;

    invoke-virtual {v0}, Lcom/google/android/setupcompat/internal/TemplateLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 331
    .local v0, "context":Landroid/content/Context;
    invoke-static {v0}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->isGlifExpressiveEnabled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 332
    invoke-virtual {p0, v0, p4}, Lcom/google/android/setupdesign/template/RequireScrollMixin;->requireScrollWithDownButton(Landroid/content/Context;Landroid/view/View$OnClickListener;)V

    move-object v3, p0

    move-object v4, p1

    move-object v7, p2

    move-object v5, p3

    goto :goto_0

    .line 334
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/setupcompat/template/FooterButton;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    .line 335
    .local v6, "nextText":Ljava/lang/CharSequence;
    invoke-virtual {p0, p4}, Lcom/google/android/setupdesign/template/RequireScrollMixin;->createOnClickListener(Landroid/view/View$OnClickListener;)Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/google/android/setupcompat/template/FooterButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 336
    new-instance v2, Lcom/google/android/setupdesign/template/RequireScrollMixin$5;

    move-object v3, p0

    move-object v4, p1

    move-object v7, p2

    move-object v5, p3

    .end local p1    # "primaryButton":Lcom/google/android/setupcompat/template/FooterButton;
    .end local p2    # "secondaryButton":Lcom/google/android/setupcompat/template/FooterButton;
    .end local p3    # "moreText":Ljava/lang/CharSequence;
    .local v4, "primaryButton":Lcom/google/android/setupcompat/template/FooterButton;
    .local v5, "moreText":Ljava/lang/CharSequence;
    .local v7, "secondaryButton":Lcom/google/android/setupcompat/template/FooterButton;
    invoke-direct/range {v2 .. v7}, Lcom/google/android/setupdesign/template/RequireScrollMixin$5;-><init>(Lcom/google/android/setupdesign/template/RequireScrollMixin;Lcom/google/android/setupcompat/template/FooterButton;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lcom/google/android/setupcompat/template/FooterButton;)V

    invoke-virtual {p0, v2}, Lcom/google/android/setupdesign/template/RequireScrollMixin;->setOnRequireScrollStateChangedListener(Lcom/google/android/setupdesign/template/RequireScrollMixin$OnRequireScrollStateChangedListener;)V

    .line 344
    invoke-virtual {p0}, Lcom/google/android/setupdesign/template/RequireScrollMixin;->requireScroll()V

    .line 346
    .end local v6    # "nextText":Ljava/lang/CharSequence;
    :goto_0
    return-void
.end method

.method public requireScrollWithButton(Lcom/google/android/setupcompat/template/FooterButton;Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)V
    .locals 3
    .param p1, "button"    # Lcom/google/android/setupcompat/template/FooterButton;
    .param p2, "moreText"    # Ljava/lang/CharSequence;
    .param p3, "onClickListener"    # Landroid/view/View$OnClickListener;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x0
        }
        names = {
            "button",
            "moreText",
            "onClickListener"
        }
    .end annotation

    .line 253
    iget-object v0, p0, Lcom/google/android/setupdesign/template/RequireScrollMixin;->templateLayout:Lcom/google/android/setupcompat/internal/TemplateLayout;

    invoke-virtual {v0}, Lcom/google/android/setupcompat/internal/TemplateLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 254
    .local v0, "context":Landroid/content/Context;
    invoke-static {v0}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->isGlifExpressiveEnabled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 255
    invoke-virtual {p0, v0, p3}, Lcom/google/android/setupdesign/template/RequireScrollMixin;->requireScrollWithDownButton(Landroid/content/Context;Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 257
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/setupcompat/template/FooterButton;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    .line 258
    .local v1, "nextText":Ljava/lang/CharSequence;
    invoke-virtual {p0, p3}, Lcom/google/android/setupdesign/template/RequireScrollMixin;->createOnClickListener(Landroid/view/View$OnClickListener;)Landroid/view/View$OnClickListener;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/google/android/setupcompat/template/FooterButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 259
    new-instance v2, Lcom/google/android/setupdesign/template/RequireScrollMixin$4;

    invoke-direct {v2, p0, p1, p2, v1}, Lcom/google/android/setupdesign/template/RequireScrollMixin$4;-><init>(Lcom/google/android/setupdesign/template/RequireScrollMixin;Lcom/google/android/setupcompat/template/FooterButton;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    invoke-virtual {p0, v2}, Lcom/google/android/setupdesign/template/RequireScrollMixin;->setOnRequireScrollStateChangedListener(Lcom/google/android/setupdesign/template/RequireScrollMixin$OnRequireScrollStateChangedListener;)V

    .line 266
    invoke-virtual {p0}, Lcom/google/android/setupdesign/template/RequireScrollMixin;->requireScroll()V

    .line 268
    .end local v1    # "nextText":Ljava/lang/CharSequence;
    :goto_0
    return-void
.end method

.method public requireScrollWithDownButton(Landroid/content/Context;Landroid/view/View$OnClickListener;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "onClickListener"    # Landroid/view/View$OnClickListener;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "onClickListener"
        }
    .end annotation

    .line 350
    iget-object v0, p0, Lcom/google/android/setupdesign/template/RequireScrollMixin;->templateLayout:Lcom/google/android/setupcompat/internal/TemplateLayout;

    const-class v1, Lcom/google/android/setupcompat/template/FooterBarMixin;

    invoke-virtual {v0, v1}, Lcom/google/android/setupcompat/internal/TemplateLayout;->getMixin(Ljava/lang/Class;)Lcom/google/android/setupcompat/template/Mixin;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/google/android/setupcompat/template/FooterBarMixin;

    .line 351
    .local v5, "footerBarMixin":Lcom/google/android/setupcompat/template/FooterBarMixin;
    invoke-virtual {v5}, Lcom/google/android/setupcompat/template/FooterBarMixin;->getPrimaryButtonView()Landroid/widget/Button;

    move-result-object v4

    .line 352
    .local v4, "primaryButtonView":Landroid/widget/Button;
    invoke-virtual {v4}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    .line 353
    .local v7, "nextText":Ljava/lang/CharSequence;
    const/4 v0, 0x4

    invoke-virtual {v4, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 354
    invoke-virtual {p0, p2}, Lcom/google/android/setupdesign/template/RequireScrollMixin;->createOnClickListener(Landroid/view/View$OnClickListener;)Landroid/view/View$OnClickListener;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 355
    invoke-virtual {v5}, Lcom/google/android/setupcompat/template/FooterBarMixin;->setButtonWidthForExpressiveStyle()V

    .line 356
    invoke-virtual {v5}, Lcom/google/android/setupcompat/template/FooterBarMixin;->getButtonContainer()Landroid/widget/LinearLayout;

    move-result-object v6

    .line 357
    .local v6, "footerContainer":Landroid/widget/LinearLayout;
    invoke-virtual {v4}, Landroid/widget/Button;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v8

    .line 359
    .local v8, "contentDescription":Ljava/lang/CharSequence;
    new-instance v1, Lcom/google/android/setupdesign/template/RequireScrollMixin$$ExternalSyntheticLambda0;

    move-object v2, p0

    move-object v3, p1

    .end local p1    # "context":Landroid/content/Context;
    .local v3, "context":Landroid/content/Context;
    invoke-direct/range {v1 .. v8}, Lcom/google/android/setupdesign/template/RequireScrollMixin$$ExternalSyntheticLambda0;-><init>(Lcom/google/android/setupdesign/template/RequireScrollMixin;Landroid/content/Context;Landroid/widget/Button;Lcom/google/android/setupcompat/template/FooterBarMixin;Landroid/widget/LinearLayout;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    invoke-virtual {p0, v1}, Lcom/google/android/setupdesign/template/RequireScrollMixin;->setOnRequireScrollStateChangedListener(Lcom/google/android/setupdesign/template/RequireScrollMixin$OnRequireScrollStateChangedListener;)V

    .line 385
    const/4 p1, 0x0

    invoke-virtual {v4, p1}, Landroid/widget/Button;->setVisibility(I)V

    .line 386
    invoke-virtual {p0}, Lcom/google/android/setupdesign/template/RequireScrollMixin;->requireScroll()V

    .line 387
    return-void
.end method

.method public requireScrollWithNavigationBar(Lcom/google/android/setupdesign/view/NavigationBar;)V
    .locals 2
    .param p1, "navigationBar"    # Lcom/google/android/setupdesign/view/NavigationBar;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "navigationBar"
        }
    .end annotation

    .line 156
    new-instance v0, Lcom/google/android/setupdesign/template/RequireScrollMixin$2;

    invoke-direct {v0, p0, p1}, Lcom/google/android/setupdesign/template/RequireScrollMixin$2;-><init>(Lcom/google/android/setupdesign/template/RequireScrollMixin;Lcom/google/android/setupdesign/view/NavigationBar;)V

    invoke-virtual {p0, v0}, Lcom/google/android/setupdesign/template/RequireScrollMixin;->setOnRequireScrollStateChangedListener(Lcom/google/android/setupdesign/template/RequireScrollMixin$OnRequireScrollStateChangedListener;)V

    .line 164
    invoke-virtual {p1}, Lcom/google/android/setupdesign/view/NavigationBar;->getMoreButton()Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/google/android/setupdesign/template/RequireScrollMixin;->createOnClickListener(Landroid/view/View$OnClickListener;)Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 165
    invoke-virtual {p0}, Lcom/google/android/setupdesign/template/RequireScrollMixin;->requireScroll()V

    .line 166
    return-void
.end method

.method public setOnRequireScrollStateChangedListener(Lcom/google/android/setupdesign/template/RequireScrollMixin$OnRequireScrollStateChangedListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/google/android/setupdesign/template/RequireScrollMixin$OnRequireScrollStateChangedListener;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    .line 119
    iput-object p1, p0, Lcom/google/android/setupdesign/template/RequireScrollMixin;->listener:Lcom/google/android/setupdesign/template/RequireScrollMixin$OnRequireScrollStateChangedListener;

    .line 120
    return-void
.end method

.method public setScrollHandlingDelegate(Lcom/google/android/setupdesign/template/RequireScrollMixin$ScrollHandlingDelegate;)V
    .locals 0
    .param p1, "delegate"    # Lcom/google/android/setupdesign/template/RequireScrollMixin$ScrollHandlingDelegate;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "delegate"
        }
    .end annotation

    .line 109
    iput-object p1, p0, Lcom/google/android/setupdesign/template/RequireScrollMixin;->delegate:Lcom/google/android/setupdesign/template/RequireScrollMixin$ScrollHandlingDelegate;

    .line 110
    return-void
.end method
