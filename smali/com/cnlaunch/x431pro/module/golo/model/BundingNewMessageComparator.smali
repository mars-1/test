.class public Lcom/cnlaunch/x431pro/module/golo/model/BundingNewMessageComparator;
.super Ljava/lang/Object;
.source "BundingNewMessageComparator.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/cnlaunch/x431pro/module/golo/model/GoloBindInfo;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/cnlaunch/x431pro/module/golo/model/GoloBindInfo;Lcom/cnlaunch/x431pro/module/golo/model/GoloBindInfo;)I
    .locals 4
    .parameter "o1"
    .parameter "o2"

    .prologue
    const/4 v1, 0x1

    const/4 v0, -0x1

    .line 10
    invoke-virtual {p1}, Lcom/cnlaunch/x431pro/module/golo/model/GoloBindInfo;->getUnReadTipCount()I

    move-result v2

    invoke-virtual {p1}, Lcom/cnlaunch/x431pro/module/golo/model/GoloBindInfo;->getNewMsgCount()I

    move-result v3

    add-int/2addr v2, v3

    if-lez v2, :cond_1

    .line 11
    invoke-virtual {p2}, Lcom/cnlaunch/x431pro/module/golo/model/GoloBindInfo;->getUnReadTipCount()I

    move-result v2

    invoke-virtual {p2}, Lcom/cnlaunch/x431pro/module/golo/model/GoloBindInfo;->getNewMsgCount()I

    move-result v3

    add-int/2addr v2, v3

    if-nez v2, :cond_1

    .line 24
    :cond_0
    :goto_0
    return v0

    .line 13
    :cond_1
    invoke-virtual {p1}, Lcom/cnlaunch/x431pro/module/golo/model/GoloBindInfo;->getUnReadTipCount()I

    move-result v2

    invoke-virtual {p1}, Lcom/cnlaunch/x431pro/module/golo/model/GoloBindInfo;->getNewMsgCount()I

    move-result v3

    add-int/2addr v2, v3

    if-nez v2, :cond_2

    .line 14
    invoke-virtual {p2}, Lcom/cnlaunch/x431pro/module/golo/model/GoloBindInfo;->getUnReadTipCount()I

    move-result v2

    invoke-virtual {p2}, Lcom/cnlaunch/x431pro/module/golo/model/GoloBindInfo;->getNewMsgCount()I

    move-result v3

    add-int/2addr v2, v3

    if-lez v2, :cond_2

    move v0, v1

    .line 15
    goto :goto_0

    .line 17
    :cond_2
    invoke-virtual {p1}, Lcom/cnlaunch/x431pro/module/golo/model/GoloBindInfo;->getSortKey()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "@"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 18
    invoke-virtual {p2}, Lcom/cnlaunch/x431pro/module/golo/model/GoloBindInfo;->getSortKey()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "#"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 20
    invoke-virtual {p1}, Lcom/cnlaunch/x431pro/module/golo/model/GoloBindInfo;->getSortKey()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "#"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 21
    invoke-virtual {p2}, Lcom/cnlaunch/x431pro/module/golo/model/GoloBindInfo;->getSortKey()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "@"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    move v0, v1

    .line 22
    goto :goto_0

    .line 24
    :cond_4
    invoke-virtual {p1}, Lcom/cnlaunch/x431pro/module/golo/model/GoloBindInfo;->getSortKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/cnlaunch/x431pro/module/golo/model/GoloBindInfo;->getSortKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1
    check-cast p1, Lcom/cnlaunch/x431pro/module/golo/model/GoloBindInfo;

    check-cast p2, Lcom/cnlaunch/x431pro/module/golo/model/GoloBindInfo;

    invoke-virtual {p0, p1, p2}, Lcom/cnlaunch/x431pro/module/golo/model/BundingNewMessageComparator;->compare(Lcom/cnlaunch/x431pro/module/golo/model/GoloBindInfo;Lcom/cnlaunch/x431pro/module/golo/model/GoloBindInfo;)I

    move-result v0

    return v0
.end method
