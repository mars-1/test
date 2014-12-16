.class public Lcom/cnlaunch/x431pro/activity/help/HelpFileInfo;
.super Ljava/lang/Object;
.source "HelpFileInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private iconName:Ljava/lang/String;

.field private item:Ljava/lang/String;

.field private itemRef:Ljava/lang/String;

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getIconName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/help/HelpFileInfo;->iconName:Ljava/lang/String;

    return-object v0
.end method

.method public getItem()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/help/HelpFileInfo;->item:Ljava/lang/String;

    return-object v0
.end method

.method public getItemRef()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/help/HelpFileInfo;->itemRef:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/help/HelpFileInfo;->title:Ljava/lang/String;

    return-object v0
.end method

.method public setIconName(Ljava/lang/String;)V
    .locals 0
    .parameter "str"

    .prologue
    .line 19
    iput-object p1, p0, Lcom/cnlaunch/x431pro/activity/help/HelpFileInfo;->iconName:Ljava/lang/String;

    .line 20
    return-void
.end method

.method public setItem(Ljava/lang/String;)V
    .locals 0
    .parameter "str"

    .prologue
    .line 23
    iput-object p1, p0, Lcom/cnlaunch/x431pro/activity/help/HelpFileInfo;->item:Ljava/lang/String;

    .line 24
    return-void
.end method

.method public setItemRef(Ljava/lang/String;)V
    .locals 0
    .parameter "str"

    .prologue
    .line 27
    iput-object p1, p0, Lcom/cnlaunch/x431pro/activity/help/HelpFileInfo;->itemRef:Ljava/lang/String;

    .line 28
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .parameter "str"

    .prologue
    .line 15
    iput-object p1, p0, Lcom/cnlaunch/x431pro/activity/help/HelpFileInfo;->title:Ljava/lang/String;

    .line 16
    return-void
.end method
