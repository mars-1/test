.class public Lcom/cnlaunch/x431pro/activity/browser/adapter/BrowserAdapter;
.super Landroid/widget/BaseAdapter;
.source "BrowserAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cnlaunch/x431pro/activity/browser/adapter/BrowserAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private holder:Lcom/cnlaunch/x431pro/activity/browser/adapter/BrowserAdapter$ViewHolder;

.field private list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/cnlaunch/x431pro/module/browser/model/BrowserWebSiteInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mInflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 1
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cnlaunch/x431pro/module/browser/model/BrowserWebSiteInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 24
    .local p2, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/cnlaunch/x431pro/module/browser/model/BrowserWebSiteInfo;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/cnlaunch/x431pro/activity/browser/adapter/BrowserAdapter;->mContext:Landroid/content/Context;

    .line 26
    iput-object p2, p0, Lcom/cnlaunch/x431pro/activity/browser/adapter/BrowserAdapter;->list:Ljava/util/List;

    .line 27
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/browser/adapter/BrowserAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/browser/adapter/BrowserAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 28
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/browser/adapter/BrowserAdapter;->list:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 38
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/browser/adapter/BrowserAdapter;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 40
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/browser/adapter/BrowserAdapter;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 50
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter "arg0"
    .parameter "convertView"
    .parameter "arg2"

    .prologue
    .line 55
    if-nez p2, :cond_0

    .line 56
    new-instance v0, Lcom/cnlaunch/x431pro/activity/browser/adapter/BrowserAdapter$ViewHolder;

    invoke-direct {v0}, Lcom/cnlaunch/x431pro/activity/browser/adapter/BrowserAdapter$ViewHolder;-><init>()V

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/browser/adapter/BrowserAdapter;->holder:Lcom/cnlaunch/x431pro/activity/browser/adapter/BrowserAdapter$ViewHolder;

    .line 57
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/browser/adapter/BrowserAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f03001f

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 58
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/browser/adapter/BrowserAdapter;->holder:Lcom/cnlaunch/x431pro/activity/browser/adapter/BrowserAdapter$ViewHolder;

    const v0, 0x7f0d0080

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/cnlaunch/x431pro/activity/browser/adapter/BrowserAdapter$ViewHolder;->img_icon:Landroid/widget/ImageView;

    .line 59
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/browser/adapter/BrowserAdapter;->holder:Lcom/cnlaunch/x431pro/activity/browser/adapter/BrowserAdapter$ViewHolder;

    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/browser/adapter/BrowserAdapter;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cnlaunch/x431pro/module/browser/model/BrowserWebSiteInfo;

    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/module/browser/model/BrowserWebSiteInfo;->getWebSite()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/cnlaunch/x431pro/activity/browser/adapter/BrowserAdapter$ViewHolder;->web_site:Ljava/lang/String;

    .line 60
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/browser/adapter/BrowserAdapter;->holder:Lcom/cnlaunch/x431pro/activity/browser/adapter/BrowserAdapter$ViewHolder;

    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 64
    :goto_0
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/browser/adapter/BrowserAdapter;->holder:Lcom/cnlaunch/x431pro/activity/browser/adapter/BrowserAdapter$ViewHolder;

    iget-object v1, v0, Lcom/cnlaunch/x431pro/activity/browser/adapter/BrowserAdapter$ViewHolder;->img_icon:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/browser/adapter/BrowserAdapter;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cnlaunch/x431pro/module/browser/model/BrowserWebSiteInfo;

    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/module/browser/model/BrowserWebSiteInfo;->getImageResid()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 65
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/browser/adapter/BrowserAdapter;->holder:Lcom/cnlaunch/x431pro/activity/browser/adapter/BrowserAdapter$ViewHolder;

    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/browser/adapter/BrowserAdapter;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cnlaunch/x431pro/module/browser/model/BrowserWebSiteInfo;

    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/module/browser/model/BrowserWebSiteInfo;->getWebSite()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/cnlaunch/x431pro/activity/browser/adapter/BrowserAdapter$ViewHolder;->web_site:Ljava/lang/String;

    .line 66
    return-object p2

    .line 62
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cnlaunch/x431pro/activity/browser/adapter/BrowserAdapter$ViewHolder;

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/browser/adapter/BrowserAdapter;->holder:Lcom/cnlaunch/x431pro/activity/browser/adapter/BrowserAdapter$ViewHolder;

    goto :goto_0
.end method
