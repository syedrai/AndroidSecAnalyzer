.class public abstract Lorg/bouncycastle/oer/SwitchIndexer;
.super Ljava/lang/Object;
.source "SwitchIndexer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/oer/SwitchIndexer$FixedValueIndexer;,
        Lorg/bouncycastle/oer/SwitchIndexer$Asn1EncodableVectorIndexer;,
        Lorg/bouncycastle/oer/SwitchIndexer$Asn1SequenceIndexer;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract get(I)Lorg/bouncycastle/asn1/ASN1Encodable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation
.end method
