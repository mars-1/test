.class Lorg/jivesoftware/smackx/entitycaps/EntityCapsManager$1;
.super Ljava/lang/Object;
.source "EntityCapsManager.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/jivesoftware/smackx/entitycaps/EntityCapsManager;->calculateEntityCapsVersion(Lorg/jivesoftware/smackx/packet/DiscoverInfo;Ljava/lang/String;Ljava/lang/String;Lorg/jivesoftware/smackx/packet/DataForm;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lorg/jivesoftware/smackx/FormField;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/jivesoftware/smackx/entitycaps/EntityCapsManager;


# direct methods
.method constructor <init>(Lorg/jivesoftware/smackx/entitycaps/EntityCapsManager;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lorg/jivesoftware/smackx/entitycaps/EntityCapsManager$1;->this$0:Lorg/jivesoftware/smackx/entitycaps/EntityCapsManager;

    .line 280
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1
    check-cast p1, Lorg/jivesoftware/smackx/FormField;

    check-cast p2, Lorg/jivesoftware/smackx/FormField;

    invoke-virtual {p0, p1, p2}, Lorg/jivesoftware/smackx/entitycaps/EntityCapsManager$1;->compare(Lorg/jivesoftware/smackx/FormField;Lorg/jivesoftware/smackx/FormField;)I

    move-result v0

    return v0
.end method

.method public compare(Lorg/jivesoftware/smackx/FormField;Lorg/jivesoftware/smackx/FormField;)I
    .locals 2
    .parameter "f1"
    .parameter "f2"

    .prologue
    .line 282
    invoke-virtual {p1}, Lorg/jivesoftware/smackx/FormField;->getVariable()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lorg/jivesoftware/smackx/FormField;->getVariable()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method
