.class Lcom/afwsamples/testdpc/common/StringArrayTypeInputAdapter$2;
.super Ljava/lang/Object;
.source "StringArrayTypeInputAdapter.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/afwsamples/testdpc/common/StringArrayTypeInputAdapter;->createEditTextTextWatcher(Lcom/afwsamples/testdpc/common/StringArrayTypeInputAdapter$ViewHolder;)Landroid/text/TextWatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/afwsamples/testdpc/common/StringArrayTypeInputAdapter;

.field final synthetic val$viewHolder:Lcom/afwsamples/testdpc/common/StringArrayTypeInputAdapter$ViewHolder;


# direct methods
.method constructor <init>(Lcom/afwsamples/testdpc/common/StringArrayTypeInputAdapter;Lcom/afwsamples/testdpc/common/StringArrayTypeInputAdapter$ViewHolder;)V
    .locals 0
    .param p1, "this$0"    # Lcom/afwsamples/testdpc/common/StringArrayTypeInputAdapter;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$viewHolder"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 95
    iput-object p2, p0, Lcom/afwsamples/testdpc/common/StringArrayTypeInputAdapter$2;->val$viewHolder:Lcom/afwsamples/testdpc/common/StringArrayTypeInputAdapter$ViewHolder;

    iput-object p1, p0, Lcom/afwsamples/testdpc/common/StringArrayTypeInputAdapter$2;->this$0:Lcom/afwsamples/testdpc/common/StringArrayTypeInputAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 3
    .param p1, "editable"    # Landroid/text/Editable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "editable"
        }
    .end annotation

    .line 104
    iget-object v0, p0, Lcom/afwsamples/testdpc/common/StringArrayTypeInputAdapter$2;->this$0:Lcom/afwsamples/testdpc/common/StringArrayTypeInputAdapter;

    invoke-static {v0}, Lcom/afwsamples/testdpc/common/StringArrayTypeInputAdapter;->-$$Nest$fgetmStringList(Lcom/afwsamples/testdpc/common/StringArrayTypeInputAdapter;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/afwsamples/testdpc/common/StringArrayTypeInputAdapter$2;->val$viewHolder:Lcom/afwsamples/testdpc/common/StringArrayTypeInputAdapter$ViewHolder;

    invoke-virtual {v1}, Lcom/afwsamples/testdpc/common/StringArrayTypeInputAdapter$ViewHolder;->getAdapterPosition()I

    move-result v1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 105
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "charSequence"    # Ljava/lang/CharSequence;
    .param p2, "i"    # I
    .param p3, "i1"    # I
    .param p4, "i2"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "charSequence",
            "i",
            "i1",
            "i2"
        }
    .end annotation

    .line 97
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "charSequence"    # Ljava/lang/CharSequence;
    .param p2, "i"    # I
    .param p3, "i1"    # I
    .param p4, "i2"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "charSequence",
            "i",
            "i1",
            "i2"
        }
    .end annotation

    .line 100
    return-void
.end method
