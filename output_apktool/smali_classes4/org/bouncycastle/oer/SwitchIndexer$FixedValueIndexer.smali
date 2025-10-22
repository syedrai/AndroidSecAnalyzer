.class public Lorg/bouncycastle/oer/SwitchIndexer$FixedValueIndexer;
.super Lorg/bouncycastle/oer/SwitchIndexer;
.source "SwitchIndexer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/oer/SwitchIndexer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FixedValueIndexer"
.end annotation


# instance fields
.field private final returnValue:Lorg/bouncycastle/asn1/ASN1Encodable;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/asn1/ASN1Encodable;)V
    .locals 0
    .param p1, "returnValue"    # Lorg/bouncycastle/asn1/ASN1Encodable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "returnValue"
        }
    .end annotation

    .line 52
    invoke-direct {p0}, Lorg/bouncycastle/oer/SwitchIndexer;-><init>()V

    .line 53
    iput-object p1, p0, Lorg/bouncycastle/oer/SwitchIndexer$FixedValueIndexer;->returnValue:Lorg/bouncycastle/asn1/ASN1Encodable;

    .line 54
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

    .line 59
    iget-object v0, p0, Lorg/bouncycastle/oer/SwitchIndexer$FixedValueIndexer;->returnValue:Lorg/bouncycastle/asn1/ASN1Encodable;

    return-object v0
.end method
