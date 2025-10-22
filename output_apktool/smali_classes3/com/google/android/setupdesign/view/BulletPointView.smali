.class public Lcom/google/android/setupdesign/view/BulletPointView;
.super Landroid/widget/LinearLayout;
.source "BulletPointView.java"


# instance fields
.field private icon:Landroid/graphics/drawable/Drawable;

.field private iconView:Landroid/widget/ImageView;

.field private summary:Ljava/lang/CharSequence;

.field private summaryView:Lcom/google/android/setupdesign/view/RichTextView;

.field private title:Ljava/lang/CharSequence;

.field private titleView:Lcom/google/android/setupdesign/view/RichTextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 46
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 47
    invoke-direct {p0}, Lcom/google/android/setupdesign/view/BulletPointView;->init()V

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
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

    .line 51
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 52
    sget-object v0, Lcom/google/android/setupdesign/R$styleable;->SudBulletPointView:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 53
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v1, Lcom/google/android/setupdesign/R$styleable;->SudBulletPointView_android_icon:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/setupdesign/view/BulletPointView;->icon:Landroid/graphics/drawable/Drawable;

    .line 54
    sget v1, Lcom/google/android/setupdesign/R$styleable;->SudBulletPointView_android_title:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/setupdesign/view/BulletPointView;->title:Ljava/lang/CharSequence;

    .line 55
    sget v1, Lcom/google/android/setupdesign/R$styleable;->SudBulletPointView_android_summary:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/setupdesign/view/BulletPointView;->summary:Ljava/lang/CharSequence;

    .line 56
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 57
    invoke-direct {p0}, Lcom/google/android/setupdesign/view/BulletPointView;->init()V

    .line 58
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

    .line 61
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 62
    sget-object v0, Lcom/google/android/setupdesign/R$styleable;->SudBulletPointView:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 63
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v1, Lcom/google/android/setupdesign/R$styleable;->SudBulletPointView_android_icon:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/setupdesign/view/BulletPointView;->icon:Landroid/graphics/drawable/Drawable;

    .line 64
    sget v1, Lcom/google/android/setupdesign/R$styleable;->SudBulletPointView_android_title:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/setupdesign/view/BulletPointView;->title:Ljava/lang/CharSequence;

    .line 65
    sget v1, Lcom/google/android/setupdesign/R$styleable;->SudBulletPointView_android_summary:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/setupdesign/view/BulletPointView;->summary:Ljava/lang/CharSequence;

    .line 66
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 67
    invoke-direct {p0}, Lcom/google/android/setupdesign/view/BulletPointView;->init()V

    .line 68
    return-void
.end method

