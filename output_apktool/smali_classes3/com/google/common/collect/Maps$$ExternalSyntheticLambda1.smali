.class public final synthetic Lcom/google/common/collect/Maps$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/google/common/collect/Maps$EntryTransformer;


# instance fields
.field public synthetic f$0:Lcom/google/common/base/Function;


# direct methods
.method public synthetic constructor <init>(Lcom/google/common/base/Function;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/common/collect/Maps$$ExternalSyntheticLambda1;->f$0:Lcom/google/common/base/Function;

    return-void
.end method


# virtual methods
.method public final transformEntry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/Maps$$ExternalSyntheticLambda1;->f$0:Lcom/google/common/base/Function;

    invoke-static {v0, p1, p2}, Lcom/google/common/collect/Maps;->lambda$transformValues$1(Lcom/google/common/base/Function;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
