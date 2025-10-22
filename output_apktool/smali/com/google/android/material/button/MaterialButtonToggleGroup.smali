.class public Lcom/google/android/material/button/MaterialButtonToggleGroup;
.super Lcom/google/android/material/button/MaterialButtonGroup;
.source "MaterialButtonToggleGroup.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/button/MaterialButtonToggleGroup$OnButtonCheckedListener;
    }
.end annotation


# static fields
.field private static final DEF_STYLE_RES:I

.field private static final LOG_TAG:Ljava/lang/String; = "MButtonToggleGroup"


# instance fields
.field private checkedIds:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final defaultCheckId:I

.field private final onButtonCheckedListeners:Ljava/util/LinkedHashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashSet<",
            "Lcom/google/android/material/button/MaterialButtonToggleGroup$OnButtonCheckedListener;",
            ">;"
        }
    .end annotation
.end field

.field private selectionRequired:Z

.field private singleSelection:Z

.field private skipCheckedStateTracker:Z


# direct methods
.method static bridge synthetic -$$Nest$mgetIndexWithinVisibleButtons(Lcom/google/android/material/button/MaterialButtonToggleGroup;Landroid/view/View;)I
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->getIndexWithinVisibleButtons(Landroid/view/View;)I

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 139
    sget v0, Lcom/google/android/material/button/R$style;->Widget_MaterialComponents_MaterialButtonToggleGroup:I

    sput v0, Lcom/google/android/material/button/MaterialButtonToggleGroup;->DEF_STYLE_RES:I

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

    .line 152
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/material/button/MaterialButtonToggleGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 153
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

    .line 156
    sget v0, Lcom/google/android/material/button/R$attr;->materialButtonToggleGroupStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/material/button/MaterialButtonToggleGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 157
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 8
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

    .line 161
    sget v0, Lcom/google/android/material/button/MaterialButtonToggleGroup;->DEF_STYLE_RES:I

    invoke-static {p1, p2, p3, v0}, Lcom/google/android/material/theme/overlay/MaterialThemeOverlay;->wrap(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3}, Lcom/google/android/material/button/MaterialButtonGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 141
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup;->onButtonCheckedListeners:Ljava/util/LinkedHashSet;

    .line 144
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup;->skipCheckedStateTracker:Z

    .line 149
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup;->checkedIds:Ljava/util/Set;

    .line 163
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 164
    .end local p1    # "context":Landroid/content/Context;
    .local v2, "context":Landroid/content/Context;
    sget-object v4, Lcom/google/android/material/button/R$styleable;->MaterialButtonToggleGroup:[I

    sget v6, Lcom/google/android/material/button/MaterialButtonToggleGroup;->DEF_STYLE_RES:I

    new-array v7, v0, [I

    .line 165
    move-object v3, p2

    move v5, p3

    .end local p2    # "attrs":Landroid/util/AttributeSet;
    .end local p3    # "defStyleAttr":I
    .local v3, "attrs":Landroid/util/AttributeSet;
    .local v5, "defStyleAttr":I
    invoke-static/range {v2 .. v7}, Lcom/google/android/material/internal/ThemeEnforcement;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 168
    .local p1, "attributes":Landroid/content/res/TypedArray;
    sget p2, Lcom/google/android/material/button/R$styleable;->MaterialButtonToggleGroup_singleSelection:I

    .line 169
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    .line 168
    invoke-virtual {p0, p2}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->setSingleSelection(Z)V

    .line 170
    sget p2, Lcom/google/android/material/button/R$styleable;->MaterialButtonToggleGroup_checkedButton:I

    .line 171
    const/4 p3, -0x1

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup;->defaultCheckId:I

    .line 172
    sget p2, Lcom/google/android/material/button/R$styleable;->MaterialButtonToggleGroup_selectionRequired:I

    .line 173
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup;->selectionRequired:Z

    .line 176
    iget-object p2, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup;->innerCornerSize:Lcom/google/android/material/shape/StateListCornerSize;

    if-nez p2, :cond_0

    .line 177
    new-instance p2, Lcom/google/android/material/shape/AbsoluteCornerSize;

    const/4 p3, 0x0

    invoke-direct {p2, p3}, Lcom/google/android/material/shape/AbsoluteCornerSize;-><init>(F)V

    invoke-static {p2}, Lcom/google/android/material/shape/StateListCornerSize;->create(Lcom/google/android/material/shape/CornerSize;)Lcom/google/android/material/shape/StateListCornerSize;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup;->innerCornerSize:Lcom/google/android/material/shape/StateListCornerSize;

    .line 180
    :cond_0
    sget p2, Lcom/google/android/material/button/R$styleable;->MaterialButtonToggleGroup_android_enabled:I

    const/4 p3, 0x1

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    invoke-virtual {p0, p2}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->setEnabled(Z)V

    .line 181
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 183
    invoke-virtual {p0, p3}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->setImportantForAccessibility(I)V

    .line 184
    return-void
.end method

.method private checkInternal(IZ)V
    .locals 3
    .param p1, "buttonId"    # I
    .param p2, "checked"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "buttonId",
            "checked"
        }
    .end annotation

    .line 470
    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 471
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Button ID is not valid: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MButtonToggleGroup"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    return-void

    .line 474
    :cond_0
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup;->checkedIds:Ljava/util/Set;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 475
    .local v0, "checkedIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    if-eqz p2, :cond_2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 476
    iget-boolean v1, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup;->singleSelection:Z

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 477
    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 479
    :cond_1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 480
    :cond_2
    if-nez p2, :cond_5

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 482
    iget-boolean v1, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup;->selectionRequired:Z

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_4

    .line 483
    :cond_3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 489
    :cond_4
    :goto_0
    invoke-direct {p0, v0}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->updateCheckedIds(Ljava/util/Set;)V

    .line 490
    return-void

    .line 487
    :cond_5
    return-void
.end method

.method private dispatchOnButtonChecked(IZ)V
    .locals 2
    .param p1, "buttonId"    # I
    .param p2, "checked"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "buttonId",
            "checked"
        }
    .end annotation

    .line 506
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup;->onButtonCheckedListeners:Ljava/util/LinkedHashSet;

    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/button/MaterialButtonToggleGroup$OnButtonCheckedListener;

    .line 507
    .local v1, "listener":Lcom/google/android/material/button/MaterialButtonToggleGroup$OnButtonCheckedListener;
    invoke-interface {v1, p0, p1, p2}, Lcom/google/android/material/button/MaterialButtonToggleGroup$OnButtonCheckedListener;->onButtonChecked(Lcom/google/android/material/button/MaterialButtonToggleGroup;IZ)V

    .line 508
    .end local v1    # "listener":Lcom/google/android/material/button/MaterialButtonToggleGroup$OnButtonCheckedListener;
    goto :goto_0

    .line 509
    :cond_0
    return-void
