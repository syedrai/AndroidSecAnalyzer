.class Lcom/afwsamples/testdpc/search/PolicySearchFragment$3;
.super Landroid/os/AsyncTask;
.source "PolicySearchFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/afwsamples/testdpc/search/PolicySearchFragment;->doSearchAsync(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/util/List<",
        "Lcom/afwsamples/testdpc/search/PreferenceIndex;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/afwsamples/testdpc/search/PolicySearchFragment;

.field final synthetic val$query:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/afwsamples/testdpc/search/PolicySearchFragment;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/afwsamples/testdpc/search/PolicySearchFragment;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$query"
        }
    .end annotation

    .line 100
    iput-object p2, p0, Lcom/afwsamples/testdpc/search/PolicySearchFragment$3;->val$query:Ljava/lang/String;

    iput-object p1, p0, Lcom/afwsamples/testdpc/search/PolicySearchFragment$3;->this$0:Lcom/afwsamples/testdpc/search/PolicySearchFragment;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "voids"
        }
    .end annotation

    .line 100
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/afwsamples/testdpc/search/PolicySearchFragment$3;->doInBackground([Ljava/lang/Void;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/util/List;
    .locals 3
    .param p1, "voids"    # [Ljava/lang/Void;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "voids"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")",
            "Ljava/util/List<",
            "Lcom/afwsamples/testdpc/search/PreferenceIndex;",
            ">;"
        }
    .end annotation

    .line 103
    iget-object v0, p0, Lcom/afwsamples/testdpc/search/PolicySearchFragment$3;->this$0:Lcom/afwsamples/testdpc/search/PolicySearchFragment;

    invoke-static {v0}, Lcom/afwsamples/testdpc/search/PolicySearchFragment;->-$$Nest$fgetmSqliteOpenHelper(Lcom/afwsamples/testdpc/search/PolicySearchFragment;)Lcom/afwsamples/testdpc/search/PreferenceIndexSqliteOpenHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/afwsamples/testdpc/search/PolicySearchFragment$3;->val$query:Ljava/lang/String;

    iget-object v2, p0, Lcom/afwsamples/testdpc/search/PolicySearchFragment$3;->this$0:Lcom/afwsamples/testdpc/search/PolicySearchFragment;

    invoke-static {v2}, Lcom/afwsamples/testdpc/search/PolicySearchFragment;->-$$Nest$fgetmAvailableFragments(Lcom/afwsamples/testdpc/search/PolicySearchFragment;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/afwsamples/testdpc/search/PreferenceIndexSqliteOpenHelper;->lookup(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "result"
        }
    .end annotation

    .line 100
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/afwsamples/testdpc/search/PolicySearchFragment$3;->onPostExecute(Ljava/util/List;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "result"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/afwsamples/testdpc/search/PreferenceIndex;",
            ">;)V"
        }
    .end annotation

    .line 108
    .local p1, "result":Ljava/util/List;, "Ljava/util/List<Lcom/afwsamples/testdpc/search/PreferenceIndex;>;"
    iget-object v0, p0, Lcom/afwsamples/testdpc/search/PolicySearchFragment$3;->this$0:Lcom/afwsamples/testdpc/search/PolicySearchFragment;

    invoke-static {v0}, Lcom/afwsamples/testdpc/search/PolicySearchFragment;->-$$Nest$fgetmAdapter(Lcom/afwsamples/testdpc/search/PolicySearchFragment;)Lcom/afwsamples/testdpc/search/SearchItemAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/afwsamples/testdpc/search/SearchItemAdapter;->setSearchResult(Ljava/util/List;)V

    .line 109
    iget-object v0, p0, Lcom/afwsamples/testdpc/search/PolicySearchFragment$3;->this$0:Lcom/afwsamples/testdpc/search/PolicySearchFragment;

    invoke-static {v0}, Lcom/afwsamples/testdpc/search/PolicySearchFragment;->-$$Nest$fgetmAdapter(Lcom/afwsamples/testdpc/search/PolicySearchFragment;)Lcom/afwsamples/testdpc/search/SearchItemAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/afwsamples/testdpc/search/SearchItemAdapter;->notifyDataSetChanged()V

    .line 110
    return-void
.end method
