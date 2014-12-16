.class public Lcom/cnlaunch/newgolo/provider/ViewPagerProvider;
.super Ljava/lang/Object;
.source "ViewPagerProvider.java"


# static fields
.field private static final GLOBAL_COLUMNS_NUM:I = 0x3

.field private static final GLOBAL_COLUMNS_NUM_2:I = 0x2

.field private static final GLOBAL_COLUMNS_NUM_FLOAT:I = 0x3

.field private static final TAG:Ljava/lang/String; = "ViewPagerProvider"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getFloatGlobalView(Landroid/content/Context;Lcom/cnlaunch/newgolo/adapter/GlobalAdapter$OnGlobalItemClick;)Landroid/view/View;
    .locals 5
    .parameter "context"
    .parameter "globalItemClick"

    .prologue
    const/4 v4, -0x2

    .line 51
    new-instance v1, Landroid/widget/GridView;

    invoke-direct {v1, p0}, Landroid/widget/GridView;-><init>(Landroid/content/Context;)V

    .line 52
    .local v1, gridView:Landroid/widget/GridView;
    const/4 v3, 0x3

    invoke-virtual {v1, v3}, Landroid/widget/GridView;->setNumColumns(I)V

    .line 53
    const/16 v3, 0x11

    invoke-virtual {v1, v3}, Landroid/widget/GridView;->setGravity(I)V

    .line 54
    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v4, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 55
    .local v2, params:Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {v1, v2}, Landroid/widget/GridView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 56
    new-instance v0, Lcom/cnlaunch/newgolo/adapter/GlobalAdapter;

    invoke-direct {v0, p0, p1}, Lcom/cnlaunch/newgolo/adapter/GlobalAdapter;-><init>(Landroid/content/Context;Lcom/cnlaunch/newgolo/adapter/GlobalAdapter$OnGlobalItemClick;)V

    .line 57
    .local v0, adapter:Lcom/cnlaunch/newgolo/adapter/GlobalAdapter;
    invoke-virtual {v1, v0}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 58
    return-object v1
.end method

.method public static getFloatViewList(Landroid/content/Context;Lcom/cnlaunch/newgolo/adapter/GlobalAdapter$OnGlobalItemClick;)Ljava/util/ArrayList;
    .locals 2
    .parameter "context"
    .parameter "globalItemClick"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/cnlaunch/newgolo/adapter/GlobalAdapter$OnGlobalItemClick;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .prologue
    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 38
    .local v0, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-static {p0, p1}, Lcom/cnlaunch/newgolo/provider/ViewPagerProvider;->getFloatGlobalView(Landroid/content/Context;Lcom/cnlaunch/newgolo/adapter/GlobalAdapter$OnGlobalItemClick;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 39
    return-object v0
.end method

.method private static getGlobalView(Landroid/content/Context;ZLcom/cnlaunch/newgolo/adapter/GlobalAdapter$OnGlobalItemClick;)Landroid/view/View;
    .locals 7
    .parameter "context"
    .parameter "flag"
    .parameter "globalItemClick"

    .prologue
    const/4 v6, -0x2

    .line 68
    const-string/jumbo v3, "ViewPagerProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "getGlobalView:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    new-instance v1, Landroid/widget/GridView;

    invoke-direct {v1, p0}, Landroid/widget/GridView;-><init>(Landroid/content/Context;)V

    .line 70
    .local v1, gridView:Landroid/widget/GridView;
    if-eqz p1, :cond_1

    .line 71
    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Landroid/widget/GridView;->setNumColumns(I)V

    .line 76
    :goto_0
    const/16 v3, 0x11

    invoke-virtual {v1, v3}, Landroid/widget/GridView;->setGravity(I)V

    .line 77
    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v6, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 78
    .local v2, params:Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {v1, v2}, Landroid/widget/GridView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 79
    new-instance v0, Lcom/cnlaunch/newgolo/adapter/GlobalAdapter;

    invoke-direct {v0, p0, p2}, Lcom/cnlaunch/newgolo/adapter/GlobalAdapter;-><init>(Landroid/content/Context;Lcom/cnlaunch/newgolo/adapter/GlobalAdapter$OnGlobalItemClick;)V

    .line 80
    .local v0, adapter:Lcom/cnlaunch/newgolo/adapter/GlobalAdapter;
    if-eqz p1, :cond_0

    .line 81
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/cnlaunch/newgolo/adapter/GlobalAdapter;->removeItem(I)V

    .line 83
    :cond_0
    invoke-virtual {v1, v0}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 84
    new-instance v3, Lcom/cnlaunch/newgolo/provider/ViewPagerProvider$1;

    invoke-direct {v3, p2}, Lcom/cnlaunch/newgolo/provider/ViewPagerProvider$1;-><init>(Lcom/cnlaunch/newgolo/adapter/GlobalAdapter$OnGlobalItemClick;)V

    invoke-virtual {v1, v3}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 93
    return-object v1

    .line 73
    .end local v0           #adapter:Lcom/cnlaunch/newgolo/adapter/GlobalAdapter;
    .end local v2           #params:Landroid/view/ViewGroup$LayoutParams;
    :cond_1
    const/4 v3, 0x3

    invoke-virtual {v1, v3}, Landroid/widget/GridView;->setNumColumns(I)V

    goto :goto_0
.end method

.method public static getViewList(Landroid/content/Context;ZLcom/cnlaunch/newgolo/adapter/GlobalAdapter$OnGlobalItemClick;)Ljava/util/ArrayList;
    .locals 2
    .parameter "context"
    .parameter "flag"
    .parameter "globalItemClick"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z",
            "Lcom/cnlaunch/newgolo/adapter/GlobalAdapter$OnGlobalItemClick;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .prologue
    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 24
    .local v0, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-static {p0, p1, p2}, Lcom/cnlaunch/newgolo/provider/ViewPagerProvider;->getGlobalView(Landroid/content/Context;ZLcom/cnlaunch/newgolo/adapter/GlobalAdapter$OnGlobalItemClick;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 25
    return-object v0
.end method
