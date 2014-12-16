.class Lcom/cnlaunch/x431pro/activity/diagnose/adapter/DatastreamSelectListAdapter$BaseRuleCollator;
.super Ljava/lang/Object;
.source "DatastreamSelectListAdapter.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cnlaunch/x431pro/activity/diagnose/adapter/DatastreamSelectListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "BaseRuleCollator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/cnlaunch/diagnosemodule/bean/BasicSelectMenuBean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cnlaunch/x431pro/activity/diagnose/adapter/DatastreamSelectListAdapter;


# direct methods
.method constructor <init>(Lcom/cnlaunch/x431pro/activity/diagnose/adapter/DatastreamSelectListAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 294
    iput-object p1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/DatastreamSelectListAdapter$BaseRuleCollator;->this$0:Lcom/cnlaunch/x431pro/activity/diagnose/adapter/DatastreamSelectListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/cnlaunch/diagnosemodule/bean/BasicSelectMenuBean;Lcom/cnlaunch/diagnosemodule/bean/BasicSelectMenuBean;)I
    .locals 3
    .parameter "lhs"
    .parameter "rhs"

    .prologue
    .line 297
    invoke-virtual {p1}, Lcom/cnlaunch/diagnosemodule/bean/BasicSelectMenuBean;->getNum()I

    move-result v0

    .line 298
    .local v0, numl:I
    invoke-virtual {p2}, Lcom/cnlaunch/diagnosemodule/bean/BasicSelectMenuBean;->getNum()I

    move-result v1

    .line 299
    .local v1, numr:I
    sub-int v2, v0, v1

    return v2
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1
    check-cast p1, Lcom/cnlaunch/diagnosemodule/bean/BasicSelectMenuBean;

    check-cast p2, Lcom/cnlaunch/diagnosemodule/bean/BasicSelectMenuBean;

    invoke-virtual {p0, p1, p2}, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/DatastreamSelectListAdapter$BaseRuleCollator;->compare(Lcom/cnlaunch/diagnosemodule/bean/BasicSelectMenuBean;Lcom/cnlaunch/diagnosemodule/bean/BasicSelectMenuBean;)I

    move-result v0

    return v0
.end method
