.class public Landroidx/constraintlayout/helper/widget/Flow;
.super Landroidx/constraintlayout/widget/VirtualLayout;
.source "Flow.java"


# static fields
.field public static final CHAIN_PACKED:I = 0x2

.field public static final CHAIN_SPREAD:I = 0x0

.field public static final CHAIN_SPREAD_INSIDE:I = 0x1

.field public static final HORIZONTAL:I = 0x0

.field public static final HORIZONTAL_ALIGN_CENTER:I = 0x2

.field public static final HORIZONTAL_ALIGN_END:I = 0x1

.field public static final HORIZONTAL_ALIGN_START:I = 0x0

.field private static final TAG:Ljava/lang/String; = "Flow"

.field public static final VERTICAL:I = 0x1

.field public static final VERTICAL_ALIGN_BASELINE:I = 0x3

.field public static final VERTICAL_ALIGN_BOTTOM:I = 0x1

.field public static final VERTICAL_ALIGN_CENTER:I = 0x2

.field public static final VERTICAL_ALIGN_TOP:I = 0x0

.field public static final WRAP_ALIGNED:I = 0x2

.field public static final WRAP_CHAIN:I = 0x1

.field public static final WRAP_NONE:I


# instance fields
.field private mFlow:Landroidx/constraintlayout/core/widgets/Flow;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 144
    invoke-direct {p0, p1}, Landroidx/constraintlayout/widget/VirtualLayout;-><init>(Landroid/content/Context;)V

    .line 145
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 148
    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/widget/VirtualLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 149
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 152
    invoke-direct {p0, p1, p2, p3}, Landroidx/constraintlayout/widget/VirtualLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 153
    return-void
.end method


