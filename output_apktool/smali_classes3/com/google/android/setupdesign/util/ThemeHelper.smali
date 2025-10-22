.class public final Lcom/google/android/setupdesign/util/ThemeHelper;
.super Ljava/lang/Object;
.source "ThemeHelper.java"


# static fields
.field private static final LOG:Lcom/google/android/setupcompat/util/Logger;

.field public static final THEME_GLIF:Ljava/lang/String; = "glif"

.field public static final THEME_GLIF_EXPRESSIVE:Ljava/lang/String; = "glif_expressive"

.field public static final THEME_GLIF_EXPRESSIVE_LIGHT:Ljava/lang/String; = "glif_expressive_light"

.field public static final THEME_GLIF_LIGHT:Ljava/lang/String; = "glif_light"

.field public static final THEME_GLIF_V2:Ljava/lang/String; = "glif_v2"

.field public static final THEME_GLIF_V2_LIGHT:Ljava/lang/String; = "glif_v2_light"

.field public static final THEME_GLIF_V3:Ljava/lang/String; = "glif_v3"

.field public static final THEME_GLIF_V3_LIGHT:Ljava/lang/String; = "glif_v3_light"

.field public static final THEME_GLIF_V4:Ljava/lang/String; = "glif_v4"

.field public static final THEME_GLIF_V4_LIGHT:Ljava/lang/String; = "glif_v4_light"

.field public static final THEME_HOLO:Ljava/lang/String; = "holo"

.field public static final THEME_HOLO_LIGHT:Ljava/lang/String; = "holo_light"

.field public static final THEME_MATERIAL:Ljava/lang/String; = "material"

.field public static final THEME_MATERIAL_LIGHT:Ljava/lang/String; = "material_light"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 37
    new-instance v0, Lcom/google/android/setupcompat/util/Logger;

    const-string v1, "ThemeHelper"

    invoke-direct {v0, v1}, Lcom/google/android/setupcompat/util/Logger;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/setupdesign/util/ThemeHelper;->LOG:Lcom/google/android/setupcompat/util/Logger;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 384
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static applyTheme(Landroid/app/Activity;)V
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "activity"
        }
    .end annotation

    .line 167
    invoke-static {}, Lcom/google/android/setupdesign/util/ThemeResolver;->getDefault()Lcom/google/android/setupdesign/util/ThemeResolver;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/setupdesign/util/ThemeResolver;->applyTheme(Landroid/app/Activity;)V

    .line 168
    return-void
.end method

