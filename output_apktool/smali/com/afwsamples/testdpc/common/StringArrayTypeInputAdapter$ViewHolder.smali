.class public Lcom/afwsamples/testdpc/common/StringArrayTypeInputAdapter$ViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "StringArrayTypeInputAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/afwsamples/testdpc/common/StringArrayTypeInputAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ViewHolder"
.end annotation


# instance fields
.field public delete:Landroid/widget/ImageView;

.field public stringValue:Landroid/widget/EditText;

.field public textWatcher:Landroid/text/TextWatcher;


# direct methods
.method public constructor <init>(Lcom/afwsamples/testdpc/common/StringArrayTypeInputAdapter;Landroid/view/View;)V
    .locals 1
    .param p1, "this$0"    # Lcom/afwsamples/testdpc/common/StringArrayTypeInputAdapter;
    .param p2, "view"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            "this$0",
            "view"
        }
    .end annotation

    .line 88
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 89
    sget v0, Lcom/afwsamples/testdpc/R$id;->string_input:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/afwsamples/testdpc/common/StringArrayTypeInputAdapter$ViewHolder;->stringValue:Landroid/widget/EditText;

    .line 90
    sget v0, Lcom/afwsamples/testdpc/R$id;->delete_row:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/afwsamples/testdpc/common/StringArrayTypeInputAdapter$ViewHolder;->delete:Landroid/widget/ImageView;

    .line 91
    return-void
.end method
