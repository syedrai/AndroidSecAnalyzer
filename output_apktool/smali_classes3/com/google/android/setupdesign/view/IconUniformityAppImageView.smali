.class public Lcom/google/android/setupdesign/view/IconUniformityAppImageView;
.super Landroid/widget/ImageView;
.source "IconUniformityAppImageView.java"

# interfaces
.implements Lcom/google/android/setupdesign/view/IconUniformityAppImageViewBindable;


# static fields
.field private static final APPS_ICON_RADIUS_MULTIPLIER:Ljava/lang/Float;

.field private static final LEGACY_SIZE_SCALE_FACTOR:Ljava/lang/Float;

.field private static final LEGACY_SIZE_SCALE_MARGIN_FACTOR:Ljava/lang/Float;

.field private static final ON_L_PLUS:Z


# instance fields
.field private backdropColorResId:I

.field private final backdropDrawable:Landroid/graphics/drawable/GradientDrawable;

.field private cardBackgroundDrawable:Lcom/google/android/setupdesign/widget/CardBackgroundDrawable;

.field private useCircleIcon:Z


# direct methods
.method static bridge synthetic -$$Nest$fgetbackdropDrawable(Lcom/google/android/setupdesign/view/IconUniformityAppImageView;)Landroid/graphics/drawable/GradientDrawable;
    .locals 0

    iget-object p0, p0, Lcom/google/android/setupdesign/view/IconUniformityAppImageView;->backdropDrawable:Landroid/graphics/drawable/GradientDrawable;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetuseCircleIcon(Lcom/google/android/setupdesign/view/IconUniformityAppImageView;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/setupdesign/view/IconUniformityAppImageView;->useCircleIcon:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$msetCircleIconTransformation(Lcom/google/android/setupdesign/view/IconUniformityAppImageView;Lcom/google/android/setupdesign/view/IconUniformityAppImageViewBindable$IconUniformityAppImageViewData;Landroid/graphics/Outline;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/setupdesign/view/IconUniformityAppImageView;->setCircleIconTransformation(Lcom/google/android/setupdesign/view/IconUniformityAppImageViewBindable$IconUniformityAppImageViewData;Landroid/graphics/Outline;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 43
    const/high16 v0, 0x3f400000    # 0.75f

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    sput-object v0, Lcom/google/android/setupdesign/view/IconUniformityAppImageView;->LEGACY_SIZE_SCALE_FACTOR:Ljava/lang/Float;

    .line 45
    sget-object v0, Lcom/google/android/setupdesign/view/IconUniformityAppImageView;->LEGACY_SIZE_SCALE_FACTOR:Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, v0

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    sput-object v0, Lcom/google/android/setupdesign/view/IconUniformityAppImageView;->LEGACY_SIZE_SCALE_MARGIN_FACTOR:Ljava/lang/Float;

    .line 48
    const v0, 0x3e4ccccd    # 0.2f

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    sput-object v0, Lcom/google/android/setupdesign/view/IconUniformityAppImageView;->APPS_ICON_RADIUS_MULTIPLIER:Ljava/lang/Float;

    .line 53
    const/4 v0, 0x1

    sput-boolean v0, Lcom/google/android/setupdesign/view/IconUniformityAppImageView;->ON_L_PLUS:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 60
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 51
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/setupdesign/view/IconUniformityAppImageView;->backdropColorResId:I

    .line 57
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    iput-object v0, p0, Lcom/google/android/setupdesign/view/IconUniformityAppImageView;->backdropDrawable:Landroid/graphics/drawable/GradientDrawable;

    .line 61
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "attrs"
        }
    .end annotation

    .line 64
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 51
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/setupdesign/view/IconUniformityAppImageView;->backdropColorResId:I

    .line 57
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    iput-object v0, p0, Lcom/google/android/setupdesign/view/IconUniformityAppImageView;->backdropDrawable:Landroid/graphics/drawable/GradientDrawable;

    .line 65
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "attrs",
            "defStyleAttr"
        }
    .end annotation

    .line 69
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 51
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/setupdesign/view/IconUniformityAppImageView;->backdropColorResId:I

    .line 57
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    iput-object v0, p0, Lcom/google/android/setupdesign/view/IconUniformityAppImageView;->backdropDrawable:Landroid/graphics/drawable/GradientDrawable;

    .line 70
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "attrs",
            "defStyleAttr",
            "defStyleRes"
        }
    .end annotation

    .line 75
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 51
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/setupdesign/view/IconUniformityAppImageView;->backdropColorResId:I

    .line 57
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    iput-object v0, p0, Lcom/google/android/setupdesign/view/IconUniformityAppImageView;->backdropDrawable:Landroid/graphics/drawable/GradientDrawable;

    .line 76
    return-void
