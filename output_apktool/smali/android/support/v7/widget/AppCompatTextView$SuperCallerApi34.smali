.class Landroid/support/v7/widget/AppCompatTextView$SuperCallerApi34;
.super Landroid/support/v7/widget/AppCompatTextView$SuperCallerApi28;
.source "AppCompatTextView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/AppCompatTextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SuperCallerApi34"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v7/widget/AppCompatTextView;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/AppCompatTextView;)V
    .locals 0
    .param p1, "this$0"    # Landroid/support/v7/widget/AppCompatTextView;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 1002
    iput-object p1, p0, Landroid/support/v7/widget/AppCompatTextView$SuperCallerApi34;->this$0:Landroid/support/v7/widget/AppCompatTextView;

    invoke-direct {p0, p1}, Landroid/support/v7/widget/AppCompatTextView$SuperCallerApi28;-><init>(Landroid/support/v7/widget/AppCompatTextView;)V

    return-void
.end method


# virtual methods
.method public setLineHeight(IF)V
    .locals 1
    .param p1, "unit"    # I
    .param p2, "lineHeight"    # F

    .line 1005
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatTextView$SuperCallerApi34;->this$0:Landroid/support/v7/widget/AppCompatTextView;

    invoke-static {v0, p1, p2}, Landroid/support/v7/widget/AppCompatTextView;->access$1201(Landroid/support/v7/widget/AppCompatTextView;IF)V

    .line 1006
    return-void
.end method
