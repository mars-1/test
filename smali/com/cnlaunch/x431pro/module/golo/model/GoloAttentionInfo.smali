.class public Lcom/cnlaunch/x431pro/module/golo/model/GoloAttentionInfo;
.super Lcom/cnlaunch/x431pro/module/golo/model/CustomerInfo;
.source "GoloAttentionInfo.java"


# static fields
.field private static final serialVersionUID:J = -0x5cea8f215f054d6aL


# instance fields
.field private face_thumb:Ljava/lang/String;

.field private face_url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/module/golo/model/CustomerInfo;-><init>()V

    return-void
.end method

.method public static filledData(Ljava/util/List;Ljava/util/List;)V
    .locals 7
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/cnlaunch/x431pro/module/golo/model/GoloAttentionInfo;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/cnlaunch/x431pro/module/golo/model/GoloAttentionInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 34
    .local p0, source:Ljava/util/List;,"Ljava/util/List<Lcom/cnlaunch/x431pro/module/golo/model/GoloAttentionInfo;>;"
    .local p1, sortList:Ljava/util/List;,"Ljava/util/List<Lcom/cnlaunch/x431pro/module/golo/model/GoloAttentionInfo;>;"
    if-nez p0, :cond_1

    .line 58
    :cond_0
    return-void

    .line 38
    :cond_1
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cnlaunch/x431pro/module/golo/model/GoloAttentionInfo;

    .line 39
    .local v0, c:Lcom/cnlaunch/x431pro/module/golo/model/GoloAttentionInfo;
    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/module/golo/model/GoloAttentionInfo;->getNick_name()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/cnlaunch/x431pro/module/golo/model/GoloAttentionInfo;->isNotNull(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/module/golo/model/GoloAttentionInfo;->getNick_name()Ljava/lang/String;

    move-result-object v1

    .line 40
    .local v1, name:Ljava/lang/String;
    :goto_1
    if-eqz v1, :cond_2

    .line 41
    invoke-static {}, Lcom/cnlaunch/x431pro/widget/sortlistview/CharacterParser;->getInstance()Lcom/cnlaunch/x431pro/widget/sortlistview/CharacterParser;

    move-result-object v5

    invoke-virtual {v5, v1}, Lcom/cnlaunch/x431pro/widget/sortlistview/CharacterParser;->getSelling(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 42
    .local v2, pinyin:Ljava/lang/String;
    if-eqz v2, :cond_3

    const-string/jumbo v5, ""

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 43
    :cond_3
    const-string/jumbo v5, "#"

    invoke-virtual {v0, v5}, Lcom/cnlaunch/x431pro/module/golo/model/GoloAttentionInfo;->setSortKey(Ljava/lang/String;)V

    .line 44
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 39
    .end local v1           #name:Ljava/lang/String;
    .end local v2           #pinyin:Ljava/lang/String;
    :cond_4
    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/module/golo/model/GoloAttentionInfo;->getUser_name()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 47
    .restart local v1       #name:Ljava/lang/String;
    .restart local v2       #pinyin:Ljava/lang/String;
    :cond_5
    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-virtual {v2, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    .line 48
    .local v3, sortString:Ljava/lang/String;
    const-string/jumbo v5, "[A-Z]"

    invoke-virtual {v3, v5}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 49
    invoke-virtual {v0, v3}, Lcom/cnlaunch/x431pro/module/golo/model/GoloAttentionInfo;->setSortKey(Ljava/lang/String;)V

    .line 53
    :goto_2
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 51
    :cond_6
    const-string/jumbo v5, "#"

    invoke-virtual {v0, v5}, Lcom/cnlaunch/x431pro/module/golo/model/GoloAttentionInfo;->setSortKey(Ljava/lang/String;)V

    goto :goto_2
.end method

.method public static getUnreadNumber(Ljava/util/List;)I
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/cnlaunch/x431pro/module/golo/model/GoloAttentionInfo;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 61
    .local p0, guanzhuDateList2:Ljava/util/List;,"Ljava/util/List<Lcom/cnlaunch/x431pro/module/golo/model/GoloAttentionInfo;>;"
    const/4 v0, 0x0

    .line 62
    .local v0, result:I
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 67
    return v0

    .line 62
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cnlaunch/x431pro/module/golo/model/GoloAttentionInfo;

    .line 63
    .local v1, tmp:Lcom/cnlaunch/x431pro/module/golo/model/GoloAttentionInfo;
    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/module/golo/model/GoloAttentionInfo;->getNewMsgCount()I

    move-result v3

    if-lez v3, :cond_0

    .line 64
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public getFace_thumb()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/cnlaunch/x431pro/module/golo/model/GoloAttentionInfo;->face_thumb:Ljava/lang/String;

    return-object v0
.end method

.method public getFace_url()Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/cnlaunch/x431pro/module/golo/model/GoloAttentionInfo;->face_url:Ljava/lang/String;

    return-object v0
.end method

.method public setFace_thumb(Ljava/lang/String;)V
    .locals 0
    .parameter "face_thumb"

    .prologue
    .line 29
    iput-object p1, p0, Lcom/cnlaunch/x431pro/module/golo/model/GoloAttentionInfo;->face_thumb:Ljava/lang/String;

    .line 30
    return-void
.end method

.method public setFace_url(Ljava/lang/String;)V
    .locals 0
    .parameter "face_url"

    .prologue
    .line 23
    iput-object p1, p0, Lcom/cnlaunch/x431pro/module/golo/model/GoloAttentionInfo;->face_url:Ljava/lang/String;

    .line 24
    return-void
.end method
