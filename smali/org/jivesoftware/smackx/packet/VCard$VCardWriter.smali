.class Lorg/jivesoftware/smackx/packet/VCard$VCardWriter;
.super Ljava/lang/Object;
.source "VCard.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jivesoftware/smackx/packet/VCard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VCardWriter"
.end annotation


# instance fields
.field private final sb:Ljava/lang/StringBuilder;

.field final synthetic this$0:Lorg/jivesoftware/smackx/packet/VCard;


# direct methods
.method constructor <init>(Lorg/jivesoftware/smackx/packet/VCard;Ljava/lang/StringBuilder;)V
    .locals 0
    .parameter
    .parameter "sb"

    .prologue
    .line 700
    iput-object p1, p0, Lorg/jivesoftware/smackx/packet/VCard$VCardWriter;->this$0:Lorg/jivesoftware/smackx/packet/VCard;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 701
    iput-object p2, p0, Lorg/jivesoftware/smackx/packet/VCard$VCardWriter;->sb:Ljava/lang/StringBuilder;

    .line 702
    return-void
.end method

.method static synthetic access$0(Lorg/jivesoftware/smackx/packet/VCard$VCardWriter;)V
    .locals 0
    .parameter

    .prologue
    .line 712
    invoke-direct {p0}, Lorg/jivesoftware/smackx/packet/VCard$VCardWriter;->buildActualContent()V

    return-void
.end method

