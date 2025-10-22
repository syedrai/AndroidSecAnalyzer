.class public Lcom/afwsamples/testdpc/search/PreferenceIndex;
.super Ljava/lang/Object;
.source "PreferenceIndex.java"


# instance fields
.field public fragmentClass:Ljava/lang/String;

.field public key:Ljava/lang/String;

.field public title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "fragmentClass"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "key",
            "title",
            "fragmentClass"
        }
    .end annotation

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/afwsamples/testdpc/search/PreferenceIndex;->key:Ljava/lang/String;

    .line 15
    iput-object p2, p0, Lcom/afwsamples/testdpc/search/PreferenceIndex;->title:Ljava/lang/String;

    .line 16
    iput-object p3, p0, Lcom/afwsamples/testdpc/search/PreferenceIndex;->fragmentClass:Ljava/lang/String;

    .line 17
    return-void
.end method
