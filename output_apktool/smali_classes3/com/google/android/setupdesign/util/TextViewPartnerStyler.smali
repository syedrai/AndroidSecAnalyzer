.class final Lcom/google/android/setupdesign/util/TextViewPartnerStyler;
.super Ljava/lang/Object;
.source "TextViewPartnerStyler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/setupdesign/util/TextViewPartnerStyler$TextPartnerConfigs;
    }
.end annotation


# static fields
.field private static final FONT_WEIGHT_NORMAL:I = 0x190

.field private static final TAG:Ljava/lang/String; = "TextViewPartnerStyler"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 318
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static applyPartnerCustomizationLightStyle(Landroid/widget/TextView;Lcom/google/android/setupdesign/util/TextViewPartnerStyler$TextPartnerConfigs;)V
    .locals 1
    .param p0, "textView"    # Landroid/widget/TextView;
    .param p1, "textPartnerConfigs"    # Lcom/google/android/setupdesign/util/TextViewPartnerStyler$TextPartnerConfigs;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "textView",
            "textPartnerConfigs"
        }
    .end annotation

    .line 175
    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 179
    :cond_0
    invoke-static {p0, p1}, Lcom/google/android/setupdesign/util/TextViewPartnerStyler;->applyPartnerCustomizationVerticalMargins(Landroid/widget/TextView;Lcom/google/android/setupdesign/util/TextViewPartnerStyler$TextPartnerConfigs;)V

    .line 180
    invoke-virtual {p1}, Lcom/google/android/setupdesign/util/TextViewPartnerStyler$TextPartnerConfigs;->getTextGravity()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setGravity(I)V

    .line 181
    return-void

    .line 176
    :cond_1
    :goto_0
    return-void
.end method

