.class public Lcom/google/android/setupdesign/template/IllustrationProgressMixin;
.super Ljava/lang/Object;
.source "IllustrationProgressMixin.java"

# interfaces
.implements Lcom/google/android/setupcompat/template/Mixin;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/setupdesign/template/IllustrationProgressMixin$ProgressConfig;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final LOG:Lcom/google/android/setupcompat/util/Logger;


# instance fields
.field private final context:Landroid/content/Context;

.field private final glifLayout:Lcom/google/android/setupdesign/GlifLayout;

.field private progressConfig:Lcom/google/android/setupdesign/template/IllustrationProgressMixin$ProgressConfig;

.field private progressDescription:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 50
    new-instance v0, Lcom/google/android/setupcompat/util/Logger;

    const-class v1, Lcom/google/android/setupdesign/template/IllustrationProgressMixin;

    invoke-direct {v0, v1}, Lcom/google/android/setupcompat/util/Logger;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lcom/google/android/setupdesign/template/IllustrationProgressMixin;->LOG:Lcom/google/android/setupcompat/util/Logger;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/setupdesign/GlifLayout;)V
    .locals 1
    .param p1, "layout"    # Lcom/google/android/setupdesign/GlifLayout;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "layout"
        }
    .end annotation

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    sget-object v0, Lcom/google/android/setupdesign/template/IllustrationProgressMixin$ProgressConfig;->CONFIG_DEFAULT:Lcom/google/android/setupdesign/template/IllustrationProgressMixin$ProgressConfig;

    iput-object v0, p0, Lcom/google/android/setupdesign/template/IllustrationProgressMixin;->progressConfig:Lcom/google/android/setupdesign/template/IllustrationProgressMixin$ProgressConfig;

    .line 59
    iput-object p1, p0, Lcom/google/android/setupdesign/template/IllustrationProgressMixin;->glifLayout:Lcom/google/android/setupdesign/GlifLayout;

    .line 60
    invoke-virtual {p1}, Lcom/google/android/setupdesign/GlifLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/setupdesign/template/IllustrationProgressMixin;->context:Landroid/content/Context;

    .line 61
    return-void
.end method

