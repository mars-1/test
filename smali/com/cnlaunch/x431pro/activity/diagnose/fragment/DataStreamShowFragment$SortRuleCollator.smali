.class Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment$SortRuleCollator;
.super Ljava/lang/Object;
.source "DataStreamShowFragment.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;
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
        "Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;",
        ">;"
    }
.end annotation


# instance fields
.field collator:Ljava/text/RuleBasedCollator;

.field final synthetic this$0:Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;


# direct methods
.method public constructor <init>(Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;)V
    .locals 3
    .parameter

    .prologue
    .line 696
    iput-object p1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment$SortRuleCollator;->this$0:Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 687
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment$SortRuleCollator;->collator:Ljava/text/RuleBasedCollator;

    .line 697
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 698
    .local v0, locale:Ljava/util/Locale;
    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "CN"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 699
    sget-object v1, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-static {v1}, Ljava/text/Collator;->getInstance(Ljava/util/Locale;)Ljava/text/Collator;

    move-result-object v1

    check-cast v1, Ljava/text/RuleBasedCollator;

    iput-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment$SortRuleCollator;->collator:Ljava/text/RuleBasedCollator;

    .line 703
    :goto_0
    return-void

    .line 701
    :cond_0
    invoke-static {v0}, Ljava/text/Collator;->getInstance(Ljava/util/Locale;)Ljava/text/Collator;

    move-result-object v1

    check-cast v1, Ljava/text/RuleBasedCollator;

    iput-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment$SortRuleCollator;->collator:Ljava/text/RuleBasedCollator;

    goto :goto_0
.end method


# virtual methods
.method public compare(Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;)I
    .locals 3
    .parameter "lhs"
    .parameter "rhs"

    .prologue
    .line 691
    invoke-virtual {p1}, Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;->getTitle()Ljava/lang/String;

    move-result-object v0

    .line 692
    .local v0, strl:Ljava/lang/String;
    invoke-virtual {p2}, Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;->getTitle()Ljava/lang/String;

    move-result-object v1

    .line 693
    .local v1, strr:Ljava/lang/String;
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment$SortRuleCollator;->collator:Ljava/text/RuleBasedCollator;

    invoke-virtual {v2, v0, v1}, Ljava/text/RuleBasedCollator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    return v2
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1
    check-cast p1, Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;

    check-cast p2, Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;

    invoke-virtual {p0, p1, p2}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment$SortRuleCollator;->compare(Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;)I

    move-result v0

    return v0
.end method
