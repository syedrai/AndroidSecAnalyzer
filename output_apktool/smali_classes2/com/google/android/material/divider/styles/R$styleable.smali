.class public final Lcom/google/android/material/divider/styles/R$styleable;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/divider/styles/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static final FlowLayout:[I

.field public static final FlowLayout_horizontalItemSpacing:I = 0x0

.field public static final FlowLayout_lineSpacing:I = 0x1

.field public static final ForegroundLinearLayout:[I

.field public static final ForegroundLinearLayout_android_foreground:I = 0x0

.field public static final ForegroundLinearLayout_android_foregroundGravity:I = 0x1

.field public static final ForegroundLinearLayout_foregroundInsidePadding:I = 0x2

.field public static final Insets:[I

.field public static final Insets_marginBottomSystemWindowInsets:I = 0x0

.field public static final Insets_marginLeftSystemWindowInsets:I = 0x1

.field public static final Insets_marginRightSystemWindowInsets:I = 0x2

.field public static final Insets_marginTopSystemWindowInsets:I = 0x3

.field public static final Insets_paddingBottomSystemWindowInsets:I = 0x4

.field public static final Insets_paddingLeftSystemWindowInsets:I = 0x5

.field public static final Insets_paddingRightSystemWindowInsets:I = 0x6

.field public static final Insets_paddingStartSystemWindowInsets:I = 0x7

.field public static final Insets_paddingTopSystemWindowInsets:I = 0x8

.field public static final MaterialDivider:[I

.field public static final MaterialDivider_dividerColor:I = 0x0

.field public static final MaterialDivider_dividerInsetEnd:I = 0x1

.field public static final MaterialDivider_dividerInsetStart:I = 0x2

.field public static final MaterialDivider_dividerThickness:I = 0x3

.field public static final MaterialDivider_lastItemDecorated:I = 0x4

.field public static final ScrimInsetsFrameLayout:[I

.field public static final ScrimInsetsFrameLayout_insetForeground:I = 0x0

.field public static final ThemeEnforcement:[I

.field public static final ThemeEnforcement_android_textAppearance:I = 0x0

.field public static final ThemeEnforcement_enforceMaterialTheme:I = 0x1

.field public static final ThemeEnforcement_enforceTextAppearance:I = 0x2


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const v0, 0x7f040284

    const v1, 0x7f040330

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sput-object v0, Lcom/google/android/material/divider/styles/R$styleable;->FlowLayout:[I

    const v0, 0x1010200

    const v1, 0x7f04025d

    const v2, 0x1010109

    filled-new-array {v2, v0, v1}, [I

    move-result-object v0

    sput-object v0, Lcom/google/android/material/divider/styles/R$styleable;->ForegroundLinearLayout:[I

    const/16 v0, 0x9

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/android/material/divider/styles/R$styleable;->Insets:[I

    const v0, 0x7f0401b1

    const v1, 0x7f0402e1

    const v2, 0x7f0401ac

    const v3, 0x7f0401ae

    const v4, 0x7f0401af

    filled-new-array {v2, v3, v4, v0, v1}, [I

    move-result-object v0

    sput-object v0, Lcom/google/android/material/divider/styles/R$styleable;->MaterialDivider:[I

    const v0, 0x7f0402aa

    filled-new-array {v0}, [I

    move-result-object v0

    sput-object v0, Lcom/google/android/material/divider/styles/R$styleable;->ScrimInsetsFrameLayout:[I

    const v0, 0x7f0401e5

    const v1, 0x7f0401e6

    const v2, 0x1010034

    filled-new-array {v2, v0, v1}, [I

    move-result-object v0

    sput-object v0, Lcom/google/android/material/divider/styles/R$styleable;->ThemeEnforcement:[I

    return-void

    :array_0
    .array-data 4
        0x7f04035a
        0x7f04035c
        0x7f04035d
        0x7f04035e
        0x7f040401
        0x7f040403
        0x7f040404
        0x7f040406
        0x7f040408
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