.method private getProgressIllustrationLayout()Landroid/view/View;
    .locals 3

    .line 137
    invoke-direct {p0}, Lcom/google/android/setupdesign/template/IllustrationProgressMixin;->peekProgressIllustrationLayout()Landroid/view/View;

    move-result-object v0

    .line 138
    .local v0, "progressLayout":Landroid/view/View;
    if-nez v0, :cond_0

    .line 139
    iget-object v1, p0, Lcom/google/android/setupdesign/template/IllustrationProgressMixin;->glifLayout:Lcom/google/android/setupdesign/GlifLayout;

    sget v2, Lcom/google/android/setupdesign/R$id;->sud_layout_illustration_progress_stub:I

    .line 140
    invoke-virtual {v1, v2}, Lcom/google/android/setupdesign/GlifLayout;->findManagedViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewStub;

    .line 142
    .local v1, "viewStub":Landroid/view/ViewStub;
    if-eqz v1, :cond_0

    .line 143
    invoke-virtual {v1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 144
    invoke-direct {p0}, Lcom/google/android/setupdesign/template/IllustrationProgressMixin;->setIllustrationResource()V

    .line 148
    .end local v1    # "viewStub":Landroid/view/ViewStub;
    :cond_0
    invoke-direct {p0}, Lcom/google/android/setupdesign/template/IllustrationProgressMixin;->peekProgressIllustrationLayout()Landroid/view/View;

    move-result-object v1

    return-object v1
.end method

.method private peekProgressIllustrationLayout()Landroid/view/View;
    .locals 2

    .line 172
    iget-object v0, p0, Lcom/google/android/setupdesign/template/IllustrationProgressMixin;->glifLayout:Lcom/google/android/setupdesign/GlifLayout;

    sget v1, Lcom/google/android/setupdesign/R$id;->sud_layout_progress_illustration:I

    invoke-virtual {v0, v1}, Lcom/google/android/setupdesign/GlifLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private setIllustrationResource()V
    .locals 6

    .line 152
    iget-object v0, p0, Lcom/google/android/setupdesign/template/IllustrationProgressMixin;->glifLayout:Lcom/google/android/setupdesign/GlifLayout;

    sget v1, Lcom/google/android/setupdesign/R$id;->sud_progress_illustration:I

    .line 153
    invoke-virtual {v0, v1}, Lcom/google/android/setupdesign/GlifLayout;->findManagedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/setupdesign/view/IllustrationVideoView;

    .line 154
    .local v0, "illustrationVideoView":Lcom/google/android/setupdesign/view/IllustrationVideoView;
    iget-object v1, p0, Lcom/google/android/setupdesign/template/IllustrationProgressMixin;->glifLayout:Lcom/google/android/setupdesign/GlifLayout;

    sget v2, Lcom/google/android/setupdesign/R$id;->sud_progress_bar:I

    invoke-virtual {v1, v2}, Lcom/google/android/setupdesign/GlifLayout;->findManagedViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    .line 156
    .local v1, "progressBar":Landroid/widget/ProgressBar;
    iget-object v2, p0, Lcom/google/android/setupdesign/template/IllustrationProgressMixin;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->get(Landroid/content/Context;)Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;

    move-result-object v2

    .line 157
    .local v2, "partnerConfigHelper":Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;
    iget-object v3, p0, Lcom/google/android/setupdesign/template/IllustrationProgressMixin;->context:Landroid/content/Context;

    iget-object v4, p0, Lcom/google/android/setupdesign/template/IllustrationProgressMixin;->progressConfig:Lcom/google/android/setupdesign/template/IllustrationProgressMixin$ProgressConfig;

    .line 159
    invoke-virtual {v4}, Lcom/google/android/setupdesign/template/IllustrationProgressMixin$ProgressConfig;->getPartnerConfig()Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    move-result-object v4

    .line 158
    invoke-virtual {v2, v3, v4}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->getIllustrationResourceEntry(Landroid/content/Context;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;)Lcom/google/android/setupcompat/partnerconfig/ResourceEntry;

    move-result-object v3

    .line 161
    .local v3, "resourceEntry":Lcom/google/android/setupcompat/partnerconfig/ResourceEntry;
    const/16 v4, 0x8

    const/4 v5, 0x0

    if-eqz v3, :cond_0

    .line 162
    invoke-virtual {v1, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 163
    invoke-virtual {v0, v5}, Lcom/google/android/setupdesign/view/IllustrationVideoView;->setVisibility(I)V

    .line 164
    invoke-virtual {v0, v3}, Lcom/google/android/setupdesign/view/IllustrationVideoView;->setVideoResourceEntry(Lcom/google/android/setupcompat/partnerconfig/ResourceEntry;)V

    goto :goto_0

    .line 166
    :cond_0
    invoke-virtual {v1, v5}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 167
    invoke-virtual {v0, v4}, Lcom/google/android/setupdesign/view/IllustrationVideoView;->setVisibility(I)V

    .line 169
    :goto_0
    return-void
.end method


# virtual methods
.method public isShown()Z
    .locals 2

    .line 95
    invoke-direct {p0}, Lcom/google/android/setupdesign/template/IllustrationProgressMixin;->peekProgressIllustrationLayout()Landroid/view/View;

    move-result-object v0

    .line 96
    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public setProgressConfig(Lcom/google/android/setupdesign/template/IllustrationProgressMixin$ProgressConfig;)V
    .locals 1
    .param p1, "config"    # Lcom/google/android/setupdesign/template/IllustrationProgressMixin$ProgressConfig;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "config"
        }
    .end annotation

    .line 105
    iput-object p1, p0, Lcom/google/android/setupdesign/template/IllustrationProgressMixin;->progressConfig:Lcom/google/android/setupdesign/template/IllustrationProgressMixin$ProgressConfig;

    .line 109
    invoke-direct {p0}, Lcom/google/android/setupdesign/template/IllustrationProgressMixin;->peekProgressIllustrationLayout()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 110
    invoke-direct {p0}, Lcom/google/android/setupdesign/template/IllustrationProgressMixin;->setIllustrationResource()V

    .line 112
    :cond_0
    return-void
.end method

.method public setProgressIllustrationDescription(Ljava/lang/String;)V
    .locals 3
    .param p1, "description"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "description"
        }
    .end annotation

    .line 119
    iput-object p1, p0, Lcom/google/android/setupdesign/template/IllustrationProgressMixin;->progressDescription:Ljava/lang/String;

    .line 121
    invoke-virtual {p0}, Lcom/google/android/setupdesign/template/IllustrationProgressMixin;->isShown()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 122
    invoke-direct {p0}, Lcom/google/android/setupdesign/template/IllustrationProgressMixin;->getProgressIllustrationLayout()Landroid/view/View;

    move-result-object v0

    .line 123
    .local v0, "progressLayout":Landroid/view/View;
    if-eqz v0, :cond_1

    .line 124
    sget v1, Lcom/google/android/setupdesign/R$id;->sud_layout_description:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 125
    .local v1, "descriptionView":Landroid/widget/TextView;
    if-eqz p1, :cond_0

    .line 126
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 127
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 129
    :cond_0
    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 130
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 134
    .end local v0    # "progressLayout":Landroid/view/View;
    .end local v1    # "descriptionView":Landroid/widget/TextView;
    :cond_1
    :goto_0
    return-void
.end method

.method public setShown(Z)V
    .locals 3
    .param p1, "shown"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "shown"
        }
    .end annotation

    .line 71
    sget-object v0, Lcom/google/android/setupdesign/template/IllustrationProgressMixin;->LOG:Lcom/google/android/setupcompat/util/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setShown("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/setupcompat/util/Logger;->atInfo(Ljava/lang/String;)V

    .line 72
    if-nez p1, :cond_1

    .line 73
    invoke-direct {p0}, Lcom/google/android/setupdesign/template/IllustrationProgressMixin;->peekProgressIllustrationLayout()Landroid/view/View;

    move-result-object v0

    .line 74
    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 75
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 77
    .end local v0    # "view":Landroid/view/View;
    :cond_0
    goto :goto_0

    .line 78
    :cond_1
    invoke-direct {p0}, Lcom/google/android/setupdesign/template/IllustrationProgressMixin;->getProgressIllustrationLayout()Landroid/view/View;

    move-result-object v0

    .line 79
    .restart local v0    # "view":Landroid/view/View;
    if-eqz v0, :cond_2

    .line 80
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 82
    iget-object v2, p0, Lcom/google/android/setupdesign/template/IllustrationProgressMixin;->progressDescription:Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 83
    sget v2, Lcom/google/android/setupdesign/R$id;->sud_layout_description:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 84
    .local v2, "descriptionView":Landroid/widget/TextView;
    if-eqz v2, :cond_2

    .line 85
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 86
    iget-object v1, p0, Lcom/google/android/setupdesign/template/IllustrationProgressMixin;->progressDescription:Ljava/lang/String;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 91
    .end local v0    # "view":Landroid/view/View;
    .end local v2    # "descriptionView":Landroid/widget/TextView;
    :cond_2
    :goto_0
    return-void
.end method
