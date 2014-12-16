.class public Lcom/cnlaunch/x431pro/module/golo/model/GuanzhuComparator;
.super Ljava/lang/Object;
.source "GuanzhuComparator.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/cnlaunch/x431pro/module/golo/model/CustomerInfo;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/cnlaunch/x431pro/module/golo/model/CustomerInfo;Lcom/cnlaunch/x431pro/module/golo/model/CustomerInfo;)I
    .locals 4
    .parameter "o1"
    .parameter "o2"

    .prologue
    const/4 v1, 0x1

    const/4 v0, -0x1

    .line 17
    const-string/jumbo v2, "666888"

    invoke-virtual {p1}, Lcom/cnlaunch/x431pro/module/golo/model/CustomerInfo;->getUser_id()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 18
    const-string/jumbo v2, "666666"

    invoke-virtual {p2}, Lcom/cnlaunch/x431pro/module/golo/model/CustomerInfo;->getUser_id()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 47
    :cond_0
    :goto_0
    return v0

    .line 20
    :cond_1
    const-string/jumbo v2, "666666"

    invoke-virtual {p1}, Lcom/cnlaunch/x431pro/module/golo/model/CustomerInfo;->getUser_id()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 21
    const-string/jumbo v2, "666888"

    invoke-virtual {p2}, Lcom/cnlaunch/x431pro/module/golo/model/CustomerInfo;->getUser_id()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v0, v1

    .line 22
    goto :goto_0

    .line 23
    :cond_2
    const-string/jumbo v2, "666888"

    invoke-virtual {p1}, Lcom/cnlaunch/x431pro/module/golo/model/CustomerInfo;->getUser_id()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 24
    const-string/jumbo v2, "666666"

    invoke-virtual {p1}, Lcom/cnlaunch/x431pro/module/golo/model/CustomerInfo;->getUser_id()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 25
    :cond_3
    const-string/jumbo v2, "666888"

    invoke-virtual {p2}, Lcom/cnlaunch/x431pro/module/golo/model/CustomerInfo;->getUser_id()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 26
    const-string/jumbo v2, "666666"

    invoke-virtual {p2}, Lcom/cnlaunch/x431pro/module/golo/model/CustomerInfo;->getUser_id()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 28
    :cond_4
    const-string/jumbo v2, "666888"

    invoke-virtual {p1}, Lcom/cnlaunch/x431pro/module/golo/model/CustomerInfo;->getUser_id()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 29
    const-string/jumbo v2, "666666"

    invoke-virtual {p1}, Lcom/cnlaunch/x431pro/module/golo/model/CustomerInfo;->getUser_id()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 30
    :cond_5
    const-string/jumbo v2, "666888"

    invoke-virtual {p2}, Lcom/cnlaunch/x431pro/module/golo/model/CustomerInfo;->getUser_id()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 31
    const-string/jumbo v2, "666666"

    invoke-virtual {p2}, Lcom/cnlaunch/x431pro/module/golo/model/CustomerInfo;->getUser_id()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    :cond_6
    move v0, v1

    .line 32
    goto/16 :goto_0

    .line 35
    :cond_7
    invoke-virtual {p1}, Lcom/cnlaunch/x431pro/module/golo/model/CustomerInfo;->getNewMsgCount()I

    move-result v2

    if-lez v2, :cond_8

    invoke-virtual {p2}, Lcom/cnlaunch/x431pro/module/golo/model/CustomerInfo;->getNewMsgCount()I

    move-result v2

    if-eqz v2, :cond_0

    .line 37
    :cond_8
    invoke-virtual {p1}, Lcom/cnlaunch/x431pro/module/golo/model/CustomerInfo;->getNewMsgCount()I

    move-result v2

    if-nez v2, :cond_9

    invoke-virtual {p2}, Lcom/cnlaunch/x431pro/module/golo/model/CustomerInfo;->getNewMsgCount()I

    move-result v2

    if-lez v2, :cond_9

    move v0, v1

    .line 38
    goto/16 :goto_0

    .line 40
    :cond_9
    invoke-virtual {p1}, Lcom/cnlaunch/x431pro/module/golo/model/CustomerInfo;->getSortKey()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "@"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 41
    invoke-virtual {p2}, Lcom/cnlaunch/x431pro/module/golo/model/CustomerInfo;->getSortKey()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "#"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 43
    invoke-virtual {p1}, Lcom/cnlaunch/x431pro/module/golo/model/CustomerInfo;->getSortKey()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "#"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 44
    invoke-virtual {p2}, Lcom/cnlaunch/x431pro/module/golo/model/CustomerInfo;->getSortKey()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "@"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    :cond_a
    move v0, v1

    .line 45
    goto/16 :goto_0

    .line 47
    :cond_b
    invoke-virtual {p1}, Lcom/cnlaunch/x431pro/module/golo/model/CustomerInfo;->getSortKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/cnlaunch/x431pro/module/golo/model/CustomerInfo;->getSortKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    goto/16 :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1
    check-cast p1, Lcom/cnlaunch/x431pro/module/golo/model/CustomerInfo;

    check-cast p2, Lcom/cnlaunch/x431pro/module/golo/model/CustomerInfo;

    invoke-virtual {p0, p1, p2}, Lcom/cnlaunch/x431pro/module/golo/model/GuanzhuComparator;->compare(Lcom/cnlaunch/x431pro/module/golo/model/CustomerInfo;Lcom/cnlaunch/x431pro/module/golo/model/CustomerInfo;)I

    move-result v0

    return v0
.end method
