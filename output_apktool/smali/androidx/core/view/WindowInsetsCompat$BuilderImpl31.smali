.class Landroidx/core/view/WindowInsetsCompat$BuilderImpl31;
.super Landroidx/core/view/WindowInsetsCompat$BuilderImpl30;
.source "WindowInsetsCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/view/WindowInsetsCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BuilderImpl31"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1969
    invoke-direct {p0}, Landroidx/core/view/WindowInsetsCompat$BuilderImpl30;-><init>()V

    .line 1970
    return-void
.end method

.method constructor <init>(Landroidx/core/view/WindowInsetsCompat;)V
    .locals 0
    .param p1, "insets"    # Landroidx/core/view/WindowInsetsCompat;

    .line 1973
    invoke-direct {p0, p1}, Landroidx/core/view/WindowInsetsCompat$BuilderImpl30;-><init>(Landroidx/core/view/WindowInsetsCompat;)V

    .line 1974
    return-void
.end method


# virtual methods
.method setRoundedCorner(ILandroidx/core/view/RoundedCornerCompat;)V
    .locals 3
    .param p1, "position"    # I
    .param p2, "roundedCorner"    # Landroidx/core/view/RoundedCornerCompat;

    .line 1978
    iget-object v0, p0, Landroidx/core/view/WindowInsetsCompat$BuilderImpl31;->mPlatBuilder:Landroid/view/WindowInsets$Builder;

    .line 1979
    invoke-static {p1}, Landroidx/core/view/RoundedCornerCompat;->toPlatformPosition(I)I

    move-result v1

    .line 1980
    invoke-static {p2}, Landroidx/core/view/RoundedCornerCompat;->toPlatformRoundedCorner(Landroidx/core/view/RoundedCornerCompat;)Landroid/view/RoundedCorner;

    move-result-object v2

    .line 1978
    invoke-virtual {v0, v1, v2}, Landroid/view/WindowInsets$Builder;->setRoundedCorner(ILandroid/view/RoundedCorner;)Landroid/view/WindowInsets$Builder;

    .line 1981
    return-void
.end method
