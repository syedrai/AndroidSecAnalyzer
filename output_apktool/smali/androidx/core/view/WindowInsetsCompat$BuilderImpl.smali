.class Landroidx/core/view/WindowInsetsCompat$BuilderImpl;
.super Ljava/lang/Object;
.source "WindowInsetsCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/view/WindowInsetsCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BuilderImpl"
.end annotation


# instance fields
.field private final mInsets:Landroidx/core/view/WindowInsetsCompat;

.field mInsetsTypeMask:[Landroidx/core/graphics/Insets;


# direct methods
.method constructor <init>()V
    .locals 3

    .line 1693
    new-instance v0, Landroidx/core/view/WindowInsetsCompat;

    const/4 v1, 0x0

    move-object v2, v1

    check-cast v2, Landroidx/core/view/WindowInsetsCompat;

    invoke-direct {v0, v1}, Landroidx/core/view/WindowInsetsCompat;-><init>(Landroidx/core/view/WindowInsetsCompat;)V

    invoke-direct {p0, v0}, Landroidx/core/view/WindowInsetsCompat$BuilderImpl;-><init>(Landroidx/core/view/WindowInsetsCompat;)V

    .line 1694
    return-void
.end method

.method constructor <init>(Landroidx/core/view/WindowInsetsCompat;)V
    .locals 0
    .param p1, "insets"    # Landroidx/core/view/WindowInsetsCompat;

    .line 1696
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1697
    iput-object p1, p0, Landroidx/core/view/WindowInsetsCompat$BuilderImpl;->mInsets:Landroidx/core/view/WindowInsetsCompat;

    .line 1698
    return-void
.end method


# virtual methods
.method protected final applyInsetTypes()V
    .locals 5

    .line 1745
    iget-object v0, p0, Landroidx/core/view/WindowInsetsCompat$BuilderImpl;->mInsetsTypeMask:[Landroidx/core/graphics/Insets;

    if-eqz v0, :cond_4

    .line 1746
    iget-object v0, p0, Landroidx/core/view/WindowInsetsCompat$BuilderImpl;->mInsetsTypeMask:[Landroidx/core/graphics/Insets;

    const/4 v1, 0x1

    invoke-static {v1}, Landroidx/core/view/WindowInsetsCompat$Type;->indexOf(I)I

    move-result v2

    aget-object v0, v0, v2

    .line 1747
    .local v0, "statusBars":Landroidx/core/graphics/Insets;
    iget-object v2, p0, Landroidx/core/view/WindowInsetsCompat$BuilderImpl;->mInsetsTypeMask:[Landroidx/core/graphics/Insets;

    const/4 v3, 0x2

    invoke-static {v3}, Landroidx/core/view/WindowInsetsCompat$Type;->indexOf(I)I

    move-result v4

    aget-object v2, v2, v4

    .line 1751
    .local v2, "navigationBars":Landroidx/core/graphics/Insets;
    if-nez v2, :cond_0

    .line 1752
    iget-object v4, p0, Landroidx/core/view/WindowInsetsCompat$BuilderImpl;->mInsets:Landroidx/core/view/WindowInsetsCompat;

    invoke-virtual {v4, v3}, Landroidx/core/view/WindowInsetsCompat;->getInsets(I)Landroidx/core/graphics/Insets;

    move-result-object v2

    .line 1754
    :cond_0
    if-nez v0, :cond_1

    .line 1755
    iget-object v3, p0, Landroidx/core/view/WindowInsetsCompat$BuilderImpl;->mInsets:Landroidx/core/view/WindowInsetsCompat;

    invoke-virtual {v3, v1}, Landroidx/core/view/WindowInsetsCompat;->getInsets(I)Landroidx/core/graphics/Insets;

    move-result-object v0

    .line 1758
    :cond_1
    invoke-static {v0, v2}, Landroidx/core/graphics/Insets;->max(Landroidx/core/graphics/Insets;Landroidx/core/graphics/Insets;)Landroidx/core/graphics/Insets;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroidx/core/view/WindowInsetsCompat$BuilderImpl;->setSystemWindowInsets(Landroidx/core/graphics/Insets;)V

    .line 1760
    iget-object v1, p0, Landroidx/core/view/WindowInsetsCompat$BuilderImpl;->mInsetsTypeMask:[Landroidx/core/graphics/Insets;

    const/16 v3, 0x10

    invoke-static {v3}, Landroidx/core/view/WindowInsetsCompat$Type;->indexOf(I)I

    move-result v3

    aget-object v1, v1, v3

    .line 1761
    .local v1, "i":Landroidx/core/graphics/Insets;
    if-eqz v1, :cond_2

    invoke-virtual {p0, v1}, Landroidx/core/view/WindowInsetsCompat$BuilderImpl;->setSystemGestureInsets(Landroidx/core/graphics/Insets;)V

    .line 1763
    :cond_2
    iget-object v3, p0, Landroidx/core/view/WindowInsetsCompat$BuilderImpl;->mInsetsTypeMask:[Landroidx/core/graphics/Insets;

    const/16 v4, 0x20

    invoke-static {v4}, Landroidx/core/view/WindowInsetsCompat$Type;->indexOf(I)I

    move-result v4

    aget-object v1, v3, v4

    .line 1764
    if-eqz v1, :cond_3

    invoke-virtual {p0, v1}, Landroidx/core/view/WindowInsetsCompat$BuilderImpl;->setMandatorySystemGestureInsets(Landroidx/core/graphics/Insets;)V

    .line 1766
    :cond_3
    iget-object v3, p0, Landroidx/core/view/WindowInsetsCompat$BuilderImpl;->mInsetsTypeMask:[Landroidx/core/graphics/Insets;

    const/16 v4, 0x40

    invoke-static {v4}, Landroidx/core/view/WindowInsetsCompat$Type;->indexOf(I)I

    move-result v4

    aget-object v1, v3, v4

    .line 1767
    if-eqz v1, :cond_4

    invoke-virtual {p0, v1}, Landroidx/core/view/WindowInsetsCompat$BuilderImpl;->setTappableElementInsets(Landroidx/core/graphics/Insets;)V

    .line 1769
    .end local v0    # "statusBars":Landroidx/core/graphics/Insets;
    .end local v1    # "i":Landroidx/core/graphics/Insets;
    .end local v2    # "navigationBars":Landroidx/core/graphics/Insets;
    :cond_4
    return-void
.end method

.method build()Landroidx/core/view/WindowInsetsCompat;
    .locals 1

    .line 1772
    invoke-virtual {p0}, Landroidx/core/view/WindowInsetsCompat$BuilderImpl;->applyInsetTypes()V

    .line 1773
    iget-object v0, p0, Landroidx/core/view/WindowInsetsCompat$BuilderImpl;->mInsets:Landroidx/core/view/WindowInsetsCompat;

    return-object v0
.end method

.method setDisplayCutout(Landroidx/core/view/DisplayCutoutCompat;)V
    .locals 0
    .param p1, "displayCutout"    # Landroidx/core/view/DisplayCutoutCompat;

    .line 1710
    return-void
.end method

.method setInsets(ILandroidx/core/graphics/Insets;)V
    .locals 3
    .param p1, "typeMask"    # I
    .param p2, "insets"    # Landroidx/core/graphics/Insets;

    .line 1714
    iget-object v0, p0, Landroidx/core/view/WindowInsetsCompat$BuilderImpl;->mInsetsTypeMask:[Landroidx/core/graphics/Insets;

    if-nez v0, :cond_0

    .line 1715
    const/16 v0, 0xa

    new-array v0, v0, [Landroidx/core/graphics/Insets;

    iput-object v0, p0, Landroidx/core/view/WindowInsetsCompat$BuilderImpl;->mInsetsTypeMask:[Landroidx/core/graphics/Insets;

    .line 1717
    :cond_0
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    const/16 v1, 0x200

    if-gt v0, v1, :cond_2

    .line 1718
    and-int v1, p1, v0

    if-nez v1, :cond_1

    .line 1719
    goto :goto_1

    .line 1721
    :cond_1
    iget-object v1, p0, Landroidx/core/view/WindowInsetsCompat$BuilderImpl;->mInsetsTypeMask:[Landroidx/core/graphics/Insets;

    invoke-static {v0}, Landroidx/core/view/WindowInsetsCompat$Type;->indexOf(I)I

    move-result v2

    aput-object p2, v1, v2

    .line 1717
    :goto_1
    shl-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1723
    .end local v0    # "i":I
    :cond_2
    return-void
.end method

.method setInsetsIgnoringVisibility(ILandroidx/core/graphics/Insets;)V
    .locals 2
    .param p1, "typeMask"    # I
    .param p2, "insets"    # Landroidx/core/graphics/Insets;

    .line 1726
    const/16 v0, 0x8

    if-eq p1, v0, :cond_0

    .line 1732
    return-void

    .line 1729
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Ignoring visibility inset not available for IME"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method setMandatorySystemGestureInsets(Landroidx/core/graphics/Insets;)V
    .locals 0
    .param p1, "insets"    # Landroidx/core/graphics/Insets;

    .line 1704
    return-void
.end method

.method setRoundedCorner(ILandroidx/core/view/RoundedCornerCompat;)V
    .locals 0
    .param p1, "position"    # I
    .param p2, "roundedCorner"    # Landroidx/core/view/RoundedCornerCompat;

    .line 1737
    return-void
.end method

.method setStableInsets(Landroidx/core/graphics/Insets;)V
    .locals 0
    .param p1, "insets"    # Landroidx/core/graphics/Insets;

    .line 1708
    return-void
.end method

.method setSystemGestureInsets(Landroidx/core/graphics/Insets;)V
    .locals 0
    .param p1, "insets"    # Landroidx/core/graphics/Insets;

    .line 1702
    return-void
.end method

.method setSystemWindowInsets(Landroidx/core/graphics/Insets;)V
    .locals 0
    .param p1, "insets"    # Landroidx/core/graphics/Insets;

    .line 1700
    return-void
.end method

.method setTappableElementInsets(Landroidx/core/graphics/Insets;)V
    .locals 0
    .param p1, "insets"    # Landroidx/core/graphics/Insets;

    .line 1706
    return-void
.end method

.method setVisible(IZ)V
    .locals 0
    .param p1, "typeMask"    # I
    .param p2, "visible"    # Z

    .line 1734
    return-void
.end method