.end method

.method private getChildrenA11yClassName()Ljava/lang/String;
    .locals 1

    .line 396
    iget-boolean v0, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup;->singleSelection:Z

    if-eqz v0, :cond_0

    const-class v0, Landroid/widget/RadioButton;

    goto :goto_0

    :cond_0
    const-class v0, Landroid/widget/ToggleButton;

    :goto_0
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getIndexWithinVisibleButtons(Landroid/view/View;)I
    .locals 4
    .param p1, "child"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "child"
        }
    .end annotation

    .line 454
    instance-of v0, p1, Lcom/google/android/material/button/MaterialButton;

    const/4 v1, -0x1

    if-nez v0, :cond_0

    .line 455
    return v1

    .line 457
    :cond_0
    const/4 v0, 0x0

    .line 458
    .local v0, "index":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 459
    invoke-virtual {p0, v2}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    if-ne v3, p1, :cond_1

    .line 460
    return v0

    .line 462
    :cond_1
    invoke-virtual {p0, v2}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    instance-of v3, v3, Lcom/google/android/material/button/MaterialButton;

    if-eqz v3, :cond_2

    invoke-direct {p0, v2}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->isChildVisible(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 463
    add-int/lit8 v0, v0, 0x1

    .line 458
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 466
    .end local v2    # "i":I
    :cond_3
    return v1
.end method

.method private getVisibleButtonCount()I
    .locals 3

    .line 444
    const/4 v0, 0x0

    .line 445
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 446
    invoke-virtual {p0, v1}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    instance-of v2, v2, Lcom/google/android/material/button/MaterialButton;

    if-eqz v2, :cond_0

    invoke-direct {p0, v1}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->isChildVisible(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 447
    add-int/lit8 v0, v0, 0x1

    .line 445
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 450
    .end local v1    # "i":I
    :cond_1
    return v0
.end method

.method private isChildVisible(I)Z
    .locals 3
    .param p1, "i"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "i"
        }
    .end annotation

    .line 439
    invoke-virtual {p0, p1}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 440
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private setCheckedStateForView(IZ)V
    .locals 2
    .param p1, "viewId"    # I
    .param p2, "checked"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "viewId",
            "checked"
        }
    .end annotation

    .line 430
    invoke-virtual {p0, p1}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 431
    .local v0, "checkedView":Landroid/view/View;
    instance-of v1, v0, Lcom/google/android/material/button/MaterialButton;

    if-eqz v1, :cond_0

    .line 432
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup;->skipCheckedStateTracker:Z

    .line 433
    move-object v1, v0

    check-cast v1, Lcom/google/android/material/button/MaterialButton;

    invoke-virtual {v1, p2}, Lcom/google/android/material/button/MaterialButton;->setChecked(Z)V

    .line 434
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup;->skipCheckedStateTracker:Z

    .line 436
    :cond_0
    return-void
