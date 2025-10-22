.class public Lcom/google/android/setupdesign/template/FloatingBackButtonMixin;
.super Ljava/lang/Object;
.source "FloatingBackButtonMixin.java"

# interfaces
.implements Lcom/google/android/setupcompat/template/Mixin;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/setupdesign/template/FloatingBackButtonMixin$BackButtonListener;
    }
.end annotation


# static fields
.field static final KEY_BACK_BUTTON_ON_CLICK_COUNT:Ljava/lang/String; = "BackButton_onClickCount"

.field private static final TAG:Ljava/lang/String; = "FloatingBackButtonMixin"


# instance fields
.field private backButtonListener:Lcom/google/android/setupdesign/template/FloatingBackButtonMixin$BackButtonListener;

.field private clickCount:I

.field private listener:Landroid/view/View$OnClickListener;

.field private final templateLayout:Lcom/google/android/setupcompat/internal/TemplateLayout;

.field tryInflatingBackButton:Z


# direct methods
.method public static synthetic $r8$lambda$D-EItLxRJ4Xl33FXS22EHYaUZsk(Lcom/google/android/setupdesign/template/FloatingBackButtonMixin;Landroid/view/View$OnClickListener;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/setupdesign/template/FloatingBackButtonMixin;->lambda$setOnClickListener$0(Landroid/view/View$OnClickListener;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/setupcompat/internal/TemplateLayout;Landroid/util/AttributeSet;I)V
    .locals 1
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

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/setupdesign/template/FloatingBackButtonMixin;->tryInflatingBackButton:Z

    .line 53
    iput v0, p0, Lcom/google/android/setupdesign/template/FloatingBackButtonMixin;->clickCount:I

    .line 70
    iput-object p1, p0, Lcom/google/android/setupdesign/template/FloatingBackButtonMixin;->templateLayout:Lcom/google/android/setupcompat/internal/TemplateLayout;

    .line 71
    return-void
.end method

.method private findBackButton()Landroid/widget/Button;
    .locals 3

    .line 147
    iget-object v0, p0, Lcom/google/android/setupdesign/template/FloatingBackButtonMixin;->templateLayout:Lcom/google/android/setupcompat/internal/TemplateLayout;

    sget v1, Lcom/google/android/setupdesign/R$id;->sud_floating_back_button:I

    invoke-virtual {v0, v1}, Lcom/google/android/setupcompat/internal/TemplateLayout;->findManagedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 148
    .local v0, "backbutton":Landroid/widget/Button;
    if-nez v0, :cond_0

    .line 149
    const-string v1, "FloatingBackButtonMixin"

    const-string v2, "Can\'t find the back button."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    :cond_0
    return-object v0
.end method

.method private synthetic lambda$setOnClickListener$0(Landroid/view/View$OnClickListener;Landroid/view/View;)V
    .locals 1
    .param p1, "listener"    # Landroid/view/View$OnClickListener;
    .param p2, "v"    # Landroid/view/View;

    .line 93
    if-eqz p1, :cond_0

    .line 94
    invoke-interface {p1, p2}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 95
    iget v0, p0, Lcom/google/android/setupdesign/template/FloatingBackButtonMixin;->clickCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/setupdesign/template/FloatingBackButtonMixin;->clickCount:I

    .line 98
    :cond_0
    iget-object v0, p0, Lcom/google/android/setupdesign/template/FloatingBackButtonMixin;->backButtonListener:Lcom/google/android/setupdesign/template/FloatingBackButtonMixin$BackButtonListener;

    if-eqz v0, :cond_1

    .line 99
    iget-object v0, p0, Lcom/google/android/setupdesign/template/FloatingBackButtonMixin;->backButtonListener:Lcom/google/android/setupdesign/template/FloatingBackButtonMixin$BackButtonListener;

    invoke-interface {v0}, Lcom/google/android/setupdesign/template/FloatingBackButtonMixin$BackButtonListener;->onBackPressed()V

    .line 101
    :cond_1
    return-void
.end method


# virtual methods
.method getBackButton()Landroid/widget/Button;
    .locals 6

    .line 124
    invoke-direct {p0}, Lcom/google/android/setupdesign/template/FloatingBackButtonMixin;->findBackButton()Landroid/widget/Button;

    move-result-object v0

    .line 125
    .local v0, "button":Landroid/widget/Button;
    if-eqz v0, :cond_0

    .line 126
    return-object v0

    .line 130
    :cond_0
    iget-boolean v1, p0, Lcom/google/android/setupdesign/template/FloatingBackButtonMixin;->tryInflatingBackButton:Z

    if-nez v1, :cond_1

    .line 131
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/setupdesign/template/FloatingBackButtonMixin;->tryInflatingBackButton:Z

    .line 132
    iget-object v1, p0, Lcom/google/android/setupdesign/template/FloatingBackButtonMixin;->templateLayout:Lcom/google/android/setupcompat/internal/TemplateLayout;

    sget v2, Lcom/google/android/setupdesign/R$id;->sud_floating_back_button_stub:I

    .line 133
    invoke-virtual {v1, v2}, Lcom/google/android/setupcompat/internal/TemplateLayout;->findManagedViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewStub;

    .line 134
    .local v1, "buttonViewStub":Landroid/view/ViewStub;
    if-eqz v1, :cond_1

    .line 136
    :try_start_0
    invoke-virtual {p0, v1}, Lcom/google/android/setupdesign/template/FloatingBackButtonMixin;->inflateButton(Landroid/view/ViewStub;)V
    :try_end_0
    .catch Landroid/view/InflateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 140
    goto :goto_0

    .line 137
    :catch_0
    move-exception v2

    .line 138
    .local v2, "e":Landroid/view/InflateException;
    invoke-virtual {v2}, Landroid/view/InflateException;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Incorrect theme:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "FloatingBackButtonMixin"

    invoke-static {v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    const/4 v3, 0x0

    return-object v3

    .line 143
    .end local v1    # "buttonViewStub":Landroid/view/ViewStub;
    .end local v2    # "e":Landroid/view/InflateException;
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/google/android/setupdesign/template/FloatingBackButtonMixin;->findBackButton()Landroid/widget/Button;

    move-result-object v1

    return-object v1
.end method

.method public getBackButtonListener()Lcom/google/android/setupdesign/template/FloatingBackButtonMixin$BackButtonListener;
    .locals 1

    .line 178
    iget-object v0, p0, Lcom/google/android/setupdesign/template/FloatingBackButtonMixin;->backButtonListener:Lcom/google/android/setupdesign/template/FloatingBackButtonMixin$BackButtonListener;

    return-object v0
.end method

.method protected getContainerView()Landroid/widget/FrameLayout;
    .locals 2

    .line 163
    iget-object v0, p0, Lcom/google/android/setupdesign/template/FloatingBackButtonMixin;->templateLayout:Lcom/google/android/setupcompat/internal/TemplateLayout;

    sget v1, Lcom/google/android/setupdesign/R$id;->sud_layout_floating_back_button_container:I

    invoke-virtual {v0, v1}, Lcom/google/android/setupcompat/internal/TemplateLayout;->findManagedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public getMetrics()Landroid/os/PersistableBundle;
    .locals 3

    .line 187
    new-instance v0, Landroid/os/PersistableBundle;

    invoke-direct {v0}, Landroid/os/PersistableBundle;-><init>()V

    .line 188
    .local v0, "bundle":Landroid/os/PersistableBundle;
    const-string v1, "BackButton_onClickCount"

    iget v2, p0, Lcom/google/android/setupdesign/template/FloatingBackButtonMixin;->clickCount:I

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 189
    return-object v0
.end method

.method public getOnClickListener()Landroid/view/View$OnClickListener;
    .locals 1

    .line 174
    iget-object v0, p0, Lcom/google/android/setupdesign/template/FloatingBackButtonMixin;->listener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method public getVisibility()I
    .locals 2

    .line 168
    invoke-virtual {p0}, Lcom/google/android/setupdesign/template/FloatingBackButtonMixin;->getBackButton()Landroid/widget/Button;

    move-result-object v0

    .line 169
    .local v0, "backbutton":Landroid/widget/Button;
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/setupdesign/template/FloatingBackButtonMixin;->getBackButton()Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Button;->getVisibility()I

    move-result v1

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    return v1
.end method

.method inflateButton(Landroid/view/ViewStub;)V
    .locals 1
    .param p1, "viewStub"    # Landroid/view/ViewStub;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "viewStub"
        }
    .end annotation

    .line 156
    iget-object v0, p0, Lcom/google/android/setupdesign/template/FloatingBackButtonMixin;->templateLayout:Lcom/google/android/setupcompat/internal/TemplateLayout;

    invoke-virtual {v0}, Lcom/google/android/setupcompat/internal/TemplateLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 158
    .local v0, "inflater":Landroid/view/LayoutInflater;
    invoke-virtual {p1, v0}, Landroid/view/ViewStub;->setLayoutInflater(Landroid/view/LayoutInflater;)V

    .line 159
    invoke-virtual {p1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 160
    return-void
.end method

.method public setOnBackPressedCallback(Lcom/google/android/setupdesign/template/FloatingBackButtonMixin$BackButtonListener;)V
    .locals 0
    .param p1, "buttonEventListener"    # Lcom/google/android/setupdesign/template/FloatingBackButtonMixin$BackButtonListener;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "buttonEventListener"
        }
    .end annotation

    .line 106
    iput-object p1, p0, Lcom/google/android/setupdesign/template/FloatingBackButtonMixin;->backButtonListener:Lcom/google/android/setupdesign/template/FloatingBackButtonMixin$BackButtonListener;

    .line 107
    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 2
    .param p1, "listener"    # Landroid/view/View$OnClickListener;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    .line 88
    invoke-virtual {p0}, Lcom/google/android/setupdesign/template/FloatingBackButtonMixin;->getBackButton()Landroid/widget/Button;

    move-result-object v0

    .line 89
    .local v0, "backbutton":Landroid/widget/Button;
    if-eqz v0, :cond_0

    .line 90
    iput-object p1, p0, Lcom/google/android/setupdesign/template/FloatingBackButtonMixin;->listener:Landroid/view/View$OnClickListener;

    .line 91
    new-instance v1, Lcom/google/android/setupdesign/template/FloatingBackButtonMixin$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/google/android/setupdesign/template/FloatingBackButtonMixin$$ExternalSyntheticLambda0;-><init>(Lcom/google/android/setupdesign/template/FloatingBackButtonMixin;Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 103
    :cond_0
    return-void
.end method

.method public setVisibility(I)V
    .locals 2
    .param p1, "visibility"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "visibility"
        }
    .end annotation

    .line 79
    invoke-virtual {p0}, Lcom/google/android/setupdesign/template/FloatingBackButtonMixin;->getBackButton()Landroid/widget/Button;

    move-result-object v0

    .line 80
    .local v0, "backbutton":Landroid/widget/Button;
    if-eqz v0, :cond_0

    .line 81
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setVisibility(I)V

    .line 82
    invoke-virtual {p0}, Lcom/google/android/setupdesign/template/FloatingBackButtonMixin;->getContainerView()Landroid/widget/FrameLayout;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 84
    :cond_0
    return-void
.end method

.method public tryApplyPartnerCustomizationStyle()V
    .locals 1

    .line 111
    iget-object v0, p0, Lcom/google/android/setupdesign/template/FloatingBackButtonMixin;->templateLayout:Lcom/google/android/setupcompat/internal/TemplateLayout;

    invoke-static {v0}, Lcom/google/android/setupdesign/util/PartnerStyleHelper;->shouldApplyPartnerResource(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 112
    invoke-virtual {p0}, Lcom/google/android/setupdesign/template/FloatingBackButtonMixin;->getContainerView()Landroid/widget/FrameLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 113
    invoke-virtual {p0}, Lcom/google/android/setupdesign/template/FloatingBackButtonMixin;->getContainerView()Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/setupdesign/util/HeaderAreaStyler;->applyPartnerCustomizationBackButtonStyle(Landroid/widget/FrameLayout;)V

    .line 115
    :cond_0
    return-void
.end method
