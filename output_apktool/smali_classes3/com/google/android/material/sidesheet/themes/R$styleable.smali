.class public final Lcom/google/android/material/sidesheet/themes/R$styleable;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/sidesheet/themes/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static final MaterialAlertDialog:[I

.field public static final MaterialAlertDialogTheme:[I

.field public static final MaterialAlertDialogTheme_materialAlertDialogBodyTextStyle:I = 0x0

.field public static final MaterialAlertDialogTheme_materialAlertDialogButtonSpacerVisibility:I = 0x1

.field public static final MaterialAlertDialogTheme_materialAlertDialogTheme:I = 0x2

.field public static final MaterialAlertDialogTheme_materialAlertDialogTitleIconStyle:I = 0x3

.field public static final MaterialAlertDialogTheme_materialAlertDialogTitlePanelStyle:I = 0x4

.field public static final MaterialAlertDialogTheme_materialAlertDialogTitleTextStyle:I = 0x5

.field public static final MaterialAlertDialog_backgroundInsetBottom:I = 0x0

.field public static final MaterialAlertDialog_backgroundInsetEnd:I = 0x1

.field public static final MaterialAlertDialog_backgroundInsetStart:I = 0x2

.field public static final MaterialAlertDialog_backgroundInsetTop:I = 0x3

.field public static final MaterialAlertDialog_backgroundTint:I = 0x4

.field public static final MaterialShape:[I

.field public static final MaterialShape_shapeAppearance:I = 0x0

.field public static final MaterialShape_shapeAppearanceOverlay:I = 0x1

.field public static final MaterialSpring:[I

.field public static final MaterialSpring_damping:I = 0x0

.field public static final MaterialSpring_stiffness:I = 0x1

.field public static final ShapeAppearance:[I

.field public static final ShapeAppearance_cornerFamily:I = 0x0

.field public static final ShapeAppearance_cornerFamilyBottomLeft:I = 0x1

.field public static final ShapeAppearance_cornerFamilyBottomRight:I = 0x2

.field public static final ShapeAppearance_cornerFamilyTopLeft:I = 0x3

.field public static final ShapeAppearance_cornerFamilyTopRight:I = 0x4

.field public static final ShapeAppearance_cornerSize:I = 0x5

.field public static final ShapeAppearance_cornerSizeBottomLeft:I = 0x6

.field public static final ShapeAppearance_cornerSizeBottomRight:I = 0x7

.field public static final ShapeAppearance_cornerSizeTopLeft:I = 0x8

.field public static final ShapeAppearance_cornerSizeTopRight:I = 0x9

.field public static final SideSheetBehavior_Layout:[I

.field public static final SideSheetBehavior_Layout_android_elevation:I = 0x2

.field public static final SideSheetBehavior_Layout_android_maxHeight:I = 0x1

.field public static final SideSheetBehavior_Layout_android_maxWidth:I = 0x0

.field public static final SideSheetBehavior_Layout_backgroundTint:I = 0x3

.field public static final SideSheetBehavior_Layout_behavior_draggable:I = 0x4

.field public static final SideSheetBehavior_Layout_coplanarSiblingViewId:I = 0x5

.field public static final SideSheetBehavior_Layout_shapeAppearance:I = 0x6

.field public static final SideSheetBehavior_Layout_shapeAppearanceOverlay:I = 0x7

.field public static final StateListSizeChange:[I

.field public static final StateListSizeChange_widthChange:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const v0, 0x7f040055

    const v1, 0x7f040059

    const v2, 0x7f040052

    const v3, 0x7f040053

    const v4, 0x7f040054

    filled-new-array {v2, v3, v4, v0, v1}, [I

    move-result-object v0

    sput-object v0, Lcom/google/android/material/sidesheet/themes/R$styleable;->MaterialAlertDialog:[I

    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/android/material/sidesheet/themes/R$styleable;->MaterialAlertDialogTheme:[I

    const v0, 0x7f040468

    const v1, 0x7f040473

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sput-object v0, Lcom/google/android/material/sidesheet/themes/R$styleable;->MaterialShape:[I

    const v0, 0x7f040191

    const v1, 0x7f0404c9

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sput-object v0, Lcom/google/android/material/sidesheet/themes/R$styleable;->MaterialSpring:[I

    const/16 v0, 0xa

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/google/android/material/sidesheet/themes/R$styleable;->ShapeAppearance:[I

    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/google/android/material/sidesheet/themes/R$styleable;->SideSheetBehavior_Layout:[I

    const v0, 0x7f0406aa

    filled-new-array {v0}, [I

    move-result-object v0

    sput-object v0, Lcom/google/android/material/sidesheet/themes/R$styleable;->StateListSizeChange:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x7f04035f
        0x7f040360
        0x7f040361
        0x7f040362
        0x7f040363
        0x7f040364
    .end array-data

    :array_1
    .array-data 4
        0x7f040171
        0x7f040172
        0x7f040173
        0x7f040174
        0x7f040175
        0x7f040177
        0x7f040178
        0x7f040179
        0x7f04017a
        0x7f04017b
    .end array-data

    :array_2
    .array-data 4
        0x101011f
        0x1010120
        0x1010440
        0x7f040059
        0x7f040073
        0x7f040170
        0x7f040468
        0x7f040473
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
