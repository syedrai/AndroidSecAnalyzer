.class public Lorg/bouncycastle/oer/SwitchIndexer$Asn1SequenceIndexer;
.super Lorg/bouncycastle/oer/SwitchIndexer;
.source "SwitchIndexer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/oer/SwitchIndexer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Asn1SequenceIndexer"
.end annotation


# instance fields
.field private final sequence:Lorg/bouncycastle/asn1/ASN1Sequence;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V
    .locals 0
    .param p1, "sequence"    # Lorg/bouncycastle/asn1/ASN1Sequence;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sequence"
        }
    .end annotation

    .line 18
    invoke-direct {p0}, Lorg/bouncycastle/oer/SwitchIndexer;-><init>()V

    .line 19
    iput-object p1, p0, Lorg/bouncycastle/oer/SwitchIndexer$Asn1SequenceIndexer;->sequence:Lorg/bouncycastle/asn1/ASN1Sequence;

    .line 20
    return-void
.end method


# virtual methods
.method public get(I)Lorg/bouncycastle/asn1/ASN1Encodable;
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 25
    iget-object v0, p0, Lorg/bouncycastle/oer/SwitchIndexer$Asn1SequenceIndexer;->sequence:Lorg/bouncycastle/asn1/ASN1Sequence;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    return-object v0
.end method
