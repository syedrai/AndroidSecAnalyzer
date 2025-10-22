.class public Lcom/google/android/setupdesign/view/InfoFooterView;
.super Landroid/widget/LinearLayout;
.source "InfoFooterView.java"


# instance fields
.field private alignParentBottom:Ljava/lang/Boolean;

.field private icon:Landroid/graphics/drawable/Drawable;

.field private iconView:Landroid/widget/ImageView;

.field private title:Ljava/lang/CharSequence;

.field private titleView:Lcom/google/android/setupdesign/view/RichTextView;


# direct methods
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

    .line 45
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 39
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/setupdesign/view/InfoFooterView;->alignParentBottom:Ljava/lang/Boolean;

    .line 46
    invoke-direct {p0}, Lcom/google/android/setupdesign/view/InfoFooterView;->init()V

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
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

    .line 50
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 39
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/setupdesign/view/InfoFooterView;->alignParentBottom:Ljava/lang/Boolean;

    .line 51
    sget-object v1, Lcom/google/android/setupdesign/R$styleable;->SudInfoFooterView:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 52
    .local v1, "a":Landroid/content/res/TypedArray;
    sget v2, Lcom/google/android/setupdesign/R$styleable;->SudInfoFooterView_android_icon:I

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/setupdesign/view/InfoFooterView;->icon:Landroid/graphics/drawable/Drawable;

    .line 53
    sget v2, Lcom/google/android/setupdesign/R$styleable;->SudInfoFooterView_android_title:I

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/setupdesign/view/InfoFooterView;->title:Ljava/lang/CharSequence;

    .line 54
    sget v2, Lcom/google/android/setupdesign/R$styleable;->SudInfoFooterView_sudAlignParentBottom:I

    invoke-virtual {v1, v2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/setupdesign/view/InfoFooterView;->alignParentBottom:Ljava/lang/Boolean;

    .line 55
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 56
    invoke-direct {p0}, Lcom/google/android/setupdesign/view/InfoFooterView;->init()V

    .line 57
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "attrs",
            "defStyle"
        }
    .end annotation

    .line 60
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 39
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/setupdesign/view/InfoFooterView;->alignParentBottom:Ljava/lang/Boolean;

    .line 61
    sget-object v0, Lcom/google/android/setupdesign/R$styleable;->SudInfoFooterView:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 62
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v1, Lcom/google/android/setupdesign/R$styleable;->SudInfoFooterView_android_icon:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/setupdesign/view/InfoFooterView;->icon:Landroid/graphics/drawable/Drawable;

    .line 63
    sget v1, Lcom/google/android/setupdesign/R$styleable;->SudInfoFooterView_android_title:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/setupdesign/view/InfoFooterView;->title:Ljava/lang/CharSequence;

    .line 64
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 65
    invoke-direct {p0}, Lcom/google/android/setupdesign/view/InfoFooterView;->init()V

    .line 66
    return-void
.end method

