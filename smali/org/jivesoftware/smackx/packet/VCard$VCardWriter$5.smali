.class Lorg/jivesoftware/smackx/packet/VCard$VCardWriter$5;
.super Ljava/lang/Object;
.source "VCard.java"

# interfaces
.implements Lorg/jivesoftware/smackx/packet/VCard$ContentBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/jivesoftware/smackx/packet/VCard$VCardWriter;->appendOrganization()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/jivesoftware/smackx/packet/VCard$VCardWriter;


# direct methods
.method constructor <init>(Lorg/jivesoftware/smackx/packet/VCard$VCardWriter;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lorg/jivesoftware/smackx/packet/VCard$VCardWriter$5;->this$1:Lorg/jivesoftware/smackx/packet/VCard$VCardWriter;

    .line 794
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addTagContent()V
    .locals 3

    .prologue
    .line 796
    iget-object v0, p0, Lorg/jivesoftware/smackx/packet/VCard$VCardWriter$5;->this$1:Lorg/jivesoftware/smackx/packet/VCard$VCardWriter;

    const-string/jumbo v1, "ORGNAME"

    iget-object v2, p0, Lorg/jivesoftware/smackx/packet/VCard$VCardWriter$5;->this$1:Lorg/jivesoftware/smackx/packet/VCard$VCardWriter;

    #getter for: Lorg/jivesoftware/smackx/packet/VCard$VCardWriter;->this$0:Lorg/jivesoftware/smackx/packet/VCard;
    invoke-static {v2}, Lorg/jivesoftware/smackx/packet/VCard$VCardWriter;->access$4(Lorg/jivesoftware/smackx/packet/VCard$VCardWriter;)Lorg/jivesoftware/smackx/packet/VCard;

    move-result-object v2

    #getter for: Lorg/jivesoftware/smackx/packet/VCard;->organization:Ljava/lang/String;
    invoke-static {v2}, Lorg/jivesoftware/smackx/packet/VCard;->access$11(Lorg/jivesoftware/smackx/packet/VCard;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/jivesoftware/smack/util/StringUtils;->escapeForXML(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    #calls: Lorg/jivesoftware/smackx/packet/VCard$VCardWriter;->appendTag(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1, v2}, Lorg/jivesoftware/smackx/packet/VCard$VCardWriter;->access$2(Lorg/jivesoftware/smackx/packet/VCard$VCardWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 797
    iget-object v0, p0, Lorg/jivesoftware/smackx/packet/VCard$VCardWriter$5;->this$1:Lorg/jivesoftware/smackx/packet/VCard$VCardWriter;

    const-string/jumbo v1, "ORGUNIT"

    iget-object v2, p0, Lorg/jivesoftware/smackx/packet/VCard$VCardWriter$5;->this$1:Lorg/jivesoftware/smackx/packet/VCard$VCardWriter;

    #getter for: Lorg/jivesoftware/smackx/packet/VCard$VCardWriter;->this$0:Lorg/jivesoftware/smackx/packet/VCard;
    invoke-static {v2}, Lorg/jivesoftware/smackx/packet/VCard$VCardWriter;->access$4(Lorg/jivesoftware/smackx/packet/VCard$VCardWriter;)Lorg/jivesoftware/smackx/packet/VCard;

    move-result-object v2

    #getter for: Lorg/jivesoftware/smackx/packet/VCard;->organizationUnit:Ljava/lang/String;
    invoke-static {v2}, Lorg/jivesoftware/smackx/packet/VCard;->access$12(Lorg/jivesoftware/smackx/packet/VCard;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/jivesoftware/smack/util/StringUtils;->escapeForXML(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    #calls: Lorg/jivesoftware/smackx/packet/VCard$VCardWriter;->appendTag(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1, v2}, Lorg/jivesoftware/smackx/packet/VCard$VCardWriter;->access$2(Lorg/jivesoftware/smackx/packet/VCard$VCardWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 798
    return-void
.end method