.end method

.method private setCircleIconTransformation(Lcom/google/android/setupdesign/view/IconUniformityAppImageViewBindable$IconUniformityAppImageViewData;Landroid/graphics/Outline;)V
    .locals 16
    .param p1, "viewData"    # Lcom/google/android/setupdesign/view/IconUniformityAppImageViewBindable$IconUniformityAppImageViewData;
    .param p2, "outline"    # Landroid/graphics/Outline;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "viewData",
            "outline"
        }
    .end annotation

    .line 167
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/google/android/setupdesign/view/IconUniformityAppImageViewBindable$IconUniformityAppImageViewData;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v1

    int-to-float v1, v1

    .line 168
    .local v1, "drawableWidth":F
    iget-object v2, v0, Lcom/google/android/setupdesign/view/IconUniformityAppImageViewBindable$IconUniformityAppImageViewData;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v2

    int-to-float v2, v2

    .line 169
    .local v2, "drawableHeight":F
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/setupdesign/view/IconUniformityAppImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    iget v3, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    int-to-float v3, v3

    .line 170
    .local v3, "imageViewHeight":F
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/setupdesign/view/IconUniformityAppImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    iget v4, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    int-to-float v4, v4

    .line 176
    .local v4, "imageViewWidth":F
    div-float v5, v2, v1

    .line 177
    .local v5, "drawableAspectRatio":F
    div-float v6, v3, v4

    .line 178
    .local v6, "imageViewAspectRatio":F
    const/high16 v7, 0x40000000    # 2.0f

    cmpl-float v8, v5, v6

    if-lez v8, :cond_0

    .line 180
    move v8, v3

    .line 181
    .local v8, "outlineHeight":F
    div-float v9, v8, v5

    .line 182
    .local v9, "outlineWidth":F
    sub-float v10, v4, v9

    div-float/2addr v10, v7

    .line 183
    .local v10, "widthInset":F
    const/4 v7, 0x0

    .local v7, "heightInset":F
    goto :goto_1

    .line 184
    .end local v7    # "heightInset":F
    .end local v8    # "outlineHeight":F
    .end local v9    # "outlineWidth":F
    .end local v10    # "widthInset":F
    :cond_0
    cmpg-float v8, v5, v6

    if-gez v8, :cond_2

    .line 186
    move v9, v4

    .line 187
    .restart local v9    # "outlineWidth":F
    mul-float v8, v9, v5

    .line 188
    .restart local v8    # "outlineHeight":F
    const/4 v10, 0x0

    .line 190
    .restart local v10    # "widthInset":F
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/setupdesign/view/IconUniformityAppImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v11

    sget-object v12, Landroid/widget/ImageView$ScaleType;->FIT_START:Landroid/widget/ImageView$ScaleType;

    if-ne v11, v12, :cond_1

    const/4 v7, 0x0

    goto :goto_0

    :cond_1
    sub-float v11, v3, v8

    div-float v7, v11, v7

    .restart local v7    # "heightInset":F
    :goto_0
    goto :goto_1

    .line 193
    .end local v7    # "heightInset":F
    .end local v8    # "outlineHeight":F
    .end local v9    # "outlineWidth":F
    .end local v10    # "widthInset":F
    :cond_2
    move v8, v3

    .line 194
    .restart local v8    # "outlineHeight":F
    move v9, v4

    .line 195
    .restart local v9    # "outlineWidth":F
    const/4 v10, 0x0

    .line 196
    .restart local v10    # "widthInset":F
    const/4 v7, 0x0

    .line 198
    .restart local v7    # "heightInset":F
    :goto_1
    sget-object v11, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    move-object/from16 v12, p0

    invoke-virtual {v12, v11}, Lcom/google/android/setupdesign/view/IconUniformityAppImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 200
    nop

    .line 201
    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v11

    .line 202
    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v13

    add-float v14, v10, v9

    .line 203
    invoke-static {v14}, Ljava/lang/Math;->round(F)I

    move-result v14

    add-float v15, v7, v8

    .line 204
    invoke-static {v15}, Ljava/lang/Math;->round(F)I

    move-result v15

    .line 200
    move-object/from16 v0, p2

    invoke-virtual {v0, v11, v13, v14, v15}, Landroid/graphics/Outline;->setOval(IIII)V

    .line 205
    return-void
.end method

