.class Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValueBundleFragment$StringEditDeleteArrayAdapter;
.super Lcom/afwsamples/testdpc/common/EditDeleteArrayAdapter;
.source "KeyValueBundleFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValueBundleFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "StringEditDeleteArrayAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/afwsamples/testdpc/common/EditDeleteArrayAdapter<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Lcom/afwsamples/testdpc/common/EditDeleteArrayAdapter$OnEditButtonClickListener;Lcom/afwsamples/testdpc/common/EditDeleteArrayAdapter$OnDeleteButtonClickListener;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "entries",
            "onEditButtonClickListener",
            "onDeleteButtonClickListener"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/afwsamples/testdpc/common/EditDeleteArrayAdapter$OnEditButtonClickListener<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/afwsamples/testdpc/common/EditDeleteArrayAdapter$OnDeleteButtonClickListener<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 206
    .local p2, "entries":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p3, "onEditButtonClickListener":Lcom/afwsamples/testdpc/common/EditDeleteArrayAdapter$OnEditButtonClickListener;, "Lcom/afwsamples/testdpc/common/EditDeleteArrayAdapter$OnEditButtonClickListener<Ljava/lang/String;>;"
    .local p4, "onDeleteButtonClickListener":Lcom/afwsamples/testdpc/common/EditDeleteArrayAdapter$OnDeleteButtonClickListener;, "Lcom/afwsamples/testdpc/common/EditDeleteArrayAdapter$OnDeleteButtonClickListener<Ljava/lang/String;>;"
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/afwsamples/testdpc/common/EditDeleteArrayAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/afwsamples/testdpc/common/EditDeleteArrayAdapter$OnEditButtonClickListener;Lcom/afwsamples/testdpc/common/EditDeleteArrayAdapter$OnDeleteButtonClickListener;)V

    .line 207
    return-void
.end method


# virtual methods
.method protected bridge synthetic getDisplayName(Ljava/lang/Object;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "entry"
        }
    .end annotation

    .line 199
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValueBundleFragment$StringEditDeleteArrayAdapter;->getDisplayName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected getDisplayName(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p1, "entry"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "entry"
        }
    .end annotation

    .line 211
    return-object p1
.end method
