.class public Lcom/google/android/setupdesign/view/CardView;
.super Landroid/widget/LinearLayout;
.source "CardView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private icon:Landroid/graphics/drawable/Drawable;

.field private iconView:Landroid/widget/ImageView;

.field private lineHeight:I

.field private onClickListener:Landroid/view/View$OnClickListener;

.field protected skipClickSelection:Z

.field private title:Ljava/lang/CharSequence;

.field protected titleView:Lcom/google/android/setupdesign/view/WrapTextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 45
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/setupdesign/view/CardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 46
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

    .line 49
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/setupdesign/view/CardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
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

    .line 53
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 54
    sget-object v0, Lcom/google/android/setupdesign/R$styleable;->SudCardView:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 55
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v1, Lcom/google/android/setupdesign/R$styleable;->SudCardView_sudIcon:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/setupdesign/view/CardView;->icon:Landroid/graphics/drawable/Drawable;

    .line 56
    sget v1, Lcom/google/android/setupdesign/R$styleable;->SudCardView_sudTitleText:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/setupdesign/view/CardView;->title:Ljava/lang/CharSequence;

    .line 57
    sget v1, Lcom/google/android/setupdesign/R$styleable;->SudCardView_sudCardViewSkipClickSelection:I

    .line 58
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/android/setupdesign/view/CardView;->skipClickSelection:Z

    .line 59
    sget v1, Lcom/google/android/setupdesign/R$styleable;->SudCardView_android_lineHeight:I

    .line 60
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/google/android/setupdesign/view/CardView;->lineHeight:I

    .line 61
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 62
    invoke-direct {p0}, Lcom/google/android/setupdesign/view/CardView;->init()V

    .line 63
    return-void
.end method