.method private init()V
    .locals 3

    .line 71
    invoke-virtual {p0}, Lcom/google/android/setupdesign/view/BulletPointView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/google/android/setupdesign/R$layout;->sud_bullet_point_default:I

    invoke-static {v0, v1, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 72
    sget v0, Lcom/google/android/setupdesign/R$id;->sud_items_title:I

    invoke-virtual {p0, v0}, Lcom/google/android/setupdesign/view/BulletPointView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/setupdesign/view/RichTextView;

    iput-object v0, p0, Lcom/google/android/setupdesign/view/BulletPointView;->titleView:Lcom/google/android/setupdesign/view/RichTextView;

    .line 73
    sget v0, Lcom/google/android/setupdesign/R$id;->sud_items_summary:I

    invoke-virtual {p0, v0}, Lcom/google/android/setupdesign/view/BulletPointView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/setupdesign/view/RichTextView;

    iput-object v0, p0, Lcom/google/android/setupdesign/view/BulletPointView;->summaryView:Lcom/google/android/setupdesign/view/RichTextView;

    .line 74
    sget v0, Lcom/google/android/setupdesign/R$id;->sud_items_icon:I

    invoke-virtual {p0, v0}, Lcom/google/android/setupdesign/view/BulletPointView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/google/android/setupdesign/view/BulletPointView;->iconView:Landroid/widget/ImageView;

    .line 75
    iget-object v0, p0, Lcom/google/android/setupdesign/view/BulletPointView;->titleView:Lcom/google/android/setupdesign/view/RichTextView;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/setupdesign/view/BulletPointView;->title:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/google/android/setupdesign/view/BulletPointView;->titleView:Lcom/google/android/setupdesign/view/RichTextView;

    iget-object v2, p0, Lcom/google/android/setupdesign/view/BulletPointView;->title:Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Lcom/google/android/setupdesign/view/RichTextView;->setText(Ljava/lang/CharSequence;)V

    .line 77
    iget-object v0, p0, Lcom/google/android/setupdesign/view/BulletPointView;->titleView:Lcom/google/android/setupdesign/view/RichTextView;

    invoke-virtual {v0, v1}, Lcom/google/android/setupdesign/view/RichTextView;->setVisibility(I)V

    .line 79
    :cond_0
    iget-object v0, p0, Lcom/google/android/setupdesign/view/BulletPointView;->summaryView:Lcom/google/android/setupdesign/view/RichTextView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/setupdesign/view/BulletPointView;->summary:Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    .line 80
    iget-object v0, p0, Lcom/google/android/setupdesign/view/BulletPointView;->summaryView:Lcom/google/android/setupdesign/view/RichTextView;

    iget-object v2, p0, Lcom/google/android/setupdesign/view/BulletPointView;->summary:Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Lcom/google/android/setupdesign/view/RichTextView;->setText(Ljava/lang/CharSequence;)V

    .line 81
    iget-object v0, p0, Lcom/google/android/setupdesign/view/BulletPointView;->summaryView:Lcom/google/android/setupdesign/view/RichTextView;

    invoke-virtual {v0, v1}, Lcom/google/android/setupdesign/view/RichTextView;->setVisibility(I)V

    .line 83
    :cond_1
    iget-object v0, p0, Lcom/google/android/setupdesign/view/BulletPointView;->iconView:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/setupdesign/view/BulletPointView;->icon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    .line 84
    iget-object v0, p0, Lcom/google/android/setupdesign/view/BulletPointView;->iconView:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/google/android/setupdesign/view/BulletPointView;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 85
    iget-object v0, p0, Lcom/google/android/setupdesign/view/BulletPointView;->iconView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 87
    :cond_2
    return-void
.end method


# virtual methods
.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 114
    iget-object v0, p0, Lcom/google/android/setupdesign/view/BulletPointView;->icon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getSummary()Ljava/lang/CharSequence;
    .locals 1

    .line 122
    iget-object v0, p0, Lcom/google/android/setupdesign/view/BulletPointView;->summary:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    .line 118
    iget-object v0, p0, Lcom/google/android/setupdesign/view/BulletPointView;->title:Ljava/lang/CharSequence;

    return-object v0
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

    .line 106
    iput-object p1, p0, Lcom/google/android/setupdesign/view/BulletPointView;->icon:Landroid/graphics/drawable/Drawable;

    .line 107
    iget-object v0, p0, Lcom/google/android/setupdesign/view/BulletPointView;->iconView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/google/android/setupdesign/view/BulletPointView;->iconView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 109
    iget-object v0, p0, Lcom/google/android/setupdesign/view/BulletPointView;->iconView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 111
    :cond_0
    return-void
.end method

.method public setSummary(Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "summary"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "summary"
        }
    .end annotation

    .line 98
    iput-object p1, p0, Lcom/google/android/setupdesign/view/BulletPointView;->summary:Ljava/lang/CharSequence;

    .line 99
    iget-object v0, p0, Lcom/google/android/setupdesign/view/BulletPointView;->summaryView:Lcom/google/android/setupdesign/view/RichTextView;

    if-eqz v0, :cond_0

    .line 100
    iget-object v0, p0, Lcom/google/android/setupdesign/view/BulletPointView;->summaryView:Lcom/google/android/setupdesign/view/RichTextView;

    invoke-virtual {v0, p1}, Lcom/google/android/setupdesign/view/RichTextView;->setText(Ljava/lang/CharSequence;)V

    .line 101
    iget-object v0, p0, Lcom/google/android/setupdesign/view/BulletPointView;->summaryView:Lcom/google/android/setupdesign/view/RichTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/setupdesign/view/RichTextView;->setVisibility(I)V

    .line 103
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

    .line 90
    iput-object p1, p0, Lcom/google/android/setupdesign/view/BulletPointView;->title:Ljava/lang/CharSequence;

    .line 91
    iget-object v0, p0, Lcom/google/android/setupdesign/view/BulletPointView;->titleView:Lcom/google/android/setupdesign/view/RichTextView;

    if-eqz v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/google/android/setupdesign/view/BulletPointView;->titleView:Lcom/google/android/setupdesign/view/RichTextView;

    invoke-virtual {v0, p1}, Lcom/google/android/setupdesign/view/RichTextView;->setText(Ljava/lang/CharSequence;)V

    .line 93
    iget-object v0, p0, Lcom/google/android/setupdesign/view/BulletPointView;->titleView:Lcom/google/android/setupdesign/view/RichTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/setupdesign/view/RichTextView;->setVisibility(I)V

    .line 95
    :cond_0
    return-void
.end method