.method private setLegacyTransformationMatrix(FFFF)V
    .locals 7
    .param p1, "drawableWidth"    # F
    .param p2, "drawableHeight"    # F
    .param p3, "imageViewWidth"    # F
    .param p4, "imageViewHeight"    # F
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "drawableWidth",
            "drawableHeight",
            "imageViewWidth",
            "imageViewHeight"
        }
    .end annotation

    .line 209
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 210
    .local v0, "scaleMatrix":Landroid/graphics/Matrix;
    sget-object v1, Lcom/google/android/setupdesign/view/IconUniformityAppImageView;->LEGACY_SIZE_SCALE_MARGIN_FACTOR:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    mul-float v1, v1, p4

    .line 211
    .local v1, "verticalMargin":F
    sget-object v2, Lcom/google/android/setupdesign/view/IconUniformityAppImageView;->LEGACY_SIZE_SCALE_MARGIN_FACTOR:Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    mul-float v2, v2, p3

    .line 212
    .local v2, "horizontalMargin":F
    new-instance v3, Landroid/graphics/RectF;

    const/4 v4, 0x0

    invoke-direct {v3, v4, v4, p1, p2}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 213
    .local v3, "scrRectF":Landroid/graphics/RectF;
    new-instance v4, Landroid/graphics/RectF;

    sub-float v5, p3, v2

    sub-float v6, p4, v1

    invoke-direct {v4, v2, v1, v5, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 220
    .local v4, "destRectF":Landroid/graphics/RectF;
    sget-object v5, Landroid/graphics/Matrix$ScaleToFit;->FILL:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v0, v3, v4, v5}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    .line 222
    sget-object v5, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, v5}, Lcom/google/android/setupdesign/view/IconUniformityAppImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 223
    invoke-virtual {p0, v0}, Lcom/google/android/setupdesign/view/IconUniformityAppImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 224
    return-void
.end method


