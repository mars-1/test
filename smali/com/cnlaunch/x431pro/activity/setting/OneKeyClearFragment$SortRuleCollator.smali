.class Lcom/cnlaunch/x431pro/activity/setting/OneKeyClearFragment$SortRuleCollator;
.super Ljava/lang/Object;
.source "OneKeyClearFragment.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cnlaunch/x431pro/activity/setting/OneKeyClearFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SortRuleCollator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/cnlaunch/x431pro/utils/db/CarVersion;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cnlaunch/x431pro/activity/setting/OneKeyClearFragment;


# direct methods
.method constructor <init>(Lcom/cnlaunch/x431pro/activity/setting/OneKeyClearFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 244
    iput-object p1, p0, Lcom/cnlaunch/x431pro/activity/setting/OneKeyClearFragment$SortRuleCollator;->this$0:Lcom/cnlaunch/x431pro/activity/setting/OneKeyClearFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/cnlaunch/x431pro/utils/db/CarVersion;Lcom/cnlaunch/x431pro/utils/db/CarVersion;)I
    .locals 7
    .parameter "lhs"
    .parameter "rhs"

    .prologue
    .line 247
    invoke-virtual {p1}, Lcom/cnlaunch/x431pro/utils/db/CarVersion;->getVersionNo()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "V"

    const-string/jumbo v6, ""

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    .line 248
    .local v0, doublelhs:D
    invoke-virtual {p2}, Lcom/cnlaunch/x431pro/utils/db/CarVersion;->getVersionNo()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "V"

    const-string/jumbo v6, ""

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    .line 249
    .local v2, doublerhs:D
    cmpl-double v4, v2, v0

    if-lez v4, :cond_0

    const/4 v4, 0x1

    :goto_0
    return v4

    :cond_0
    const/4 v4, -0x1

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1
    check-cast p1, Lcom/cnlaunch/x431pro/utils/db/CarVersion;

    check-cast p2, Lcom/cnlaunch/x431pro/utils/db/CarVersion;

    invoke-virtual {p0, p1, p2}, Lcom/cnlaunch/x431pro/activity/setting/OneKeyClearFragment$SortRuleCollator;->compare(Lcom/cnlaunch/x431pro/utils/db/CarVersion;Lcom/cnlaunch/x431pro/utils/db/CarVersion;)I

    move-result v0

    return v0
.end method
