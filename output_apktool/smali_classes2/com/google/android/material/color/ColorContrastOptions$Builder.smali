.class public Lcom/google/android/material/color/ColorContrastOptions$Builder;
.super Ljava/lang/Object;
.source "ColorContrastOptions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/color/ColorContrastOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private highContrastThemeOverlayResourceId:I

.field private mediumContrastThemeOverlayResourceId:I


# direct methods
.method static bridge synthetic -$$Nest$fgethighContrastThemeOverlayResourceId(Lcom/google/android/material/color/ColorContrastOptions$Builder;)I
    .locals 0

    iget p0, p0, Lcom/google/android/material/color/ColorContrastOptions$Builder;->highContrastThemeOverlayResourceId:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmediumContrastThemeOverlayResourceId(Lcom/google/android/material/color/ColorContrastOptions$Builder;)I
    .locals 0

    iget p0, p0, Lcom/google/android/material/color/ColorContrastOptions$Builder;->mediumContrastThemeOverlayResourceId:I

    return p0
.end method

.method public constructor <init>()V
    .locals 0

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lcom/google/android/material/color/ColorContrastOptions;
    .locals 2

    .line 85
    new-instance v0, Lcom/google/android/material/color/ColorContrastOptions;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/material/color/ColorContrastOptions;-><init>(Lcom/google/android/material/color/ColorContrastOptions$Builder;Lcom/google/android/material/color/ColorContrastOptions-IA;)V

    return-object v0
.end method

.method public setHighContrastThemeOverlay(I)Lcom/google/android/material/color/ColorContrastOptions$Builder;
    .locals 0
    .param p1, "highContrastThemeOverlayResourceId"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "highContrastThemeOverlayResourceId"
        }
    .end annotation

    .line 79
    iput p1, p0, Lcom/google/android/material/color/ColorContrastOptions$Builder;->highContrastThemeOverlayResourceId:I

    .line 80
    return-object p0
.end method

.method public setMediumContrastThemeOverlay(I)Lcom/google/android/material/color/ColorContrastOptions$Builder;
    .locals 0
    .param p1, "mediumContrastThemeOverlayResourceId"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mediumContrastThemeOverlayResourceId"
        }
    .end annotation

    .line 71
    iput p1, p0, Lcom/google/android/material/color/ColorContrastOptions$Builder;->mediumContrastThemeOverlayResourceId:I

    .line 72
    return-object p0
.end method