.end method

.method private setupButtonChild(Lcom/google/android/material/button/MaterialButton;)V
    .locals 2
    .param p1, "buttonChild"    # Lcom/google/android/material/button/MaterialButton;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "buttonChild"
        }
    .end annotation

    .line 519
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/google/android/material/button/MaterialButton;->setMaxLines(I)V

    .line 520
    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p1, v1}, Lcom/google/android/material/button/MaterialButton;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 521
    invoke-virtual {p1, v0}, Lcom/google/android/material/button/MaterialButton;->setCheckable(Z)V

    .line 522
    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->getChildrenA11yClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/google/android/material/button/MaterialButton;->setA11yClassName(Ljava/lang/String;)V

    .line 525
    invoke-virtual {p1, v0}, Lcom/google/android/material/button/MaterialButton;->setShouldDrawSurfaceColorStroke(Z)V

    .line 526
    return-void
.end method

.method private updateCheckedIds(Ljava/util/Set;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "checkedIds"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 493
    .local p1, "checkedIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup;->checkedIds:Ljava/util/Set;

    .line 494
    .local v0, "previousCheckedIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v1, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup;->checkedIds:Ljava/util/Set;

    .line 495
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 496
    invoke-virtual {p0, v1}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->getChildButton(I)Lcom/google/android/material/button/MaterialButton;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/material/button/MaterialButton;->getId()I

    move-result v2

    .line 497
    .local v2, "buttonId":I
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    invoke-direct {p0, v2, v3}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->setCheckedStateForView(IZ)V

    .line 498
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {p1, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eq v3, v4, :cond_0

    .line 499
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    invoke-direct {p0, v2, v3}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->dispatchOnButtonChecked(IZ)V

    .line 495
    .end local v2    # "buttonId":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 502
    .end local v1    # "i":I
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->invalidate()V

    .line 503
    return-void
.end method

.method private updateChildrenA11yClassName()V
    .locals 3

    .line 388
    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->getChildrenA11yClassName()Ljava/lang/String;

    move-result-object v0

    .line 389
    .local v0, "className":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 390
    invoke-virtual {p0, v1}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->getChildButton(I)Lcom/google/android/material/button/MaterialButton;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/android/material/button/MaterialButton;->setA11yClassName(Ljava/lang/String;)V

    .line 389
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 392
    .end local v1    # "i":I
    :cond_0
    return-void
.end method


# virtual methods
.method public addOnButtonCheckedListener(Lcom/google/android/material/button/MaterialButtonToggleGroup$OnButtonCheckedListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/google/android/material/button/MaterialButtonToggleGroup$OnButtonCheckedListener;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    .line 343
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup;->onButtonCheckedListeners:Ljava/util/LinkedHashSet;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 344
    return-void
.end method

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

    .line 200
    instance-of v0, p1, Lcom/google/android/material/button/MaterialButton;

    if-nez v0, :cond_0

    .line 201
    const-string v0, "MButtonToggleGroup"

    const-string v1, "Child views must be of type MaterialButton."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    return-void

    .line 205
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/material/button/MaterialButtonGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 206
    move-object v0, p1

    check-cast v0, Lcom/google/android/material/button/MaterialButton;

    .line 209
    .local v0, "buttonChild":Lcom/google/android/material/button/MaterialButton;
    invoke-direct {p0, v0}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->setupButtonChild(Lcom/google/android/material/button/MaterialButton;)V

    .line 212
    invoke-virtual {v0}, Lcom/google/android/material/button/MaterialButton;->getId()I

    move-result v1

    invoke-virtual {v0}, Lcom/google/android/material/button/MaterialButton;->isChecked()Z

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->checkInternal(IZ)V

    .line 214
    new-instance v1, Lcom/google/android/material/button/MaterialButtonToggleGroup$1;

    invoke-direct {v1, p0}, Lcom/google/android/material/button/MaterialButtonToggleGroup$1;-><init>(Lcom/google/android/material/button/MaterialButtonToggleGroup;)V

    invoke-static {v0, v1}, Landroidx/core/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroidx/core/view/AccessibilityDelegateCompat;)V

    .line 231
    return-void
.end method

.method public check(I)V
    .locals 1
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "id"
        }
    .end annotation

    .line 260
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->checkInternal(IZ)V

    .line 261
    return-void
.end method

.method public clearChecked()V
    .locals 1

    .line 286
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-direct {p0, v0}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->updateCheckedIds(Ljava/util/Set;)V

    .line 287
    return-void
.end method

.method public clearOnButtonCheckedListeners()V
    .locals 1

    .line 358
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup;->onButtonCheckedListeners:Ljava/util/LinkedHashSet;

    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->clear()V

    .line 359
    return-void
.end method

.method public getCheckedButtonId()I
    .locals 1

    .line 305
    iget-boolean v0, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup;->singleSelection:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup;->checkedIds:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup;->checkedIds:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method public getCheckedButtonIds()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 322
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 323
    .local v0, "orderedCheckedIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 324
    invoke-virtual {p0, v1}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->getChildButton(I)Lcom/google/android/material/button/MaterialButton;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/material/button/MaterialButton;->getId()I

    move-result v2

    .line 325
    .local v2, "childId":I
    iget-object v3, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup;->checkedIds:Ljava/util/Set;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 326
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 323
    .end local v2    # "childId":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 330
    .end local v1    # "i":I
    :cond_1
    return-object v0
.end method

.method public isSelectionRequired()Z
    .locals 1

    .line 414
    iget-boolean v0, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup;->selectionRequired:Z

    return v0
.end method

.method public isSingleSelection()Z
    .locals 1

    .line 368
    iget-boolean v0, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup;->singleSelection:Z

    return v0
.end method

.method onButtonCheckedStateChanged(Lcom/google/android/material/button/MaterialButton;Z)V
    .locals 1
    .param p1, "button"    # Lcom/google/android/material/button/MaterialButton;
    .param p2, "isChecked"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "button",
            "isChecked"
        }
    .end annotation

    .line 530
    iget-boolean v0, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup;->skipCheckedStateTracker:Z

    if-eqz v0, :cond_0

    .line 531
    return-void

    .line 533
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/material/button/MaterialButton;->getId()I

    move-result v0

    invoke-direct {p0, v0, p2}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->checkInternal(IZ)V

    .line 534
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .line 188
    invoke-super {p0}, Lcom/google/android/material/button/MaterialButtonGroup;->onFinishInflate()V

    .line 189
    iget v0, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup;->defaultCheckId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 190
    iget v0, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup;->defaultCheckId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->updateCheckedIds(Ljava/util/Set;)V

    .line 192
    :cond_0
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 5
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "info"
        }
    .end annotation

    .line 235
    invoke-super {p0, p1}, Lcom/google/android/material/button/MaterialButtonGroup;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 236
    invoke-static {p1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->wrap(Landroid/view/accessibility/AccessibilityNodeInfo;)Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;

    move-result-object v0

    .line 237
    .local v0, "infoCompat":Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    nop

    .line 240
    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->getVisibleButtonCount()I

    move-result v1

    .line 242
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->isSingleSelection()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    .line 243
    const/4 v2, 0x1

    goto :goto_0

    .line 244
    :cond_0
    const/4 v2, 0x2

    .line 238
    :goto_0
    const/4 v4, 0x0

    invoke-static {v3, v1, v4, v2}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$CollectionInfoCompat;->obtain(IIZI)Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$CollectionInfoCompat;

    move-result-object v1

    .line 237
    invoke-virtual {v0, v1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setCollectionInfo(Ljava/lang/Object;)V

    .line 245
    return-void
.end method

.method public removeOnButtonCheckedListener(Lcom/google/android/material/button/MaterialButtonToggleGroup$OnButtonCheckedListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/google/android/material/button/MaterialButtonToggleGroup$OnButtonCheckedListener;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    .line 353
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup;->onButtonCheckedListeners:Ljava/util/LinkedHashSet;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashSet;->remove(Ljava/lang/Object;)Z

    .line 354
    return-void
.end method

.method public setSelectionRequired(Z)V
    .locals 0
    .param p1, "selectionRequired"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "selectionRequired"
        }
    .end annotation

    .line 405
    iput-boolean p1, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup;->selectionRequired:Z

    .line 406
    return-void
.end method

.method public setSingleSelection(I)V
    .locals 1
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "id"
        }
    .end annotation

    .line 426
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->setSingleSelection(Z)V

    .line 427
    return-void
.end method

.method public setSingleSelection(Z)V
    .locals 1
    .param p1, "singleSelection"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "singleSelection"
        }
    .end annotation

    .line 380
    iget-boolean v0, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup;->singleSelection:Z

    if-eq v0, p1, :cond_0

    .line 381
    iput-boolean p1, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup;->singleSelection:Z

    .line 382
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->clearChecked()V

    .line 384
    :cond_0
    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->updateChildrenA11yClassName()V

    .line 385
    return-void
.end method

.method public uncheck(I)V
    .locals 1
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "id"
        }
    .end annotation

    .line 273
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->checkInternal(IZ)V

    .line 274
    return-void
.end method
