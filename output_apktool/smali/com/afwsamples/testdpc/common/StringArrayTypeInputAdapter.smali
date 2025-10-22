.class public Lcom/afwsamples/testdpc/common/StringArrayTypeInputAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "StringArrayTypeInputAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/afwsamples/testdpc/common/StringArrayTypeInputAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter<",
        "Lcom/afwsamples/testdpc/common/StringArrayTypeInputAdapter$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private mStringList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic -$$Nest$fgetmStringList(Lcom/afwsamples/testdpc/common/StringArrayTypeInputAdapter;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/afwsamples/testdpc/common/StringArrayTypeInputAdapter;->mStringList:Ljava/util/List;

    return-object p0
.end method

.method public constructor <init>()V
    .locals 1

    .line 35
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/afwsamples/testdpc/common/StringArrayTypeInputAdapter;->mStringList:Ljava/util/List;

    .line 37
    return-void
.end method

.method private createEditTextTextWatcher(Lcom/afwsamples/testdpc/common/StringArrayTypeInputAdapter$ViewHolder;)Landroid/text/TextWatcher;
    .locals 1
    .param p1, "viewHolder"    # Lcom/afwsamples/testdpc/common/StringArrayTypeInputAdapter$ViewHolder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "viewHolder"
        }
    .end annotation

    .line 95
    new-instance v0, Lcom/afwsamples/testdpc/common/StringArrayTypeInputAdapter$2;

    invoke-direct {v0, p0, p1}, Lcom/afwsamples/testdpc/common/StringArrayTypeInputAdapter$2;-><init>(Lcom/afwsamples/testdpc/common/StringArrayTypeInputAdapter;Lcom/afwsamples/testdpc/common/StringArrayTypeInputAdapter$ViewHolder;)V

    return-object v0
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/afwsamples/testdpc/common/StringArrayTypeInputAdapter;->mStringList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getStringList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 74
    iget-object v0, p0, Lcom/afwsamples/testdpc/common/StringArrayTypeInputAdapter;->mStringList:Ljava/util/List;

    return-object v0
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "holder",
            "position"
        }
    .end annotation

    .line 31
    check-cast p1, Lcom/afwsamples/testdpc/common/StringArrayTypeInputAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/afwsamples/testdpc/common/StringArrayTypeInputAdapter;->onBindViewHolder(Lcom/afwsamples/testdpc/common/StringArrayTypeInputAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/afwsamples/testdpc/common/StringArrayTypeInputAdapter$ViewHolder;I)V
    .locals 2
    .param p1, "holder"    # Lcom/afwsamples/testdpc/common/StringArrayTypeInputAdapter$ViewHolder;
    .param p2, "position"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "holder",
            "position"
        }
    .end annotation

    .line 48
    iget-object v0, p1, Lcom/afwsamples/testdpc/common/StringArrayTypeInputAdapter$ViewHolder;->stringValue:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/afwsamples/testdpc/common/StringArrayTypeInputAdapter;->mStringList:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 49
    iget-object v0, p1, Lcom/afwsamples/testdpc/common/StringArrayTypeInputAdapter$ViewHolder;->textWatcher:Landroid/text/TextWatcher;

    if-eqz v0, :cond_0

    .line 50
    iget-object v0, p1, Lcom/afwsamples/testdpc/common/StringArrayTypeInputAdapter$ViewHolder;->stringValue:Landroid/widget/EditText;

    iget-object v1, p1, Lcom/afwsamples/testdpc/common/StringArrayTypeInputAdapter$ViewHolder;->textWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 52
    :cond_0
    invoke-direct {p0, p1}, Lcom/afwsamples/testdpc/common/StringArrayTypeInputAdapter;->createEditTextTextWatcher(Lcom/afwsamples/testdpc/common/StringArrayTypeInputAdapter$ViewHolder;)Landroid/text/TextWatcher;

    move-result-object v0

    iput-object v0, p1, Lcom/afwsamples/testdpc/common/StringArrayTypeInputAdapter$ViewHolder;->textWatcher:Landroid/text/TextWatcher;

    .line 53
    iget-object v0, p1, Lcom/afwsamples/testdpc/common/StringArrayTypeInputAdapter$ViewHolder;->stringValue:Landroid/widget/EditText;

    iget-object v1, p1, Lcom/afwsamples/testdpc/common/StringArrayTypeInputAdapter$ViewHolder;->textWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 54
    iget-object v0, p1, Lcom/afwsamples/testdpc/common/StringArrayTypeInputAdapter$ViewHolder;->delete:Landroid/widget/ImageView;

    new-instance v1, Lcom/afwsamples/testdpc/common/StringArrayTypeInputAdapter$1;

    invoke-direct {v1, p0, p1}, Lcom/afwsamples/testdpc/common/StringArrayTypeInputAdapter$1;-><init>(Lcom/afwsamples/testdpc/common/StringArrayTypeInputAdapter;Lcom/afwsamples/testdpc/common/StringArrayTypeInputAdapter$ViewHolder;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 66
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "parent",
            "viewType"
        }
    .end annotation

    .line 31
    invoke-virtual {p0, p1, p2}, Lcom/afwsamples/testdpc/common/StringArrayTypeInputAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/afwsamples/testdpc/common/StringArrayTypeInputAdapter$ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/afwsamples/testdpc/common/StringArrayTypeInputAdapter$ViewHolder;
    .locals 3
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "parent",
            "viewType"
        }
    .end annotation

    .line 41
    nop

    .line 42
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/afwsamples/testdpc/R$layout;->string_array_row:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 43
    .local v0, "view":Landroid/view/View;
    new-instance v1, Lcom/afwsamples/testdpc/common/StringArrayTypeInputAdapter$ViewHolder;

    invoke-direct {v1, p0, v0}, Lcom/afwsamples/testdpc/common/StringArrayTypeInputAdapter$ViewHolder;-><init>(Lcom/afwsamples/testdpc/common/StringArrayTypeInputAdapter;Landroid/view/View;)V

    return-object v1
.end method

.method public setStringList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "stringList"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 78
    .local p1, "stringList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/afwsamples/testdpc/common/StringArrayTypeInputAdapter;->mStringList:Ljava/util/List;

    .line 79
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/common/StringArrayTypeInputAdapter;->notifyDataSetChanged()V

    .line 80
    return-void
.end method
