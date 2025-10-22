.class public Lcom/google/android/material/button/MaterialSplitButton;
.super Lcom/google/android/material/button/MaterialButtonGroup;
.source "MaterialSplitButton.java"


# static fields
.field private static final DEF_STYLE_RES:I

.field private static final REQUIRED_BUTTON_COUNT:I = 0x2


# direct methods
.method public static synthetic $r8$lambda$GlyUccxQRT-X836mPq1571stYNA(Lcom/google/android/material/button/MaterialSplitButton;Lcom/google/android/material/button/MaterialButton;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/material/button/MaterialSplitButton;->lambda$addView$0(Lcom/google/android/material/button/MaterialButton;Z)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 73
    sget v0, Lcom/google/android/material/button/R$style;->Widget_Material3_MaterialSplitButton:I

    sput v0, Lcom/google/android/material/button/MaterialSplitButton;->DEF_STYLE_RES:I

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

    .line 77
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/material/button/MaterialSplitButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 78
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

    .line 81
    sget v0, Lcom/google/android/material/button/R$attr;->materialSplitButtonStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/material/button/MaterialSplitButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 82
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

    .line 86
    sget v0, Lcom/google/android/material/button/MaterialSplitButton;->DEF_STYLE_RES:I

    invoke-static {p1, p2, p3, v0}, Lcom/google/android/material/theme/overlay/MaterialThemeOverlay;->wrap(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3}, Lcom/google/android/material/button/MaterialButtonGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 87
    return-void
.end method

.method private synthetic lambda$addView$0(Lcom/google/android/material/button/MaterialButton;Z)V
    .locals 2
    .param p1, "button"    # Lcom/google/android/material/button/MaterialButton;
    .param p2, "isChecked"    # Z

    .line 120
    nop

    .line 121
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialSplitButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 123
    if-eqz p2, :cond_0

    .line 124
    sget v1, Lcom/google/android/material/button/R$string;->mtrl_button_expanded_content_description:I

    goto :goto_0

    .line 125
    :cond_0
    sget v1, Lcom/google/android/material/button/R$string;->mtrl_button_collapsed_content_description:I

    .line 122
    :goto_0
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 120
    invoke-virtual {p1, v0}, Lcom/google/android/material/button/MaterialButton;->setStateDescription(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 3
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I
    .param p3, "params"    # Landroid/view/ViewGroup$LayoutParams;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "child",
            "index",
            "params"
        }
    .end annotation

    .line 97
    instance-of v0, p1, Lcom/google/android/material/button/MaterialButton;

    if-eqz v0, :cond_3

    .line 100
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialSplitButton;->getChildCount()I

    move-result v0

    const/4 v1, 0x2

    if-gt v0, v1, :cond_2

    .line 104
    move-object v0, p1

    check-cast v0, Lcom/google/android/material/button/MaterialButton;

    .line 105
    .local v0, "buttonChild":Lcom/google/android/material/button/MaterialButton;
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/material/button/MaterialButtonGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 106
    invoke-virtual {p0, p1}, Lcom/google/android/material/button/MaterialSplitButton;->indexOfChild(Landroid/view/View;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 107
    invoke-virtual {v0, v2}, Lcom/google/android/material/button/MaterialButton;->setCheckable(Z)V

    .line 108
    const-class v1, Landroid/widget/Button;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/button/MaterialButton;->setA11yClassName(Ljava/lang/String;)V

    .line 109
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1e

    if-lt v1, v2, :cond_1

    .line 111
    nop

    .line 112
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialSplitButton;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 114
    invoke-virtual {v0}, Lcom/google/android/material/button/MaterialButton;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 115
    sget v2, Lcom/google/android/material/button/R$string;->mtrl_button_expanded_content_description:I

    goto :goto_0

    .line 116
    :cond_0
    sget v2, Lcom/google/android/material/button/R$string;->mtrl_button_collapsed_content_description:I

    .line 113
    :goto_0
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 111
    invoke-virtual {v0, v1}, Lcom/google/android/material/button/MaterialButton;->setStateDescription(Ljava/lang/CharSequence;)V

    .line 118
    new-instance v1, Lcom/google/android/material/button/MaterialSplitButton$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/google/android/material/button/MaterialSplitButton$$ExternalSyntheticLambda0;-><init>(Lcom/google/android/material/button/MaterialSplitButton;)V

    invoke-virtual {v0, v1}, Lcom/google/android/material/button/MaterialButton;->addOnCheckedChangeListener(Lcom/google/android/material/button/MaterialButton$OnCheckedChangeListener;)V

    .line 128
    :cond_1
    return-void

    .line 101
    .end local v0    # "buttonChild":Lcom/google/android/material/button/MaterialButton;
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "MaterialSplitButton can only hold two MaterialButtons."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 98
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "MaterialSplitButton can only hold MaterialButtons."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
