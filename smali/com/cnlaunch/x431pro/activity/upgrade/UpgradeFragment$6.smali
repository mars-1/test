.class Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment$6;
.super Ljava/lang/Object;
.source "UpgradeFragment.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->sortUpgradeList()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;


# direct methods
.method constructor <init>(Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment$6;->this$0:Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;

    .line 999
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 6
    .parameter "obj1"
    .parameter "obj2"

    .prologue
    const/4 v5, 0x2

    const/4 v2, -0x1

    const/4 v3, 0x1

    .line 1001
    move-object v0, p1

    check-cast v0, Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;

    .local v0, soft1:Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;
    move-object v1, p2

    .line 1002
    check-cast v1, Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;

    .line 1004
    .local v1, soft2:Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;
    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;->getType()I

    move-result v4

    if-ne v5, v4, :cond_1

    .line 1017
    :cond_0
    :goto_0
    return v2

    .line 1007
    :cond_1
    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;->getType()I

    move-result v4

    if-ne v5, v4, :cond_2

    move v2, v3

    .line 1008
    goto :goto_0

    .line 1010
    :cond_2
    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;->getType()I

    move-result v4

    if-ne v3, v4, :cond_3

    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;->getType()I

    move-result v4

    if-ne v3, v4, :cond_0

    .line 1013
    :cond_3
    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;->getType()I

    move-result v2

    if-eq v3, v2, :cond_4

    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;->getType()I

    move-result v2

    if-ne v3, v2, :cond_4

    move v2, v3

    .line 1014
    goto :goto_0

    .line 1017
    :cond_4
    const/4 v2, 0x0

    goto :goto_0
.end method
