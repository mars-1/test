.class public Lcom/cnlaunch/x431pro/module/golo/model/TimeComparator;
.super Ljava/lang/Object;
.source "TimeComparator.java"

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
    .locals 11
    .parameter "o1"
    .parameter "o2"

    .prologue
    const/4 v9, 0x1

    const/4 v8, -0x1

    .line 16
    instance-of v10, p1, Lcom/cnlaunch/x431pro/module/golo/model/GoloRepairInfo;

    if-eqz v10, :cond_4

    move-object v0, p1

    .line 17
    check-cast v0, Lcom/cnlaunch/x431pro/module/golo/model/GoloRepairInfo;

    .local v0, g1:Lcom/cnlaunch/x431pro/module/golo/model/GoloRepairInfo;
    move-object v3, p2

    .line 18
    check-cast v3, Lcom/cnlaunch/x431pro/module/golo/model/GoloRepairInfo;

    .line 19
    .local v3, g2:Lcom/cnlaunch/x431pro/module/golo/model/GoloRepairInfo;
    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/module/golo/model/GoloRepairInfo;->getCreated()Ljava/lang/String;

    move-result-object v6

    .line 20
    .local v6, time1:Ljava/lang/String;
    invoke-virtual {v3}, Lcom/cnlaunch/x431pro/module/golo/model/GoloRepairInfo;->getCreated()Ljava/lang/String;

    move-result-object v7

    .line 21
    .local v7, time2:Ljava/lang/String;
    const-wide/16 v1, 0x0

    .line 22
    .local v1, g1_time:J
    const-wide/16 v4, 0x0

    .line 23
    .local v4, g2_time:J
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_0

    const-string/jumbo v10, "null"

    invoke-virtual {v10, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 24
    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    .line 26
    :cond_0
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_1

    const-string/jumbo v10, "null"

    invoke-virtual {v10, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_1

    .line 27
    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 29
    :cond_1
    cmp-long v10, v1, v4

    if-lez v10, :cond_3

    .line 53
    .end local v0           #g1:Lcom/cnlaunch/x431pro/module/golo/model/GoloRepairInfo;
    .end local v1           #g1_time:J
    .end local v3           #g2:Lcom/cnlaunch/x431pro/module/golo/model/GoloRepairInfo;
    .end local v4           #g2_time:J
    .end local v6           #time1:Ljava/lang/String;
    .end local v7           #time2:Ljava/lang/String;
    :cond_2
    :goto_0
    return v8

    .restart local v0       #g1:Lcom/cnlaunch/x431pro/module/golo/model/GoloRepairInfo;
    .restart local v1       #g1_time:J
    .restart local v3       #g2:Lcom/cnlaunch/x431pro/module/golo/model/GoloRepairInfo;
    .restart local v4       #g2_time:J
    .restart local v6       #time1:Ljava/lang/String;
    .restart local v7       #time2:Ljava/lang/String;
    :cond_3
    move v8, v9

    .line 32
    goto :goto_0

    .line 34
    .end local v0           #g1:Lcom/cnlaunch/x431pro/module/golo/model/GoloRepairInfo;
    .end local v1           #g1_time:J
    .end local v3           #g2:Lcom/cnlaunch/x431pro/module/golo/model/GoloRepairInfo;
    .end local v4           #g2_time:J
    .end local v6           #time1:Ljava/lang/String;
    .end local v7           #time2:Ljava/lang/String;
    :cond_4
    instance-of v10, p1, Lcom/cnlaunch/x431pro/module/golo/model/GoloRemoteOrderInfo;

    if-eqz v10, :cond_7

    move-object v0, p1

    .line 35
    check-cast v0, Lcom/cnlaunch/x431pro/module/golo/model/GoloRemoteOrderInfo;

    .local v0, g1:Lcom/cnlaunch/x431pro/module/golo/model/GoloRemoteOrderInfo;
    move-object v3, p2

    .line 36
    check-cast v3, Lcom/cnlaunch/x431pro/module/golo/model/GoloRemoteOrderInfo;

    .line 37
    .local v3, g2:Lcom/cnlaunch/x431pro/module/golo/model/GoloRemoteOrderInfo;
    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/module/golo/model/GoloRemoteOrderInfo;->getCreated()Ljava/lang/String;

    move-result-object v6

    .line 38
    .restart local v6       #time1:Ljava/lang/String;
    invoke-virtual {v3}, Lcom/cnlaunch/x431pro/module/golo/model/GoloRemoteOrderInfo;->getCreated()Ljava/lang/String;

    move-result-object v7

    .line 39
    .restart local v7       #time2:Ljava/lang/String;
    const-wide/16 v1, 0x0

    .line 40
    .restart local v1       #g1_time:J
    const-wide/16 v4, 0x0

    .line 41
    .restart local v4       #g2_time:J
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_5

    const-string/jumbo v10, "null"

    invoke-virtual {v10, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_5

    .line 42
    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    .line 44
    :cond_5
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_6

    const-string/jumbo v10, "null"

    invoke-virtual {v10, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_6

    .line 45
    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 47
    :cond_6
    cmp-long v10, v1, v4

    if-gtz v10, :cond_2

    move v8, v9

    .line 50
    goto :goto_0

    .line 53
    .end local v0           #g1:Lcom/cnlaunch/x431pro/module/golo/model/GoloRemoteOrderInfo;
    .end local v1           #g1_time:J
    .end local v3           #g2:Lcom/cnlaunch/x431pro/module/golo/model/GoloRemoteOrderInfo;
    .end local v4           #g2_time:J
    .end local v6           #time1:Ljava/lang/String;
    .end local v7           #time2:Ljava/lang/String;
    :cond_7
    const/4 v8, 0x0

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1
    check-cast p1, Lcom/cnlaunch/x431pro/module/golo/model/CustomerInfo;

    check-cast p2, Lcom/cnlaunch/x431pro/module/golo/model/CustomerInfo;

    invoke-virtual {p0, p1, p2}, Lcom/cnlaunch/x431pro/module/golo/model/TimeComparator;->compare(Lcom/cnlaunch/x431pro/module/golo/model/CustomerInfo;Lcom/cnlaunch/x431pro/module/golo/model/CustomerInfo;)I

    move-result v0

    return v0
.end method