# virtual methods
.method public bindView(Lcom/google/android/setupdesign/view/IconUniformityAppImageViewBindable$IconUniformityAppImageViewData;)V
    .locals 5
    .param p1, "viewData"    # Lcom/google/android/setupdesign/view/IconUniformityAppImageViewBindable$IconUniformityAppImageViewData;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "viewData"
        }
    .end annotation

    .line 87
    iget-boolean v0, p1, Lcom/google/android/setupdesign/view/IconUniformityAppImageViewBindable$IconUniformityAppImageViewData;->useCircleIcon:Z

    iput-boolean v0, p0, Lcom/google/android/setupdesign/view/IconUniformityAppImageView;->useCircleIcon:Z

    .line 88
    invoke-virtual {p0}, Lcom/google/android/setupdesign/view/IconUniformityAppImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    int-to-float v0, v0

    sget-object v1, Lcom/google/android/setupdesign/view/IconUniformityAppImageView;->APPS_ICON_RADIUS_MULTIPLIER:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    mul-float v0, v0, v1

    .line 90
    .local v0, "radius":F
    nop

    .line 96
    iget-object v1, p1, Lcom/google/android/setupdesign/view/IconUniformityAppImageViewBindable$IconUniformityAppImageViewData;->icon:Landroid/graphics/drawable/Drawable;

    .line 97
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p1, Lcom/google/android/setupdesign/view/IconUniformityAppImageViewBindable$IconUniformityAppImageViewData;->icon:Landroid/graphics/drawable/Drawable;

    .line 98
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v2

    int-to-float v2, v2

    .line 99
    invoke-virtual {p0}, Lcom/google/android/setupdesign/view/IconUniformityAppImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    iget v3, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    int-to-float v3, v3

    .line 100
    invoke-virtual {p0}, Lcom/google/android/setupdesign/view/IconUniformityAppImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    iget v4, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    int-to-float v4, v4

    .line 96
    invoke-direct {p0, v1, v2, v3, v4}, Lcom/google/android/setupdesign/view/IconUniformityAppImageView;->setLegacyTransformationMatrix(FFFF)V

    .line 102
    sget-boolean v1, Lcom/google/android/setupdesign/view/IconUniformityAppImageView;->ON_L_PLUS:Z

    if-eqz v1, :cond_0

    .line 103
    invoke-virtual {p0}, Lcom/google/android/setupdesign/view/IconUniformityAppImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lcom/google/android/setupdesign/view/IconUniformityAppImageView;->backdropColorResId:I

    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/setupdesign/view/IconUniformityAppImageView;->setBackgroundColor(I)V

    .line 104
    invoke-virtual {p0}, Lcom/google/android/setupdesign/view/IconUniformityAppImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/google/android/setupdesign/R$dimen;->sud_icon_uniformity_elevation:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/setupdesign/view/IconUniformityAppImageView;->setElevation(F)V

    .line 105
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/google/android/setupdesign/view/IconUniformityAppImageView;->setClipToOutline(Z)V

    .line 106
    new-instance v1, Lcom/google/android/setupdesign/view/IconUniformityAppImageView$1;

    invoke-direct {v1, p0, p1, v0}, Lcom/google/android/setupdesign/view/IconUniformityAppImageView$1;-><init>(Lcom/google/android/setupdesign/view/IconUniformityAppImageView;Lcom/google/android/setupdesign/view/IconUniformityAppImageViewBindable$IconUniformityAppImageViewData;F)V

    invoke-virtual {p0, v1}, Lcom/google/android/setupdesign/view/IconUniformityAppImageView;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    goto :goto_0

    .line 125
    :cond_0
    new-instance v1, Lcom/google/android/setupdesign/widget/CardBackgroundDrawable;

    .line 127
    invoke-virtual {p0}, Lcom/google/android/setupdesign/view/IconUniformityAppImageView;->getContext()Landroid/content/Context;

    move-result-object v2

    iget v3, p0, Lcom/google/android/setupdesign/view/IconUniformityAppImageView;->backdropColorResId:I

    invoke-static {v2, v3}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v0, v3}, Lcom/google/android/setupdesign/widget/CardBackgroundDrawable;-><init>(IFF)V

    iput-object v1, p0, Lcom/google/android/setupdesign/view/IconUniformityAppImageView;->cardBackgroundDrawable:Lcom/google/android/setupdesign/widget/CardBackgroundDrawable;

    .line 130
    iget-object v1, p0, Lcom/google/android/setupdesign/view/IconUniformityAppImageView;->cardBackgroundDrawable:Lcom/google/android/setupdesign/widget/CardBackgroundDrawable;

    .line 133
    invoke-virtual {p0}, Lcom/google/android/setupdesign/view/IconUniformityAppImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 134
    invoke-virtual {p0}, Lcom/google/android/setupdesign/view/IconUniformityAppImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    iget v3, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 130
    const/4 v4, 0x0

    invoke-virtual {v1, v4, v4, v2, v3}, Lcom/google/android/setupdesign/widget/CardBackgroundDrawable;->setBounds(IIII)V

    .line 137
    :goto_0
    iget-object v1, p1, Lcom/google/android/setupdesign/view/IconUniformityAppImageViewBindable$IconUniformityAppImageViewData;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v1}, Lcom/google/android/setupdesign/view/IconUniformityAppImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 138
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "canvas"
        }
    .end annotation

    .line 147
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 148
    sget-boolean v0, Lcom/google/android/setupdesign/view/IconUniformityAppImageView;->ON_L_PLUS:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/setupdesign/view/IconUniformityAppImageView;->cardBackgroundDrawable:Lcom/google/android/setupdesign/widget/CardBackgroundDrawable;

    if-eqz v0, :cond_0

    .line 149
    iget-object v0, p0, Lcom/google/android/setupdesign/view/IconUniformityAppImageView;->cardBackgroundDrawable:Lcom/google/android/setupdesign/widget/CardBackgroundDrawable;

    invoke-virtual {v0, p1}, Lcom/google/android/setupdesign/widget/CardBackgroundDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 151
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 152
    return-void
.end method

.method protected onFinishInflate()V
    .locals 3

    .line 80
    invoke-super {p0}, Landroid/widget/ImageView;->onFinishInflate()V

    .line 81
    sget v0, Lcom/google/android/setupdesign/R$color;->sud_uniformity_backdrop_color:I

    iput v0, p0, Lcom/google/android/setupdesign/view/IconUniformityAppImageView;->backdropColorResId:I

    .line 82
    iget-object v0, p0, Lcom/google/android/setupdesign/view/IconUniformityAppImageView;->backdropDrawable:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {p0}, Lcom/google/android/setupdesign/view/IconUniformityAppImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lcom/google/android/setupdesign/view/IconUniformityAppImageView;->backdropColorResId:I

    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 83
    return-void
.end method

.method public onRecycle()V
    .locals 1

    .line 142
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/setupdesign/view/IconUniformityAppImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 143
    return-void
.end method

.method public setBackdropDrawableColor(I)V
    .locals 2
    .param p1, "backdropColorResId"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "backdropColorResId"
        }
    .end annotation

    .line 160
    iput p1, p0, Lcom/google/android/setupdesign/view/IconUniformityAppImageView;->backdropColorResId:I

    .line 161
    iget-object v0, p0, Lcom/google/android/setupdesign/view/IconUniformityAppImageView;->backdropDrawable:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {p0}, Lcom/google/android/setupdesign/view/IconUniformityAppImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 162
    return-void
.end method
