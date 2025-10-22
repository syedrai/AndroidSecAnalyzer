.class public Lorg/bouncycastle/asn1/cmp/NestedMessageContent;
.super Lorg/bouncycastle/asn1/cmp/PKIMessages;
.source "NestedMessageContent.java"


# direct methods
.method public constructor <init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V
    .locals 0
    .param p1, "seq"    # Lorg/bouncycastle/asn1/ASN1Sequence;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "seq"
        }
    .end annotation

    .line 23
    invoke-direct {p0, p1}, Lorg/bouncycastle/asn1/cmp/PKIMessages;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    .line 24
    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/cmp/PKIMessage;)V
    .locals 0
    .param p1, "msg"    # Lorg/bouncycastle/asn1/cmp/PKIMessage;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "msg"
        }
    .end annotation

    .line 13
    invoke-direct {p0, p1}, Lorg/bouncycastle/asn1/cmp/PKIMessages;-><init>(Lorg/bouncycastle/asn1/cmp/PKIMessage;)V

    .line 14
    return-void
.end method

.method public constructor <init>([Lorg/bouncycastle/asn1/cmp/PKIMessage;)V
    .locals 0
    .param p1, "msgs"    # [Lorg/bouncycastle/asn1/cmp/PKIMessage;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "msgs"
        }
    .end annotation

    .line 18
    invoke-direct {p0, p1}, Lorg/bouncycastle/asn1/cmp/PKIMessages;-><init>([Lorg/bouncycastle/asn1/cmp/PKIMessage;)V

    .line 19
    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cmp/NestedMessageContent;
    .locals 2
    .param p0, "o"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "o"
        }
    .end annotation

    .line 28
    instance-of v0, p0, Lorg/bouncycastle/asn1/cmp/NestedMessageContent;

    if-eqz v0, :cond_0

    .line 30
    move-object v0, p0

    check-cast v0, Lorg/bouncycastle/asn1/cmp/NestedMessageContent;

    return-object v0

    .line 33
    :cond_0
    if-eqz p0, :cond_1

    .line 35
    new-instance v0, Lorg/bouncycastle/asn1/cmp/NestedMessageContent;

    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/cmp/NestedMessageContent;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    return-object v0

    .line 38
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method
