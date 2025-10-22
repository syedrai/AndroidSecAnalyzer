.class public Lcom/google/android/setupcompat/template/MaterialFooterActionButton;
.super Lcom/google/android/material/button/MaterialButton;
.source "MaterialFooterActionButton.java"

# interfaces
.implements Lcom/google/android/setupcompat/template/IFooterActionButton;


# instance fields
.field footerButton:Lcom/google/android/setupcompat/template/FooterButton;

.field private isPrimaryButtonStyle:Z


# direct methods
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

    .line 33
    invoke-direct {p0, p1, p2}, Lcom/google/android/material/button/MaterialButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 30
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/setupcompat/template/MaterialFooterActionButton;->isPrimaryButtonStyle:Z

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "value"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "attrs",
            "value"
        }
    .end annotation

    .line 37
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/material/button/MaterialButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 30
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/setupcompat/template/MaterialFooterActionButton;->isPrimaryButtonStyle:Z

    .line 38
    return-void
.end method


# virtual methods
.method public isPrimaryButtonStyle()Z
    .locals 1

    .line 73
    iget-boolean v0, p0, Lcom/google/android/setupcompat/template/MaterialFooterActionButton;->isPrimaryButtonStyle:Z

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "event"
        }
    .end annotation

    .line 47
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 48
    iget-object v0, p0, Lcom/google/android/setupcompat/template/MaterialFooterActionButton;->footerButton:Lcom/google/android/setupcompat/template/FooterButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/setupcompat/template/MaterialFooterActionButton;->footerButton:Lcom/google/android/setupcompat/template/FooterButton;

    .line 49
    invoke-virtual {v0}, Lcom/google/android/setupcompat/template/FooterButton;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/setupcompat/template/MaterialFooterActionButton;->footerButton:Lcom/google/android/setupcompat/template/FooterButton;

    .line 50
    invoke-virtual {v0}, Lcom/google/android/setupcompat/template/FooterButton;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 53
    iget-object v0, p0, Lcom/google/android/setupcompat/template/MaterialFooterActionButton;->footerButton:Lcom/google/android/setupcompat/template/FooterButton;

    invoke-virtual {v0}, Lcom/google/android/setupcompat/template/FooterButton;->getOnClickListenerWhenDisabled()Landroid/view/View$OnClickListener;

    move-result-object v0

    .line 54
    .local v0, "listener":Landroid/view/View$OnClickListener;
    if-eqz v0, :cond_0

    .line 55
    invoke-interface {v0, p0}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 59
    .end local v0    # "listener":Landroid/view/View$OnClickListener;
    :cond_0
    invoke-super {p0, p1}, Lcom/google/android/material/button/MaterialButton;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method setFooterButton(Lcom/google/android/setupcompat/template/FooterButton;)V
    .locals 0
    .param p1, "footerButton"    # Lcom/google/android/setupcompat/template/FooterButton;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "footerButton"
        }
    .end annotation

    .line 41
    iput-object p1, p0, Lcom/google/android/setupcompat/template/MaterialFooterActionButton;->footerButton:Lcom/google/android/setupcompat/template/FooterButton;

    .line 42
    return-void
.end method

.method setPrimaryButtonStyle(Z)V
    .locals 0
    .param p1, "isPrimaryButtonStyle"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isPrimaryButtonStyle"
        }
    .end annotation

    .line 68
    iput-boolean p1, p0, Lcom/google/android/setupcompat/template/MaterialFooterActionButton;->isPrimaryButtonStyle:Z

    .line 69
    return-void
.end method