.method public static applyPartnerCustomizationStyle(Landroid/widget/TextView;Lcom/google/android/setupdesign/util/TextViewPartnerStyler$TextPartnerConfigs;)V
    .locals 10
    .param p0, "textView"    # Landroid/widget/TextView;
    .param p1, "textPartnerConfigs"    # Lcom/google/android/setupdesign/util/TextViewPartnerStyler$TextPartnerConfigs;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "textView",
            "textPartnerConfigs"
        }
    .end annotation

    .line 49
    if-eqz p0, :cond_b

    if-nez p1, :cond_0

    goto/16 :goto_2

    .line 53
    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 54
    .local v0, "context":Landroid/content/Context;
    invoke-virtual {p1}, Lcom/google/android/setupdesign/util/TextViewPartnerStyler$TextPartnerConfigs;->getTextColorConfig()Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 55
    invoke-static {v0}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->get(Landroid/content/Context;)Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;

    move-result-object v1

    .line 56
    invoke-virtual {p1}, Lcom/google/android/setupdesign/util/TextViewPartnerStyler$TextPartnerConfigs;->getTextColorConfig()Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->isPartnerConfigAvailable(Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 57
    nop

    .line 58
    invoke-static {v0}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->get(Landroid/content/Context;)Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;

    move-result-object v1

    .line 59
    invoke-virtual {p1}, Lcom/google/android/setupdesign/util/TextViewPartnerStyler$TextPartnerConfigs;->getTextColorConfig()Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->getColor(Landroid/content/Context;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;)I

    move-result v1

    .line 60
    .local v1, "textColor":I
    if-eqz v1, :cond_1

    .line 61
    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 65
    .end local v1    # "textColor":I
    :cond_1
    invoke-virtual {p1}, Lcom/google/android/setupdesign/util/TextViewPartnerStyler$TextPartnerConfigs;->getTextLinkedColorConfig()Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 66
    invoke-static {v0}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->get(Landroid/content/Context;)Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;

    move-result-object v1

    .line 67
    invoke-virtual {p1}, Lcom/google/android/setupdesign/util/TextViewPartnerStyler$TextPartnerConfigs;->getTextLinkedColorConfig()Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->isPartnerConfigAvailable(Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 68
    invoke-static {p0}, Lcom/google/android/setupdesign/util/PartnerStyleHelper;->useDynamicColor(Landroid/view/View;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 69
    nop

    .line 70
    invoke-static {v0}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->get(Landroid/content/Context;)Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;

    move-result-object v1

    .line 71
    invoke-virtual {p1}, Lcom/google/android/setupdesign/util/TextViewPartnerStyler$TextPartnerConfigs;->getTextLinkedColorConfig()Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->getColor(Landroid/content/Context;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;)I

    move-result v1

    .line 72
    .local v1, "linkTextColor":I
    if-eqz v1, :cond_2

    .line 73
    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setLinkTextColor(I)V

    .line 77
    .end local v1    # "linkTextColor":I
    :cond_2
    invoke-virtual {p1}, Lcom/google/android/setupdesign/util/TextViewPartnerStyler$TextPartnerConfigs;->getTextSizeConfig()Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    .line 78
    invoke-static {v0}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->get(Landroid/content/Context;)Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;

    move-result-object v1

    .line 79
    invoke-virtual {p1}, Lcom/google/android/setupdesign/util/TextViewPartnerStyler$TextPartnerConfigs;->getTextSizeConfig()Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->isPartnerConfigAvailable(Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 80
    nop

    .line 81
    invoke-static {v0}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->get(Landroid/content/Context;)Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;

    move-result-object v1

    .line 82
    invoke-virtual {p1}, Lcom/google/android/setupdesign/util/TextViewPartnerStyler$TextPartnerConfigs;->getTextSizeConfig()Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v0, v3, v4}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->getDimension(Landroid/content/Context;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;F)F

    move-result v1

    .line 83
    .local v1, "textSize":F
    cmpl-float v3, v1, v4

    if-lez v3, :cond_3

    .line 84
    invoke-virtual {p0, v2, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 88
    .end local v1    # "textSize":F
    :cond_3
    const/4 v1, 0x0

    .line 89
    .local v1, "fontVariationSettings":Ljava/lang/String;
    const/4 v3, 0x0

    .line 90
    .local v3, "isFontVariationSettingsEnabled":Z
    invoke-virtual {p1}, Lcom/google/android/setupdesign/util/TextViewPartnerStyler$TextPartnerConfigs;->getTextFontVariationSettingsConfig()Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 91
    invoke-static {v0}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->get(Landroid/content/Context;)Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;

    move-result-object v4

    .line 92
    invoke-virtual {p1}, Lcom/google/android/setupdesign/util/TextViewPartnerStyler$TextPartnerConfigs;->getTextFontVariationSettingsConfig()Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->isPartnerConfigAvailable(Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 93
    nop

    .line 94
    invoke-static {v0}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->get(Landroid/content/Context;)Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;

    move-result-object v4

    .line 95
    invoke-virtual {p1}, Lcom/google/android/setupdesign/util/TextViewPartnerStyler$TextPartnerConfigs;->getTextFontVariationSettingsConfig()Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    move-result-object v5

    invoke-virtual {v4, v0, v5}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->getString(Landroid/content/Context;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;)Ljava/lang/String;

    move-result-object v1

    .line 96
    invoke-static {v1}, Lcom/google/android/setupdesign/util/TextViewPartnerStyler;->isFontVariationSupported(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 97
    const/4 v3, 0x1

    .line 101
    :cond_4
    const/4 v4, 0x0

    .line 104
    .local v4, "fontFamily":Landroid/graphics/Typeface;
    invoke-virtual {p1}, Lcom/google/android/setupdesign/util/TextViewPartnerStyler$TextPartnerConfigs;->getTextFontFamilyConfig()Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    move-result-object v5

    if-eqz v5, :cond_5

    .line 105
    invoke-static {v0}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->get(Landroid/content/Context;)Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;

    move-result-object v5

    .line 106
    invoke-virtual {p1}, Lcom/google/android/setupdesign/util/TextViewPartnerStyler$TextPartnerConfigs;->getTextFontFamilyConfig()Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->isPartnerConfigAvailable(Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;)Z

    move-result v5

    if-eqz v5, :cond_5

    if-nez v3, :cond_5

    .line 108
    nop

    .line 109
    invoke-static {v0}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->get(Landroid/content/Context;)Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;

    move-result-object v5

    .line 110
    invoke-virtual {p1}, Lcom/google/android/setupdesign/util/TextViewPartnerStyler$TextPartnerConfigs;->getTextFontFamilyConfig()Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    move-result-object v6

    invoke-virtual {v5, v0, v6}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->getString(Landroid/content/Context;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;)Ljava/lang/String;

    move-result-object v5

    .line 111
    .local v5, "fontFamilyName":Ljava/lang/String;
    invoke-static {v5, v2}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v4

    .line 117
    .end local v5    # "fontFamilyName":Ljava/lang/String;
    :cond_5
    invoke-static {v0}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->isFontWeightEnabled(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 118
    invoke-virtual {p1}, Lcom/google/android/setupdesign/util/TextViewPartnerStyler$TextPartnerConfigs;->getTextFontWeightConfig()Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    move-result-object v5

    if-eqz v5, :cond_7

    .line 119
    invoke-static {v0}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->get(Landroid/content/Context;)Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;

    move-result-object v5

    .line 120
    invoke-virtual {p1}, Lcom/google/android/setupdesign/util/TextViewPartnerStyler$TextPartnerConfigs;->getTextFontWeightConfig()Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->isPartnerConfigAvailable(Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;)Z

    move-result v5

    if-eqz v5, :cond_7

    if-nez v3, :cond_7

    .line 122
    nop

    .line 123
    invoke-static {v0}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->get(Landroid/content/Context;)Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;

    move-result-object v5

    .line 125
    invoke-virtual {p1}, Lcom/google/android/setupdesign/util/TextViewPartnerStyler$TextPartnerConfigs;->getTextFontWeightConfig()Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    move-result-object v6

    .line 124
    const/16 v7, 0x190

    invoke-virtual {v5, v0, v6, v7}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->getInteger(Landroid/content/Context;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;I)I

    move-result v5

    .line 126
    .local v5, "weight":I
    if-nez v4, :cond_6

    .line 127
    invoke-virtual {p0}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v4

    .line 129
    :cond_6
    invoke-static {v4, v5, v2}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;IZ)Landroid/graphics/Typeface;

    move-result-object v5

    .line 130
    .local v5, "font":Landroid/graphics/Typeface;
    goto :goto_0

    .line 131
    .end local v5    # "font":Landroid/graphics/Typeface;
    :cond_7
    move-object v5, v4

    .line 134
    .restart local v5    # "font":Landroid/graphics/Typeface;
    :goto_0
    if-eqz v5, :cond_8

    .line 135
    invoke-virtual {p0, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 138
    :cond_8
    if-eqz p0, :cond_9

    invoke-static {v1}, Lcom/google/android/setupdesign/util/TextViewPartnerStyler;->isFontVariationSupported(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 140
    :try_start_0
    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setFontVariationSettings(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 143
    goto :goto_1

    .line 141
    :catch_0
    move-exception v6

    .line 142
    .local v6, "ex":Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failed to set font variation settings: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "TextViewPartnerStyler"

    invoke-static {v8, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    .end local v6    # "ex":Ljava/lang/Exception;
    :cond_9
    :goto_1
    instance-of v6, p0, Lcom/google/android/setupdesign/view/RichTextView;

    if-eqz v6, :cond_a

    invoke-virtual {p1}, Lcom/google/android/setupdesign/util/TextViewPartnerStyler$TextPartnerConfigs;->getLinkTextFontFamilyConfig()Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    move-result-object v6

    if-eqz v6, :cond_a

    .line 147
    invoke-static {v0}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->get(Landroid/content/Context;)Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;

    move-result-object v6

    .line 148
    invoke-virtual {p1}, Lcom/google/android/setupdesign/util/TextViewPartnerStyler$TextPartnerConfigs;->getLinkTextFontFamilyConfig()Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->isPartnerConfigAvailable(Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 149
    nop

    .line 150
    invoke-static {v0}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->get(Landroid/content/Context;)Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;

    move-result-object v6

    .line 151
    invoke-virtual {p1}, Lcom/google/android/setupdesign/util/TextViewPartnerStyler$TextPartnerConfigs;->getLinkTextFontFamilyConfig()Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    move-result-object v7

    invoke-virtual {v6, v0, v7}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->getString(Landroid/content/Context;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;)Ljava/lang/String;

    move-result-object v6

    .line 152
    .local v6, "linkFontFamilyName":Ljava/lang/String;
    invoke-static {v6, v2}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v2

    .line 153
    .local v2, "linkFont":Landroid/graphics/Typeface;
    if-eqz v2, :cond_a

    .line 154
    move-object v7, p0

    check-cast v7, Lcom/google/android/setupdesign/view/RichTextView;

    invoke-virtual {v7, v2}, Lcom/google/android/setupdesign/view/RichTextView;->setSpanTypeface(Landroid/graphics/Typeface;)V

    .line 158
    .end local v2    # "linkFont":Landroid/graphics/Typeface;
    .end local v6    # "linkFontFamilyName":Ljava/lang/String;
    :cond_a
    invoke-static {p0, p1}, Lcom/google/android/setupdesign/util/TextViewPartnerStyler;->applyPartnerCustomizationVerticalMargins(Landroid/widget/TextView;Lcom/google/android/setupdesign/util/TextViewPartnerStyler$TextPartnerConfigs;)V

    .line 159
    invoke-virtual {p1}, Lcom/google/android/setupdesign/util/TextViewPartnerStyler$TextPartnerConfigs;->getTextGravity()I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 160
    return-void

    .line 50
    .end local v0    # "context":Landroid/content/Context;
    .end local v1    # "fontVariationSettings":Ljava/lang/String;
    .end local v3    # "isFontVariationSettingsEnabled":Z
    .end local v4    # "fontFamily":Landroid/graphics/Typeface;
    .end local v5    # "font":Landroid/graphics/Typeface;
    :cond_b
    :goto_2
    return-void
.end method

.method private static applyPartnerCustomizationVerticalMargins(Landroid/widget/TextView;Lcom/google/android/setupdesign/util/TextViewPartnerStyler$TextPartnerConfigs;)V
    .locals 7
    .param p0, "textView"    # Landroid/widget/TextView;
    .param p1, "textPartnerConfigs"    # Lcom/google/android/setupdesign/util/TextViewPartnerStyler$TextPartnerConfigs;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "textView",
            "textPartnerConfigs"
        }
    .end annotation

    .line 185
    invoke-virtual {p1}, Lcom/google/android/setupdesign/util/TextViewPartnerStyler$TextPartnerConfigs;->getTextMarginTop()Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    move-result-object v0

    if-nez v0, :cond_0

    .line 186
    invoke-virtual {p1}, Lcom/google/android/setupdesign/util/TextViewPartnerStyler$TextPartnerConfigs;->getTextMarginBottom()Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 187
    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 190
    .local v0, "context":Landroid/content/Context;
    invoke-virtual {p0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 191
    .local v1, "lp":Landroid/view/ViewGroup$LayoutParams;
    instance-of v2, v1, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v2, :cond_3

    .line 192
    move-object v2, v1

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 193
    .local v2, "mlp":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {p1}, Lcom/google/android/setupdesign/util/TextViewPartnerStyler$TextPartnerConfigs;->getTextMarginTop()Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 194
    invoke-static {v0}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->get(Landroid/content/Context;)Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;

    move-result-object v3

    .line 195
    invoke-virtual {p1}, Lcom/google/android/setupdesign/util/TextViewPartnerStyler$TextPartnerConfigs;->getTextMarginTop()Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->isPartnerConfigAvailable(Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 196
    nop

    .line 198
    invoke-static {v0}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->get(Landroid/content/Context;)Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;

    move-result-object v3

    .line 199
    invoke-virtual {p1}, Lcom/google/android/setupdesign/util/TextViewPartnerStyler$TextPartnerConfigs;->getTextMarginTop()Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->getDimension(Landroid/content/Context;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;)F

    move-result v3

    float-to-int v3, v3

    .local v3, "topMargin":I
    goto :goto_0

    .line 201
    .end local v3    # "topMargin":I
    :cond_1
    iget v3, v2, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 204
    .restart local v3    # "topMargin":I
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/setupdesign/util/TextViewPartnerStyler$TextPartnerConfigs;->getTextMarginBottom()Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 205
    invoke-static {v0}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->get(Landroid/content/Context;)Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;

    move-result-object v4

    .line 206
    invoke-virtual {p1}, Lcom/google/android/setupdesign/util/TextViewPartnerStyler$TextPartnerConfigs;->getTextMarginBottom()Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->isPartnerConfigAvailable(Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 207
    nop

    .line 209
    invoke-static {v0}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->get(Landroid/content/Context;)Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;

    move-result-object v4

    .line 210
    invoke-virtual {p1}, Lcom/google/android/setupdesign/util/TextViewPartnerStyler$TextPartnerConfigs;->getTextMarginBottom()Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    move-result-object v5

    invoke-virtual {v4, v0, v5}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->getDimension(Landroid/content/Context;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;)F

    move-result v4

    float-to-int v4, v4

    .local v4, "bottomMargin":I
    goto :goto_1

    .line 212
    .end local v4    # "bottomMargin":I
    :cond_2
    iget v4, v2, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 214
    .restart local v4    # "bottomMargin":I
    :goto_1
    iget v5, v2, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    iget v6, v2, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    invoke-virtual {v2, v5, v3, v6, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 215
    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 218
    .end local v0    # "context":Landroid/content/Context;
    .end local v1    # "lp":Landroid/view/ViewGroup$LayoutParams;
    .end local v2    # "mlp":Landroid/widget/LinearLayout$LayoutParams;
    .end local v3    # "topMargin":I
    .end local v4    # "bottomMargin":I
    :cond_3
    return-void
.end method

.method private static isFontVariationSupported(Ljava/lang/String;)Z
    .locals 1
    .param p0, "fontVariationSettings"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "fontVariationSettings"
        }
    .end annotation

    .line 163
    if-eqz p0, :cond_0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
