.class public Lcom/afwsamples/testdpc/profilepolicy/apprestrictions/ManagedConfigurationsFragment$RestrictionEntryEditDeleteArrayAdapter;
.super Lcom/afwsamples/testdpc/common/EditDeleteArrayAdapter;
.source "ManagedConfigurationsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/afwsamples/testdpc/profilepolicy/apprestrictions/ManagedConfigurationsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RestrictionEntryEditDeleteArrayAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/afwsamples/testdpc/common/EditDeleteArrayAdapter<",
        "Landroid/content/RestrictionEntry;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/afwsamples/testdpc/profilepolicy/apprestrictions/ManagedConfigurationsFragment;Landroid/content/Context;Ljava/util/List;Lcom/afwsamples/testdpc/common/EditDeleteArrayAdapter$OnEditButtonClickListener;Lcom/afwsamples/testdpc/common/EditDeleteArrayAdapter$OnDeleteButtonClickListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/afwsamples/testdpc/profilepolicy/apprestrictions/ManagedConfigurationsFragment;
    .param p2, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "this$0",
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
            "Landroid/content/RestrictionEntry;",
            ">;",
            "Lcom/afwsamples/testdpc/common/EditDeleteArrayAdapter$OnEditButtonClickListener<",
            "Landroid/content/RestrictionEntry;",
            ">;",
            "Lcom/afwsamples/testdpc/common/EditDeleteArrayAdapter$OnDeleteButtonClickListener<",
            "Landroid/content/RestrictionEntry;",
            ">;)V"
        }
    .end annotation

    .line 402
    .local p3, "entries":Ljava/util/List;, "Ljava/util/List<Landroid/content/RestrictionEntry;>;"
    .local p4, "onEditButtonClickListener":Lcom/afwsamples/testdpc/common/EditDeleteArrayAdapter$OnEditButtonClickListener;, "Lcom/afwsamples/testdpc/common/EditDeleteArrayAdapter$OnEditButtonClickListener<Landroid/content/RestrictionEntry;>;"
    .local p5, "onDeleteButtonClickListener":Lcom/afwsamples/testdpc/common/EditDeleteArrayAdapter$OnDeleteButtonClickListener;, "Lcom/afwsamples/testdpc/common/EditDeleteArrayAdapter$OnDeleteButtonClickListener<Landroid/content/RestrictionEntry;>;"
    invoke-direct {p0, p2, p3, p4, p5}, Lcom/afwsamples/testdpc/common/EditDeleteArrayAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/afwsamples/testdpc/common/EditDeleteArrayAdapter$OnEditButtonClickListener;Lcom/afwsamples/testdpc/common/EditDeleteArrayAdapter$OnDeleteButtonClickListener;)V

    .line 403
    return-void
.end method


# virtual methods
.method protected getDisplayName(Landroid/content/RestrictionEntry;)Ljava/lang/String;
    .locals 1
    .param p1, "entry"    # Landroid/content/RestrictionEntry;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "entry"
        }
    .end annotation

    .line 407
    invoke-virtual {p1}, Landroid/content/RestrictionEntry;->getKey()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

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

    .line 394
    check-cast p1, Landroid/content/RestrictionEntry;

    invoke-virtual {p0, p1}, Lcom/afwsamples/testdpc/profilepolicy/apprestrictions/ManagedConfigurationsFragment$RestrictionEntryEditDeleteArrayAdapter;->getDisplayName(Landroid/content/RestrictionEntry;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
