.class Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment$8;
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
    iput-object p1, p0, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment$8;->this$0:Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;

    .line 1045
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 3
    .parameter "obj1"
    .parameter "obj2"

    .prologue
    .line 1047
    move-object v0, p1

    check-cast v0, Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;

    .local v0, soft1:Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;
    move-object v1, p2

    .line 1048
    check-cast v1, Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;

    .line 1050
    .local v1, soft2:Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;
    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;->isChecked()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1051
    const/4 v2, -0x1

    .line 1057
    :goto_0
    return v2

    .line 1053
    :cond_0
    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;->isChecked()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1054
    const/4 v2, 0x1

    goto :goto_0

    .line 1057
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method
