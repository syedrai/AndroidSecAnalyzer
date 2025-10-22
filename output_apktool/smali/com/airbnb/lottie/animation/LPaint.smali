.class public Lcom/airbnb/lottie/animation/LPaint;
.super Landroid/graphics/Paint;
.source "LPaint.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Landroid/graphics/Paint;-><init>()V

    .line 21
    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .param p1, "flags"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "flags"
        }
    .end annotation

    .line 24
    invoke-direct {p0, p1}, Landroid/graphics/Paint;-><init>(I)V

    .line 25
    return-void
.end method

.method public constructor <init>(ILandroid/graphics/PorterDuff$Mode;)V
    .locals 1
    .param p1, "flags"    # I
    .param p2, "porterDuffMode"    # Landroid/graphics/PorterDuff$Mode;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "flags",
            "porterDuffMode"
        }
    .end annotation

    .line 33
    invoke-direct {p0, p1}, Landroid/graphics/Paint;-><init>(I)V

    .line 34
    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    invoke-direct {v0, p2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/animation/LPaint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1
    .param p1, "porterDuffMode"    # Landroid/graphics/PorterDuff$Mode;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "porterDuffMode"
        }
    .end annotation

    .line 28
    invoke-direct {p0}, Landroid/graphics/Paint;-><init>()V

    .line 29
    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    invoke-direct {v0, p1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/animation/LPaint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 30
    return-void
.end method


# virtual methods
.method public setAlpha(I)V
    .locals 4
    .param p1, "alpha"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "alpha"
        }
    .end annotation

    .line 51
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    const/16 v2, 0xff

    const/4 v3, 0x0

    if-ge v0, v1, :cond_0

    .line 52
    invoke-virtual {p0}, Lcom/airbnb/lottie/animation/LPaint;->getColor()I

    move-result v0

    .line 53
    .local v0, "color":I
    invoke-static {p1, v3, v2}, Lcom/airbnb/lottie/utils/MiscUtils;->clamp(III)I

    move-result v1

    shl-int/lit8 v1, v1, 0x18

    const v2, 0xffffff

    and-int/2addr v2, v0

    or-int/2addr v1, v2

    invoke-virtual {p0, v1}, Lcom/airbnb/lottie/animation/LPaint;->setColor(I)V

    .line 54
    .end local v0    # "color":I
    goto :goto_0

    .line 55
    :cond_0
    invoke-static {p1, v3, v2}, Lcom/airbnb/lottie/utils/MiscUtils;->clamp(III)I

    move-result v0

    invoke-super {p0, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 57
    :goto_0
    return-void
.end method

.method public setTextLocales(Landroid/os/LocaleList;)V
    .locals 0
    .param p1, "locales"    # Landroid/os/LocaleList;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "locales"
        }
    .end annotation

    .line 40
    return-void
.end method
