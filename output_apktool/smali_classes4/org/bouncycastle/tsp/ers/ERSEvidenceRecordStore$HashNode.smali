.class Lorg/bouncycastle/tsp/ers/ERSEvidenceRecordStore$HashNode;
.super Ljava/lang/Object;
.source "ERSEvidenceRecordStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/tsp/ers/ERSEvidenceRecordStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "HashNode"
.end annotation


# instance fields
.field private final dataHash:[B

.field private final hashCode:I


# direct methods
.method public constructor <init>([B)V
    .locals 1
    .param p1, "dataHash"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dataHash"
        }
    .end annotation

    .line 151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 152
    iput-object p1, p0, Lorg/bouncycastle/tsp/ers/ERSEvidenceRecordStore$HashNode;->dataHash:[B

    .line 153
    invoke-static {p1}, Lorg/bouncycastle/util/Arrays;->hashCode([B)I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/tsp/ers/ERSEvidenceRecordStore$HashNode;->hashCode:I

    .line 154
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "o"
        }
    .end annotation

    .line 163
    instance-of v0, p1, Lorg/bouncycastle/tsp/ers/ERSEvidenceRecordStore$HashNode;

    if-eqz v0, :cond_0

    .line 165
    iget-object v0, p0, Lorg/bouncycastle/tsp/ers/ERSEvidenceRecordStore$HashNode;->dataHash:[B

    move-object v1, p1

    check-cast v1, Lorg/bouncycastle/tsp/ers/ERSEvidenceRecordStore$HashNode;

    iget-object v1, v1, Lorg/bouncycastle/tsp/ers/ERSEvidenceRecordStore$HashNode;->dataHash:[B

    invoke-static {v0, v1}, Lorg/bouncycastle/util/Arrays;->areEqual([B[B)Z

    move-result v0

    return v0

    .line 168
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 158
    iget v0, p0, Lorg/bouncycastle/tsp/ers/ERSEvidenceRecordStore$HashNode;->hashCode:I

    return v0
.end method
