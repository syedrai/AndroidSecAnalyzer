.class Landroid/support/v7/widget/AppCompatTextView$SuperCallerApi28;
.super Landroid/support/v7/widget/AppCompatTextView$SuperCallerApi26;
.source "AppCompatTextView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/AppCompatTextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SuperCallerApi28"
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

    .line 988
    iput-object p1, p0, Landroid/support/v7/widget/AppCompatTextView$SuperCallerApi28;->this$0:Landroid/support/v7/widget/AppCompatTextView;

    invoke-direct {p0, p1}, Landroid/support/v7/widget/AppCompatTextView$SuperCallerApi26;-><init>(Landroid/support/v7/widget/AppCompatTextView;)V

    return-void
.end method


# virtual methods
.method public setFirstBaselineToTopHeight(I)V
    .locals 1
    .param p1, "firstBaselineToTopHeight"    # I

    .line 992
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatTextView$SuperCallerApi28;->this$0:Landroid/support/v7/widget/AppCompatTextView;

    invoke-static {v0, p1}, Landroid/support/v7/widget/AppCompatTextView;->access$1001(Landroid/support/v7/widget/AppCompatTextView;I)V

    .line 993
    return-void
.end method

.method public setLastBaselineToBottomHeight(I)V
    .locals 1
    .param p1, "lastBaselineToBottomHeight"    # I

    .line 997
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatTextView$SuperCallerApi28;->this$0:Landroid/support/v7/widget/AppCompatTextView;

    invoke-static {v0, p1}, Landroid/support/v7/widget/AppCompatTextView;->access$1101(Landroid/support/v7/widget/AppCompatTextView;I)V

    .line 998
    return-void
.end method
