.class public final Lcom/afwsamples/testdpc/common/ThemeUtil;
.super Ljava/lang/Object;
.source "ThemeUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static setTheme(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "themeName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "themeName"
        }
    .end annotation

    .line 19
    sget v0, Lcom/afwsamples/testdpc/common/Util;->SDK_INT:I

    const/16 v1, 0x21

    if-ge v0, v1, :cond_1

    .line 21
    invoke-static {p0}, Lcom/google/android/setupdesign/util/ThemeHelper;->isSetupWizardDayNightEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 22
    sget v0, Lcom/afwsamples/testdpc/R$style;->SudThemeGlifV3_DayNight:I

    goto :goto_0

    .line 23
    :cond_0
    sget v0, Lcom/afwsamples/testdpc/R$style;->SudThemeGlifV3_Light:I

    :goto_0
    nop

    .local v0, "defaultTheme":I
    goto :goto_2

    .line 26
    .end local v0    # "defaultTheme":I
    :cond_1
    invoke-static {p0}, Lcom/google/android/setupdesign/util/ThemeHelper;->isSetupWizardDayNightEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 27
    sget v0, Lcom/afwsamples/testdpc/R$style;->SudThemeGlifV4_DayNight:I

    goto :goto_1

    .line 28
    :cond_2
    sget v0, Lcom/afwsamples/testdpc/R$style;->SudThemeGlifV4_Light:I

    :goto_1
    nop

    .line 32
    .restart local v0    # "defaultTheme":I
    :goto_2
    new-instance v1, Lcom/google/android/setupdesign/util/ThemeResolver$Builder;

    .line 33
    invoke-static {}, Lcom/google/android/setupdesign/util/ThemeResolver;->getDefault()Lcom/google/android/setupdesign/util/ThemeResolver;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/android/setupdesign/util/ThemeResolver$Builder;-><init>(Lcom/google/android/setupdesign/util/ThemeResolver;)V

    .line 34
    invoke-virtual {v1, v0}, Lcom/google/android/setupdesign/util/ThemeResolver$Builder;->setDefaultTheme(I)Lcom/google/android/setupdesign/util/ThemeResolver$Builder;

    move-result-object v1

    .line 35
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/google/android/setupdesign/util/ThemeResolver$Builder;->setUseDayNight(Z)Lcom/google/android/setupdesign/util/ThemeResolver$Builder;

    move-result-object v1

    .line 36
    invoke-virtual {v1}, Lcom/google/android/setupdesign/util/ThemeResolver$Builder;->build()Lcom/google/android/setupdesign/util/ThemeResolver;

    move-result-object v1

    .line 40
    .local v1, "THEME_RESOLVER":Lcom/google/android/setupdesign/util/ThemeResolver;
    nop

    .line 41
    invoke-static {p0}, Lcom/google/android/setupdesign/util/ThemeHelper;->isSetupWizardDayNightEnabled(Landroid/content/Context;)Z

    move-result v3

    xor-int/2addr v2, v3

    invoke-virtual {v1, p1, v2}, Lcom/google/android/setupdesign/util/ThemeResolver;->resolve(Ljava/lang/String;Z)I

    move-result v2

    .line 44
    .local v2, "themeResId":I
    invoke-virtual {p0, v2}, Landroid/content/Context;->setTheme(I)V

    .line 47
    invoke-static {p0}, Lcom/google/android/setupdesign/util/ThemeHelper;->trySetDynamicColor(Landroid/content/Context;)Z

    .line 48
    return-void
.end method
