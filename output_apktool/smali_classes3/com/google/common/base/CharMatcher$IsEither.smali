.class final Lcom/google/common/base/CharMatcher$IsEither;
.super Lcom/google/common/base/CharMatcher$FastMatcher;
.source "CharMatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/base/CharMatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "IsEither"
.end annotation


# instance fields
.field private final match1:C

.field private final match2:C


# direct methods
.method constructor <init>(CC)V
    .locals 0
    .param p1, "match1"    # C
    .param p2, "match2"    # C
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "match1",
            "match2"
        }
    .end annotation

    .line 1711
    invoke-direct {p0}, Lcom/google/common/base/CharMatcher$FastMatcher;-><init>()V

    .line 1712
    iput-char p1, p0, Lcom/google/common/base/CharMatcher$IsEither;->match1:C

    .line 1713
    iput-char p2, p0, Lcom/google/common/base/CharMatcher$IsEither;->match2:C

    .line 1714
    return-void
.end method


# virtual methods
.method public matches(C)Z
    .locals 1
    .param p1, "c"    # C
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "c"
        }
    .end annotation

    .line 1718
    iget-char v0, p0, Lcom/google/common/base/CharMatcher$IsEither;->match1:C

    if-eq p1, v0, :cond_1

    iget-char v0, p0, Lcom/google/common/base/CharMatcher$IsEither;->match2:C

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method setBits(Ljava/util/BitSet;)V
    .locals 1
    .param p1, "table"    # Ljava/util/BitSet;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "table"
        }
    .end annotation

    .line 1724
    iget-char v0, p0, Lcom/google/common/base/CharMatcher$IsEither;->match1:C

    invoke-virtual {p1, v0}, Ljava/util/BitSet;->set(I)V

    .line 1725
    iget-char v0, p0, Lcom/google/common/base/CharMatcher$IsEither;->match2:C

    invoke-virtual {p1, v0}, Ljava/util/BitSet;->set(I)V

    .line 1726
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1730
    iget-char v0, p0, Lcom/google/common/base/CharMatcher$IsEither;->match1:C

    invoke-static {v0}, Lcom/google/common/base/CharMatcher;->-$$Nest$smshowCharacter(C)Ljava/lang/String;

    move-result-object v0

    iget-char v1, p0, Lcom/google/common/base/CharMatcher$IsEither;->match2:C

    invoke-static {v1}, Lcom/google/common/base/CharMatcher;->-$$Nest$smshowCharacter(C)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CharMatcher.anyOf(\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
