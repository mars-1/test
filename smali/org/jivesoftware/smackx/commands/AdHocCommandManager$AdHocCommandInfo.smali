.class Lorg/jivesoftware/smackx/commands/AdHocCommandManager$AdHocCommandInfo;
.super Ljava/lang/Object;
.source "AdHocCommandManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jivesoftware/smackx/commands/AdHocCommandManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AdHocCommandInfo"
.end annotation


# instance fields
.field private factory:Lorg/jivesoftware/smackx/commands/LocalCommandFactory;

.field private name:Ljava/lang/String;

.field private node:Ljava/lang/String;

.field private ownerJID:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/jivesoftware/smackx/commands/LocalCommandFactory;)V
    .locals 0
    .parameter "node"
    .parameter "name"
    .parameter "ownerJID"
    .parameter "factory"

    .prologue
    .line 716
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 719
    iput-object p1, p0, Lorg/jivesoftware/smackx/commands/AdHocCommandManager$AdHocCommandInfo;->node:Ljava/lang/String;

    .line 720
    iput-object p2, p0, Lorg/jivesoftware/smackx/commands/AdHocCommandManager$AdHocCommandInfo;->name:Ljava/lang/String;

    .line 721
    iput-object p3, p0, Lorg/jivesoftware/smackx/commands/AdHocCommandManager$AdHocCommandInfo;->ownerJID:Ljava/lang/String;

    .line 722
    iput-object p4, p0, Lorg/jivesoftware/smackx/commands/AdHocCommandManager$AdHocCommandInfo;->factory:Lorg/jivesoftware/smackx/commands/LocalCommandFactory;

    .line 723
    return-void
.end method


# virtual methods
.method public getCommandInstance()Lorg/jivesoftware/smackx/commands/LocalCommand;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InstantiationException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .prologue
    .line 728
    iget-object v0, p0, Lorg/jivesoftware/smackx/commands/AdHocCommandManager$AdHocCommandInfo;->factory:Lorg/jivesoftware/smackx/commands/LocalCommandFactory;

    invoke-interface {v0}, Lorg/jivesoftware/smackx/commands/LocalCommandFactory;->getInstance()Lorg/jivesoftware/smackx/commands/LocalCommand;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 732
    iget-object v0, p0, Lorg/jivesoftware/smackx/commands/AdHocCommandManager$AdHocCommandInfo;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getNode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 736
    iget-object v0, p0, Lorg/jivesoftware/smackx/commands/AdHocCommandManager$AdHocCommandInfo;->node:Ljava/lang/String;

    return-object v0
.end method

.method public getOwnerJID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 740
    iget-object v0, p0, Lorg/jivesoftware/smackx/commands/AdHocCommandManager$AdHocCommandInfo;->ownerJID:Ljava/lang/String;

    return-object v0
.end method