.method private init()V
    .locals 2

    .line 66
    invoke-virtual {p0}, Lcom/google/android/setupdesign/view/CardView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/google/android/setupdesign/R$layout;->sud_card_view_default:I

    invoke-static {v0, v1, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 68
    invoke-super {p0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 69
    sget v0, Lcom/google/android/setupdesign/R$id;->sud_items_icon:I

    invoke-virtual {p0, v0}, Lcom/google/android/setupdesign/view/CardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/google/android/setupdesign/view/CardView;->iconView:Landroid/widget/ImageView;

    .line 70
    sget v0, Lcom/google/android/setupdesign/R$id;->sud_items_title:I

    invoke-virtual {p0, v0}, Lcom/google/android/setupdesign/view/CardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/setupdesign/view/WrapTextView;

    iput-object v0, p0, Lcom/google/android/setupdesign/view/CardView;->titleView:Lcom/google/android/setupdesign/view/WrapTextView;

    .line 71
    iget-object v0, p0, Lcom/google/android/setupdesign/view/CardView;->iconView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/setupdesign/view/CardView;->icon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 72
    iget-object v0, p0, Lcom/google/android/setupdesign/view/CardView;->iconView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/google/android/setupdesign/view/CardView;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 74
    :cond_0
    iget-object v0, p0, Lcom/google/android/setupdesign/view/CardView;->titleView:Lcom/google/android/setupdesign/view/WrapTextView;

    if-eqz v0, :cond_1

    .line 75
    iget-object v0, p0, Lcom/google/android/setupdesign/view/CardView;->titleView:Lcom/google/android/setupdesign/view/WrapTextView;

    iget v1, p0, Lcom/google/android/setupdesign/view/CardView;->lineHeight:I

    invoke-virtual {v0, v1}, Lcom/google/android/setupdesign/view/WrapTextView;->setLineHeight(I)V

    .line 76
    iget-object v0, p0, Lcom/google/android/setupdesign/view/CardView;->title:Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    .line 77
    iget-object v0, p0, Lcom/google/android/setupdesign/view/CardView;->titleView:Lcom/google/android/setupdesign/view/WrapTextView;

    iget-object v1, p0, Lcom/google/android/setupdesign/view/CardView;->title:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lcom/google/android/setupdesign/view/WrapTextView;->setText(Ljava/lang/CharSequence;)V

    .line 80
    :cond_1
    return-void
.end method


# virtual methods
.method public getCardIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/google/android/setupdesign/view/CardView;->icon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getCardTitle()Ljava/lang/CharSequence;
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/google/android/setupdesign/view/CardView;->title:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getLineHeight()I
    .locals 1

    .line 114
    iget-object v0, p0, Lcom/google/android/setupdesign/view/CardView;->titleView:Lcom/google/android/setupdesign/view/WrapTextView;

    if-eqz v0, :cond_0

    .line 115
    iget-object v0, p0, Lcom/google/android/setupdesign/view/CardView;->titleView:Lcom/google/android/setupdesign/view/WrapTextView;

    invoke-virtual {v0}, Lcom/google/android/setupdesign/view/WrapTextView;->getLineHeight()I

    move-result v0

    return v0

    .line 117
    :cond_0
    iget v0, p0, Lcom/google/android/setupdesign/view/CardView;->lineHeight:I

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    .line 122
    iget-boolean v0, p0, Lcom/google/android/setupdesign/view/CardView;->skipClickSelection:Z

    if-nez v0, :cond_1

    .line 123
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setSelected(Z)V

    .line 124
    iget-object v1, p0, Lcom/google/android/setupdesign/view/CardView;->iconView:Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    .line 125
    iget-object v1, p0, Lcom/google/android/setupdesign/view/CardView;->iconView:Landroid/widget/ImageView;

    .line 126
    invoke-virtual {p0}, Lcom/google/android/setupdesign/view/CardView;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/google/android/setupdesign/R$drawable;->sud_ic_check_mark:I

    invoke-static {v2, v3}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 125
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 127
    iget-object v1, p0, Lcom/google/android/setupdesign/view/CardView;->iconView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 128
    nop

    .line 129
    invoke-virtual {p0}, Lcom/google/android/setupdesign/view/CardView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/google/android/setupdesign/strings/R$string;->sud_card_view_check_mark_icon_label:I

    .line 130
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 128
    invoke-virtual {p1, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 134
    :cond_0
    iget-object v1, p0, Lcom/google/android/setupdesign/view/CardView;->titleView:Lcom/google/android/setupdesign/view/WrapTextView;

    if-eqz v1, :cond_1

    .line 135
    iget-object v1, p0, Lcom/google/android/setupdesign/view/CardView;->titleView:Lcom/google/android/setupdesign/view/WrapTextView;

    invoke-virtual {v1, v0}, Lcom/google/android/setupdesign/view/WrapTextView;->setSelected(Z)V

    .line 138
    :cond_1
    iget-object v0, p0, Lcom/google/android/setupdesign/view/CardView;->onClickListener:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_2

    .line 140
    iget-object v0, p0, Lcom/google/android/setupdesign/view/CardView;->onClickListener:Landroid/view/View$OnClickListener;

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 142
    :cond_2
    return-void
.end method

.method public setCardIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "icon"
        }
    .end annotation

    .line 90
    iput-object p1, p0, Lcom/google/android/setupdesign/view/CardView;->icon:Landroid/graphics/drawable/Drawable;

    .line 91
    iget-object v0, p0, Lcom/google/android/setupdesign/view/CardView;->iconView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/google/android/setupdesign/view/CardView;->iconView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 94
    :cond_0
    return-void
.end method

.method public setCardTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "title"
        }
    .end annotation

    .line 83
    iput-object p1, p0, Lcom/google/android/setupdesign/view/CardView;->title:Ljava/lang/CharSequence;

    .line 84
    iget-object v0, p0, Lcom/google/android/setupdesign/view/CardView;->titleView:Lcom/google/android/setupdesign/view/WrapTextView;

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/google/android/setupdesign/view/CardView;->titleView:Lcom/google/android/setupdesign/view/WrapTextView;

    invoke-virtual {v0, p1}, Lcom/google/android/setupdesign/view/WrapTextView;->setText(Ljava/lang/CharSequence;)V

    .line 87
    :cond_0
    return-void
.end method

.method public setLineHeight(I)V
    .locals 1
    .param p1, "lineHeight"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "lineHeight"
        }
    .end annotation

    .line 106
    iput p1, p0, Lcom/google/android/setupdesign/view/CardView;->lineHeight:I

    .line 107
    iget-object v0, p0, Lcom/google/android/setupdesign/view/CardView;->titleView:Lcom/google/android/setupdesign/view/WrapTextView;

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/google/android/setupdesign/view/CardView;->titleView:Lcom/google/android/setupdesign/view/WrapTextView;

    invoke-virtual {v0, p1}, Lcom/google/android/setupdesign/view/WrapTextView;->setLineHeight(I)V

    .line 110
    :cond_0
    return-void
.end method

.method public final setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/view/View$OnClickListener;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    .line 146
    iput-object p1, p0, Lcom/google/android/setupdesign/view/CardView;->onClickListener:Landroid/view/View$OnClickListener;

    .line 147
    return-void
.end method
