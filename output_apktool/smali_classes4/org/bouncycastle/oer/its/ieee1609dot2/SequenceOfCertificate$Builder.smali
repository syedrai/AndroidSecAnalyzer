.class public Lorg/bouncycastle/oer/its/ieee1609dot2/SequenceOfCertificate$Builder;
.super Ljava/lang/Object;
.source "SequenceOfCertificate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/oer/its/ieee1609dot2/SequenceOfCertificate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field certificates:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/bouncycastle/oer/its/ieee1609dot2/Certificate;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/SequenceOfCertificate$Builder;->certificates:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public varargs add([Lorg/bouncycastle/oer/its/ieee1609dot2/Certificate;)Lorg/bouncycastle/oer/its/ieee1609dot2/SequenceOfCertificate$Builder;
    .locals 2
    .param p1, "certificates"    # [Lorg/bouncycastle/oer/its/ieee1609dot2/Certificate;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "certificates"
        }
    .end annotation

    .line 78
    iget-object v0, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/SequenceOfCertificate$Builder;->certificates:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 79
    return-object p0
.end method

.method public build()Lorg/bouncycastle/oer/its/ieee1609dot2/SequenceOfCertificate;
    .locals 2

    .line 84
    new-instance v0, Lorg/bouncycastle/oer/its/ieee1609dot2/SequenceOfCertificate;

    iget-object v1, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/SequenceOfCertificate$Builder;->certificates:Ljava/util/List;

    invoke-direct {v0, v1}, Lorg/bouncycastle/oer/its/ieee1609dot2/SequenceOfCertificate;-><init>(Ljava/util/List;)V

    return-object v0
.end method
