.class Lcom/afwsamples/testdpc/policy/locktask/KioskModeActivity$1;
.super Ljava/lang/Object;
.source "KioskModeActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/afwsamples/testdpc/policy/locktask/KioskModeActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$kioskAppsArrayAdapter:Lcom/afwsamples/testdpc/policy/locktask/KioskModeActivity$KioskAppsArrayAdapter;


# direct methods
.method constructor <init>(Lcom/afwsamples/testdpc/policy/locktask/KioskModeActivity;Lcom/afwsamples/testdpc/policy/locktask/KioskModeActivity$KioskAppsArrayAdapter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/afwsamples/testdpc/policy/locktask/KioskModeActivity;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$kioskAppsArrayAdapter"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 129
    iput-object p2, p0, Lcom/afwsamples/testdpc/policy/locktask/KioskModeActivity$1;->val$kioskAppsArrayAdapter:Lcom/afwsamples/testdpc/policy/locktask/KioskModeActivity$KioskAppsArrayAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "parent",
            "view",
            "position",
            "id"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 132
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/locktask/KioskModeActivity$1;->val$kioskAppsArrayAdapter:Lcom/afwsamples/testdpc/policy/locktask/KioskModeActivity$KioskAppsArrayAdapter;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-wide v4, p4

    .end local p1    # "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    .end local p2    # "view":Landroid/view/View;
    .end local p3    # "position":I
    .end local p4    # "id":J
    .local v1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    .local v2, "view":Landroid/view/View;
    .local v3, "position":I
    .local v4, "id":J
    invoke-virtual/range {v0 .. v5}, Lcom/afwsamples/testdpc/policy/locktask/KioskModeActivity$KioskAppsArrayAdapter;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    .line 133
    return-void
.end method
