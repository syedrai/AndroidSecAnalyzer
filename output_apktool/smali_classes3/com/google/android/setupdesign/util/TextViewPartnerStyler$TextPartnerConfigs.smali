.class public Lcom/google/android/setupdesign/util/TextViewPartnerStyler$TextPartnerConfigs;
.super Ljava/lang/Object;
.source "TextViewPartnerStyler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/setupdesign/util/TextViewPartnerStyler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TextPartnerConfigs"
.end annotation


# instance fields
.field private final textColorConfig:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

.field private final textFontFamilyConfig:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

.field private textFontVariationSettingsConfig:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

.field private final textFontWeightConfig:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

.field private final textGravity:I

.field private final textLinkFontFamilyConfig:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

.field private final textLinkedColorConfig:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

.field private final textMarginBottomConfig:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

.field private final textMarginTopConfig:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

.field private final textSizeConfig:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;


# direct methods
.method public constructor <init>(Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;I)V
    .locals 1
    .param p1, "textColorConfig"    # Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;
    .param p2, "textLinkedColorConfig"    # Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;
    .param p3, "textSizeConfig"    # Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;
    .param p4, "textFontFamilyConfig"    # Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;
    .param p5, "textFontWeightConfig"    # Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;
    .param p6, "textLinkFontFamilyConfig"    # Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;
    .param p7, "textMarginTopConfig"    # Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;
    .param p8, "textMarginBottomConfig"    # Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;
    .param p9, "textGravity"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "textColorConfig",
            "textLinkedColorConfig",
            "textSizeConfig",
            "textFontFamilyConfig",
            "textFontWeightConfig",
            "textLinkFontFamilyConfig",
            "textMarginTopConfig",
            "textMarginBottomConfig",
            "textGravity"
        }
    .end annotation

    .line 242
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 230
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/setupdesign/util/TextViewPartnerStyler$TextPartnerConfigs;->textFontVariationSettingsConfig:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    .line 243
    iput-object p1, p0, Lcom/google/android/setupdesign/util/TextViewPartnerStyler$TextPartnerConfigs;->textColorConfig:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    .line 244
    iput-object p2, p0, Lcom/google/android/setupdesign/util/TextViewPartnerStyler$TextPartnerConfigs;->textLinkedColorConfig:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    .line 245
    iput-object p3, p0, Lcom/google/android/setupdesign/util/TextViewPartnerStyler$TextPartnerConfigs;->textSizeConfig:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    .line 246
    iput-object p4, p0, Lcom/google/android/setupdesign/util/TextViewPartnerStyler$TextPartnerConfigs;->textFontFamilyConfig:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    .line 247
    iput-object p5, p0, Lcom/google/android/setupdesign/util/TextViewPartnerStyler$TextPartnerConfigs;->textFontWeightConfig:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    .line 248
    iput-object p6, p0, Lcom/google/android/setupdesign/util/TextViewPartnerStyler$TextPartnerConfigs;->textLinkFontFamilyConfig:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    .line 249
    iput-object p7, p0, Lcom/google/android/setupdesign/util/TextViewPartnerStyler$TextPartnerConfigs;->textMarginTopConfig:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    .line 250
    iput-object p8, p0, Lcom/google/android/setupdesign/util/TextViewPartnerStyler$TextPartnerConfigs;->textMarginBottomConfig:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    .line 251
    iput p9, p0, Lcom/google/android/setupdesign/util/TextViewPartnerStyler$TextPartnerConfigs;->textGravity:I

    .line 252
    return-void
.end method