# virtual methods
.method protected init(Landroid/util/AttributeSet;)V
    .locals 7
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .line 224
    invoke-super {p0, p1}, Landroidx/constraintlayout/widget/VirtualLayout;->init(Landroid/util/AttributeSet;)V

    .line 225
    new-instance v0, Landroidx/constraintlayout/core/widgets/Flow;

    invoke-direct {v0}, Landroidx/constraintlayout/core/widgets/Flow;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/helper/widget/Flow;->mFlow:Landroidx/constraintlayout/core/widgets/Flow;

    .line 226
    if-eqz p1, :cond_1b

    .line 227
    invoke-virtual {p0}, Landroidx/constraintlayout/helper/widget/Flow;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Landroidx/constraintlayout/widget/R$styleable;->ConstraintLayout_Layout:[I

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 229
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v1

    .line 230
    .local v1, "n":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1a

    .line 231
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v3

    .line 232
    .local v3, "attr":I
    sget v4, Landroidx/constraintlayout/widget/R$styleable;->ConstraintLayout_Layout_android_orientation:I

    const/4 v5, 0x0

    if-ne v3, v4, :cond_0

    .line 233
    iget-object v4, p0, Landroidx/constraintlayout/helper/widget/Flow;->mFlow:Landroidx/constraintlayout/core/widgets/Flow;

    invoke-virtual {v0, v3, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    invoke-virtual {v4, v5}, Landroidx/constraintlayout/core/widgets/Flow;->setOrientation(I)V

    goto/16 :goto_1

    .line 234
    :cond_0
    sget v4, Landroidx/constraintlayout/widget/R$styleable;->ConstraintLayout_Layout_android_padding:I

    if-ne v3, v4, :cond_1

    .line 235
    iget-object v4, p0, Landroidx/constraintlayout/helper/widget/Flow;->mFlow:Landroidx/constraintlayout/core/widgets/Flow;

    invoke-virtual {v0, v3, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    invoke-virtual {v4, v5}, Landroidx/constraintlayout/core/widgets/Flow;->setPadding(I)V

    goto/16 :goto_1

    .line 236
    :cond_1
    sget v4, Landroidx/constraintlayout/widget/R$styleable;->ConstraintLayout_Layout_android_paddingStart:I

    if-ne v3, v4, :cond_2

    .line 237
    nop

    .line 238
    iget-object v4, p0, Landroidx/constraintlayout/helper/widget/Flow;->mFlow:Landroidx/constraintlayout/core/widgets/Flow;

    invoke-virtual {v0, v3, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    invoke-virtual {v4, v5}, Landroidx/constraintlayout/core/widgets/Flow;->setPaddingStart(I)V

    goto/16 :goto_1

    .line 240
    :cond_2
    sget v4, Landroidx/constraintlayout/widget/R$styleable;->ConstraintLayout_Layout_android_paddingEnd:I

    if-ne v3, v4, :cond_3

    .line 241
    nop

    .line 242
    iget-object v4, p0, Landroidx/constraintlayout/helper/widget/Flow;->mFlow:Landroidx/constraintlayout/core/widgets/Flow;

    invoke-virtual {v0, v3, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    invoke-virtual {v4, v5}, Landroidx/constraintlayout/core/widgets/Flow;->setPaddingEnd(I)V

    goto/16 :goto_1

    .line 244
    :cond_3
    sget v4, Landroidx/constraintlayout/widget/R$styleable;->ConstraintLayout_Layout_android_paddingLeft:I

    if-ne v3, v4, :cond_4

    .line 245
    iget-object v4, p0, Landroidx/constraintlayout/helper/widget/Flow;->mFlow:Landroidx/constraintlayout/core/widgets/Flow;

    invoke-virtual {v0, v3, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    invoke-virtual {v4, v5}, Landroidx/constraintlayout/core/widgets/Flow;->setPaddingLeft(I)V

    goto/16 :goto_1

    .line 246
    :cond_4
    sget v4, Landroidx/constraintlayout/widget/R$styleable;->ConstraintLayout_Layout_android_paddingTop:I

    if-ne v3, v4, :cond_5

    .line 247
    iget-object v4, p0, Landroidx/constraintlayout/helper/widget/Flow;->mFlow:Landroidx/constraintlayout/core/widgets/Flow;

    invoke-virtual {v0, v3, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    invoke-virtual {v4, v5}, Landroidx/constraintlayout/core/widgets/Flow;->setPaddingTop(I)V

    goto/16 :goto_1

    .line 248
    :cond_5
    sget v4, Landroidx/constraintlayout/widget/R$styleable;->ConstraintLayout_Layout_android_paddingRight:I

    if-ne v3, v4, :cond_6

    .line 249
    iget-object v4, p0, Landroidx/constraintlayout/helper/widget/Flow;->mFlow:Landroidx/constraintlayout/core/widgets/Flow;

    invoke-virtual {v0, v3, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    invoke-virtual {v4, v5}, Landroidx/constraintlayout/core/widgets/Flow;->setPaddingRight(I)V

    goto/16 :goto_1

    .line 250
    :cond_6
    sget v4, Landroidx/constraintlayout/widget/R$styleable;->ConstraintLayout_Layout_android_paddingBottom:I

    if-ne v3, v4, :cond_7

    .line 251
    iget-object v4, p0, Landroidx/constraintlayout/helper/widget/Flow;->mFlow:Landroidx/constraintlayout/core/widgets/Flow;

    invoke-virtual {v0, v3, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    invoke-virtual {v4, v5}, Landroidx/constraintlayout/core/widgets/Flow;->setPaddingBottom(I)V

    goto/16 :goto_1

    .line 252
    :cond_7
    sget v4, Landroidx/constraintlayout/widget/R$styleable;->ConstraintLayout_Layout_flow_wrapMode:I

    if-ne v3, v4, :cond_8

    .line 253
    iget-object v4, p0, Landroidx/constraintlayout/helper/widget/Flow;->mFlow:Landroidx/constraintlayout/core/widgets/Flow;

    invoke-virtual {v0, v3, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    invoke-virtual {v4, v5}, Landroidx/constraintlayout/core/widgets/Flow;->setWrapMode(I)V

    goto/16 :goto_1

    .line 255
    :cond_8
    sget v4, Landroidx/constraintlayout/widget/R$styleable;->ConstraintLayout_Layout_flow_horizontalStyle:I

    if-ne v3, v4, :cond_9

    .line 256
    iget-object v4, p0, Landroidx/constraintlayout/helper/widget/Flow;->mFlow:Landroidx/constraintlayout/core/widgets/Flow;

    invoke-virtual {v0, v3, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    invoke-virtual {v4, v5}, Landroidx/constraintlayout/core/widgets/Flow;->setHorizontalStyle(I)V

    goto/16 :goto_1

    .line 257
    :cond_9
    sget v4, Landroidx/constraintlayout/widget/R$styleable;->ConstraintLayout_Layout_flow_verticalStyle:I

    if-ne v3, v4, :cond_a

    .line 258
    iget-object v4, p0, Landroidx/constraintlayout/helper/widget/Flow;->mFlow:Landroidx/constraintlayout/core/widgets/Flow;

    invoke-virtual {v0, v3, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    invoke-virtual {v4, v5}, Landroidx/constraintlayout/core/widgets/Flow;->setVerticalStyle(I)V

    goto/16 :goto_1

    .line 259
    :cond_a
    sget v4, Landroidx/constraintlayout/widget/R$styleable;->ConstraintLayout_Layout_flow_firstHorizontalStyle:I

    if-ne v3, v4, :cond_b

    .line 260
    iget-object v4, p0, Landroidx/constraintlayout/helper/widget/Flow;->mFlow:Landroidx/constraintlayout/core/widgets/Flow;

    invoke-virtual {v0, v3, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    invoke-virtual {v4, v5}, Landroidx/constraintlayout/core/widgets/Flow;->setFirstHorizontalStyle(I)V

    goto/16 :goto_1

    .line 261
    :cond_b
    sget v4, Landroidx/constraintlayout/widget/R$styleable;->ConstraintLayout_Layout_flow_lastHorizontalStyle:I

    if-ne v3, v4, :cond_c

    .line 262
    iget-object v4, p0, Landroidx/constraintlayout/helper/widget/Flow;->mFlow:Landroidx/constraintlayout/core/widgets/Flow;

    invoke-virtual {v0, v3, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    invoke-virtual {v4, v5}, Landroidx/constraintlayout/core/widgets/Flow;->setLastHorizontalStyle(I)V

    goto/16 :goto_1

    .line 263
    :cond_c
    sget v4, Landroidx/constraintlayout/widget/R$styleable;->ConstraintLayout_Layout_flow_firstVerticalStyle:I

    if-ne v3, v4, :cond_d

    .line 264
    iget-object v4, p0, Landroidx/constraintlayout/helper/widget/Flow;->mFlow:Landroidx/constraintlayout/core/widgets/Flow;

    invoke-virtual {v0, v3, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    invoke-virtual {v4, v5}, Landroidx/constraintlayout/core/widgets/Flow;->setFirstVerticalStyle(I)V

    goto/16 :goto_1

    .line 265
    :cond_d
    sget v4, Landroidx/constraintlayout/widget/R$styleable;->ConstraintLayout_Layout_flow_lastVerticalStyle:I

    if-ne v3, v4, :cond_e

    .line 266
    iget-object v4, p0, Landroidx/constraintlayout/helper/widget/Flow;->mFlow:Landroidx/constraintlayout/core/widgets/Flow;

    invoke-virtual {v0, v3, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    invoke-virtual {v4, v5}, Landroidx/constraintlayout/core/widgets/Flow;->setLastVerticalStyle(I)V

    goto/16 :goto_1

    .line 267
    :cond_e
    sget v4, Landroidx/constraintlayout/widget/R$styleable;->ConstraintLayout_Layout_flow_horizontalBias:I

    const/high16 v6, 0x3f000000    # 0.5f

    if-ne v3, v4, :cond_f

    .line 268
    iget-object v4, p0, Landroidx/constraintlayout/helper/widget/Flow;->mFlow:Landroidx/constraintlayout/core/widgets/Flow;

    invoke-virtual {v0, v3, v6}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v5

    invoke-virtual {v4, v5}, Landroidx/constraintlayout/core/widgets/Flow;->setHorizontalBias(F)V

    goto/16 :goto_1

    .line 269
    :cond_f
    sget v4, Landroidx/constraintlayout/widget/R$styleable;->ConstraintLayout_Layout_flow_firstHorizontalBias:I

    if-ne v3, v4, :cond_10

    .line 270
    iget-object v4, p0, Landroidx/constraintlayout/helper/widget/Flow;->mFlow:Landroidx/constraintlayout/core/widgets/Flow;

    invoke-virtual {v0, v3, v6}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v5

    invoke-virtual {v4, v5}, Landroidx/constraintlayout/core/widgets/Flow;->setFirstHorizontalBias(F)V

    goto/16 :goto_1

    .line 271
    :cond_10
    sget v4, Landroidx/constraintlayout/widget/R$styleable;->ConstraintLayout_Layout_flow_lastHorizontalBias:I

    if-ne v3, v4, :cond_11

    .line 272
    iget-object v4, p0, Landroidx/constraintlayout/helper/widget/Flow;->mFlow:Landroidx/constraintlayout/core/widgets/Flow;

    invoke-virtual {v0, v3, v6}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v5

    invoke-virtual {v4, v5}, Landroidx/constraintlayout/core/widgets/Flow;->setLastHorizontalBias(F)V

    goto/16 :goto_1

    .line 273
    :cond_11
    sget v4, Landroidx/constraintlayout/widget/R$styleable;->ConstraintLayout_Layout_flow_firstVerticalBias:I

    if-ne v3, v4, :cond_12

    .line 274
    iget-object v4, p0, Landroidx/constraintlayout/helper/widget/Flow;->mFlow:Landroidx/constraintlayout/core/widgets/Flow;

    invoke-virtual {v0, v3, v6}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v5

    invoke-virtual {v4, v5}, Landroidx/constraintlayout/core/widgets/Flow;->setFirstVerticalBias(F)V

    goto :goto_1

    .line 275
    :cond_12
    sget v4, Landroidx/constraintlayout/widget/R$styleable;->ConstraintLayout_Layout_flow_lastVerticalBias:I

    if-ne v3, v4, :cond_13

    .line 276
    iget-object v4, p0, Landroidx/constraintlayout/helper/widget/Flow;->mFlow:Landroidx/constraintlayout/core/widgets/Flow;

    invoke-virtual {v0, v3, v6}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v5

    invoke-virtual {v4, v5}, Landroidx/constraintlayout/core/widgets/Flow;->setLastVerticalBias(F)V

    goto :goto_1

    .line 277
    :cond_13
    sget v4, Landroidx/constraintlayout/widget/R$styleable;->ConstraintLayout_Layout_flow_verticalBias:I

    if-ne v3, v4, :cond_14

    .line 278
    iget-object v4, p0, Landroidx/constraintlayout/helper/widget/Flow;->mFlow:Landroidx/constraintlayout/core/widgets/Flow;

    invoke-virtual {v0, v3, v6}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v5

    invoke-virtual {v4, v5}, Landroidx/constraintlayout/core/widgets/Flow;->setVerticalBias(F)V

    goto :goto_1

    .line 279
    :cond_14
    sget v4, Landroidx/constraintlayout/widget/R$styleable;->ConstraintLayout_Layout_flow_horizontalAlign:I

    const/4 v6, 0x2

    if-ne v3, v4, :cond_15

    .line 280
    iget-object v4, p0, Landroidx/constraintlayout/helper/widget/Flow;->mFlow:Landroidx/constraintlayout/core/widgets/Flow;

    invoke-virtual {v0, v3, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    invoke-virtual {v4, v5}, Landroidx/constraintlayout/core/widgets/Flow;->setHorizontalAlign(I)V

    goto :goto_1

    .line 282
    :cond_15
    sget v4, Landroidx/constraintlayout/widget/R$styleable;->ConstraintLayout_Layout_flow_verticalAlign:I

    if-ne v3, v4, :cond_16

    .line 283
    iget-object v4, p0, Landroidx/constraintlayout/helper/widget/Flow;->mFlow:Landroidx/constraintlayout/core/widgets/Flow;

    invoke-virtual {v0, v3, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    invoke-virtual {v4, v5}, Landroidx/constraintlayout/core/widgets/Flow;->setVerticalAlign(I)V

    goto :goto_1

    .line 285
    :cond_16
    sget v4, Landroidx/constraintlayout/widget/R$styleable;->ConstraintLayout_Layout_flow_horizontalGap:I

    if-ne v3, v4, :cond_17

    .line 286
    iget-object v4, p0, Landroidx/constraintlayout/helper/widget/Flow;->mFlow:Landroidx/constraintlayout/core/widgets/Flow;

    invoke-virtual {v0, v3, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    invoke-virtual {v4, v5}, Landroidx/constraintlayout/core/widgets/Flow;->setHorizontalGap(I)V

    goto :goto_1

    .line 287
    :cond_17
    sget v4, Landroidx/constraintlayout/widget/R$styleable;->ConstraintLayout_Layout_flow_verticalGap:I

    if-ne v3, v4, :cond_18

    .line 288
    iget-object v4, p0, Landroidx/constraintlayout/helper/widget/Flow;->mFlow:Landroidx/constraintlayout/core/widgets/Flow;

    invoke-virtual {v0, v3, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    invoke-virtual {v4, v5}, Landroidx/constraintlayout/core/widgets/Flow;->setVerticalGap(I)V

    goto :goto_1

    .line 289
    :cond_18
    sget v4, Landroidx/constraintlayout/widget/R$styleable;->ConstraintLayout_Layout_flow_maxElementsWrap:I

    if-ne v3, v4, :cond_19

    .line 290
    iget-object v4, p0, Landroidx/constraintlayout/helper/widget/Flow;->mFlow:Landroidx/constraintlayout/core/widgets/Flow;

    const/4 v5, -0x1

    invoke-virtual {v0, v3, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    invoke-virtual {v4, v5}, Landroidx/constraintlayout/core/widgets/Flow;->setMaxElementsWrap(I)V

    .line 230
    .end local v3    # "attr":I
    :cond_19
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 293
    .end local v2    # "i":I
    :cond_1a
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 296
    .end local v0    # "a":Landroid/content/res/TypedArray;
    .end local v1    # "n":I
    :cond_1b
    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Flow;->mFlow:Landroidx/constraintlayout/core/widgets/Flow;

    iput-object v0, p0, Landroidx/constraintlayout/helper/widget/Flow;->mHelperWidget:Landroidx/constraintlayout/core/widgets/Helper;

    .line 297
    invoke-virtual {p0}, Landroidx/constraintlayout/helper/widget/Flow;->validateParams()V

    .line 298
    return-void
.end method

.method public loadParameters(Landroidx/constraintlayout/widget/ConstraintSet$Constraint;Landroidx/constraintlayout/core/widgets/HelperWidget;Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;Landroid/util/SparseArray;)V
    .locals 3
    .param p1, "constraint"    # Landroidx/constraintlayout/widget/ConstraintSet$Constraint;
    .param p2, "child"    # Landroidx/constraintlayout/core/widgets/HelperWidget;
    .param p3, "layoutParams"    # Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/constraintlayout/widget/ConstraintSet$Constraint;",
            "Landroidx/constraintlayout/core/widgets/HelperWidget;",
            "Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;",
            "Landroid/util/SparseArray<",
            "Landroidx/constraintlayout/core/widgets/ConstraintWidget;",
            ">;)V"
        }
    .end annotation

    .line 207
    .local p4, "mapIdToWidget":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroidx/constraintlayout/core/widgets/ConstraintWidget;>;"
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/constraintlayout/widget/VirtualLayout;->loadParameters(Landroidx/constraintlayout/widget/ConstraintSet$Constraint;Landroidx/constraintlayout/core/widgets/HelperWidget;Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;Landroid/util/SparseArray;)V

    .line 208
    instance-of v0, p2, Landroidx/constraintlayout/core/widgets/Flow;

    if-eqz v0, :cond_0

    .line 209
    move-object v0, p2

    check-cast v0, Landroidx/constraintlayout/core/widgets/Flow;

    .line 211
    .local v0, "flow":Landroidx/constraintlayout/core/widgets/Flow;
    iget v1, p3, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->orientation:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 212
    iget v1, p3, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->orientation:I

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/core/widgets/Flow;->setOrientation(I)V

    .line 215
    .end local v0    # "flow":Landroidx/constraintlayout/core/widgets/Flow;
    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 1
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 169
    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Flow;->mFlow:Landroidx/constraintlayout/core/widgets/Flow;

    invoke-virtual {p0, v0, p1, p2}, Landroidx/constraintlayout/helper/widget/Flow;->onMeasure(Landroidx/constraintlayout/core/widgets/VirtualLayout;II)V

    .line 170
    return-void
.end method

.method public onMeasure(Landroidx/constraintlayout/core/widgets/VirtualLayout;II)V
    .locals 6
    .param p1, "layout"    # Landroidx/constraintlayout/core/widgets/VirtualLayout;
    .param p2, "widthMeasureSpec"    # I
    .param p3, "heightMeasureSpec"    # I

    .line 183
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 184
    .local v0, "widthMode":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 185
    .local v1, "widthSize":I
    invoke-static {p3}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    .line 186
    .local v2, "heightMode":I
    invoke-static {p3}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    .line 187
    .local v3, "heightSize":I
    if-eqz p1, :cond_0

    .line 188
    invoke-virtual {p1, v0, v1, v2, v3}, Landroidx/constraintlayout/core/widgets/VirtualLayout;->measure(IIII)V

    .line 189
    invoke-virtual {p1}, Landroidx/constraintlayout/core/widgets/VirtualLayout;->getMeasuredWidth()I

    move-result v4

    invoke-virtual {p1}, Landroidx/constraintlayout/core/widgets/VirtualLayout;->getMeasuredHeight()I

    move-result v5

    invoke-virtual {p0, v4, v5}, Landroidx/constraintlayout/helper/widget/Flow;->setMeasuredDimension(II)V

    goto :goto_0

    .line 191
    :cond_0
    const/4 v4, 0x0

    invoke-virtual {p0, v4, v4}, Landroidx/constraintlayout/helper/widget/Flow;->setMeasuredDimension(II)V

    .line 193
    :goto_0
    return-void
.end method

.method public resolveRtl(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Z)V
    .locals 1
    .param p1, "widget"    # Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    .param p2, "isRtl"    # Z

    .line 163
    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Flow;->mFlow:Landroidx/constraintlayout/core/widgets/Flow;

    invoke-virtual {v0, p2}, Landroidx/constraintlayout/core/widgets/Flow;->applyRtl(Z)V

    .line 164
    return-void
.end method

.method public setFirstHorizontalBias(F)V
    .locals 1
    .param p1, "bias"    # F

    .line 486
    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Flow;->mFlow:Landroidx/constraintlayout/core/widgets/Flow;

    invoke-virtual {v0, p1}, Landroidx/constraintlayout/core/widgets/Flow;->setFirstHorizontalBias(F)V

    .line 487
    invoke-virtual {p0}, Landroidx/constraintlayout/helper/widget/Flow;->requestLayout()V

    .line 488
    return-void
.end method

.method public setFirstHorizontalStyle(I)V
    .locals 1
    .param p1, "style"    # I

    .line 466
    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Flow;->mFlow:Landroidx/constraintlayout/core/widgets/Flow;

    invoke-virtual {v0, p1}, Landroidx/constraintlayout/core/widgets/Flow;->setFirstHorizontalStyle(I)V

    .line 467
    invoke-virtual {p0}, Landroidx/constraintlayout/helper/widget/Flow;->requestLayout()V

    .line 468
    return-void
.end method

.method public setFirstVerticalBias(F)V
    .locals 1
    .param p1, "bias"    # F

    .line 496
    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Flow;->mFlow:Landroidx/constraintlayout/core/widgets/Flow;

    invoke-virtual {v0, p1}, Landroidx/constraintlayout/core/widgets/Flow;->setFirstVerticalBias(F)V

    .line 497
    invoke-virtual {p0}, Landroidx/constraintlayout/helper/widget/Flow;->requestLayout()V

    .line 498
    return-void
.end method

.method public setFirstVerticalStyle(I)V
    .locals 1
    .param p1, "style"    # I

    .line 476
    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Flow;->mFlow:Landroidx/constraintlayout/core/widgets/Flow;

    invoke-virtual {v0, p1}, Landroidx/constraintlayout/core/widgets/Flow;->setFirstVerticalStyle(I)V

    .line 477
    invoke-virtual {p0}, Landroidx/constraintlayout/helper/widget/Flow;->requestLayout()V

    .line 478
    return-void
.end method

.method public setHorizontalAlign(I)V
    .locals 1
    .param p1, "align"    # I

    .line 512
    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Flow;->mFlow:Landroidx/constraintlayout/core/widgets/Flow;

    invoke-virtual {v0, p1}, Landroidx/constraintlayout/core/widgets/Flow;->setHorizontalAlign(I)V

    .line 513
    invoke-virtual {p0}, Landroidx/constraintlayout/helper/widget/Flow;->requestLayout()V

    .line 514
    return-void
.end method

.method public setHorizontalBias(F)V
    .locals 1
    .param p1, "bias"    # F

    .line 446
    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Flow;->mFlow:Landroidx/constraintlayout/core/widgets/Flow;

    invoke-virtual {v0, p1}, Landroidx/constraintlayout/core/widgets/Flow;->setHorizontalBias(F)V

    .line 447
    invoke-virtual {p0}, Landroidx/constraintlayout/helper/widget/Flow;->requestLayout()V

    .line 448
    return-void
.end method

.method public setHorizontalGap(I)V
    .locals 1
    .param p1, "gap"    # I

    .line 539
    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Flow;->mFlow:Landroidx/constraintlayout/core/widgets/Flow;

    invoke-virtual {v0, p1}, Landroidx/constraintlayout/core/widgets/Flow;->setHorizontalGap(I)V

    .line 540
    invoke-virtual {p0}, Landroidx/constraintlayout/helper/widget/Flow;->requestLayout()V

    .line 541
    return-void
.end method

.method public setHorizontalStyle(I)V
    .locals 1
    .param p1, "style"    # I

    .line 422
    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Flow;->mFlow:Landroidx/constraintlayout/core/widgets/Flow;

    invoke-virtual {v0, p1}, Landroidx/constraintlayout/core/widgets/Flow;->setHorizontalStyle(I)V

    .line 423
    invoke-virtual {p0}, Landroidx/constraintlayout/helper/widget/Flow;->requestLayout()V

    .line 424
    return-void
.end method

.method public setLastHorizontalBias(F)V
    .locals 1
    .param p1, "bias"    # F

    .line 383
    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Flow;->mFlow:Landroidx/constraintlayout/core/widgets/Flow;

    invoke-virtual {v0, p1}, Landroidx/constraintlayout/core/widgets/Flow;->setLastHorizontalBias(F)V

    .line 384
    invoke-virtual {p0}, Landroidx/constraintlayout/helper/widget/Flow;->requestLayout()V

    .line 385
    return-void
.end method

.method public setLastHorizontalStyle(I)V
    .locals 1
    .param p1, "style"    # I

    .line 365
    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Flow;->mFlow:Landroidx/constraintlayout/core/widgets/Flow;

    invoke-virtual {v0, p1}, Landroidx/constraintlayout/core/widgets/Flow;->setLastHorizontalStyle(I)V

    .line 366
    invoke-virtual {p0}, Landroidx/constraintlayout/helper/widget/Flow;->requestLayout()V

    .line 367
    return-void
.end method

.method public setLastVerticalBias(F)V
    .locals 1
    .param p1, "bias"    # F

    .line 392
    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Flow;->mFlow:Landroidx/constraintlayout/core/widgets/Flow;

    invoke-virtual {v0, p1}, Landroidx/constraintlayout/core/widgets/Flow;->setLastVerticalBias(F)V

    .line 393
    invoke-virtual {p0}, Landroidx/constraintlayout/helper/widget/Flow;->requestLayout()V

    .line 394
    return-void
.end method

.method public setLastVerticalStyle(I)V
    .locals 1
    .param p1, "style"    # I

    .line 374
    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Flow;->mFlow:Landroidx/constraintlayout/core/widgets/Flow;

    invoke-virtual {v0, p1}, Landroidx/constraintlayout/core/widgets/Flow;->setLastVerticalStyle(I)V

    .line 375
    invoke-virtual {p0}, Landroidx/constraintlayout/helper/widget/Flow;->requestLayout()V

    .line 376
    return-void
.end method

.method public setMaxElementsWrap(I)V
    .locals 1
    .param p1, "max"    # I

    .line 559
    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Flow;->mFlow:Landroidx/constraintlayout/core/widgets/Flow;

    invoke-virtual {v0, p1}, Landroidx/constraintlayout/core/widgets/Flow;->setMaxElementsWrap(I)V

    .line 560
    invoke-virtual {p0}, Landroidx/constraintlayout/helper/widget/Flow;->requestLayout()V

    .line 561
    return-void
.end method

.method public setOrientation(I)V
    .locals 1
    .param p1, "orientation"    # I

    .line 306
    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Flow;->mFlow:Landroidx/constraintlayout/core/widgets/Flow;

    invoke-virtual {v0, p1}, Landroidx/constraintlayout/core/widgets/Flow;->setOrientation(I)V

    .line 307
    invoke-virtual {p0}, Landroidx/constraintlayout/helper/widget/Flow;->requestLayout()V

    .line 308
    return-void
.end method

.method public setPadding(I)V
    .locals 1
    .param p1, "padding"    # I

    .line 316
    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Flow;->mFlow:Landroidx/constraintlayout/core/widgets/Flow;

    invoke-virtual {v0, p1}, Landroidx/constraintlayout/core/widgets/Flow;->setPadding(I)V

    .line 317
    invoke-virtual {p0}, Landroidx/constraintlayout/helper/widget/Flow;->requestLayout()V

    .line 318
    return-void
.end method

.method public setPaddingBottom(I)V
    .locals 1
    .param p1, "paddingBottom"    # I

    .line 356
    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Flow;->mFlow:Landroidx/constraintlayout/core/widgets/Flow;

    invoke-virtual {v0, p1}, Landroidx/constraintlayout/core/widgets/Flow;->setPaddingBottom(I)V

    .line 357
    invoke-virtual {p0}, Landroidx/constraintlayout/helper/widget/Flow;->requestLayout()V

    .line 358
    return-void
.end method

.method public setPaddingLeft(I)V
    .locals 1
    .param p1, "paddingLeft"    # I

    .line 326
    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Flow;->mFlow:Landroidx/constraintlayout/core/widgets/Flow;

    invoke-virtual {v0, p1}, Landroidx/constraintlayout/core/widgets/Flow;->setPaddingLeft(I)V

    .line 327
    invoke-virtual {p0}, Landroidx/constraintlayout/helper/widget/Flow;->requestLayout()V

    .line 328
    return-void
.end method

.method public setPaddingRight(I)V
    .locals 1
    .param p1, "paddingRight"    # I

    .line 346
    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Flow;->mFlow:Landroidx/constraintlayout/core/widgets/Flow;

    invoke-virtual {v0, p1}, Landroidx/constraintlayout/core/widgets/Flow;->setPaddingRight(I)V

    .line 347
    invoke-virtual {p0}, Landroidx/constraintlayout/helper/widget/Flow;->requestLayout()V

    .line 348
    return-void
.end method

.method public setPaddingTop(I)V
    .locals 1
    .param p1, "paddingTop"    # I

    .line 336
    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Flow;->mFlow:Landroidx/constraintlayout/core/widgets/Flow;

    invoke-virtual {v0, p1}, Landroidx/constraintlayout/core/widgets/Flow;->setPaddingTop(I)V

    .line 337
    invoke-virtual {p0}, Landroidx/constraintlayout/helper/widget/Flow;->requestLayout()V

    .line 338
    return-void
.end method

.method public setVerticalAlign(I)V
    .locals 1
    .param p1, "align"    # I

    .line 529
    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Flow;->mFlow:Landroidx/constraintlayout/core/widgets/Flow;

    invoke-virtual {v0, p1}, Landroidx/constraintlayout/core/widgets/Flow;->setVerticalAlign(I)V

    .line 530
    invoke-virtual {p0}, Landroidx/constraintlayout/helper/widget/Flow;->requestLayout()V

    .line 531
    return-void
.end method

.method public setVerticalBias(F)V
    .locals 1
    .param p1, "bias"    # F

    .line 456
    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Flow;->mFlow:Landroidx/constraintlayout/core/widgets/Flow;

    invoke-virtual {v0, p1}, Landroidx/constraintlayout/core/widgets/Flow;->setVerticalBias(F)V

    .line 457
    invoke-virtual {p0}, Landroidx/constraintlayout/helper/widget/Flow;->requestLayout()V

    .line 458
    return-void
.end method

.method public setVerticalGap(I)V
    .locals 1
    .param p1, "gap"    # I

    .line 549
    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Flow;->mFlow:Landroidx/constraintlayout/core/widgets/Flow;

    invoke-virtual {v0, p1}, Landroidx/constraintlayout/core/widgets/Flow;->setVerticalGap(I)V

    .line 550
    invoke-virtual {p0}, Landroidx/constraintlayout/helper/widget/Flow;->requestLayout()V

    .line 551
    return-void
.end method

.method public setVerticalStyle(I)V
    .locals 1
    .param p1, "style"    # I

    .line 436
    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Flow;->mFlow:Landroidx/constraintlayout/core/widgets/Flow;

    invoke-virtual {v0, p1}, Landroidx/constraintlayout/core/widgets/Flow;->setVerticalStyle(I)V

    .line 437
    invoke-virtual {p0}, Landroidx/constraintlayout/helper/widget/Flow;->requestLayout()V

    .line 438
    return-void
.end method

.method public setWrapMode(I)V
    .locals 1
    .param p1, "mode"    # I

    .line 408
    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Flow;->mFlow:Landroidx/constraintlayout/core/widgets/Flow;

    invoke-virtual {v0, p1}, Landroidx/constraintlayout/core/widgets/Flow;->setWrapMode(I)V

    .line 409
    invoke-virtual {p0}, Landroidx/constraintlayout/helper/widget/Flow;->requestLayout()V

    .line 410
    return-void
.end method
