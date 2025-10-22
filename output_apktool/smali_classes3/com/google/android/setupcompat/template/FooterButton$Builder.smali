.class public Lcom/google/android/setupcompat/template/FooterButton$Builder;
.super Ljava/lang/Object;
.source "FooterButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/setupcompat/template/FooterButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private buttonType:I

.field private final context:Landroid/content/Context;

.field private direction:I

.field private locale:Ljava/util/Locale;

.field private onClickListener:Landroid/view/View$OnClickListener;

.field private text:Ljava/lang/String;

.field private textResourceName:Ljava/lang/String;

.field private theme:I

.field private visibility:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 413
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 403
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/setupcompat/template/FooterButton$Builder;->text:Ljava/lang/String;

    .line 404
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/setupcompat/template/FooterButton$Builder;->locale:Ljava/util/Locale;

    .line 405
    const/4 v2, -0x1

    iput v2, p0, Lcom/google/android/setupcompat/template/FooterButton$Builder;->direction:I

    .line 406
    iput-object v1, p0, Lcom/google/android/setupcompat/template/FooterButton$Builder;->onClickListener:Landroid/view/View$OnClickListener;

    .line 407
    const/4 v1, 0x0

    iput v1, p0, Lcom/google/android/setupcompat/template/FooterButton$Builder;->buttonType:I

    .line 408
    iput v1, p0, Lcom/google/android/setupcompat/template/FooterButton$Builder;->theme:I

    .line 410
    iput v1, p0, Lcom/google/android/setupcompat/template/FooterButton$Builder;->visibility:I

    .line 411
    iput-object v0, p0, Lcom/google/android/setupcompat/template/FooterButton$Builder;->textResourceName:Ljava/lang/String;

    .line 414
    iput-object p1, p0, Lcom/google/android/setupcompat/template/FooterButton$Builder;->context:Landroid/content/Context;

    .line 415
    return-void
.end method


# virtual methods
.method public build()Lcom/google/android/setupcompat/template/FooterButton;
    .locals 10

    .line 467
    new-instance v0, Lcom/google/android/setupcompat/template/FooterButton;

    iget-object v1, p0, Lcom/google/android/setupcompat/template/FooterButton$Builder;->text:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/setupcompat/template/FooterButton$Builder;->onClickListener:Landroid/view/View$OnClickListener;

    iget v3, p0, Lcom/google/android/setupcompat/template/FooterButton$Builder;->buttonType:I

    iget v4, p0, Lcom/google/android/setupcompat/template/FooterButton$Builder;->theme:I

    iget-object v5, p0, Lcom/google/android/setupcompat/template/FooterButton$Builder;->locale:Ljava/util/Locale;

    iget v6, p0, Lcom/google/android/setupcompat/template/FooterButton$Builder;->direction:I

    iget v7, p0, Lcom/google/android/setupcompat/template/FooterButton$Builder;->visibility:I

    iget-object v8, p0, Lcom/google/android/setupcompat/template/FooterButton$Builder;->textResourceName:Ljava/lang/String;

    const/4 v9, 0x0

    invoke-direct/range {v0 .. v9}, Lcom/google/android/setupcompat/template/FooterButton;-><init>(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;IILjava/util/Locale;IILjava/lang/String;Lcom/google/android/setupcompat/template/FooterButton-IA;)V

    return-object v0
.end method

.method public setButtonType(I)Lcom/google/android/setupcompat/template/FooterButton$Builder;
    .locals 0
    .param p1, "buttonType"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "buttonType"
        }
    .end annotation

    .line 450
    iput p1, p0, Lcom/google/android/setupcompat/template/FooterButton$Builder;->buttonType:I

    .line 451
    return-object p0
.end method

.method public setLayoutDirection(I)Lcom/google/android/setupcompat/template/FooterButton$Builder;
    .locals 0
    .param p1, "direction"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "direction"
        }
    .end annotation

    .line 438
    iput p1, p0, Lcom/google/android/setupcompat/template/FooterButton$Builder;->direction:I

    .line 439
    return-object p0
.end method

.method public setListener(Landroid/view/View$OnClickListener;)Lcom/google/android/setupcompat/template/FooterButton$Builder;
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

    .line 444
    iput-object p1, p0, Lcom/google/android/setupcompat/template/FooterButton$Builder;->onClickListener:Landroid/view/View$OnClickListener;

    .line 445
    return-object p0
.end method

.method public setText(I)Lcom/google/android/setupcompat/template/FooterButton$Builder;
    .locals 1
    .param p1, "text"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "text"
        }
    .end annotation

    .line 425
    iget-object v0, p0, Lcom/google/android/setupcompat/template/FooterButton$Builder;->context:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/google/android/setupcompat/template/FooterButton;->getTextResourceName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/setupcompat/template/FooterButton$Builder;->textResourceName:Ljava/lang/String;

    .line 426
    iget-object v0, p0, Lcom/google/android/setupcompat/template/FooterButton$Builder;->context:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/setupcompat/template/FooterButton$Builder;->text:Ljava/lang/String;

    .line 427
    return-object p0
.end method

.method public setText(Ljava/lang/String;)Lcom/google/android/setupcompat/template/FooterButton$Builder;
    .locals 0
    .param p1, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "text"
        }
    .end annotation

    .line 419
    iput-object p1, p0, Lcom/google/android/setupcompat/template/FooterButton$Builder;->text:Ljava/lang/String;

    .line 420
    return-object p0
.end method

.method public setTextLocale(Ljava/util/Locale;)Lcom/google/android/setupcompat/template/FooterButton$Builder;
    .locals 0
    .param p1, "locale"    # Ljava/util/Locale;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "locale"
        }
    .end annotation

    .line 432
    iput-object p1, p0, Lcom/google/android/setupcompat/template/FooterButton$Builder;->locale:Ljava/util/Locale;

    .line 433
    return-object p0
.end method

.method public setTheme(I)Lcom/google/android/setupcompat/template/FooterButton$Builder;
    .locals 0
    .param p1, "theme"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "theme"
        }
    .end annotation

    .line 456
    iput p1, p0, Lcom/google/android/setupcompat/template/FooterButton$Builder;->theme:I

    .line 457
    return-object p0
.end method

.method public setVisibility(I)Lcom/google/android/setupcompat/template/FooterButton$Builder;
    .locals 0
    .param p1, "visibility"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "visibility"
        }
    .end annotation

    .line 462
    iput p1, p0, Lcom/google/android/setupcompat/template/FooterButton$Builder;->visibility:I

    .line 463
    return-object p0
.end method