.method private static colorIntToHex(Landroid/content/Context;I)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "colorInt"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "colorInt"
        }
    .end annotation

    .line 381
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    const v1, 0xffffff

    and-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const-string v0, "#%06X"

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getDynamicColorTheme(Landroid/content/Context;)I
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 210
    const/4 v0, 0x0

    .line 213
    .local v0, "resId":I
    invoke-static {p0}, Lcom/google/android/setupdesign/util/ThemeHelper;->shouldApplyGlifExpressiveStyle(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 214
    return v0

    .line 219
    :cond_0
    :try_start_0
    invoke-static {p0}, Lcom/google/android/setupcompat/PartnerCustomizationLayout;->lookupActivityFromContext(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 223
    .local v1, "activity":Landroid/app/Activity;
    nop

    .line 225
    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/setupcompat/util/WizardManagerHelper;->isAnySetupWizard(Landroid/content/Intent;)Z

    move-result v2

    .line 226
    .local v2, "isSetupFlow":Z
    invoke-static {p0}, Lcom/google/android/setupdesign/util/ThemeHelper;->isSetupWizardDayNightEnabled(Landroid/content/Context;)Z

    move-result v3

    .line 228
    .local v3, "isDayNightEnabled":Z
    nop

    .line 229
    invoke-static {p0}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->isSetupWizardFullDynamicColorEnabled(Landroid/content/Context;)Z

    move-result v4

    .line 231
    .local v4, "isSUWFullDynamicColorEnabled":Z
    if-eqz v2, :cond_3

    invoke-static {}, Lcom/google/android/setupcompat/util/BuildCompatUtils;->isAtLeastU()Z

    move-result v5

    if-eqz v5, :cond_1

    if-eqz v4, :cond_1

    goto :goto_1

    .line 245
    :cond_1
    if-eqz v3, :cond_2

    .line 246
    sget v5, Lcom/google/android/setupdesign/R$style;->SudDynamicColorTheme_DayNight:I

    goto :goto_0

    .line 247
    :cond_2
    sget v5, Lcom/google/android/setupdesign/R$style;->SudDynamicColorTheme_Light:I

    :goto_0
    nop

    .end local v0    # "resId":I
    .local v5, "resId":I
    goto :goto_4

    .line 234
    .end local v5    # "resId":I
    .restart local v0    # "resId":I
    :cond_3
    :goto_1
    if-eqz v3, :cond_4

    .line 235
    sget v5, Lcom/google/android/setupdesign/R$style;->SudFullDynamicColorTheme_DayNight:I

    goto :goto_2

    .line 236
    :cond_4
    sget v5, Lcom/google/android/setupdesign/R$style;->SudFullDynamicColorTheme_Light:I

    :goto_2
    nop

    .line 237
    .end local v0    # "resId":I
    .restart local v5    # "resId":I
    sget-object v0, Lcom/google/android/setupdesign/util/ThemeHelper;->LOG:Lcom/google/android/setupcompat/util/Logger;

    .line 239
    if-eqz v3, :cond_5

    .line 240
    const-string v6, "SudFullDynamicColorTheme_DayNight"

    goto :goto_3

    .line 241
    :cond_5
    const-string v6, "SudFullDynamicColorTheme_Light"

    :goto_3
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Return "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 237
    invoke-virtual {v0, v6}, Lcom/google/android/setupcompat/util/Logger;->atInfo(Ljava/lang/String;)V

    .line 250
    :goto_4
    sget-object v0, Lcom/google/android/setupdesign/util/ThemeHelper;->LOG:Lcom/google/android/setupcompat/util/Logger;

    sget v6, Lcom/google/android/setupdesign/R$color;->sud_dynamic_color_accent_glif_v3_light:I

    .line 252
    invoke-static {p0, v6}, Lcom/google/android/setupdesign/util/ThemeHelper;->colorIntToHex(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v6

    .line 254
    invoke-static {}, Lcom/google/android/setupcompat/util/BuildCompatUtils;->isAtLeastS()Z

    move-result v7

    const-string v8, "n/a"

    if-eqz v7, :cond_6

    .line 255
    const v7, 0x106003f

    invoke-static {p0, v7}, Lcom/google/android/setupdesign/util/ThemeHelper;->colorIntToHex(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v7

    goto :goto_5

    .line 256
    :cond_6
    move-object v7, v8

    :goto_5
    sget v9, Lcom/google/android/setupdesign/R$color;->sud_dynamic_color_accent_glif_v3_dark:I

    .line 258
    invoke-static {p0, v9}, Lcom/google/android/setupdesign/util/ThemeHelper;->colorIntToHex(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v9

    .line 260
    invoke-static {}, Lcom/google/android/setupcompat/util/BuildCompatUtils;->isAtLeastS()Z

    move-result v10

    if-eqz v10, :cond_7

    .line 261
    const v8, 0x106003a

    invoke-static {p0, v8}, Lcom/google/android/setupdesign/util/ThemeHelper;->colorIntToHex(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v8

    goto :goto_6

    .line 262
    :cond_7
    nop

    :goto_6
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Gets the dynamic accentColor: [Light] "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v10, ", "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", [Dark] "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 250
    invoke-virtual {v0, v6}, Lcom/google/android/setupcompat/util/Logger;->atDebug(Ljava/lang/String;)V

    .line 264
    return v5

    .line 220
    .end local v1    # "activity":Landroid/app/Activity;
    .end local v2    # "isSetupFlow":Z
    .end local v3    # "isDayNightEnabled":Z
    .end local v4    # "isSUWFullDynamicColorEnabled":Z
    .end local v5    # "resId":I
    .restart local v0    # "resId":I
    :catch_0
    move-exception v1

    .line 221
    .local v1, "ex":Ljava/lang/IllegalArgumentException;
    sget-object v2, Lcom/google/android/setupdesign/util/ThemeHelper;->LOG:Lcom/google/android/setupcompat/util/Logger;

    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/google/android/setupcompat/util/Logger;->e(Ljava/lang/String;)V

    .line 222
    return v0
.end method

.method public static getSuwDefaultTheme(Landroid/content/Context;)I
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 270
    invoke-static {p0}, Lcom/google/android/setupdesign/util/ThemeHelper;->isSetupWizardDayNightEnabled(Landroid/content/Context;)Z

    move-result v0

    .line 271
    .local v0, "isDayNightEnabled":Z
    invoke-static {p0}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->getSuwDefaultThemeString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 274
    .local v1, "themeName":Ljava/lang/String;
    invoke-static {p0}, Lcom/google/android/setupdesign/util/ThemeHelper;->shouldApplyGlifExpressiveStyle(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 275
    sget-object v2, Lcom/google/android/setupdesign/util/ThemeHelper;->LOG:Lcom/google/android/setupcompat/util/Logger;

    .line 277
    if-eqz v0, :cond_0

    .line 278
    const-string v3, "SudThemeGlifExpressive_DayNight"

    goto :goto_0

    .line 279
    :cond_0
    const-string v3, "SudThemeGlifExpressive_Light"

    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Return "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 275
    invoke-virtual {v2, v3}, Lcom/google/android/setupcompat/util/Logger;->atInfo(Ljava/lang/String;)V

    .line 280
    if-eqz v0, :cond_1

    .line 281
    sget v2, Lcom/google/android/setupdesign/R$style;->SudThemeGlifExpressive_DayNight:I

    goto :goto_1

    .line 282
    :cond_1
    sget v2, Lcom/google/android/setupdesign/R$style;->SudThemeGlifExpressive_Light:I

    .line 280
    :goto_1
    return v2

    .line 285
    :cond_2
    const-string v2, ""

    .line 286
    .local v2, "themeResToString":Ljava/lang/String;
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1a

    if-ge v3, v4, :cond_5

    .line 287
    if-eqz v0, :cond_3

    sget v3, Lcom/google/android/setupdesign/R$style;->SudThemeGlif_DayNight:I

    goto :goto_2

    :cond_3
    sget v3, Lcom/google/android/setupdesign/R$style;->SudThemeGlif_Light:I

    .line 288
    .local v3, "defaultTheme":I
    :goto_2
    if-eqz v0, :cond_4

    const-string v4, "SudThemeGlif_DayNight"

    goto :goto_3

    :cond_4
    const-string v4, "SudThemeGlif_Light"

    .end local v2    # "themeResToString":Ljava/lang/String;
    .local v4, "themeResToString":Ljava/lang/String;
    :goto_3
    goto :goto_9

    .line 289
    .end local v3    # "defaultTheme":I
    .end local v4    # "themeResToString":Ljava/lang/String;
    .restart local v2    # "themeResToString":Ljava/lang/String;
    :cond_5
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1c

    if-ge v3, v4, :cond_8

    .line 291
    if-eqz v0, :cond_6

    sget v3, Lcom/google/android/setupdesign/R$style;->SudThemeGlifV2_DayNight:I

    goto :goto_4

    :cond_6
    sget v3, Lcom/google/android/setupdesign/R$style;->SudThemeGlifV2_Light:I

    .line 292
    .restart local v3    # "defaultTheme":I
    :goto_4
    if-eqz v0, :cond_7

    const-string v4, "SudThemeGlifV2_DayNight"

    goto :goto_5

    :cond_7
    const-string v4, "SudThemeGlifV2_Light"

    .end local v2    # "themeResToString":Ljava/lang/String;
    .restart local v4    # "themeResToString":Ljava/lang/String;
    :goto_5
    goto :goto_9

    .line 293
    .end local v3    # "defaultTheme":I
    .end local v4    # "themeResToString":Ljava/lang/String;
    .restart local v2    # "themeResToString":Ljava/lang/String;
    :cond_8
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x21

    if-ge v3, v4, :cond_b

    .line 295
    if-eqz v0, :cond_9

    sget v3, Lcom/google/android/setupdesign/R$style;->SudThemeGlifV3_DayNight:I

    goto :goto_6

    :cond_9
    sget v3, Lcom/google/android/setupdesign/R$style;->SudThemeGlifV3_Light:I

    .line 296
    .restart local v3    # "defaultTheme":I
    :goto_6
    if-eqz v0, :cond_a

    const-string v4, "SudThemeGlifV3_DayNight"

    goto :goto_7

    :cond_a
    const-string v4, "SudThemeGlifV3_Light"

    .end local v2    # "themeResToString":Ljava/lang/String;
    .restart local v4    # "themeResToString":Ljava/lang/String;
    :goto_7
    goto :goto_9

    .line 299
    .end local v3    # "defaultTheme":I
    .end local v4    # "themeResToString":Ljava/lang/String;
    .restart local v2    # "themeResToString":Ljava/lang/String;
    :cond_b
    if-eqz v0, :cond_c

    sget v3, Lcom/google/android/setupdesign/R$style;->SudThemeGlifV4_DayNight:I

    goto :goto_8

    :cond_c
    sget v3, Lcom/google/android/setupdesign/R$style;->SudThemeGlifV4_Light:I

    .line 300
    .restart local v3    # "defaultTheme":I
    :goto_8
    if-eqz v0, :cond_d

    const-string v4, "SudThemeGlifV4_DayNight"

    goto :goto_9

    :cond_d
    const-string v4, "SudThemeGlifV4_Light"

    .line 302
    .end local v2    # "themeResToString":Ljava/lang/String;
    .restart local v4    # "themeResToString":Ljava/lang/String;
    :goto_9
    sget-object v2, Lcom/google/android/setupdesign/util/ThemeHelper;->LOG:Lcom/google/android/setupcompat/util/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Default theme: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", return theme: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/google/android/setupcompat/util/Logger;->atInfo(Ljava/lang/String;)V

    .line 304
    new-instance v2, Lcom/google/android/setupdesign/util/ThemeResolver$Builder;

    invoke-direct {v2}, Lcom/google/android/setupdesign/util/ThemeResolver$Builder;-><init>()V

    .line 305
    invoke-virtual {v2, v3}, Lcom/google/android/setupdesign/util/ThemeResolver$Builder;->setDefaultTheme(I)Lcom/google/android/setupdesign/util/ThemeResolver$Builder;

    move-result-object v2

    .line 306
    invoke-static {p0}, Lcom/google/android/setupdesign/util/ThemeHelper;->isSetupWizardDayNightEnabled(Landroid/content/Context;)Z

    move-result v5

    invoke-virtual {v2, v5}, Lcom/google/android/setupdesign/util/ThemeResolver$Builder;->setUseDayNight(Z)Lcom/google/android/setupdesign/util/ThemeResolver$Builder;

    move-result-object v2

    .line 307
    invoke-virtual {v2}, Lcom/google/android/setupdesign/util/ThemeResolver$Builder;->build()Lcom/google/android/setupdesign/util/ThemeResolver;

    move-result-object v2

    .line 308
    invoke-static {p0}, Lcom/google/android/setupdesign/util/ThemeHelper;->isSetupWizardDayNightEnabled(Landroid/content/Context;)Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    invoke-virtual {v2, v1, v5}, Lcom/google/android/setupdesign/util/ThemeResolver;->resolve(Ljava/lang/String;Z)I

    move-result v2

    .line 304
    return v2
.end method

.method public static isLightTheme(Landroid/content/Intent;Z)Z
    .locals 2
    .param p0, "intent"    # Landroid/content/Intent;
    .param p1, "def"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "intent",
            "def"
        }
    .end annotation

    .line 114
    const-string v0, "theme"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 115
    .local v0, "theme":Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/google/android/setupdesign/util/ThemeHelper;->isLightTheme(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public static isLightTheme(Ljava/lang/String;Z)Z
    .locals 1
    .param p0, "theme"    # Ljava/lang/String;
    .param p1, "def"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "theme",
            "def"
        }
    .end annotation

    .line 128
    const-string v0, "holo_light"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 129
    const-string v0, "material_light"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 130
    const-string v0, "glif_light"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 131
    const-string v0, "glif_v2_light"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 132
    const-string v0, "glif_v3_light"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 133
    const-string v0, "glif_v4_light"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 134
    const-string v0, "glif_expressive_light"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 136
    :cond_0
    const-string v0, "holo"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 137
    const-string v0, "material"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 138
    const-string v0, "glif"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 139
    const-string v0, "glif_v2"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 140
    const-string v0, "glif_v3"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 141
    const-string v0, "glif_v4"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 142
    const-string v0, "glif_expressive"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 145
    :cond_1
    return p1

    .line 143
    :cond_2
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 135
    :cond_3
    :goto_1
    const/4 v0, 0x1

    return v0
.end method

.method public static isSetupWizardDayNightEnabled(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 177
    invoke-static {p0}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->isSetupWizardDayNightEnabled(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public static shouldApplyDynamicColor(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 194
    invoke-static {p0}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->isSetupWizardDynamicColorEnabled(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public static shouldApplyExtendedPartnerConfig(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 184
    invoke-static {p0}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->shouldApplyExtendedPartnerConfig(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public static shouldApplyGlifExpressiveStyle(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 199
    invoke-static {p0}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->isGlifExpressiveEnabled(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public static shouldApplyMaterialYouStyle(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 189
    invoke-static {p0}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->shouldApplyMaterialYouStyle(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public static trySetDynamicColor(Landroid/content/Context;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 345
    invoke-static {}, Lcom/google/android/setupcompat/util/BuildCompatUtils;->isAtLeastS()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 346
    sget-object v0, Lcom/google/android/setupdesign/util/ThemeHelper;->LOG:Lcom/google/android/setupcompat/util/Logger;

    const-string v2, "Dynamic color require platform version at least S."

    invoke-virtual {v0, v2}, Lcom/google/android/setupcompat/util/Logger;->w(Ljava/lang/String;)V

    .line 347
    return v1

    .line 351
    :cond_0
    invoke-static {p0}, Lcom/google/android/setupdesign/util/ThemeHelper;->shouldApplyGlifExpressiveStyle(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 352
    sget-object v0, Lcom/google/android/setupdesign/util/ThemeHelper;->LOG:Lcom/google/android/setupcompat/util/Logger;

    const-string v2, "Dynamic color theme isn\'t needed to set in glif expressive theme."

    invoke-virtual {v0, v2}, Lcom/google/android/setupcompat/util/Logger;->w(Ljava/lang/String;)V

    .line 353
    return v1

    .line 356
    :cond_1
    invoke-static {p0}, Lcom/google/android/setupdesign/util/ThemeHelper;->shouldApplyDynamicColor(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 357
    sget-object v0, Lcom/google/android/setupdesign/util/ThemeHelper;->LOG:Lcom/google/android/setupcompat/util/Logger;

    const-string v2, "SetupWizard does not support the dynamic color or supporting status unknown."

    invoke-virtual {v0, v2}, Lcom/google/android/setupcompat/util/Logger;->w(Ljava/lang/String;)V

    .line 358
    return v1

    .line 363
    :cond_2
    :try_start_0
    invoke-static {p0}, Lcom/google/android/setupcompat/PartnerCustomizationLayout;->lookupActivityFromContext(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 367
    .local v0, "activity":Landroid/app/Activity;
    nop

    .line 369
    invoke-static {p0}, Lcom/google/android/setupdesign/util/ThemeHelper;->getDynamicColorTheme(Landroid/content/Context;)I

    move-result v2

    .line 370
    .local v2, "resId":I
    if-eqz v2, :cond_3

    .line 371
    invoke-virtual {v0, v2}, Landroid/app/Activity;->setTheme(I)V

    .line 377
    const/4 v1, 0x1

    return v1

    .line 373
    :cond_3
    sget-object v3, Lcom/google/android/setupdesign/util/ThemeHelper;->LOG:Lcom/google/android/setupcompat/util/Logger;

    const-string v4, "Error occurred on getting dynamic color theme."

    invoke-virtual {v3, v4}, Lcom/google/android/setupcompat/util/Logger;->w(Ljava/lang/String;)V

    .line 374
    return v1

    .line 364
    .end local v0    # "activity":Landroid/app/Activity;
    .end local v2    # "resId":I
    :catch_0
    move-exception v0

    .line 365
    .local v0, "ex":Ljava/lang/IllegalArgumentException;
    sget-object v2, Lcom/google/android/setupdesign/util/ThemeHelper;->LOG:Lcom/google/android/setupcompat/util/Logger;

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/google/android/setupcompat/util/Logger;->e(Ljava/lang/String;)V

    .line 366
    return v1
.end method

.method public static trySetSuwTheme(Landroid/content/Context;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 313
    invoke-static {p0}, Lcom/google/android/setupdesign/util/ThemeHelper;->getSuwDefaultTheme(Landroid/content/Context;)I

    move-result v0

    .line 316
    .local v0, "theme":I
    const/4 v1, 0x0

    :try_start_0
    invoke-static {p0}, Lcom/google/android/setupcompat/PartnerCustomizationLayout;->lookupActivityFromContext(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 320
    .local v2, "activity":Landroid/app/Activity;
    nop

    .line 322
    if-eqz v0, :cond_2

    .line 323
    invoke-virtual {v2, v0}, Landroid/app/Activity;->setTheme(I)V

    .line 329
    invoke-static {}, Lcom/google/android/setupcompat/util/BuildCompatUtils;->isAtLeastS()Z

    move-result v1

    const/4 v3, 0x1

    if-nez v1, :cond_0

    .line 330
    sget-object v1, Lcom/google/android/setupdesign/util/ThemeHelper;->LOG:Lcom/google/android/setupcompat/util/Logger;

    const-string v4, "Skip set theme with dynamic color, it is require platform version at least S."

    invoke-virtual {v1, v4}, Lcom/google/android/setupcompat/util/Logger;->w(Ljava/lang/String;)V

    .line 331
    return v3

    .line 335
    :cond_0
    invoke-static {p0}, Lcom/google/android/setupdesign/util/ThemeHelper;->shouldApplyGlifExpressiveStyle(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 336
    sget-object v1, Lcom/google/android/setupdesign/util/ThemeHelper;->LOG:Lcom/google/android/setupcompat/util/Logger;

    const-string v4, "Skip set theme with dynamic color, due to glif expressive sytle enabled."

    invoke-virtual {v1, v4}, Lcom/google/android/setupcompat/util/Logger;->w(Ljava/lang/String;)V

    .line 337
    return v3

    .line 340
    :cond_1
    invoke-static {p0}, Lcom/google/android/setupdesign/util/ThemeHelper;->trySetDynamicColor(Landroid/content/Context;)Z

    move-result v1

    return v1

    .line 325
    :cond_2
    sget-object v3, Lcom/google/android/setupdesign/util/ThemeHelper;->LOG:Lcom/google/android/setupcompat/util/Logger;

    const-string v4, "Error occurred on getting suw default theme."

    invoke-virtual {v3, v4}, Lcom/google/android/setupcompat/util/Logger;->w(Ljava/lang/String;)V

    .line 326
    return v1

    .line 317
    .end local v2    # "activity":Landroid/app/Activity;
    :catch_0
    move-exception v2

    .line 318
    .local v2, "ex":Ljava/lang/IllegalArgumentException;
    sget-object v3, Lcom/google/android/setupdesign/util/ThemeHelper;->LOG:Lcom/google/android/setupcompat/util/Logger;

    invoke-virtual {v2}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/google/android/setupcompat/util/Logger;->e(Ljava/lang/String;)V

    .line 319
    return v1
.end method
