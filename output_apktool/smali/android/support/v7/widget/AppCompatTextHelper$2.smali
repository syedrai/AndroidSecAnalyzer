.class Landroid/support/v7/widget/AppCompatTextHelper$2;
.super Ljava/lang/Object;
.source "AppCompatTextHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v7/widget/AppCompatTextHelper;->onAsyncTypefaceReceived(Ljava/lang/ref/WeakReference;Landroid/graphics/Typeface;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v7/widget/AppCompatTextHelper;

.field final synthetic val$style:I

.field final synthetic val$textView:Landroid/widget/TextView;

.field final synthetic val$typeface:Landroid/graphics/Typeface;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/AppCompatTextHelper;Landroid/widget/TextView;Landroid/graphics/Typeface;I)V
    .locals 0
    .param p1, "this$0"    # Landroid/support/v7/widget/AppCompatTextHelper;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 504
    iput-object p1, p0, Landroid/support/v7/widget/AppCompatTextHelper$2;->this$0:Landroid/support/v7/widget/AppCompatTextHelper;

    iput-object p2, p0, Landroid/support/v7/widget/AppCompatTextHelper$2;->val$textView:Landroid/widget/TextView;

    iput-object p3, p0, Landroid/support/v7/widget/AppCompatTextHelper$2;->val$typeface:Landroid/graphics/Typeface;

    iput p4, p0, Landroid/support/v7/widget/AppCompatTextHelper$2;->val$style:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 507
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatTextHelper$2;->val$textView:Landroid/widget/TextView;

    iget-object v1, p0, Landroid/support/v7/widget/AppCompatTextHelper$2;->val$typeface:Landroid/graphics/Typeface;

    iget v2, p0, Landroid/support/v7/widget/AppCompatTextHelper$2;->val$style:I

    invoke-static {v0, v1, v2}, Landroid/support/v7/widget/AppCompatTextHelper;->access$000(Landroid/widget/TextView;Landroid/graphics/Typeface;I)V

    .line 508
    return-void
.end method
