.class Lcom/cnlaunch/x431pro/utils/icon/CarIconUtils$4;
.super Ljava/lang/Object;
.source "CarIconUtils.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cnlaunch/x431pro/utils/icon/CarIconUtils;->getAllCarList()Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/cnlaunch/x431pro/utils/db/CarIcon;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cnlaunch/x431pro/utils/icon/CarIconUtils;


# direct methods
.method constructor <init>(Lcom/cnlaunch/x431pro/utils/icon/CarIconUtils;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cnlaunch/x431pro/utils/icon/CarIconUtils$4;->this$0:Lcom/cnlaunch/x431pro/utils/icon/CarIconUtils;

    .line 582
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/cnlaunch/x431pro/utils/db/CarIcon;Lcom/cnlaunch/x431pro/utils/db/CarIcon;)I
    .locals 2
    .parameter "entity1"
    .parameter "entity2"

    .prologue
    .line 585
    invoke-virtual {p1}, Lcom/cnlaunch/x431pro/utils/db/CarIcon;->getSname()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/cnlaunch/x431pro/utils/db/CarIcon;->getSname()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1
    check-cast p1, Lcom/cnlaunch/x431pro/utils/db/CarIcon;

    check-cast p2, Lcom/cnlaunch/x431pro/utils/db/CarIcon;

    invoke-virtual {p0, p1, p2}, Lcom/cnlaunch/x431pro/utils/icon/CarIconUtils$4;->compare(Lcom/cnlaunch/x431pro/utils/db/CarIcon;Lcom/cnlaunch/x431pro/utils/db/CarIcon;)I

    move-result v0

    return v0
.end method
