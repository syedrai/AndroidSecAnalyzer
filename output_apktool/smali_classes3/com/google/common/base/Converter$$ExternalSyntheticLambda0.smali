.class public final synthetic Lcom/google/common/base/Converter$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Iterable;


# instance fields
.field public synthetic f$0:Lcom/google/common/base/Converter;

.field public synthetic f$1:Ljava/lang/Iterable;


# direct methods
.method public synthetic constructor <init>(Lcom/google/common/base/Converter;Ljava/lang/Iterable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/common/base/Converter$$ExternalSyntheticLambda0;->f$0:Lcom/google/common/base/Converter;

    iput-object p2, p0, Lcom/google/common/base/Converter$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Iterable;

    return-void
.end method


# virtual methods
.method public final iterator()Ljava/util/Iterator;
    .locals 2

    iget-object v0, p0, Lcom/google/common/base/Converter$$ExternalSyntheticLambda0;->f$0:Lcom/google/common/base/Converter;

    iget-object v1, p0, Lcom/google/common/base/Converter$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Iterable;

    invoke-static {v0, v1}, Lcom/google/common/base/Converter;->$r8$lambda$7ou3I13CZ-dE5x0Y_u8Zd0doYyg(Lcom/google/common/base/Converter;Ljava/lang/Iterable;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method
