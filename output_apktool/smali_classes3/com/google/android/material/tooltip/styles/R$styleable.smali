.class public final Lcom/google/android/material/tooltip/styles/R$styleable;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/tooltip/styles/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static final MaterialShape:[I

.field public static final MaterialShape_shapeAppearance:I = 0x0

.field public static final MaterialShape_shapeAppearanceOverlay:I = 0x1

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

.field public static final StateListSizeChange:[I

.field public static final StateListSizeChange_widthChange:I = 0x0

.field public static final Tooltip:[I

.field public static final Tooltip_android_layout_margin:I = 0x3

.field public static final Tooltip_android_minHeight:I = 0x5

.field public static final Tooltip_android_minWidth:I = 0x4

.field public static final Tooltip_android_padding:I = 0x2

.field public static final Tooltip_android_text:I = 0x6

.field public static final Tooltip_android_textAppearance:I = 0x0

.field public static final Tooltip_android_textColor:I = 0x1

.field public static final Tooltip_backgroundTint:I = 0x7

.field public static final Tooltip_showMarker:I = 0x8


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const v0, 0x7f040468

    const v1, 0x7f040473

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sput-object v0, Lcom/google/android/material/tooltip/styles/R$styleable;->MaterialShape:[I

    const/16 v0, 0xa

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/android/material/tooltip/styles/R$styleable;->ShapeAppearance:[I

    const v0, 0x7f0406aa

    filled-new-array {v0}, [I

    move-result-object v0

    sput-object v0, Lcom/google/android/material/tooltip/styles/R$styleable;->StateListSizeChange:[I

    const/16 v0, 0x9

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/google/android/material/tooltip/styles/R$styleable;->Tooltip:[I

    return-void

    :array_0
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

    :array_1
    .array-data 4
        0x1010034
        0x1010098
        0x10100d5
        0x10100f6
        0x101013f
        0x1010140
        0x101014f
        0x7f040059
        0x7f040485
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