.method static synthetic access$1(Lorg/jivesoftware/smackx/packet/VCard$VCardWriter;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 773
    invoke-direct {p0, p1}, Lorg/jivesoftware/smackx/packet/VCard$VCardWriter;->appendEmptyTag(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$2(Lorg/jivesoftware/smackx/packet/VCard$VCardWriter;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 834
    invoke-direct {p0, p1, p2}, Lorg/jivesoftware/smackx/packet/VCard$VCardWriter;->appendTag(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3(Lorg/jivesoftware/smackx/packet/VCard$VCardWriter;)Ljava/lang/StringBuilder;
    .locals 1
    .parameter

    .prologue
    .line 698
    iget-object v0, p0, Lorg/jivesoftware/smackx/packet/VCard$VCardWriter;->sb:Ljava/lang/StringBuilder;

    return-object v0
.end method

.method static synthetic access$4(Lorg/jivesoftware/smackx/packet/VCard$VCardWriter;)Lorg/jivesoftware/smackx/packet/VCard;
    .locals 1
    .parameter

    .prologue
    .line 696
    iget-object v0, p0, Lorg/jivesoftware/smackx/packet/VCard$VCardWriter;->this$0:Lorg/jivesoftware/smackx/packet/VCard;

    return-object v0
.end method

.method private appendAddress(Ljava/util/Map;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter "code"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 758
    .local p1, addr:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 759
    const-string/jumbo v0, "ADR"

    const/4 v1, 0x1

    new-instance v2, Lorg/jivesoftware/smackx/packet/VCard$VCardWriter$4;

    invoke-direct {v2, p0, p2, p1}, Lorg/jivesoftware/smackx/packet/VCard$VCardWriter$4;-><init>(Lorg/jivesoftware/smackx/packet/VCard$VCardWriter;Ljava/lang/String;Ljava/util/Map;)V

    invoke-direct {p0, v0, v1, v2}, Lorg/jivesoftware/smackx/packet/VCard$VCardWriter;->appendTag(Ljava/lang/String;ZLorg/jivesoftware/smackx/packet/VCard$ContentBuilder;)V

    .line 771
    :cond_0
    return-void
.end method

.method private appendEmail(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "email"
    .parameter "type"

    .prologue
    .line 731
    if-eqz p1, :cond_0

    .line 732
    const-string/jumbo v0, "EMAIL"

    const/4 v1, 0x1

    new-instance v2, Lorg/jivesoftware/smackx/packet/VCard$VCardWriter$2;

    invoke-direct {v2, p0, p2, p1}, Lorg/jivesoftware/smackx/packet/VCard$VCardWriter$2;-><init>(Lorg/jivesoftware/smackx/packet/VCard$VCardWriter;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0, v1, v2}, Lorg/jivesoftware/smackx/packet/VCard$VCardWriter;->appendTag(Ljava/lang/String;ZLorg/jivesoftware/smackx/packet/VCard$ContentBuilder;)V

    .line 741
    :cond_0
    return-void
.end method

.method private appendEmptyTag(Ljava/lang/Object;)V
    .locals 2
    .parameter "tag"

    .prologue
    .line 774
    iget-object v0, p0, Lorg/jivesoftware/smackx/packet/VCard$VCardWriter;->sb:Ljava/lang/StringBuilder;

    const/16 v1, 0x3c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 775
    return-void
.end method

.method private appendGenericFields()V
    .locals 4

    .prologue
    .line 778
    iget-object v2, p0, Lorg/jivesoftware/smackx/packet/VCard$VCardWriter;->this$0:Lorg/jivesoftware/smackx/packet/VCard;

    #getter for: Lorg/jivesoftware/smackx/packet/VCard;->otherSimpleFields:Ljava/util/Map;
    invoke-static {v2}, Lorg/jivesoftware/smackx/packet/VCard;->access$8(Lorg/jivesoftware/smackx/packet/VCard;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 779
    .local v1, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 785
    iget-object v2, p0, Lorg/jivesoftware/smackx/packet/VCard$VCardWriter;->this$0:Lorg/jivesoftware/smackx/packet/VCard;

    #getter for: Lorg/jivesoftware/smackx/packet/VCard;->otherUnescapableFields:Ljava/util/Map;
    invoke-static {v2}, Lorg/jivesoftware/smackx/packet/VCard;->access$9(Lorg/jivesoftware/smackx/packet/VCard;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 786
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 790
    return-void

    .line 780
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 781
    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    .line 782
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lorg/jivesoftware/smack/util/StringUtils;->escapeForXML(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 781
    invoke-direct {p0, v3, v2}, Lorg/jivesoftware/smackx/packet/VCard$VCardWriter;->appendTag(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 787
    .end local v0           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 788
    .restart local v0       #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {p0, v3, v2}, Lorg/jivesoftware/smackx/packet/VCard$VCardWriter;->appendTag(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private appendN()V
    .locals 3

    .prologue
    .line 804
    const-string/jumbo v0, "N"

    const/4 v1, 0x1

    new-instance v2, Lorg/jivesoftware/smackx/packet/VCard$VCardWriter$6;

    invoke-direct {v2, p0}, Lorg/jivesoftware/smackx/packet/VCard$VCardWriter$6;-><init>(Lorg/jivesoftware/smackx/packet/VCard$VCardWriter;)V

    invoke-direct {p0, v0, v1, v2}, Lorg/jivesoftware/smackx/packet/VCard$VCardWriter;->appendTag(Ljava/lang/String;ZLorg/jivesoftware/smackx/packet/VCard$ContentBuilder;)V

    .line 811
    return-void
.end method

.method private appendOrganization()V
    .locals 3

    .prologue
    .line 793
    iget-object v0, p0, Lorg/jivesoftware/smackx/packet/VCard$VCardWriter;->this$0:Lorg/jivesoftware/smackx/packet/VCard;

    #calls: Lorg/jivesoftware/smackx/packet/VCard;->hasOrganizationFields()Z
    invoke-static {v0}, Lorg/jivesoftware/smackx/packet/VCard;->access$10(Lorg/jivesoftware/smackx/packet/VCard;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 794
    const-string/jumbo v0, "ORG"

    const/4 v1, 0x1

    new-instance v2, Lorg/jivesoftware/smackx/packet/VCard$VCardWriter$5;

    invoke-direct {v2, p0}, Lorg/jivesoftware/smackx/packet/VCard$VCardWriter$5;-><init>(Lorg/jivesoftware/smackx/packet/VCard$VCardWriter;)V

    invoke-direct {p0, v0, v1, v2}, Lorg/jivesoftware/smackx/packet/VCard$VCardWriter;->appendTag(Ljava/lang/String;ZLorg/jivesoftware/smackx/packet/VCard$ContentBuilder;)V

    .line 801
    :cond_0
    return-void
.end method

.method private appendPhones(Ljava/util/Map;Ljava/lang/String;)V
    .locals 5
    .parameter
    .parameter "code"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 744
    .local p1, phones:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 745
    .local v1, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 755
    return-void

    .line 746
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 747
    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v2, "TEL"

    const/4 v3, 0x1

    new-instance v4, Lorg/jivesoftware/smackx/packet/VCard$VCardWriter$3;

    invoke-direct {v4, p0, v0, p2}, Lorg/jivesoftware/smackx/packet/VCard$VCardWriter$3;-><init>(Lorg/jivesoftware/smackx/packet/VCard$VCardWriter;Ljava/util/Map$Entry;Ljava/lang/String;)V

    invoke-direct {p0, v2, v3, v4}, Lorg/jivesoftware/smackx/packet/VCard$VCardWriter;->appendTag(Ljava/lang/String;ZLorg/jivesoftware/smackx/packet/VCard$ContentBuilder;)V

    goto :goto_0
.end method

.method private appendTag(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "tag"
    .parameter "tagText"

    .prologue
    .line 835
    if-nez p2, :cond_0

    .line 842
    :goto_0
    return-void

    .line 836
    :cond_0
    new-instance v0, Lorg/jivesoftware/smackx/packet/VCard$VCardWriter$7;

    invoke-direct {v0, p0, p2}, Lorg/jivesoftware/smackx/packet/VCard$VCardWriter$7;-><init>(Lorg/jivesoftware/smackx/packet/VCard$VCardWriter;Ljava/lang/String;)V

    .line 841
    .local v0, contentBuilder:Lorg/jivesoftware/smackx/packet/VCard$ContentBuilder;
    const/4 v1, 0x1

    invoke-direct {p0, p1, v1, v0}, Lorg/jivesoftware/smackx/packet/VCard$VCardWriter;->appendTag(Ljava/lang/String;ZLorg/jivesoftware/smackx/packet/VCard$ContentBuilder;)V

    goto :goto_0
.end method

.method private appendTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLorg/jivesoftware/smackx/packet/VCard$ContentBuilder;)V
    .locals 3
    .parameter "tag"
    .parameter "attr"
    .parameter "attrValue"
    .parameter "hasContent"
    .parameter "builder"

    .prologue
    const/16 v2, 0x27

    .line 815
    iget-object v0, p0, Lorg/jivesoftware/smackx/packet/VCard$VCardWriter;->sb:Ljava/lang/StringBuilder;

    const/16 v1, 0x3c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 816
    if-eqz p2, :cond_0

    .line 817
    iget-object v0, p0, Lorg/jivesoftware/smackx/packet/VCard$VCardWriter;->sb:Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x3d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 820
    :cond_0
    if-eqz p4, :cond_1

    .line 821
    iget-object v0, p0, Lorg/jivesoftware/smackx/packet/VCard$VCardWriter;->sb:Ljava/lang/StringBuilder;

    const/16 v1, 0x3e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 822
    invoke-interface {p5}, Lorg/jivesoftware/smackx/packet/VCard$ContentBuilder;->addTagContent()V

    .line 823
    iget-object v0, p0, Lorg/jivesoftware/smackx/packet/VCard$VCardWriter;->sb:Ljava/lang/StringBuilder;

    const-string/jumbo v1, "</"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ">\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 828
    :goto_0
    return-void

    .line 826
    :cond_1
    iget-object v0, p0, Lorg/jivesoftware/smackx/packet/VCard$VCardWriter;->sb:Ljava/lang/StringBuilder;

    const-string/jumbo v1, "/>\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method private appendTag(Ljava/lang/String;ZLorg/jivesoftware/smackx/packet/VCard$ContentBuilder;)V
    .locals 6
    .parameter "tag"
    .parameter "hasContent"
    .parameter "builder"

    .prologue
    const/4 v2, 0x0

    .line 831
    move-object v0, p0

    move-object v1, p1

    move-object v3, v2

    move v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lorg/jivesoftware/smackx/packet/VCard$VCardWriter;->appendTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLorg/jivesoftware/smackx/packet/VCard$ContentBuilder;)V

    .line 832
    return-void
.end method

.method private buildActualContent()V
    .locals 2

    .prologue
    .line 713
    iget-object v0, p0, Lorg/jivesoftware/smackx/packet/VCard$VCardWriter;->this$0:Lorg/jivesoftware/smackx/packet/VCard;

    #calls: Lorg/jivesoftware/smackx/packet/VCard;->hasNameField()Z
    invoke-static {v0}, Lorg/jivesoftware/smackx/packet/VCard;->access$1(Lorg/jivesoftware/smackx/packet/VCard;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 714
    invoke-direct {p0}, Lorg/jivesoftware/smackx/packet/VCard$VCardWriter;->appendN()V

    .line 717
    :cond_0
    invoke-direct {p0}, Lorg/jivesoftware/smackx/packet/VCard$VCardWriter;->appendOrganization()V

    .line 718
    invoke-direct {p0}, Lorg/jivesoftware/smackx/packet/VCard$VCardWriter;->appendGenericFields()V

    .line 720
    iget-object v0, p0, Lorg/jivesoftware/smackx/packet/VCard$VCardWriter;->this$0:Lorg/jivesoftware/smackx/packet/VCard;

    #getter for: Lorg/jivesoftware/smackx/packet/VCard;->emailWork:Ljava/lang/String;
    invoke-static {v0}, Lorg/jivesoftware/smackx/packet/VCard;->access$2(Lorg/jivesoftware/smackx/packet/VCard;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "WORK"

    invoke-direct {p0, v0, v1}, Lorg/jivesoftware/smackx/packet/VCard$VCardWriter;->appendEmail(Ljava/lang/String;Ljava/lang/String;)V

    .line 721
    iget-object v0, p0, Lorg/jivesoftware/smackx/packet/VCard$VCardWriter;->this$0:Lorg/jivesoftware/smackx/packet/VCard;

    #getter for: Lorg/jivesoftware/smackx/packet/VCard;->emailHome:Ljava/lang/String;
    invoke-static {v0}, Lorg/jivesoftware/smackx/packet/VCard;->access$3(Lorg/jivesoftware/smackx/packet/VCard;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "HOME"

    invoke-direct {p0, v0, v1}, Lorg/jivesoftware/smackx/packet/VCard$VCardWriter;->appendEmail(Ljava/lang/String;Ljava/lang/String;)V

    .line 723
    iget-object v0, p0, Lorg/jivesoftware/smackx/packet/VCard$VCardWriter;->this$0:Lorg/jivesoftware/smackx/packet/VCard;

    #getter for: Lorg/jivesoftware/smackx/packet/VCard;->workPhones:Ljava/util/Map;
    invoke-static {v0}, Lorg/jivesoftware/smackx/packet/VCard;->access$4(Lorg/jivesoftware/smackx/packet/VCard;)Ljava/util/Map;

    move-result-object v0

    const-string/jumbo v1, "WORK"

    invoke-direct {p0, v0, v1}, Lorg/jivesoftware/smackx/packet/VCard$VCardWriter;->appendPhones(Ljava/util/Map;Ljava/lang/String;)V

    .line 724
    iget-object v0, p0, Lorg/jivesoftware/smackx/packet/VCard$VCardWriter;->this$0:Lorg/jivesoftware/smackx/packet/VCard;

    #getter for: Lorg/jivesoftware/smackx/packet/VCard;->homePhones:Ljava/util/Map;
    invoke-static {v0}, Lorg/jivesoftware/smackx/packet/VCard;->access$5(Lorg/jivesoftware/smackx/packet/VCard;)Ljava/util/Map;

    move-result-object v0

    const-string/jumbo v1, "HOME"

    invoke-direct {p0, v0, v1}, Lorg/jivesoftware/smackx/packet/VCard$VCardWriter;->appendPhones(Ljava/util/Map;Ljava/lang/String;)V

    .line 726
    iget-object v0, p0, Lorg/jivesoftware/smackx/packet/VCard$VCardWriter;->this$0:Lorg/jivesoftware/smackx/packet/VCard;

    #getter for: Lorg/jivesoftware/smackx/packet/VCard;->workAddr:Ljava/util/Map;
    invoke-static {v0}, Lorg/jivesoftware/smackx/packet/VCard;->access$6(Lorg/jivesoftware/smackx/packet/VCard;)Ljava/util/Map;

    move-result-object v0

    const-string/jumbo v1, "WORK"

    invoke-direct {p0, v0, v1}, Lorg/jivesoftware/smackx/packet/VCard$VCardWriter;->appendAddress(Ljava/util/Map;Ljava/lang/String;)V

    .line 727
    iget-object v0, p0, Lorg/jivesoftware/smackx/packet/VCard$VCardWriter;->this$0:Lorg/jivesoftware/smackx/packet/VCard;

    #getter for: Lorg/jivesoftware/smackx/packet/VCard;->homeAddr:Ljava/util/Map;
    invoke-static {v0}, Lorg/jivesoftware/smackx/packet/VCard;->access$7(Lorg/jivesoftware/smackx/packet/VCard;)Ljava/util/Map;

    move-result-object v0

    const-string/jumbo v1, "HOME"

    invoke-direct {p0, v0, v1}, Lorg/jivesoftware/smackx/packet/VCard$VCardWriter;->appendAddress(Ljava/util/Map;Ljava/lang/String;)V

    .line 728
    return-void
.end method


# virtual methods
.method public write()V
    .locals 6

    .prologue
    .line 705
    const-string/jumbo v1, "vCard"

    const-string/jumbo v2, "xmlns"

    const-string/jumbo v3, "vcard-temp"

    iget-object v0, p0, Lorg/jivesoftware/smackx/packet/VCard$VCardWriter;->this$0:Lorg/jivesoftware/smackx/packet/VCard;

    #calls: Lorg/jivesoftware/smackx/packet/VCard;->hasContent()Z
    invoke-static {v0}, Lorg/jivesoftware/smackx/packet/VCard;->access$0(Lorg/jivesoftware/smackx/packet/VCard;)Z

    move-result v4

    new-instance v5, Lorg/jivesoftware/smackx/packet/VCard$VCardWriter$1;

    invoke-direct {v5, p0}, Lorg/jivesoftware/smackx/packet/VCard$VCardWriter$1;-><init>(Lorg/jivesoftware/smackx/packet/VCard$VCardWriter;)V

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lorg/jivesoftware/smackx/packet/VCard$VCardWriter;->appendTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLorg/jivesoftware/smackx/packet/VCard$ContentBuilder;)V

    .line 710
    return-void
.end method
