.class public Lcom/cnlaunch/x431pro/module/golo/model/PinyinComparator;
.super Ljava/lang/Object;
.source "PinyinComparator.java"

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
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/cnlaunch/x431pro/module/golo/model/CustomerInfo;Lcom/cnlaunch/x431pro/module/golo/model/CustomerInfo;)I
    .locals 2
    .parameter "o1"
    .parameter "o2"

    .prologue
    .line 13
    invoke-virtual {p1}, Lcom/cnlaunch/x431pro/module/golo/model/CustomerInfo;->getSortKey()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 14
    invoke-virtual {p2}, Lcom/cnlaunch/x431pro/module/golo/model/CustomerInfo;->getSortKey()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 15
    :cond_0
    const/4 v0, -0x1

    .line 20
    :goto_0
    return v0

    .line 16
    :cond_1
    invoke-virtual {p1}, Lcom/cnlaunch/x431pro/module/golo/model/CustomerInfo;->getSortKey()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 17
    invoke-virtual {p2}, Lcom/cnlaunch/x431pro/module/golo/model/CustomerInfo;->getSortKey()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 18
    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    .line 20
    :cond_3
    invoke-virtual {p1}, Lcom/cnlaunch/x431pro/module/golo/model/CustomerInfo;->getSortKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/cnlaunch/x431pro/module/golo/model/CustomerInfo;->getSortKey()Ljava/lang/String;

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
    check-cast p1, Lcom/cnlaunch/x431pro/module/golo/model/CustomerInfo;

    check-cast p2, Lcom/cnlaunch/x431pro/module/golo/model/CustomerInfo;

    invoke-virtual {p0, p1, p2}, Lcom/cnlaunch/x431pro/module/golo/model/PinyinComparator;->compare(Lcom/cnlaunch/x431pro/module/golo/model/CustomerInfo;Lcom/cnlaunch/x431pro/module/golo/model/CustomerInfo;)I

    move-result v0

    return v0
.end method