.method private alignView()V
    .locals 4

    .line 84
    sget v0, Lcom/google/android/setupdesign/R$id;->sud_info_footer_container:I

    invoke-virtual {p0, v0}, Lcom/google/android/setupdesign/view/InfoFooterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 85
    .local v0, "infoFooterContainer":Landroid/view/View;
    nop

    .line 86
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 88
    .local v1, "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v2, p0, Lcom/google/android/setupdesign/view/InfoFooterView;->alignParentBottom:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    const/16 v3, 0xc

    invoke-virtual {v1, v3, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 89
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 90
    return-void
.end method

.method private init()V
    .locals 3

    .line 69
    invoke-virtual {p0}, Lcom/google/android/setupdesign/view/InfoFooterView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/google/android/setupdesign/R$layout;->sud_info_footer_default:I

    invoke-static {v0, v1, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 70
    sget v0, Lcom/google/android/setupdesign/R$id;->sud_info_footer_title:I

    invoke-virtual {p0, v0}, Lcom/google/android/setupdesign/view/InfoFooterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/setupdesign/view/RichTextView;

    iput-object v0, p0, Lcom/google/android/setupdesign/view/InfoFooterView;->titleView:Lcom/google/android/setupdesign/view/RichTextView;

    .line 71
    sget v0, Lcom/google/android/setupdesign/R$id;->sud_info_footer_icon:I

    invoke-virtual {p0, v0}, Lcom/google/android/setupdesign/view/InfoFooterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/google/android/setupdesign/view/InfoFooterView;->iconView:Landroid/widget/ImageView;

    .line 72
    iget-object v0, p0, Lcom/google/android/setupdesign/view/InfoFooterView;->titleView:Lcom/google/android/setupdesign/view/RichTextView;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/setupdesign/view/InfoFooterView;->title:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/google/android/setupdesign/view/InfoFooterView;->titleView:Lcom/google/android/setupdesign/view/RichTextView;

    iget-object v2, p0, Lcom/google/android/setupdesign/view/InfoFooterView;->title:Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Lcom/google/android/setupdesign/view/RichTextView;->setText(Ljava/lang/CharSequence;)V

    .line 74
    iget-object v0, p0, Lcom/google/android/setupdesign/view/InfoFooterView;->titleView:Lcom/google/android/setupdesign/view/RichTextView;

    invoke-virtual {v0, v1}, Lcom/google/android/setupdesign/view/RichTextView;->setVisibility(I)V

    .line 76
    :cond_0
    iget-object v0, p0, Lcom/google/android/setupdesign/view/InfoFooterView;->iconView:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/setupdesign/view/InfoFooterView;->icon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 77
    iget-object v0, p0, Lcom/google/android/setupdesign/view/InfoFooterView;->iconView:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/google/android/setupdesign/view/InfoFooterView;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 78
    iget-object v0, p0, Lcom/google/android/setupdesign/view/InfoFooterView;->iconView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 80
    :cond_1
    invoke-direct {p0}, Lcom/google/android/setupdesign/view/InfoFooterView;->alignView()V

    .line 81
    return-void
.end method


# virtual methods
.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 122
    iget-object v0, p0, Lcom/google/android/setupdesign/view/InfoFooterView;->icon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    .line 126
    iget-object v0, p0, Lcom/google/android/setupdesign/view/InfoFooterView;->title:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public setAlignParentBottom(Z)V
    .locals 1
    .param p1, "alignParentBottom"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "alignParentBottom"
        }
    .end annotation

    .line 99
    iget-object v0, p0, Lcom/google/android/setupdesign/view/InfoFooterView;->alignParentBottom:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eq v0, p1, :cond_0

    .line 100
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/setupdesign/view/InfoFooterView;->alignParentBottom:Ljava/lang/Boolean;

    .line 101
    invoke-direct {p0}, Lcom/google/android/setupdesign/view/InfoFooterView;->alignView()V

    .line 103
    :cond_0
    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "icon"
        }
    .end annotation

    .line 114
    iput-object p1, p0, Lcom/google/android/setupdesign/view/InfoFooterView;->icon:Landroid/graphics/drawable/Drawable;

    .line 115
    iget-object v0, p0, Lcom/google/android/setupdesign/view/InfoFooterView;->iconView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Lcom/google/android/setupdesign/view/InfoFooterView;->iconView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 117
    iget-object v0, p0, Lcom/google/android/setupdesign/view/InfoFooterView;->iconView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 119
    :cond_0
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "title"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "title"
        }
    .end annotation

    .line 106
    iput-object p1, p0, Lcom/google/android/setupdesign/view/InfoFooterView;->title:Ljava/lang/CharSequence;

    .line 107
    iget-object v0, p0, Lcom/google/android/setupdesign/view/InfoFooterView;->titleView:Lcom/google/android/setupdesign/view/RichTextView;

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/google/android/setupdesign/view/InfoFooterView;->titleView:Lcom/google/android/setupdesign/view/RichTextView;

    invoke-virtual {v0, p1}, Lcom/google/android/setupdesign/view/RichTextView;->setText(Ljava/lang/CharSequence;)V

    .line 109
    iget-object v0, p0, Lcom/google/android/setupdesign/view/InfoFooterView;->titleView:Lcom/google/android/setupdesign/view/RichTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/setupdesign/view/RichTextView;->setVisibility(I)V

    .line 111
    :cond_0
    return-void
.end method