.method public constructor <init>(Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;I)V
    .locals 1
    .param p1, "textColorConfig"    # Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;
    .param p2, "textLinkedColorConfig"    # Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;
    .param p3, "textSizeConfig"    # Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;
    .param p4, "textFontFamilyConfig"    # Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;
    .param p5, "textFontWeightConfig"    # Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;
    .param p6, "textLinkFontFamilyConfig"    # Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;
    .param p7, "textMarginTopConfig"    # Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;
    .param p8, "textMarginBottomConfig"    # Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;
    .param p9, "textFontVariationSettingsConfig"    # Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;
    .param p10, "textGravity"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "textColorConfig",
            "textLinkedColorConfig",
            "textSizeConfig",
            "textFontFamilyConfig",
            "textFontWeightConfig",
            "textLinkFontFamilyConfig",
            "textMarginTopConfig",
            "textMarginBottomConfig",
            "textFontVariationSettingsConfig",
            "textGravity"
        }
    .end annotation

    .line 264
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 230
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/setupdesign/util/TextViewPartnerStyler$TextPartnerConfigs;->textFontVariationSettingsConfig:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    .line 265
    iput-object p1, p0, Lcom/google/android/setupdesign/util/TextViewPartnerStyler$TextPartnerConfigs;->textColorConfig:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    .line 266
    iput-object p2, p0, Lcom/google/android/setupdesign/util/TextViewPartnerStyler$TextPartnerConfigs;->textLinkedColorConfig:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    .line 267
    iput-object p3, p0, Lcom/google/android/setupdesign/util/TextViewPartnerStyler$TextPartnerConfigs;->textSizeConfig:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    .line 268
    iput-object p4, p0, Lcom/google/android/setupdesign/util/TextViewPartnerStyler$TextPartnerConfigs;->textFontFamilyConfig:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    .line 269
    iput-object p5, p0, Lcom/google/android/setupdesign/util/TextViewPartnerStyler$TextPartnerConfigs;->textFontWeightConfig:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    .line 270
    iput-object p6, p0, Lcom/google/android/setupdesign/util/TextViewPartnerStyler$TextPartnerConfigs;->textLinkFontFamilyConfig:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    .line 271
    iput-object p7, p0, Lcom/google/android/setupdesign/util/TextViewPartnerStyler$TextPartnerConfigs;->textMarginTopConfig:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    .line 272
    iput-object p8, p0, Lcom/google/android/setupdesign/util/TextViewPartnerStyler$TextPartnerConfigs;->textMarginBottomConfig:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    .line 273
    iput-object p9, p0, Lcom/google/android/setupdesign/util/TextViewPartnerStyler$TextPartnerConfigs;->textFontVariationSettingsConfig:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    .line 274
    iput p10, p0, Lcom/google/android/setupdesign/util/TextViewPartnerStyler$TextPartnerConfigs;->textGravity:I

    .line 275
    return-void
.end method


# virtual methods
.method public getLinkTextFontFamilyConfig()Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;
    .locals 1

    .line 298
    iget-object v0, p0, Lcom/google/android/setupdesign/util/TextViewPartnerStyler$TextPartnerConfigs;->textLinkFontFamilyConfig:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    return-object v0
.end method

.method public getTextColorConfig()Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;
    .locals 1

    .line 278
    iget-object v0, p0, Lcom/google/android/setupdesign/util/TextViewPartnerStyler$TextPartnerConfigs;->textColorConfig:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    return-object v0
.end method

.method public getTextFontFamilyConfig()Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;
    .locals 1

    .line 290
    iget-object v0, p0, Lcom/google/android/setupdesign/util/TextViewPartnerStyler$TextPartnerConfigs;->textFontFamilyConfig:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    return-object v0
.end method

.method public getTextFontVariationSettingsConfig()Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;
    .locals 1

    .line 310
    iget-object v0, p0, Lcom/google/android/setupdesign/util/TextViewPartnerStyler$TextPartnerConfigs;->textFontVariationSettingsConfig:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    return-object v0
.end method

.method public getTextFontWeightConfig()Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;
    .locals 1

    .line 294
    iget-object v0, p0, Lcom/google/android/setupdesign/util/TextViewPartnerStyler$TextPartnerConfigs;->textFontWeightConfig:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    return-object v0
.end method

.method public getTextGravity()I
    .locals 1

    .line 314
    iget v0, p0, Lcom/google/android/setupdesign/util/TextViewPartnerStyler$TextPartnerConfigs;->textGravity:I

    return v0
.end method

.method public getTextLinkedColorConfig()Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;
    .locals 1

    .line 282
    iget-object v0, p0, Lcom/google/android/setupdesign/util/TextViewPartnerStyler$TextPartnerConfigs;->textLinkedColorConfig:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    return-object v0
.end method

.method public getTextMarginBottom()Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;
    .locals 1

    .line 306
    iget-object v0, p0, Lcom/google/android/setupdesign/util/TextViewPartnerStyler$TextPartnerConfigs;->textMarginBottomConfig:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    return-object v0
.end method

.method public getTextMarginTop()Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;
    .locals 1

    .line 302
    iget-object v0, p0, Lcom/google/android/setupdesign/util/TextViewPartnerStyler$TextPartnerConfigs;->textMarginTopConfig:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    return-object v0
.end method

.method public getTextSizeConfig()Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;
    .locals 1

    .line 286
    iget-object v0, p0, Lcom/google/android/setupdesign/util/TextViewPartnerStyler$TextPartnerConfigs;->textSizeConfig:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    return-object v0
.end method
