.class public Lcom/cnlaunch/x431pro/activity/golo/listenter/OnTipEvent;
.super Ljava/lang/Object;
.source "OnTipEvent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cnlaunch/x431pro/activity/golo/listenter/OnTipEvent$TipCountChangeListener;
    }
.end annotation


# static fields
.field public static final UPDATE_NEW_COUNT:Ljava/lang/String; = "update_new_tip_count"

.field private static listeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cnlaunch/x431pro/activity/golo/listenter/OnTipEvent$TipCountChangeListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 7
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/cnlaunch/x431pro/activity/golo/listenter/OnTipEvent;->listeners:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addListener(Lcom/cnlaunch/x431pro/activity/golo/listenter/OnTipEvent$TipCountChangeListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 13
    sget-object v0, Lcom/cnlaunch/x431pro/activity/golo/listenter/OnTipEvent;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 15
    return-void
.end method

.method public static onChange(I)V
    .locals 1
    .parameter "count"

    .prologue
    .line 34
    const/4 v0, 0x0

    invoke-static {v0, p0}, Lcom/cnlaunch/x431pro/activity/golo/listenter/OnTipEvent;->onChange(Ljava/lang/String;I)V

    .line 35
    return-void
.end method

.method public static onChange(Ljava/lang/String;I)V
    .locals 3
    .parameter "userId"
    .parameter "count"

    .prologue
    .line 28
    sget-object v1, Lcom/cnlaunch/x431pro/activity/golo/listenter/OnTipEvent;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 31
    return-void

    .line 28
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cnlaunch/x431pro/activity/golo/listenter/OnTipEvent$TipCountChangeListener;

    .line 29
    .local v0, tmp:Lcom/cnlaunch/x431pro/activity/golo/listenter/OnTipEvent$TipCountChangeListener;
    invoke-interface {v0, p0, p1}, Lcom/cnlaunch/x431pro/activity/golo/listenter/OnTipEvent$TipCountChangeListener;->onChange(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public static removeListener(Lcom/cnlaunch/x431pro/activity/golo/listenter/OnTipEvent$TipCountChangeListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 18
    sget-object v0, Lcom/cnlaunch/x431pro/activity/golo/listenter/OnTipEvent;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 19
    return-void
.end method
