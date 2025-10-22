.class Landroid/support/v7/widget/AppCompatTextView$SuperCallerApi26;
.super Ljava/lang/Object;
.source "AppCompatTextView.java"

# interfaces
.implements Landroid/support/v7/widget/AppCompatTextView$SuperCaller;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/AppCompatTextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SuperCallerApi26"
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

    .line 924
    iput-object p1, p0, Landroid/support/v7/widget/AppCompatTextView$SuperCallerApi26;->this$0:Landroid/support/v7/widget/AppCompatTextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAutoSizeMaxTextSize()I
    .locals 1

    .line 927
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatTextView$SuperCallerApi26;->this$0:Landroid/support/v7/widget/AppCompatTextView;

    invoke-static {v0}, Landroid/support/v7/widget/AppCompatTextView;->access$001(Landroid/support/v7/widget/AppCompatTextView;)I

    move-result v0

    return v0
.end method

.method public getAutoSizeMinTextSize()I
    .locals 1

    .line 932
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatTextView$SuperCallerApi26;->this$0:Landroid/support/v7/widget/AppCompatTextView;

    invoke-static {v0}, Landroid/support/v7/widget/AppCompatTextView;->access$101(Landroid/support/v7/widget/AppCompatTextView;)I

    move-result v0

    return v0
.end method

.method public getAutoSizeStepGranularity()I
    .locals 1

    .line 937
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatTextView$SuperCallerApi26;->this$0:Landroid/support/v7/widget/AppCompatTextView;

    invoke-static {v0}, Landroid/support/v7/widget/AppCompatTextView;->access$201(Landroid/support/v7/widget/AppCompatTextView;)I

    move-result v0

    return v0
.end method

.method public getAutoSizeTextAvailableSizes()[I
    .locals 1

    .line 942
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatTextView$SuperCallerApi26;->this$0:Landroid/support/v7/widget/AppCompatTextView;

    invoke-static {v0}, Landroid/support/v7/widget/AppCompatTextView;->access$301(Landroid/support/v7/widget/AppCompatTextView;)[I

    move-result-object v0

    return-object v0
.end method

.method public getAutoSizeTextType()I
    .locals 1

    .line 947
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatTextView$SuperCallerApi26;->this$0:Landroid/support/v7/widget/AppCompatTextView;

    invoke-static {v0}, Landroid/support/v7/widget/AppCompatTextView;->access$401(Landroid/support/v7/widget/AppCompatTextView;)I

    move-result v0

    return v0
.end method

.method public getTextClassifier()Landroid/view/textclassifier/TextClassifier;
    .locals 1

    .line 952
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatTextView$SuperCallerApi26;->this$0:Landroid/support/v7/widget/AppCompatTextView;

    invoke-static {v0}, Landroid/support/v7/widget/AppCompatTextView;->access$501(Landroid/support/v7/widget/AppCompatTextView;)Landroid/view/textclassifier/TextClassifier;

    move-result-object v0

    return-object v0
.end method

.method public setAutoSizeTextTypeUniformWithConfiguration(IIII)V
    .locals 1
    .param p1, "autoSizeMinTextSize"    # I
    .param p2, "autoSizeMaxTextSize"    # I
    .param p3, "autoSizeStepGranularity"    # I
    .param p4, "unit"    # I

    .line 958
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatTextView$SuperCallerApi26;->this$0:Landroid/support/v7/widget/AppCompatTextView;

    invoke-static {v0, p1, p2, p3, p4}, Landroid/support/v7/widget/AppCompatTextView;->access$601(Landroid/support/v7/widget/AppCompatTextView;IIII)V

    .line 960
    return-void
.end method

.method public setAutoSizeTextTypeUniformWithPresetSizes([II)V
    .locals 1
    .param p1, "presetSizes"    # [I
    .param p2, "unit"    # I

    .line 964
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatTextView$SuperCallerApi26;->this$0:Landroid/support/v7/widget/AppCompatTextView;

    invoke-static {v0, p1, p2}, Landroid/support/v7/widget/AppCompatTextView;->access$701(Landroid/support/v7/widget/AppCompatTextView;[II)V

    .line 965
    return-void
.end method

.method public setAutoSizeTextTypeWithDefaults(I)V
    .locals 1
    .param p1, "autoSizeTextType"    # I

    .line 969
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatTextView$SuperCallerApi26;->this$0:Landroid/support/v7/widget/AppCompatTextView;

    invoke-static {v0, p1}, Landroid/support/v7/widget/AppCompatTextView;->access$801(Landroid/support/v7/widget/AppCompatTextView;I)V

    .line 970
    return-void
.end method

.method public setFirstBaselineToTopHeight(I)V
    .locals 0
    .param p1, "firstBaselineToTopHeight"    # I

    .line 978
    return-void
.end method

.method public setLastBaselineToBottomHeight(I)V
    .locals 0
    .param p1, "lastBaselineToBottomHeight"    # I

    .line 981
    return-void
.end method

.method public setLineHeight(IF)V
    .locals 0
    .param p1, "unit"    # I
    .param p2, "lineHeight"    # F

    .line 984
    return-void
.end method

.method public setTextClassifier(Landroid/view/textclassifier/TextClassifier;)V
    .locals 1
    .param p1, "textClassifier"    # Landroid/view/textclassifier/TextClassifier;

    .line 974
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatTextView$SuperCallerApi26;->this$0:Landroid/support/v7/widget/AppCompatTextView;

    invoke-static {v0, p1}, Landroid/support/v7/widget/AppCompatTextView;->access$901(Landroid/support/v7/widget/AppCompatTextView;Landroid/view/textclassifier/TextClassifier;)V

    .line 975
    return-void
.end method
