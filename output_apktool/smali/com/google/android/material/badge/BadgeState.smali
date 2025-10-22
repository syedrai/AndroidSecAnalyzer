.class public final Lcom/google/android/material/badge/BadgeState;
.super Ljava/lang/Object;
.source "BadgeState.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/badge/BadgeState$State;
    }
.end annotation


# static fields
.field private static final BADGE_RESOURCE_TAG:Ljava/lang/String; = "badge"


# instance fields
.field badgeFixedEdge:I

.field final badgeHeight:F

.field final badgeRadius:F

.field final badgeWidth:F

.field final badgeWithTextHeight:F

.field final badgeWithTextRadius:F

.field final badgeWithTextWidth:F

.field private final currentState:Lcom/google/android/material/badge/BadgeState$State;

.field final horizontalInset:I

.field final horizontalInsetWithText:I

.field offsetAlignmentMode:I

.field private final overridingState:Lcom/google/android/material/badge/BadgeState$State;


# direct methods
.method constructor <init>(Landroid/content/Context;IIILcom/google/android/material/badge/BadgeState$State;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "badgeResId"    # I
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I
    .param p5, "storedState"    # Lcom/google/android/material/badge/BadgeState$State;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "badgeResId",
            "defStyleAttr",
            "defStyleRes",
            "storedState"
        }
    .end annotation

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    new-instance v0, Lcom/google/android/material/badge/BadgeState$State;

    invoke-direct {v0}, Lcom/google/android/material/badge/BadgeState$State;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/badge/BadgeState;->currentState:Lcom/google/android/material/badge/BadgeState$State;

    .line 91
    if-nez p5, :cond_0

    .line 92
    new-instance v0, Lcom/google/android/material/badge/BadgeState$State;

    invoke-direct {v0}, Lcom/google/android/material/badge/BadgeState$State;-><init>()V

    move-object p5, v0

    .line 94
    :cond_0
    if-eqz p2, :cond_1

    .line 95
    invoke-static {p5, p2}, Lcom/google/android/material/badge/BadgeState$State;->-$$Nest$fputbadgeResId(Lcom/google/android/material/badge/BadgeState$State;I)V

    .line 98
    :cond_1
    invoke-static {p5}, Lcom/google/android/material/badge/BadgeState$State;->-$$Nest$fgetbadgeResId(Lcom/google/android/material/badge/BadgeState$State;)I

    move-result v0

    invoke-direct {p0, p1, v0, p3, p4}, Lcom/google/android/material/badge/BadgeState;->generateTypedArray(Landroid/content/Context;III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 100
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 101
    .local v1, "res":Landroid/content/res/Resources;
    sget v2, Lcom/google/android/material/badge/R$styleable;->Badge_badgeRadius:I

    .line 102
    const/4 v3, -0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    int-to-float v2, v2

    iput v2, p0, Lcom/google/android/material/badge/BadgeState;->badgeRadius:F

    .line 104
    nop

    .line 106
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v4, Lcom/google/android/material/badge/R$dimen;->mtrl_badge_horizontal_edge_offset:I

    .line 107
    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/google/android/material/badge/BadgeState;->horizontalInset:I

    .line 109
    nop

    .line 111
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v4, Lcom/google/android/material/badge/R$dimen;->mtrl_badge_text_horizontal_edge_offset:I

    .line 112
    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/google/android/material/badge/BadgeState;->horizontalInsetWithText:I

    .line 114
    sget v2, Lcom/google/android/material/badge/R$styleable;->Badge_badgeWithTextRadius:I

    .line 115
    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    int-to-float v2, v2

    iput v2, p0, Lcom/google/android/material/badge/BadgeState;->badgeWithTextRadius:F

    .line 116
    sget v2, Lcom/google/android/material/badge/R$styleable;->Badge_badgeWidth:I

    sget v4, Lcom/google/android/material/badge/R$dimen;->m3_badge_size:I

    .line 117
    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    iput v2, p0, Lcom/google/android/material/badge/BadgeState;->badgeWidth:F

    .line 118
    sget v2, Lcom/google/android/material/badge/R$styleable;->Badge_badgeWithTextWidth:I

    sget v4, Lcom/google/android/material/badge/R$dimen;->m3_badge_with_text_size:I

    .line 121
    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    .line 119
    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    iput v2, p0, Lcom/google/android/material/badge/BadgeState;->badgeWithTextWidth:F

    .line 122
    sget v2, Lcom/google/android/material/badge/R$styleable;->Badge_badgeHeight:I

    sget v4, Lcom/google/android/material/badge/R$dimen;->m3_badge_size:I

    .line 123
    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    iput v2, p0, Lcom/google/android/material/badge/BadgeState;->badgeHeight:F

    .line 124
    sget v2, Lcom/google/android/material/badge/R$styleable;->Badge_badgeWithTextHeight:I

    sget v4, Lcom/google/android/material/badge/R$dimen;->m3_badge_with_text_size:I

    .line 127
    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    .line 125
    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    iput v2, p0, Lcom/google/android/material/badge/BadgeState;->badgeWithTextHeight:F

    .line 129
    sget v2, Lcom/google/android/material/badge/R$styleable;->Badge_offsetAlignmentMode:I

    .line 130
    const/4 v4, 0x1

    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Lcom/google/android/material/badge/BadgeState;->offsetAlignmentMode:I

    .line 132
    sget v2, Lcom/google/android/material/badge/R$styleable;->Badge_badgeFixedEdge:I

    .line 133
    const/4 v5, 0x0

    invoke-virtual {v0, v2, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Lcom/google/android/material/badge/BadgeState;->badgeFixedEdge:I

    .line 135
    iget-object v2, p0, Lcom/google/android/material/badge/BadgeState;->currentState:Lcom/google/android/material/badge/BadgeState$State;

    invoke-static {p5}, Lcom/google/android/material/badge/BadgeState$State;->-$$Nest$fgetalpha(Lcom/google/android/material/badge/BadgeState$State;)I

    move-result v6

    const/4 v7, -0x2

    if-ne v6, v7, :cond_2

    const/16 v6, 0xff

    goto :goto_0

    :cond_2
    invoke-static {p5}, Lcom/google/android/material/badge/BadgeState$State;->-$$Nest$fgetalpha(Lcom/google/android/material/badge/BadgeState$State;)I

    move-result v6

    :goto_0
    invoke-static {v2, v6}, Lcom/google/android/material/badge/BadgeState$State;->-$$Nest$fputalpha(Lcom/google/android/material/badge/BadgeState$State;I)V

    .line 140
    invoke-static {p5}, Lcom/google/android/material/badge/BadgeState$State;->-$$Nest$fgetnumber(Lcom/google/android/material/badge/BadgeState$State;)I

    move-result v2

    if-eq v2, v7, :cond_3

    .line 141
    iget-object v2, p0, Lcom/google/android/material/badge/BadgeState;->currentState:Lcom/google/android/material/badge/BadgeState$State;

    invoke-static {p5}, Lcom/google/android/material/badge/BadgeState$State;->-$$Nest$fgetnumber(Lcom/google/android/material/badge/BadgeState$State;)I

    move-result v3

    invoke-static {v2, v3}, Lcom/google/android/material/badge/BadgeState$State;->-$$Nest$fputnumber(Lcom/google/android/material/badge/BadgeState$State;I)V

    goto :goto_1

    .line 142
    :cond_3
    sget v2, Lcom/google/android/material/badge/R$styleable;->Badge_number:I

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 143
    iget-object v2, p0, Lcom/google/android/material/badge/BadgeState;->currentState:Lcom/google/android/material/badge/BadgeState$State;

    sget v3, Lcom/google/android/material/badge/R$styleable;->Badge_number:I

    invoke-virtual {v0, v3, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    invoke-static {v2, v3}, Lcom/google/android/material/badge/BadgeState$State;->-$$Nest$fputnumber(Lcom/google/android/material/badge/BadgeState$State;I)V

    goto :goto_1

    .line 145
    :cond_4
    iget-object v2, p0, Lcom/google/android/material/badge/BadgeState;->currentState:Lcom/google/android/material/badge/BadgeState$State;

    invoke-static {v2, v3}, Lcom/google/android/material/badge/BadgeState$State;->-$$Nest$fputnumber(Lcom/google/android/material/badge/BadgeState$State;I)V

    .line 148
    :goto_1
    invoke-static {p5}, Lcom/google/android/material/badge/BadgeState$State;->-$$Nest$fgettext(Lcom/google/android/material/badge/BadgeState$State;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 149
    iget-object v2, p0, Lcom/google/android/material/badge/BadgeState;->currentState:Lcom/google/android/material/badge/BadgeState$State;

    invoke-static {p5}, Lcom/google/android/material/badge/BadgeState$State;->-$$Nest$fgettext(Lcom/google/android/material/badge/BadgeState$State;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/material/badge/BadgeState$State;->-$$Nest$fputtext(Lcom/google/android/material/badge/BadgeState$State;Ljava/lang/String;)V

    goto :goto_2

    .line 150
    :cond_5
    sget v2, Lcom/google/android/material/badge/R$styleable;->Badge_badgeText:I

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 151
    iget-object v2, p0, Lcom/google/android/material/badge/BadgeState;->currentState:Lcom/google/android/material/badge/BadgeState$State;

    sget v3, Lcom/google/android/material/badge/R$styleable;->Badge_badgeText:I

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/material/badge/BadgeState$State;->-$$Nest$fputtext(Lcom/google/android/material/badge/BadgeState$State;Ljava/lang/String;)V

    .line 154
    :cond_6
    :goto_2
    iget-object v2, p0, Lcom/google/android/material/badge/BadgeState;->currentState:Lcom/google/android/material/badge/BadgeState$State;

    invoke-static {p5}, Lcom/google/android/material/badge/BadgeState$State;->-$$Nest$fgetcontentDescriptionForText(Lcom/google/android/material/badge/BadgeState$State;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/material/badge/BadgeState$State;->-$$Nest$fputcontentDescriptionForText(Lcom/google/android/material/badge/BadgeState$State;Ljava/lang/CharSequence;)V

    .line 156
    iget-object v2, p0, Lcom/google/android/material/badge/BadgeState;->currentState:Lcom/google/android/material/badge/BadgeState$State;

    .line 157
    invoke-static {p5}, Lcom/google/android/material/badge/BadgeState$State;->-$$Nest$fgetcontentDescriptionNumberless(Lcom/google/android/material/badge/BadgeState$State;)Ljava/lang/CharSequence;

    move-result-object v3

    if-nez v3, :cond_7

    .line 158
    sget v3, Lcom/google/android/material/badge/R$string;->mtrl_badge_numberless_content_description:I

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_3

    .line 159
    :cond_7
    invoke-static {p5}, Lcom/google/android/material/badge/BadgeState$State;->-$$Nest$fgetcontentDescriptionNumberless(Lcom/google/android/material/badge/BadgeState$State;)Ljava/lang/CharSequence;

    move-result-object v3

    :goto_3
    invoke-static {v2, v3}, Lcom/google/android/material/badge/BadgeState$State;->-$$Nest$fputcontentDescriptionNumberless(Lcom/google/android/material/badge/BadgeState$State;Ljava/lang/CharSequence;)V

    .line 161
    iget-object v2, p0, Lcom/google/android/material/badge/BadgeState;->currentState:Lcom/google/android/material/badge/BadgeState$State;

    .line 162
    invoke-static {p5}, Lcom/google/android/material/badge/BadgeState$State;->-$$Nest$fgetcontentDescriptionQuantityStrings(Lcom/google/android/material/badge/BadgeState$State;)I

    move-result v3

    if-nez v3, :cond_8

    .line 163
    sget v3, Lcom/google/android/material/badge/R$plurals;->mtrl_badge_content_description:I

    goto :goto_4

    .line 164
    :cond_8
    invoke-static {p5}, Lcom/google/android/material/badge/BadgeState$State;->-$$Nest$fgetcontentDescriptionQuantityStrings(Lcom/google/android/material/badge/BadgeState$State;)I

    move-result v3

    :goto_4
    invoke-static {v2, v3}, Lcom/google/android/material/badge/BadgeState$State;->-$$Nest$fputcontentDescriptionQuantityStrings(Lcom/google/android/material/badge/BadgeState$State;I)V

    .line 166
    iget-object v2, p0, Lcom/google/android/material/badge/BadgeState;->currentState:Lcom/google/android/material/badge/BadgeState$State;

    .line 167
    invoke-static {p5}, Lcom/google/android/material/badge/BadgeState$State;->-$$Nest$fgetcontentDescriptionExceedsMaxBadgeNumberRes(Lcom/google/android/material/badge/BadgeState$State;)I

    move-result v3

    if-nez v3, :cond_9

    .line 168
    sget v3, Lcom/google/android/material/badge/R$string;->mtrl_exceed_max_badge_number_content_description:I

    goto :goto_5

    .line 169
    :cond_9
    invoke-static {p5}, Lcom/google/android/material/badge/BadgeState$State;->-$$Nest$fgetcontentDescriptionExceedsMaxBadgeNumberRes(Lcom/google/android/material/badge/BadgeState$State;)I

    move-result v3

    :goto_5
    invoke-static {v2, v3}, Lcom/google/android/material/badge/BadgeState$State;->-$$Nest$fputcontentDescriptionExceedsMaxBadgeNumberRes(Lcom/google/android/material/badge/BadgeState$State;I)V

    .line 171
    iget-object v2, p0, Lcom/google/android/material/badge/BadgeState;->currentState:Lcom/google/android/material/badge/BadgeState$State;

    invoke-static {p5}, Lcom/google/android/material/badge/BadgeState$State;->-$$Nest$fgetisVisible(Lcom/google/android/material/badge/BadgeState$State;)Ljava/lang/Boolean;

    move-result-object v3

    if-eqz v3, :cond_b

    invoke-static {p5}, Lcom/google/android/material/badge/BadgeState$State;->-$$Nest$fgetisVisible(Lcom/google/android/material/badge/BadgeState$State;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_a

    goto :goto_6

    :cond_a
    const/4 v4, 0x0

    :cond_b
    :goto_6
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/material/badge/BadgeState$State;->-$$Nest$fputisVisible(Lcom/google/android/material/badge/BadgeState$State;Ljava/lang/Boolean;)V

    .line 173
    iget-object v2, p0, Lcom/google/android/material/badge/BadgeState;->currentState:Lcom/google/android/material/badge/BadgeState$State;

    .line 174
    invoke-static {p5}, Lcom/google/android/material/badge/BadgeState$State;->-$$Nest$fgetmaxCharacterCount(Lcom/google/android/material/badge/BadgeState$State;)I

    move-result v3

    if-ne v3, v7, :cond_c

    .line 175
    sget v3, Lcom/google/android/material/badge/R$styleable;->Badge_maxCharacterCount:I

    invoke-virtual {v0, v3, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    goto :goto_7

    .line 176
    :cond_c
    invoke-static {p5}, Lcom/google/android/material/badge/BadgeState$State;->-$$Nest$fgetmaxCharacterCount(Lcom/google/android/material/badge/BadgeState$State;)I

    move-result v3

    :goto_7
    invoke-static {v2, v3}, Lcom/google/android/material/badge/BadgeState$State;->-$$Nest$fputmaxCharacterCount(Lcom/google/android/material/badge/BadgeState$State;I)V

    .line 178
    iget-object v2, p0, Lcom/google/android/material/badge/BadgeState;->currentState:Lcom/google/android/material/badge/BadgeState$State;

    .line 179
    invoke-static {p5}, Lcom/google/android/material/badge/BadgeState$State;->-$$Nest$fgetmaxNumber(Lcom/google/android/material/badge/BadgeState$State;)I

    move-result v3

    if-ne v3, v7, :cond_d

    .line 180
    sget v3, Lcom/google/android/material/badge/R$styleable;->Badge_maxNumber:I

    invoke-virtual {v0, v3, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    goto :goto_8

    .line 181
    :cond_d
    invoke-static {p5}, Lcom/google/android/material/badge/BadgeState$State;->-$$Nest$fgetmaxNumber(Lcom/google/android/material/badge/BadgeState$State;)I

    move-result v3

    :goto_8
    invoke-static {v2, v3}, Lcom/google/android/material/badge/BadgeState$State;->-$$Nest$fputmaxNumber(Lcom/google/android/material/badge/BadgeState$State;I)V

    .line 183
    iget-object v2, p0, Lcom/google/android/material/badge/BadgeState;->currentState:Lcom/google/android/material/badge/BadgeState$State;

    .line 184
    invoke-static {p5}, Lcom/google/android/material/badge/BadgeState$State;->-$$Nest$fgetbadgeShapeAppearanceResId(Lcom/google/android/material/badge/BadgeState$State;)Ljava/lang/Integer;

    move-result-object v3

    if-nez v3, :cond_e

    .line 185
    sget v3, Lcom/google/android/material/badge/R$styleable;->Badge_badgeShapeAppearance:I

    sget v4, Lcom/google/android/material/badge/R$style;->ShapeAppearance_M3_Sys_Shape_Corner_Full:I

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    goto :goto_9

    .line 188
    :cond_e
    invoke-static {p5}, Lcom/google/android/material/badge/BadgeState$State;->-$$Nest$fgetbadgeShapeAppearanceResId(Lcom/google/android/material/badge/BadgeState$State;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 184
    :goto_9
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/material/badge/BadgeState$State;->-$$Nest$fputbadgeShapeAppearanceResId(Lcom/google/android/material/badge/BadgeState$State;Ljava/lang/Integer;)V

    .line 190
    iget-object v2, p0, Lcom/google/android/material/badge/BadgeState;->currentState:Lcom/google/android/material/badge/BadgeState$State;

    .line 191
    invoke-static {p5}, Lcom/google/android/material/badge/BadgeState$State;->-$$Nest$fgetbadgeShapeAppearanceOverlayResId(Lcom/google/android/material/badge/BadgeState$State;)Ljava/lang/Integer;

    move-result-object v3

    if-nez v3, :cond_f

    .line 192
    sget v3, Lcom/google/android/material/badge/R$styleable;->Badge_badgeShapeAppearanceOverlay:I

    invoke-virtual {v0, v3, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    goto :goto_a

    .line 193
    :cond_f
    invoke-static {p5}, Lcom/google/android/material/badge/BadgeState$State;->-$$Nest$fgetbadgeShapeAppearanceOverlayResId(Lcom/google/android/material/badge/BadgeState$State;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 191
    :goto_a
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/material/badge/BadgeState$State;->-$$Nest$fputbadgeShapeAppearanceOverlayResId(Lcom/google/android/material/badge/BadgeState$State;Ljava/lang/Integer;)V

    .line 195
    iget-object v2, p0, Lcom/google/android/material/badge/BadgeState;->currentState:Lcom/google/android/material/badge/BadgeState$State;

    .line 196
    invoke-static {p5}, Lcom/google/android/material/badge/BadgeState$State;->-$$Nest$fgetbadgeWithTextShapeAppearanceResId(Lcom/google/android/material/badge/BadgeState$State;)Ljava/lang/Integer;

    move-result-object v3

    if-nez v3, :cond_10

    .line 197
    sget v3, Lcom/google/android/material/badge/R$styleable;->Badge_badgeWithTextShapeAppearance:I

    sget v4, Lcom/google/android/material/badge/R$style;->ShapeAppearance_M3_Sys_Shape_Corner_Full:I

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    goto :goto_b

    .line 200
    :cond_10
    invoke-static {p5}, Lcom/google/android/material/badge/BadgeState$State;->-$$Nest$fgetbadgeWithTextShapeAppearanceResId(Lcom/google/android/material/badge/BadgeState$State;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 196
    :goto_b
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/material/badge/BadgeState$State;->-$$Nest$fputbadgeWithTextShapeAppearanceResId(Lcom/google/android/material/badge/BadgeState$State;Ljava/lang/Integer;)V

    .line 202
    iget-object v2, p0, Lcom/google/android/material/badge/BadgeState;->currentState:Lcom/google/android/material/badge/BadgeState$State;

    .line 203
    invoke-static {p5}, Lcom/google/android/material/badge/BadgeState$State;->-$$Nest$fgetbadgeWithTextShapeAppearanceOverlayResId(Lcom/google/android/material/badge/BadgeState$State;)Ljava/lang/Integer;

    move-result-object v3

    if-nez v3, :cond_11

    .line 204
    sget v3, Lcom/google/android/material/badge/R$styleable;->Badge_badgeWithTextShapeAppearanceOverlay:I

    invoke-virtual {v0, v3, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    goto :goto_c

    .line 205
    :cond_11
    invoke-static {p5}, Lcom/google/android/material/badge/BadgeState$State;->-$$Nest$fgetbadgeWithTextShapeAppearanceOverlayResId(Lcom/google/android/material/badge/BadgeState$State;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 203
    :goto_c
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/material/badge/BadgeState$State;->-$$Nest$fputbadgeWithTextShapeAppearanceOverlayResId(Lcom/google/android/material/badge/BadgeState$State;Ljava/lang/Integer;)V

    .line 207
    iget-object v2, p0, Lcom/google/android/material/badge/BadgeState;->currentState:Lcom/google/android/material/badge/BadgeState$State;

    .line 208
    invoke-static {p5}, Lcom/google/android/material/badge/BadgeState$State;->-$$Nest$fgetbackgroundColor(Lcom/google/android/material/badge/BadgeState$State;)Ljava/lang/Integer;

    move-result-object v3

    if-nez v3, :cond_12

    .line 209
    sget v3, Lcom/google/android/material/badge/R$styleable;->Badge_backgroundColor:I

    invoke-static {p1, v0, v3}, Lcom/google/android/material/badge/BadgeState;->readColorFromAttributes(Landroid/content/Context;Landroid/content/res/TypedArray;I)I

    move-result v3

    goto :goto_d

    .line 210
    :cond_12
    invoke-static {p5}, Lcom/google/android/material/badge/BadgeState$State;->-$$Nest$fgetbackgroundColor(Lcom/google/android/material/badge/BadgeState$State;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 208
    :goto_d
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/material/badge/BadgeState$State;->-$$Nest$fputbackgroundColor(Lcom/google/android/material/badge/BadgeState$State;Ljava/lang/Integer;)V

    .line 212
    iget-object v2, p0, Lcom/google/android/material/badge/BadgeState;->currentState:Lcom/google/android/material/badge/BadgeState$State;

    .line 213
    invoke-static {p5}, Lcom/google/android/material/badge/BadgeState$State;->-$$Nest$fgetbadgeTextAppearanceResId(Lcom/google/android/material/badge/BadgeState$State;)Ljava/lang/Integer;

    move-result-object v3

    if-nez v3, :cond_13

    .line 214
    sget v3, Lcom/google/android/material/badge/R$styleable;->Badge_badgeTextAppearance:I

    sget v4, Lcom/google/android/material/badge/R$style;->TextAppearance_MaterialComponents_Badge:I

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    goto :goto_e

    .line 217
    :cond_13
    invoke-static {p5}, Lcom/google/android/material/badge/BadgeState$State;->-$$Nest$fgetbadgeTextAppearanceResId(Lcom/google/android/material/badge/BadgeState$State;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 213
    :goto_e
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/material/badge/BadgeState$State;->-$$Nest$fputbadgeTextAppearanceResId(Lcom/google/android/material/badge/BadgeState$State;Ljava/lang/Integer;)V

    .line 221
    invoke-static {p5}, Lcom/google/android/material/badge/BadgeState$State;->-$$Nest$fgetbadgeTextColor(Lcom/google/android/material/badge/BadgeState$State;)Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_14

    .line 222
    iget-object v2, p0, Lcom/google/android/material/badge/BadgeState;->currentState:Lcom/google/android/material/badge/BadgeState$State;

    invoke-static {p5}, Lcom/google/android/material/badge/BadgeState$State;->-$$Nest$fgetbadgeTextColor(Lcom/google/android/material/badge/BadgeState$State;)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/material/badge/BadgeState$State;->-$$Nest$fputbadgeTextColor(Lcom/google/android/material/badge/BadgeState$State;Ljava/lang/Integer;)V

    goto :goto_f

    .line 223
    :cond_14
    sget v2, Lcom/google/android/material/badge/R$styleable;->Badge_badgeTextColor:I

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 224
    iget-object v2, p0, Lcom/google/android/material/badge/BadgeState;->currentState:Lcom/google/android/material/badge/BadgeState$State;

    sget v3, Lcom/google/android/material/badge/R$styleable;->Badge_badgeTextColor:I

    .line 225
    invoke-static {p1, v0, v3}, Lcom/google/android/material/badge/BadgeState;->readColorFromAttributes(Landroid/content/Context;Landroid/content/res/TypedArray;I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/material/badge/BadgeState$State;->-$$Nest$fputbadgeTextColor(Lcom/google/android/material/badge/BadgeState$State;Ljava/lang/Integer;)V

    goto :goto_f

    .line 227
    :cond_15
    new-instance v2, Lcom/google/android/material/resources/TextAppearance;

    iget-object v3, p0, Lcom/google/android/material/badge/BadgeState;->currentState:Lcom/google/android/material/badge/BadgeState$State;

    invoke-static {v3}, Lcom/google/android/material/badge/BadgeState$State;->-$$Nest$fgetbadgeTextAppearanceResId(Lcom/google/android/material/badge/BadgeState$State;)Ljava/lang/Integer;

    move-result-object v3

    .line 228
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {v2, p1, v3}, Lcom/google/android/material/resources/TextAppearance;-><init>(Landroid/content/Context;I)V

    .line 229
    .local v2, "textAppearance":Lcom/google/android/material/resources/TextAppearance;
    iget-object v3, p0, Lcom/google/android/material/badge/BadgeState;->currentState:Lcom/google/android/material/badge/BadgeState$State;

    invoke-virtual {v2}, Lcom/google/android/material/resources/TextAppearance;->getTextColor()Landroid/content/res/ColorStateList;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/android/material/badge/BadgeState$State;->-$$Nest$fputbadgeTextColor(Lcom/google/android/material/badge/BadgeState$State;Ljava/lang/Integer;)V

    .line 232
    .end local v2    # "textAppearance":Lcom/google/android/material/resources/TextAppearance;
    :goto_f
    iget-object v2, p0, Lcom/google/android/material/badge/BadgeState;->currentState:Lcom/google/android/material/badge/BadgeState$State;

    .line 233
    invoke-static {p5}, Lcom/google/android/material/badge/BadgeState$State;->-$$Nest$fgetbadgeGravity(Lcom/google/android/material/badge/BadgeState$State;)Ljava/lang/Integer;

    move-result-object v3

    if-nez v3, :cond_16

    .line 234
    sget v3, Lcom/google/android/material/badge/R$styleable;->Badge_badgeGravity:I

    const v4, 0x800035

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    goto :goto_10

    .line 235
    :cond_16
    invoke-static {p5}, Lcom/google/android/material/badge/BadgeState$State;->-$$Nest$fgetbadgeGravity(Lcom/google/android/material/badge/BadgeState$State;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 233
    :goto_10
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/material/badge/BadgeState$State;->-$$Nest$fputbadgeGravity(Lcom/google/android/material/badge/BadgeState$State;Ljava/lang/Integer;)V

    .line 237
    iget-object v2, p0, Lcom/google/android/material/badge/BadgeState;->currentState:Lcom/google/android/material/badge/BadgeState$State;

    .line 238
    invoke-static {p5}, Lcom/google/android/material/badge/BadgeState$State;->-$$Nest$fgetbadgeHorizontalPadding(Lcom/google/android/material/badge/BadgeState$State;)Ljava/lang/Integer;

    move-result-object v3

    if-nez v3, :cond_17

    .line 239
    sget v3, Lcom/google/android/material/badge/R$styleable;->Badge_badgeWidePadding:I

    sget v4, Lcom/google/android/material/badge/R$dimen;->mtrl_badge_long_text_horizontal_padding:I

    .line 241
    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 239
    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    goto :goto_11

    .line 242
    :cond_17
    invoke-static {p5}, Lcom/google/android/material/badge/BadgeState$State;->-$$Nest$fgetbadgeHorizontalPadding(Lcom/google/android/material/badge/BadgeState$State;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 238
    :goto_11
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/material/badge/BadgeState$State;->-$$Nest$fputbadgeHorizontalPadding(Lcom/google/android/material/badge/BadgeState$State;Ljava/lang/Integer;)V

    .line 243
    iget-object v2, p0, Lcom/google/android/material/badge/BadgeState;->currentState:Lcom/google/android/material/badge/BadgeState$State;

    .line 244
    invoke-static {p5}, Lcom/google/android/material/badge/BadgeState$State;->-$$Nest$fgetbadgeVerticalPadding(Lcom/google/android/material/badge/BadgeState$State;)Ljava/lang/Integer;

    move-result-object v3

    if-nez v3, :cond_18

    .line 245
    sget v3, Lcom/google/android/material/badge/R$styleable;->Badge_badgeVerticalPadding:I

    sget v4, Lcom/google/android/material/badge/R$dimen;->m3_badge_with_text_vertical_padding:I

    .line 247
    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 245
    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    goto :goto_12

    .line 248
    :cond_18
    invoke-static {p5}, Lcom/google/android/material/badge/BadgeState$State;->-$$Nest$fgetbadgeVerticalPadding(Lcom/google/android/material/badge/BadgeState$State;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 244
    :goto_12
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/material/badge/BadgeState$State;->-$$Nest$fputbadgeVerticalPadding(Lcom/google/android/material/badge/BadgeState$State;Ljava/lang/Integer;)V

    .line 250
    iget-object v2, p0, Lcom/google/android/material/badge/BadgeState;->currentState:Lcom/google/android/material/badge/BadgeState$State;

    .line 251
    invoke-static {p5}, Lcom/google/android/material/badge/BadgeState$State;->-$$Nest$fgethorizontalOffsetWithoutText(Lcom/google/android/material/badge/BadgeState$State;)Ljava/lang/Integer;

    move-result-object v3

    if-nez v3, :cond_19

    .line 252
    sget v3, Lcom/google/android/material/badge/R$styleable;->Badge_horizontalOffset:I

    invoke-virtual {v0, v3, v5}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v3

    goto :goto_13

    .line 253
    :cond_19
    invoke-static {p5}, Lcom/google/android/material/badge/BadgeState$State;->-$$Nest$fgethorizontalOffsetWithoutText(Lcom/google/android/material/badge/BadgeState$State;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 251
    :goto_13
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/material/badge/BadgeState$State;->-$$Nest$fputhorizontalOffsetWithoutText(Lcom/google/android/material/badge/BadgeState$State;Ljava/lang/Integer;)V

    .line 255
    iget-object v2, p0, Lcom/google/android/material/badge/BadgeState;->currentState:Lcom/google/android/material/badge/BadgeState$State;

    .line 256
    invoke-static {p5}, Lcom/google/android/material/badge/BadgeState$State;->-$$Nest$fgetverticalOffsetWithoutText(Lcom/google/android/material/badge/BadgeState$State;)Ljava/lang/Integer;

    move-result-object v3

    if-nez v3, :cond_1a

    .line 257
    sget v3, Lcom/google/android/material/badge/R$styleable;->Badge_verticalOffset:I

    invoke-virtual {v0, v3, v5}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v3

    goto :goto_14

    .line 258
    :cond_1a
    invoke-static {p5}, Lcom/google/android/material/badge/BadgeState$State;->-$$Nest$fgetverticalOffsetWithoutText(Lcom/google/android/material/badge/BadgeState$State;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 256
    :goto_14
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/material/badge/BadgeState$State;->-$$Nest$fputverticalOffsetWithoutText(Lcom/google/android/material/badge/BadgeState$State;Ljava/lang/Integer;)V

    .line 263
    iget-object v2, p0, Lcom/google/android/material/badge/BadgeState;->currentState:Lcom/google/android/material/badge/BadgeState$State;

    .line 264
    invoke-static {p5}, Lcom/google/android/material/badge/BadgeState$State;->-$$Nest$fgethorizontalOffsetWithText(Lcom/google/android/material/badge/BadgeState$State;)Ljava/lang/Integer;

    move-result-object v3

    if-nez v3, :cond_1b

    .line 265
    sget v3, Lcom/google/android/material/badge/R$styleable;->Badge_horizontalOffsetWithText:I

    iget-object v4, p0, Lcom/google/android/material/badge/BadgeState;->currentState:Lcom/google/android/material/badge/BadgeState$State;

    invoke-static {v4}, Lcom/google/android/material/badge/BadgeState$State;->-$$Nest$fgethorizontalOffsetWithoutText(Lcom/google/android/material/badge/BadgeState$State;)Ljava/lang/Integer;

    move-result-object v4

    .line 267
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 265
    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v3

    goto :goto_15

    .line 268
    :cond_1b
    invoke-static {p5}, Lcom/google/android/material/badge/BadgeState$State;->-$$Nest$fgethorizontalOffsetWithText(Lcom/google/android/material/badge/BadgeState$State;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 264
    :goto_15
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/material/badge/BadgeState$State;->-$$Nest$fputhorizontalOffsetWithText(Lcom/google/android/material/badge/BadgeState$State;Ljava/lang/Integer;)V

    .line 270
    iget-object v2, p0, Lcom/google/android/material/badge/BadgeState;->currentState:Lcom/google/android/material/badge/BadgeState$State;

    .line 271
    invoke-static {p5}, Lcom/google/android/material/badge/BadgeState$State;->-$$Nest$fgetverticalOffsetWithText(Lcom/google/android/material/badge/BadgeState$State;)Ljava/lang/Integer;

    move-result-object v3

    if-nez v3, :cond_1c

    .line 272
    sget v3, Lcom/google/android/material/badge/R$styleable;->Badge_verticalOffsetWithText:I

    iget-object v4, p0, Lcom/google/android/material/badge/BadgeState;->currentState:Lcom/google/android/material/badge/BadgeState$State;

    invoke-static {v4}, Lcom/google/android/material/badge/BadgeState$State;->-$$Nest$fgetverticalOffsetWithoutText(Lcom/google/android/material/badge/BadgeState$State;)Ljava/lang/Integer;

    move-result-object v4

    .line 273
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 272
    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v3

    goto :goto_16

    .line 274
    :cond_1c
    invoke-static {p5}, Lcom/google/android/material/badge/BadgeState$State;->-$$Nest$fgetverticalOffsetWithText(Lcom/google/android/material/badge/BadgeState$State;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 271
    :goto_16
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/material/badge/BadgeState$State;->-$$Nest$fputverticalOffsetWithText(Lcom/google/android/material/badge/BadgeState$State;Ljava/lang/Integer;)V

    .line 276
    iget-object v2, p0, Lcom/google/android/material/badge/BadgeState;->currentState:Lcom/google/android/material/badge/BadgeState$State;

    .line 277
    invoke-static {p5}, Lcom/google/android/material/badge/BadgeState$State;->-$$Nest$fgetlargeFontVerticalOffsetAdjustment(Lcom/google/android/material/badge/BadgeState$State;)Ljava/lang/Integer;

    move-result-object v3

    if-nez v3, :cond_1d

    .line 278
    sget v3, Lcom/google/android/material/badge/R$styleable;->Badge_largeFontVerticalOffsetAdjustment:I

    invoke-virtual {v0, v3, v5}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v3

    goto :goto_17

    .line 280
    :cond_1d
    invoke-static {p5}, Lcom/google/android/material/badge/BadgeState$State;->-$$Nest$fgetlargeFontVerticalOffsetAdjustment(Lcom/google/android/material/badge/BadgeState$State;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 277
    :goto_17
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/material/badge/BadgeState$State;->-$$Nest$fputlargeFontVerticalOffsetAdjustment(Lcom/google/android/material/badge/BadgeState$State;Ljava/lang/Integer;)V

    .line 282
    iget-object v2, p0, Lcom/google/android/material/badge/BadgeState;->currentState:Lcom/google/android/material/badge/BadgeState$State;

    .line 283
    invoke-static {p5}, Lcom/google/android/material/badge/BadgeState$State;->-$$Nest$fgetadditionalHorizontalOffset(Lcom/google/android/material/badge/BadgeState$State;)Ljava/lang/Integer;

    move-result-object v3

    if-nez v3, :cond_1e

    const/4 v3, 0x0

    goto :goto_18

    :cond_1e
    invoke-static {p5}, Lcom/google/android/material/badge/BadgeState$State;->-$$Nest$fgetadditionalHorizontalOffset(Lcom/google/android/material/badge/BadgeState$State;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    :goto_18
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/material/badge/BadgeState$State;->-$$Nest$fputadditionalHorizontalOffset(Lcom/google/android/material/badge/BadgeState$State;Ljava/lang/Integer;)V

    .line 285
    iget-object v2, p0, Lcom/google/android/material/badge/BadgeState;->currentState:Lcom/google/android/material/badge/BadgeState$State;

    .line 286
    invoke-static {p5}, Lcom/google/android/material/badge/BadgeState$State;->-$$Nest$fgetadditionalVerticalOffset(Lcom/google/android/material/badge/BadgeState$State;)Ljava/lang/Integer;

    move-result-object v3

    if-nez v3, :cond_1f

    const/4 v3, 0x0

    goto :goto_19

    :cond_1f
    invoke-static {p5}, Lcom/google/android/material/badge/BadgeState$State;->-$$Nest$fgetadditionalVerticalOffset(Lcom/google/android/material/badge/BadgeState$State;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    :goto_19
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/material/badge/BadgeState$State;->-$$Nest$fputadditionalVerticalOffset(Lcom/google/android/material/badge/BadgeState$State;Ljava/lang/Integer;)V

    .line 288
    iget-object v2, p0, Lcom/google/android/material/badge/BadgeState;->currentState:Lcom/google/android/material/badge/BadgeState$State;

    .line 289
    invoke-static {p5}, Lcom/google/android/material/badge/BadgeState$State;->-$$Nest$fgetautoAdjustToWithinGrandparentBounds(Lcom/google/android/material/badge/BadgeState$State;)Ljava/lang/Boolean;

    move-result-object v3

    if-nez v3, :cond_20

    .line 290
    sget v3, Lcom/google/android/material/badge/R$styleable;->Badge_autoAdjustToWithinGrandparentBounds:I

    invoke-virtual {v0, v3, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    goto :goto_1a

    .line 291
    :cond_20
    invoke-static {p5}, Lcom/google/android/material/badge/BadgeState$State;->-$$Nest$fgetautoAdjustToWithinGrandparentBounds(Lcom/google/android/material/badge/BadgeState$State;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    .line 289
    :goto_1a
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/material/badge/BadgeState$State;->-$$Nest$fputautoAdjustToWithinGrandparentBounds(Lcom/google/android/material/badge/BadgeState$State;Ljava/lang/Boolean;)V

    .line 293
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 295
    invoke-static {p5}, Lcom/google/android/material/badge/BadgeState$State;->-$$Nest$fgetnumberLocale(Lcom/google/android/material/badge/BadgeState$State;)Ljava/util/Locale;

    move-result-object v2

    if-nez v2, :cond_22

    .line 296
    iget-object v2, p0, Lcom/google/android/material/badge/BadgeState;->currentState:Lcom/google/android/material/badge/BadgeState$State;

    .line 297
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x18

    if-lt v3, v4, :cond_21

    .line 298
    sget-object v3, Ljava/util/Locale$Category;->FORMAT:Ljava/util/Locale$Category;

    invoke-static {v3}, Ljava/util/Locale;->getDefault(Ljava/util/Locale$Category;)Ljava/util/Locale;

    move-result-object v3

    goto :goto_1b

    .line 299
    :cond_21
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    :goto_1b
    invoke-static {v2, v3}, Lcom/google/android/material/badge/BadgeState$State;->-$$Nest$fputnumberLocale(Lcom/google/android/material/badge/BadgeState$State;Ljava/util/Locale;)V

    goto :goto_1c

    .line 301
    :cond_22
    iget-object v2, p0, Lcom/google/android/material/badge/BadgeState;->currentState:Lcom/google/android/material/badge/BadgeState$State;

    invoke-static {p5}, Lcom/google/android/material/badge/BadgeState$State;->-$$Nest$fgetnumberLocale(Lcom/google/android/material/badge/BadgeState$State;)Ljava/util/Locale;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/material/badge/BadgeState$State;->-$$Nest$fputnumberLocale(Lcom/google/android/material/badge/BadgeState$State;Ljava/util/Locale;)V

    .line 304
    :goto_1c
    iput-object p5, p0, Lcom/google/android/material/badge/BadgeState;->overridingState:Lcom/google/android/material/badge/BadgeState$State;

    .line 305
    return-void
.end method

.method private generateTypedArray(Landroid/content/Context;III)Landroid/content/res/TypedArray;
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "badgeResId"    # I
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
            "badgeResId",
            "defStyleAttr",
            "defStyleRes"
        }
    .end annotation

    .line 312
    const/4 v0, 0x0

    .line 313
    .local v0, "attrs":Landroid/util/AttributeSet;
    const/4 v1, 0x0

    .line 314
    .local v1, "style":I
    if-eqz p2, :cond_0

    .line 315
    const-string v2, "badge"

    invoke-static {p1, p2, v2}, Lcom/google/android/material/drawable/DrawableUtils;->parseDrawableXml(Landroid/content/Context;ILjava/lang/CharSequence;)Landroid/util/AttributeSet;

    move-result-object v0

    .line 316
    invoke-interface {v0}, Landroid/util/AttributeSet;->getStyleAttribute()I

    move-result v1

    move-object v3, v0

    goto :goto_0

    .line 314
    :cond_0
    move-object v3, v0

    .line 318
    .end local v0    # "attrs":Landroid/util/AttributeSet;
    .local v3, "attrs":Landroid/util/AttributeSet;
    :goto_0
    if-nez v1, :cond_1

    .line 319
    move v1, p4

    move v6, v1

    goto :goto_1

    .line 318
    :cond_1
    move v6, v1

    .line 322
    .end local v1    # "style":I
    .local v6, "style":I
    :goto_1
    sget-object v4, Lcom/google/android/material/badge/R$styleable;->Badge:[I

    const/4 v0, 0x0

    new-array v7, v0, [I

    move-object v2, p1

    move v5, p3

    .end local p1    # "context":Landroid/content/Context;
    .end local p3    # "defStyleAttr":I
    .local v2, "context":Landroid/content/Context;
    .local v5, "defStyleAttr":I
    invoke-static/range {v2 .. v7}, Lcom/google/android/material/internal/ThemeEnforcement;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)Landroid/content/res/TypedArray;

    move-result-object p1

    return-object p1
.end method

.method private static readColorFromAttributes(Landroid/content/Context;Landroid/content/res/TypedArray;I)I
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "a"    # Landroid/content/res/TypedArray;
    .param p2, "index"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "a",
            "index"
        }
    .end annotation

    .line 628
    invoke-static {p0, p1, p2}, Lcom/google/android/material/resources/MaterialResources;->getColorStateList(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v0

    return v0
.end method


# virtual methods
.method clearNumber()V
    .locals 1

    .line 353
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/google/android/material/badge/BadgeState;->setNumber(I)V

    .line 354
    return-void
.end method

.method clearText()V
    .locals 1

    .line 370
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/material/badge/BadgeState;->setText(Ljava/lang/String;)V

    .line 371
    return-void
.end method

.method getAdditionalHorizontalOffset()I
    .locals 1

    .line 548
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeState;->currentState:Lcom/google/android/material/badge/BadgeState$State;

    invoke-static {v0}, Lcom/google/android/material/badge/BadgeState$State;->-$$Nest$fgetadditionalHorizontalOffset(Lcom/google/android/material/badge/BadgeState$State;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method getAdditionalVerticalOffset()I
    .locals 1

    .line 558
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeState;->currentState:Lcom/google/android/material/badge/BadgeState$State;

    invoke-static {v0}, Lcom/google/android/material/badge/BadgeState$State;->-$$Nest$fgetadditionalVerticalOffset(Lcom/google/android/material/badge/BadgeState$State;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method getAlpha()I
    .locals 1

    .line 374
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeState;->currentState:Lcom/google/android/material/badge/BadgeState$State;

    invoke-static {v0}, Lcom/google/android/material/badge/BadgeState$State;->-$$Nest$fgetalpha(Lcom/google/android/material/badge/BadgeState$State;)I

    move-result v0

    return v0
.end method

.method getBackgroundColor()I
    .locals 1

    .line 402
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeState;->currentState:Lcom/google/android/material/badge/BadgeState$State;

    invoke-static {v0}, Lcom/google/android/material/badge/BadgeState$State;->-$$Nest$fgetbackgroundColor(Lcom/google/android/material/badge/BadgeState$State;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method getBadgeGravity()I
    .locals 1

    .line 468
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeState;->currentState:Lcom/google/android/material/badge/BadgeState$State;

    invoke-static {v0}, Lcom/google/android/material/badge/BadgeState$State;->-$$Nest$fgetbadgeGravity(Lcom/google/android/material/badge/BadgeState$State;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method getBadgeHorizontalPadding()I
    .locals 1

    .line 478
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeState;->currentState:Lcom/google/android/material/badge/BadgeState$State;

    invoke-static {v0}, Lcom/google/android/material/badge/BadgeState$State;->-$$Nest$fgetbadgeHorizontalPadding(Lcom/google/android/material/badge/BadgeState$State;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method getBadgeShapeAppearanceOverlayResId()I
    .locals 1

    .line 440
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeState;->currentState:Lcom/google/android/material/badge/BadgeState$State;

    invoke-static {v0}, Lcom/google/android/material/badge/BadgeState$State;->-$$Nest$fgetbadgeShapeAppearanceOverlayResId(Lcom/google/android/material/badge/BadgeState$State;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method getBadgeShapeAppearanceResId()I
    .locals 1

    .line 431
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeState;->currentState:Lcom/google/android/material/badge/BadgeState$State;

    invoke-static {v0}, Lcom/google/android/material/badge/BadgeState$State;->-$$Nest$fgetbadgeShapeAppearanceResId(Lcom/google/android/material/badge/BadgeState$State;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method getBadgeTextColor()I
    .locals 1

    .line 412
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeState;->currentState:Lcom/google/android/material/badge/BadgeState$State;

    invoke-static {v0}, Lcom/google/android/material/badge/BadgeState$State;->-$$Nest$fgetbadgeTextColor(Lcom/google/android/material/badge/BadgeState$State;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method getBadgeVerticalPadding()I
    .locals 1

    .line 488
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeState;->currentState:Lcom/google/android/material/badge/BadgeState$State;

    invoke-static {v0}, Lcom/google/android/material/badge/BadgeState$State;->-$$Nest$fgetbadgeVerticalPadding(Lcom/google/android/material/badge/BadgeState$State;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method getBadgeWithTextShapeAppearanceOverlayResId()I
    .locals 1

    .line 458
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeState;->currentState:Lcom/google/android/material/badge/BadgeState$State;

    invoke-static {v0}, Lcom/google/android/material/badge/BadgeState$State;->-$$Nest$fgetbadgeWithTextShapeAppearanceOverlayResId(Lcom/google/android/material/badge/BadgeState$State;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method getBadgeWithTextShapeAppearanceResId()I
    .locals 1

    .line 449
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeState;->currentState:Lcom/google/android/material/badge/BadgeState$State;

    invoke-static {v0}, Lcom/google/android/material/badge/BadgeState$State;->-$$Nest$fgetbadgeWithTextShapeAppearanceResId(Lcom/google/android/material/badge/BadgeState$State;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method getContentDescriptionExceedsMaxBadgeNumberStringResource()I
    .locals 1

    .line 596
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeState;->currentState:Lcom/google/android/material/badge/BadgeState$State;

    invoke-static {v0}, Lcom/google/android/material/badge/BadgeState$State;->-$$Nest$fgetcontentDescriptionExceedsMaxBadgeNumberRes(Lcom/google/android/material/badge/BadgeState$State;)I

    move-result v0

    return v0
.end method

.method getContentDescriptionForText()Ljava/lang/CharSequence;
    .locals 1

    .line 567
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeState;->currentState:Lcom/google/android/material/badge/BadgeState$State;

    invoke-static {v0}, Lcom/google/android/material/badge/BadgeState$State;->-$$Nest$fgetcontentDescriptionForText(Lcom/google/android/material/badge/BadgeState$State;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method getContentDescriptionNumberless()Ljava/lang/CharSequence;
    .locals 1

    .line 576
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeState;->currentState:Lcom/google/android/material/badge/BadgeState$State;

    invoke-static {v0}, Lcom/google/android/material/badge/BadgeState$State;->-$$Nest$fgetcontentDescriptionNumberless(Lcom/google/android/material/badge/BadgeState$State;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method getContentDescriptionQuantityStrings()I
    .locals 1

    .line 586
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeState;->currentState:Lcom/google/android/material/badge/BadgeState$State;

    invoke-static {v0}, Lcom/google/android/material/badge/BadgeState$State;->-$$Nest$fgetcontentDescriptionQuantityStrings(Lcom/google/android/material/badge/BadgeState$State;)I

    move-result v0

    return v0
.end method

.method getHorizontalOffsetWithText()I
    .locals 1

    .line 518
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeState;->currentState:Lcom/google/android/material/badge/BadgeState$State;

    invoke-static {v0}, Lcom/google/android/material/badge/BadgeState$State;->-$$Nest$fgethorizontalOffsetWithText(Lcom/google/android/material/badge/BadgeState$State;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method getHorizontalOffsetWithoutText()I
    .locals 1

    .line 498
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeState;->currentState:Lcom/google/android/material/badge/BadgeState$State;

    invoke-static {v0}, Lcom/google/android/material/badge/BadgeState$State;->-$$Nest$fgethorizontalOffsetWithoutText(Lcom/google/android/material/badge/BadgeState$State;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method getLargeFontVerticalOffsetAdjustment()I
    .locals 1

    .line 538
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeState;->currentState:Lcom/google/android/material/badge/BadgeState$State;

    invoke-static {v0}, Lcom/google/android/material/badge/BadgeState$State;->-$$Nest$fgetlargeFontVerticalOffsetAdjustment(Lcom/google/android/material/badge/BadgeState$State;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method getMaxCharacterCount()I
    .locals 1

    .line 383
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeState;->currentState:Lcom/google/android/material/badge/BadgeState$State;

    invoke-static {v0}, Lcom/google/android/material/badge/BadgeState$State;->-$$Nest$fgetmaxCharacterCount(Lcom/google/android/material/badge/BadgeState$State;)I

    move-result v0

    return v0
.end method

.method getMaxNumber()I
    .locals 1

    .line 392
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeState;->currentState:Lcom/google/android/material/badge/BadgeState$State;

    invoke-static {v0}, Lcom/google/android/material/badge/BadgeState$State;->-$$Nest$fgetmaxNumber(Lcom/google/android/material/badge/BadgeState$State;)I

    move-result v0

    return v0
.end method

.method getNumber()I
    .locals 1

    .line 344
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeState;->currentState:Lcom/google/android/material/badge/BadgeState$State;

    invoke-static {v0}, Lcom/google/android/material/badge/BadgeState$State;->-$$Nest$fgetnumber(Lcom/google/android/material/badge/BadgeState$State;)I

    move-result v0

    return v0
.end method

.method getNumberLocale()Ljava/util/Locale;
    .locals 1

    .line 605
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeState;->currentState:Lcom/google/android/material/badge/BadgeState$State;

    invoke-static {v0}, Lcom/google/android/material/badge/BadgeState$State;->-$$Nest$fgetnumberLocale(Lcom/google/android/material/badge/BadgeState$State;)Ljava/util/Locale;

    move-result-object v0

    return-object v0
.end method

.method getOverridingState()Lcom/google/android/material/badge/BadgeState$State;
    .locals 1

    .line 327
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeState;->overridingState:Lcom/google/android/material/badge/BadgeState$State;

    return-object v0
.end method

.method getText()Ljava/lang/String;
    .locals 1

    .line 361
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeState;->currentState:Lcom/google/android/material/badge/BadgeState$State;

    invoke-static {v0}, Lcom/google/android/material/badge/BadgeState$State;->-$$Nest$fgettext(Lcom/google/android/material/badge/BadgeState$State;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getTextAppearanceResId()I
    .locals 1

    .line 422
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeState;->currentState:Lcom/google/android/material/badge/BadgeState$State;

    invoke-static {v0}, Lcom/google/android/material/badge/BadgeState$State;->-$$Nest$fgetbadgeTextAppearanceResId(Lcom/google/android/material/badge/BadgeState$State;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method getVerticalOffsetWithText()I
    .locals 1

    .line 528
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeState;->currentState:Lcom/google/android/material/badge/BadgeState$State;

    invoke-static {v0}, Lcom/google/android/material/badge/BadgeState$State;->-$$Nest$fgetverticalOffsetWithText(Lcom/google/android/material/badge/BadgeState$State;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method getVerticalOffsetWithoutText()I
    .locals 1

    .line 508
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeState;->currentState:Lcom/google/android/material/badge/BadgeState$State;

    invoke-static {v0}, Lcom/google/android/material/badge/BadgeState$State;->-$$Nest$fgetverticalOffsetWithoutText(Lcom/google/android/material/badge/BadgeState$State;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method hasNumber()Z
    .locals 2

    .line 340
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeState;->currentState:Lcom/google/android/material/badge/BadgeState$State;

    invoke-static {v0}, Lcom/google/android/material/badge/BadgeState$State;->-$$Nest$fgetnumber(Lcom/google/android/material/badge/BadgeState$State;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method hasText()Z
    .locals 1

    .line 357
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeState;->currentState:Lcom/google/android/material/badge/BadgeState$State;

    invoke-static {v0}, Lcom/google/android/material/badge/BadgeState$State;->-$$Nest$fgettext(Lcom/google/android/material/badge/BadgeState$State;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method isAutoAdjustedToGrandparentBounds()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 616
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeState;->currentState:Lcom/google/android/material/badge/BadgeState$State;

    invoke-static {v0}, Lcom/google/android/material/badge/BadgeState$State;->-$$Nest$fgetautoAdjustToWithinGrandparentBounds(Lcom/google/android/material/badge/BadgeState$State;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method isVisible()Z
    .locals 1

    .line 331
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeState;->currentState:Lcom/google/android/material/badge/BadgeState$State;

    invoke-static {v0}, Lcom/google/android/material/badge/BadgeState$State;->-$$Nest$fgetisVisible(Lcom/google/android/material/badge/BadgeState$State;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method setAdditionalHorizontalOffset(I)V
    .locals 2
    .param p1, "offset"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "offset"
        }
    .end annotation

    .line 552
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeState;->overridingState:Lcom/google/android/material/badge/BadgeState$State;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/material/badge/BadgeState$State;->-$$Nest$fputadditionalHorizontalOffset(Lcom/google/android/material/badge/BadgeState$State;Ljava/lang/Integer;)V

    .line 553
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeState;->currentState:Lcom/google/android/material/badge/BadgeState$State;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/material/badge/BadgeState$State;->-$$Nest$fputadditionalHorizontalOffset(Lcom/google/android/material/badge/BadgeState$State;Ljava/lang/Integer;)V

    .line 554
    return-void
.end method

.method setAdditionalVerticalOffset(I)V
    .locals 2
    .param p1, "offset"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "offset"
        }
    .end annotation

    .line 562
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeState;->overridingState:Lcom/google/android/material/badge/BadgeState$State;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/material/badge/BadgeState$State;->-$$Nest$fputadditionalVerticalOffset(Lcom/google/android/material/badge/BadgeState$State;Ljava/lang/Integer;)V

    .line 563
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeState;->currentState:Lcom/google/android/material/badge/BadgeState$State;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/material/badge/BadgeState$State;->-$$Nest$fputadditionalVerticalOffset(Lcom/google/android/material/badge/BadgeState$State;Ljava/lang/Integer;)V

    .line 564
    return-void
.end method

.method setAlpha(I)V
    .locals 1
    .param p1, "alpha"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "alpha"
        }
    .end annotation

    .line 378
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeState;->overridingState:Lcom/google/android/material/badge/BadgeState$State;

    invoke-static {v0, p1}, Lcom/google/android/material/badge/BadgeState$State;->-$$Nest$fputalpha(Lcom/google/android/material/badge/BadgeState$State;I)V

    .line 379
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeState;->currentState:Lcom/google/android/material/badge/BadgeState$State;

    invoke-static {v0, p1}, Lcom/google/android/material/badge/BadgeState$State;->-$$Nest$fputalpha(Lcom/google/android/material/badge/BadgeState$State;I)V

    .line 380
    return-void
.end method

.method setAutoAdjustToGrandparentBounds(Z)V
    .locals 2
    .param p1, "autoAdjustToGrandparentBounds"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "autoAdjustToGrandparentBounds"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 622
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeState;->overridingState:Lcom/google/android/material/badge/BadgeState$State;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/material/badge/BadgeState$State;->-$$Nest$fputautoAdjustToWithinGrandparentBounds(Lcom/google/android/material/badge/BadgeState$State;Ljava/lang/Boolean;)V

    .line 623
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeState;->currentState:Lcom/google/android/material/badge/BadgeState$State;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/material/badge/BadgeState$State;->-$$Nest$fputautoAdjustToWithinGrandparentBounds(Lcom/google/android/material/badge/BadgeState$State;Ljava/lang/Boolean;)V

    .line 624
    return-void
.end method

.method setBackgroundColor(I)V
    .locals 2
    .param p1, "backgroundColor"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "backgroundColor"
        }
    .end annotation

    .line 406
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeState;->overridingState:Lcom/google/android/material/badge/BadgeState$State;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/material/badge/BadgeState$State;->-$$Nest$fputbackgroundColor(Lcom/google/android/material/badge/BadgeState$State;Ljava/lang/Integer;)V

    .line 407
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeState;->currentState:Lcom/google/android/material/badge/BadgeState$State;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/material/badge/BadgeState$State;->-$$Nest$fputbackgroundColor(Lcom/google/android/material/badge/BadgeState$State;Ljava/lang/Integer;)V

    .line 408
    return-void
.end method

.method setBadgeGravity(I)V
    .locals 2
    .param p1, "badgeGravity"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "badgeGravity"
        }
    .end annotation

    .line 472
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeState;->overridingState:Lcom/google/android/material/badge/BadgeState$State;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/material/badge/BadgeState$State;->-$$Nest$fputbadgeGravity(Lcom/google/android/material/badge/BadgeState$State;Ljava/lang/Integer;)V

    .line 473
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeState;->currentState:Lcom/google/android/material/badge/BadgeState$State;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/material/badge/BadgeState$State;->-$$Nest$fputbadgeGravity(Lcom/google/android/material/badge/BadgeState$State;Ljava/lang/Integer;)V

    .line 474
    return-void
.end method

.method setBadgeHorizontalPadding(I)V
    .locals 2
    .param p1, "horizontalPadding"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "horizontalPadding"
        }
    .end annotation

    .line 482
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeState;->overridingState:Lcom/google/android/material/badge/BadgeState$State;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/material/badge/BadgeState$State;->-$$Nest$fputbadgeHorizontalPadding(Lcom/google/android/material/badge/BadgeState$State;Ljava/lang/Integer;)V

    .line 483
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeState;->currentState:Lcom/google/android/material/badge/BadgeState$State;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/material/badge/BadgeState$State;->-$$Nest$fputbadgeHorizontalPadding(Lcom/google/android/material/badge/BadgeState$State;Ljava/lang/Integer;)V

    .line 484
    return-void
.end method

.method setBadgeShapeAppearanceOverlayResId(I)V
    .locals 2
    .param p1, "shapeAppearanceOverlayResId"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "shapeAppearanceOverlayResId"
        }
    .end annotation

    .line 444
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeState;->overridingState:Lcom/google/android/material/badge/BadgeState$State;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/material/badge/BadgeState$State;->-$$Nest$fputbadgeShapeAppearanceOverlayResId(Lcom/google/android/material/badge/BadgeState$State;Ljava/lang/Integer;)V

    .line 445
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeState;->currentState:Lcom/google/android/material/badge/BadgeState$State;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/material/badge/BadgeState$State;->-$$Nest$fputbadgeShapeAppearanceOverlayResId(Lcom/google/android/material/badge/BadgeState$State;Ljava/lang/Integer;)V

    .line 446
    return-void
.end method

.method setBadgeShapeAppearanceResId(I)V
    .locals 2
    .param p1, "shapeAppearanceResId"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "shapeAppearanceResId"
        }
    .end annotation

    .line 435
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeState;->overridingState:Lcom/google/android/material/badge/BadgeState$State;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/material/badge/BadgeState$State;->-$$Nest$fputbadgeShapeAppearanceResId(Lcom/google/android/material/badge/BadgeState$State;Ljava/lang/Integer;)V

    .line 436
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeState;->currentState:Lcom/google/android/material/badge/BadgeState$State;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/material/badge/BadgeState$State;->-$$Nest$fputbadgeShapeAppearanceResId(Lcom/google/android/material/badge/BadgeState$State;Ljava/lang/Integer;)V

    .line 437
    return-void
.end method

.method setBadgeTextColor(I)V
    .locals 2
    .param p1, "badgeTextColor"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "badgeTextColor"
        }
    .end annotation

    .line 416
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeState;->overridingState:Lcom/google/android/material/badge/BadgeState$State;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/material/badge/BadgeState$State;->-$$Nest$fputbadgeTextColor(Lcom/google/android/material/badge/BadgeState$State;Ljava/lang/Integer;)V

    .line 417
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeState;->currentState:Lcom/google/android/material/badge/BadgeState$State;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/material/badge/BadgeState$State;->-$$Nest$fputbadgeTextColor(Lcom/google/android/material/badge/BadgeState$State;Ljava/lang/Integer;)V

    .line 418
    return-void
.end method

.method setBadgeVerticalPadding(I)V
    .locals 2
    .param p1, "verticalPadding"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "verticalPadding"
        }
    .end annotation

    .line 492
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeState;->overridingState:Lcom/google/android/material/badge/BadgeState$State;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/material/badge/BadgeState$State;->-$$Nest$fputbadgeVerticalPadding(Lcom/google/android/material/badge/BadgeState$State;Ljava/lang/Integer;)V

    .line 493
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeState;->currentState:Lcom/google/android/material/badge/BadgeState$State;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/material/badge/BadgeState$State;->-$$Nest$fputbadgeVerticalPadding(Lcom/google/android/material/badge/BadgeState$State;Ljava/lang/Integer;)V

    .line 494
    return-void
.end method

.method setBadgeWithTextShapeAppearanceOverlayResId(I)V
    .locals 2
    .param p1, "shapeAppearanceOverlayResId"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "shapeAppearanceOverlayResId"
        }
    .end annotation

    .line 462
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeState;->overridingState:Lcom/google/android/material/badge/BadgeState$State;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/material/badge/BadgeState$State;->-$$Nest$fputbadgeWithTextShapeAppearanceOverlayResId(Lcom/google/android/material/badge/BadgeState$State;Ljava/lang/Integer;)V

    .line 463
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeState;->currentState:Lcom/google/android/material/badge/BadgeState$State;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/material/badge/BadgeState$State;->-$$Nest$fputbadgeWithTextShapeAppearanceOverlayResId(Lcom/google/android/material/badge/BadgeState$State;Ljava/lang/Integer;)V

    .line 464
    return-void
.end method

.method setBadgeWithTextShapeAppearanceResId(I)V
    .locals 2
    .param p1, "shapeAppearanceResId"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "shapeAppearanceResId"
        }
    .end annotation

    .line 453
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeState;->overridingState:Lcom/google/android/material/badge/BadgeState$State;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/material/badge/BadgeState$State;->-$$Nest$fputbadgeWithTextShapeAppearanceResId(Lcom/google/android/material/badge/BadgeState$State;Ljava/lang/Integer;)V

    .line 454
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeState;->currentState:Lcom/google/android/material/badge/BadgeState$State;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/material/badge/BadgeState$State;->-$$Nest$fputbadgeWithTextShapeAppearanceResId(Lcom/google/android/material/badge/BadgeState$State;Ljava/lang/Integer;)V

    .line 455
    return-void
.end method

.method setContentDescriptionExceedsMaxBadgeNumberStringResource(I)V
    .locals 1
    .param p1, "stringsResource"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "stringsResource"
        }
    .end annotation

    .line 600
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeState;->overridingState:Lcom/google/android/material/badge/BadgeState$State;

    invoke-static {v0, p1}, Lcom/google/android/material/badge/BadgeState$State;->-$$Nest$fputcontentDescriptionExceedsMaxBadgeNumberRes(Lcom/google/android/material/badge/BadgeState$State;I)V

    .line 601
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeState;->currentState:Lcom/google/android/material/badge/BadgeState$State;

    invoke-static {v0, p1}, Lcom/google/android/material/badge/BadgeState$State;->-$$Nest$fputcontentDescriptionExceedsMaxBadgeNumberRes(Lcom/google/android/material/badge/BadgeState$State;I)V

    .line 602
    return-void
.end method

.method setContentDescriptionForText(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "contentDescription"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "contentDescription"
        }
    .end annotation

    .line 571
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeState;->overridingState:Lcom/google/android/material/badge/BadgeState$State;

    invoke-static {v0, p1}, Lcom/google/android/material/badge/BadgeState$State;->-$$Nest$fputcontentDescriptionForText(Lcom/google/android/material/badge/BadgeState$State;Ljava/lang/CharSequence;)V

    .line 572
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeState;->currentState:Lcom/google/android/material/badge/BadgeState$State;

    invoke-static {v0, p1}, Lcom/google/android/material/badge/BadgeState$State;->-$$Nest$fputcontentDescriptionForText(Lcom/google/android/material/badge/BadgeState$State;Ljava/lang/CharSequence;)V

    .line 573
    return-void
.end method

.method setContentDescriptionNumberless(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "contentDescriptionNumberless"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "contentDescriptionNumberless"
        }
    .end annotation

    .line 580
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeState;->overridingState:Lcom/google/android/material/badge/BadgeState$State;

    invoke-static {v0, p1}, Lcom/google/android/material/badge/BadgeState$State;->-$$Nest$fputcontentDescriptionNumberless(Lcom/google/android/material/badge/BadgeState$State;Ljava/lang/CharSequence;)V

    .line 581
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeState;->currentState:Lcom/google/android/material/badge/BadgeState$State;

    invoke-static {v0, p1}, Lcom/google/android/material/badge/BadgeState$State;->-$$Nest$fputcontentDescriptionNumberless(Lcom/google/android/material/badge/BadgeState$State;Ljava/lang/CharSequence;)V

    .line 582
    return-void
.end method

.method setContentDescriptionQuantityStringsResource(I)V
    .locals 1
    .param p1, "stringsResource"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "stringsResource"
        }
    .end annotation

    .line 590
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeState;->overridingState:Lcom/google/android/material/badge/BadgeState$State;

    invoke-static {v0, p1}, Lcom/google/android/material/badge/BadgeState$State;->-$$Nest$fputcontentDescriptionQuantityStrings(Lcom/google/android/material/badge/BadgeState$State;I)V

    .line 591
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeState;->currentState:Lcom/google/android/material/badge/BadgeState$State;

    invoke-static {v0, p1}, Lcom/google/android/material/badge/BadgeState$State;->-$$Nest$fputcontentDescriptionQuantityStrings(Lcom/google/android/material/badge/BadgeState$State;I)V

    .line 592
    return-void
.end method

.method setHorizontalOffsetWithText(I)V
    .locals 2
    .param p1, "offset"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "offset"
        }
    .end annotation

    .line 522
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeState;->overridingState:Lcom/google/android/material/badge/BadgeState$State;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/material/badge/BadgeState$State;->-$$Nest$fputhorizontalOffsetWithText(Lcom/google/android/material/badge/BadgeState$State;Ljava/lang/Integer;)V

    .line 523
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeState;->currentState:Lcom/google/android/material/badge/BadgeState$State;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/material/badge/BadgeState$State;->-$$Nest$fputhorizontalOffsetWithText(Lcom/google/android/material/badge/BadgeState$State;Ljava/lang/Integer;)V

    .line 524
    return-void
.end method

.method setHorizontalOffsetWithoutText(I)V
    .locals 2
    .param p1, "offset"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "offset"
        }
    .end annotation

    .line 502
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeState;->overridingState:Lcom/google/android/material/badge/BadgeState$State;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/material/badge/BadgeState$State;->-$$Nest$fputhorizontalOffsetWithoutText(Lcom/google/android/material/badge/BadgeState$State;Ljava/lang/Integer;)V

    .line 503
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeState;->currentState:Lcom/google/android/material/badge/BadgeState$State;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/material/badge/BadgeState$State;->-$$Nest$fputhorizontalOffsetWithoutText(Lcom/google/android/material/badge/BadgeState$State;Ljava/lang/Integer;)V

    .line 504
    return-void
.end method

.method setLargeFontVerticalOffsetAdjustment(I)V
    .locals 2
    .param p1, "offsetAdjustment"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "offsetAdjustment"
        }
    .end annotation

    .line 542
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeState;->overridingState:Lcom/google/android/material/badge/BadgeState$State;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/material/badge/BadgeState$State;->-$$Nest$fputlargeFontVerticalOffsetAdjustment(Lcom/google/android/material/badge/BadgeState$State;Ljava/lang/Integer;)V

    .line 543
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeState;->currentState:Lcom/google/android/material/badge/BadgeState$State;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/material/badge/BadgeState$State;->-$$Nest$fputlargeFontVerticalOffsetAdjustment(Lcom/google/android/material/badge/BadgeState$State;Ljava/lang/Integer;)V

    .line 544
    return-void
.end method

.method setMaxCharacterCount(I)V
    .locals 1
    .param p1, "maxCharacterCount"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "maxCharacterCount"
        }
    .end annotation

    .line 387
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeState;->overridingState:Lcom/google/android/material/badge/BadgeState$State;

    invoke-static {v0, p1}, Lcom/google/android/material/badge/BadgeState$State;->-$$Nest$fputmaxCharacterCount(Lcom/google/android/material/badge/BadgeState$State;I)V

    .line 388
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeState;->currentState:Lcom/google/android/material/badge/BadgeState$State;

    invoke-static {v0, p1}, Lcom/google/android/material/badge/BadgeState$State;->-$$Nest$fputmaxCharacterCount(Lcom/google/android/material/badge/BadgeState$State;I)V

    .line 389
    return-void
.end method

.method setMaxNumber(I)V
    .locals 1
    .param p1, "maxNumber"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "maxNumber"
        }
    .end annotation

    .line 396
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeState;->overridingState:Lcom/google/android/material/badge/BadgeState$State;

    invoke-static {v0, p1}, Lcom/google/android/material/badge/BadgeState$State;->-$$Nest$fputmaxNumber(Lcom/google/android/material/badge/BadgeState$State;I)V

    .line 397
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeState;->currentState:Lcom/google/android/material/badge/BadgeState$State;

    invoke-static {v0, p1}, Lcom/google/android/material/badge/BadgeState$State;->-$$Nest$fputmaxNumber(Lcom/google/android/material/badge/BadgeState$State;I)V

    .line 398
    return-void
.end method

.method setNumber(I)V
    .locals 1
    .param p1, "number"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "number"
        }
    .end annotation

    .line 348
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeState;->overridingState:Lcom/google/android/material/badge/BadgeState$State;

    invoke-static {v0, p1}, Lcom/google/android/material/badge/BadgeState$State;->-$$Nest$fputnumber(Lcom/google/android/material/badge/BadgeState$State;I)V

    .line 349
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeState;->currentState:Lcom/google/android/material/badge/BadgeState$State;

    invoke-static {v0, p1}, Lcom/google/android/material/badge/BadgeState$State;->-$$Nest$fputnumber(Lcom/google/android/material/badge/BadgeState$State;I)V

    .line 350
    return-void
.end method

.method setNumberLocale(Ljava/util/Locale;)V
    .locals 1
    .param p1, "locale"    # Ljava/util/Locale;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "locale"
        }
    .end annotation

    .line 609
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeState;->overridingState:Lcom/google/android/material/badge/BadgeState$State;

    invoke-static {v0, p1}, Lcom/google/android/material/badge/BadgeState$State;->-$$Nest$fputnumberLocale(Lcom/google/android/material/badge/BadgeState$State;Ljava/util/Locale;)V

    .line 610
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeState;->currentState:Lcom/google/android/material/badge/BadgeState$State;

    invoke-static {v0, p1}, Lcom/google/android/material/badge/BadgeState$State;->-$$Nest$fputnumberLocale(Lcom/google/android/material/badge/BadgeState$State;Ljava/util/Locale;)V

    .line 611
    return-void
.end method

.method setText(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "text"
        }
    .end annotation

    .line 365
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeState;->overridingState:Lcom/google/android/material/badge/BadgeState$State;

    invoke-static {v0, p1}, Lcom/google/android/material/badge/BadgeState$State;->-$$Nest$fputtext(Lcom/google/android/material/badge/BadgeState$State;Ljava/lang/String;)V

    .line 366
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeState;->currentState:Lcom/google/android/material/badge/BadgeState$State;

    invoke-static {v0, p1}, Lcom/google/android/material/badge/BadgeState$State;->-$$Nest$fputtext(Lcom/google/android/material/badge/BadgeState$State;Ljava/lang/String;)V

    .line 367
    return-void
.end method

.method setTextAppearanceResId(I)V
    .locals 2
    .param p1, "textAppearanceResId"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "textAppearanceResId"
        }
    .end annotation

    .line 426
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeState;->overridingState:Lcom/google/android/material/badge/BadgeState$State;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/material/badge/BadgeState$State;->-$$Nest$fputbadgeTextAppearanceResId(Lcom/google/android/material/badge/BadgeState$State;Ljava/lang/Integer;)V

    .line 427
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeState;->currentState:Lcom/google/android/material/badge/BadgeState$State;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/material/badge/BadgeState$State;->-$$Nest$fputbadgeTextAppearanceResId(Lcom/google/android/material/badge/BadgeState$State;Ljava/lang/Integer;)V

    .line 428
    return-void
.end method

.method setVerticalOffsetWithText(I)V
    .locals 2
    .param p1, "offset"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "offset"
        }
    .end annotation

    .line 532
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeState;->overridingState:Lcom/google/android/material/badge/BadgeState$State;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/material/badge/BadgeState$State;->-$$Nest$fputverticalOffsetWithText(Lcom/google/android/material/badge/BadgeState$State;Ljava/lang/Integer;)V

    .line 533
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeState;->currentState:Lcom/google/android/material/badge/BadgeState$State;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/material/badge/BadgeState$State;->-$$Nest$fputverticalOffsetWithText(Lcom/google/android/material/badge/BadgeState$State;Ljava/lang/Integer;)V

    .line 534
    return-void
.end method

.method setVerticalOffsetWithoutText(I)V
    .locals 2
    .param p1, "offset"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "offset"
        }
    .end annotation

    .line 512
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeState;->overridingState:Lcom/google/android/material/badge/BadgeState$State;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/material/badge/BadgeState$State;->-$$Nest$fputverticalOffsetWithoutText(Lcom/google/android/material/badge/BadgeState$State;Ljava/lang/Integer;)V

    .line 513
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeState;->currentState:Lcom/google/android/material/badge/BadgeState$State;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/material/badge/BadgeState$State;->-$$Nest$fputverticalOffsetWithoutText(Lcom/google/android/material/badge/BadgeState$State;Ljava/lang/Integer;)V

    .line 514
    return-void
.end method

.method setVisible(Z)V
    .locals 2
    .param p1, "visible"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "visible"
        }
    .end annotation

    .line 335
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeState;->overridingState:Lcom/google/android/material/badge/BadgeState$State;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/material/badge/BadgeState$State;->-$$Nest$fputisVisible(Lcom/google/android/material/badge/BadgeState$State;Ljava/lang/Boolean;)V

    .line 336
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeState;->currentState:Lcom/google/android/material/badge/BadgeState$State;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/material/badge/BadgeState$State;->-$$Nest$fputisVisible(Lcom/google/android/material/badge/BadgeState$State;Ljava/lang/Boolean;)V

    .line 337
    return-void
.end method
