.class Lorg/bouncycastle/asn1/ASN1Set$3;
.super Ljava/lang/Object;
.source "ASN1Set.java"

# interfaces
.implements Lorg/bouncycastle/asn1/ASN1SetParser;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/bouncycastle/asn1/ASN1Set;->parser()Lorg/bouncycastle/asn1/ASN1SetParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private pos:I

.field final synthetic this$0:Lorg/bouncycastle/asn1/ASN1Set;

.field final synthetic val$count:I


# direct methods
.method constructor <init>(Lorg/bouncycastle/asn1/ASN1Set;I)V
    .locals 0
    .param p1, "this$0"    # Lorg/bouncycastle/asn1/ASN1Set;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$count"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 307
    iput p2, p0, Lorg/bouncycastle/asn1/ASN1Set$3;->val$count:I

    iput-object p1, p0, Lorg/bouncycastle/asn1/ASN1Set$3;->this$0:Lorg/bouncycastle/asn1/ASN1Set;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 308
    const/4 p2, 0x0

    iput p2, p0, Lorg/bouncycastle/asn1/ASN1Set$3;->pos:I

    .line 307
    return-void
.end method


# virtual methods
.method public getLoadedObject()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 1

    .line 332
    iget-object v0, p0, Lorg/bouncycastle/asn1/ASN1Set$3;->this$0:Lorg/bouncycastle/asn1/ASN1Set;

    return-object v0
.end method

.method public readObject()Lorg/bouncycastle/asn1/ASN1Encodable;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 312
    iget v0, p0, Lorg/bouncycastle/asn1/ASN1Set$3;->val$count:I

    iget v1, p0, Lorg/bouncycastle/asn1/ASN1Set$3;->pos:I

    if-ne v0, v1, :cond_0

    .line 314
    const/4 v0, 0x0

    return-object v0

    .line 317
    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/asn1/ASN1Set$3;->this$0:Lorg/bouncycastle/asn1/ASN1Set;

    iget-object v0, v0, Lorg/bouncycastle/asn1/ASN1Set;->elements:[Lorg/bouncycastle/asn1/ASN1Encodable;

    iget v1, p0, Lorg/bouncycastle/asn1/ASN1Set$3;->pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/bouncycastle/asn1/ASN1Set$3;->pos:I

    aget-object v0, v0, v1

    .line 318
    .local v0, "obj":Lorg/bouncycastle/asn1/ASN1Encodable;
    instance-of v1, v0, Lorg/bouncycastle/asn1/ASN1Sequence;

    if-eqz v1, :cond_1

    .line 320
    move-object v1, v0

    check-cast v1, Lorg/bouncycastle/asn1/ASN1Sequence;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->parser()Lorg/bouncycastle/asn1/ASN1SequenceParser;

    move-result-object v1

    return-object v1

    .line 322
    :cond_1
    instance-of v1, v0, Lorg/bouncycastle/asn1/ASN1Set;

    if-eqz v1, :cond_2

    .line 324
    move-object v1, v0

    check-cast v1, Lorg/bouncycastle/asn1/ASN1Set;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ASN1Set;->parser()Lorg/bouncycastle/asn1/ASN1SetParser;

    move-result-object v1

    return-object v1

    .line 327
    :cond_2
    return-object v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 1

    .line 337
    iget-object v0, p0, Lorg/bouncycastle/asn1/ASN1Set$3;->this$0:Lorg/bouncycastle/asn1/ASN1Set;

    return-object v0
.end method
