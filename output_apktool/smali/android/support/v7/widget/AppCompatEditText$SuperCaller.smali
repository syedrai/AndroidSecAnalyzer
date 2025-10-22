.class Landroid/support/v7/widget/AppCompatEditText$SuperCaller;
.super Ljava/lang/Object;
.source "AppCompatEditText.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/AppCompatEditText;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SuperCaller"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v7/widget/AppCompatEditText;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/AppCompatEditText;)V
    .locals 0
    .param p1, "this$0"    # Landroid/support/v7/widget/AppCompatEditText;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 510
    iput-object p1, p0, Landroid/support/v7/widget/AppCompatEditText$SuperCaller;->this$0:Landroid/support/v7/widget/AppCompatEditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getTextClassifier()Landroid/view/textclassifier/TextClassifier;
    .locals 1

    .line 513
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatEditText$SuperCaller;->this$0:Landroid/support/v7/widget/AppCompatEditText;

    invoke-static {v0}, Landroid/support/v7/widget/AppCompatEditText;->access$001(Landroid/support/v7/widget/AppCompatEditText;)Landroid/view/textclassifier/TextClassifier;

    move-result-object v0

    return-object v0
.end method

.method public setTextClassifier(Landroid/view/textclassifier/TextClassifier;)V
    .locals 1
    .param p1, "textClassifier"    # Landroid/view/textclassifier/TextClassifier;

    .line 517
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatEditText$SuperCaller;->this$0:Landroid/support/v7/widget/AppCompatEditText;

    invoke-static {v0, p1}, Landroid/support/v7/widget/AppCompatEditText;->access$101(Landroid/support/v7/widget/AppCompatEditText;Landroid/view/textclassifier/TextClassifier;)V

    .line 518
    return-void
.end method
