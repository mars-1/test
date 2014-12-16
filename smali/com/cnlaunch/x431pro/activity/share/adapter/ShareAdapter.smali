.class public Lcom/cnlaunch/x431pro/activity/share/adapter/ShareAdapter;
.super Landroid/widget/BaseAdapter;
.source "ShareAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cnlaunch/x431pro/activity/share/adapter/ShareAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private inflater:Landroid/view/LayoutInflater;

.field private mContext:Landroid/content/Context;

.field mList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation
.end field

.field private viewHolder:Lcom/cnlaunch/x431pro/activity/share/adapter/ShareAdapter$ViewHolder;


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;Landroid/content/Context;)V
    .locals 1
    .parameter
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, mList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/pm/ResolveInfo;>;"
    const/4 v0, 0x0

    .line 23
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 19
    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/share/adapter/ShareAdapter;->mList:Ljava/util/ArrayList;

    .line 48
    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/share/adapter/ShareAdapter;->viewHolder:Lcom/cnlaunch/x431pro/activity/share/adapter/ShareAdapter$ViewHolder;

    .line 24
    iput-object p1, p0, Lcom/cnlaunch/x431pro/activity/share/adapter/ShareAdapter;->mList:Ljava/util/ArrayList;

    .line 25
    iput-object p2, p0, Lcom/cnlaunch/x431pro/activity/share/adapter/ShareAdapter;->mContext:Landroid/content/Context;

    .line 26
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/share/adapter/ShareAdapter;->inflater:Landroid/view/LayoutInflater;

    .line 27
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/share/adapter/ShareAdapter;->mList:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 32
    const/4 v0, 0x0

    .line 34
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/share/adapter/ShareAdapter;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/share/adapter/ShareAdapter;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 45
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 52
    if-nez p2, :cond_0

    .line 53
    new-instance v0, Lcom/cnlaunch/x431pro/activity/share/adapter/ShareAdapter$ViewHolder;

    invoke-direct {v0, p0}, Lcom/cnlaunch/x431pro/activity/share/adapter/ShareAdapter$ViewHolder;-><init>(Lcom/cnlaunch/x431pro/activity/share/adapter/ShareAdapter;)V

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/share/adapter/ShareAdapter;->viewHolder:Lcom/cnlaunch/x431pro/activity/share/adapter/ShareAdapter$ViewHolder;

    .line 54
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/share/adapter/ShareAdapter;->inflater:Landroid/view/LayoutInflater;

    const v1, 0x7f0300cc

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 55
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/share/adapter/ShareAdapter;->viewHolder:Lcom/cnlaunch/x431pro/activity/share/adapter/ShareAdapter$ViewHolder;

    const v0, 0x7f0c027c

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/cnlaunch/x431pro/activity/share/adapter/ShareAdapter$ViewHolder;->name:Landroid/widget/TextView;

    .line 56
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/share/adapter/ShareAdapter;->viewHolder:Lcom/cnlaunch/x431pro/activity/share/adapter/ShareAdapter$ViewHolder;

    const v0, 0x7f0c027b

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/cnlaunch/x431pro/activity/share/adapter/ShareAdapter$ViewHolder;->iview:Landroid/widget/ImageView;

    .line 57
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/share/adapter/ShareAdapter;->viewHolder:Lcom/cnlaunch/x431pro/activity/share/adapter/ShareAdapter$ViewHolder;

    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 61
    :goto_0
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/share/adapter/ShareAdapter;->viewHolder:Lcom/cnlaunch/x431pro/activity/share/adapter/ShareAdapter$ViewHolder;

    iget-object v1, v0, Lcom/cnlaunch/x431pro/activity/share/adapter/ShareAdapter$ViewHolder;->name:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/share/adapter/ShareAdapter;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/share/adapter/ShareAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 62
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/share/adapter/ShareAdapter;->viewHolder:Lcom/cnlaunch/x431pro/activity/share/adapter/ShareAdapter$ViewHolder;

    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/share/adapter/ShareAdapter;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/share/adapter/ShareAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, v1, Lcom/cnlaunch/x431pro/activity/share/adapter/ShareAdapter$ViewHolder;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 63
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/share/adapter/ShareAdapter;->viewHolder:Lcom/cnlaunch/x431pro/activity/share/adapter/ShareAdapter$ViewHolder;

    iget-object v0, v0, Lcom/cnlaunch/x431pro/activity/share/adapter/ShareAdapter$ViewHolder;->iview:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/share/adapter/ShareAdapter;->viewHolder:Lcom/cnlaunch/x431pro/activity/share/adapter/ShareAdapter$ViewHolder;

    iget-object v1, v1, Lcom/cnlaunch/x431pro/activity/share/adapter/ShareAdapter$ViewHolder;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 64
    return-object p2

    .line 59
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cnlaunch/x431pro/activity/share/adapter/ShareAdapter$ViewHolder;

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/share/adapter/ShareAdapter;->viewHolder:Lcom/cnlaunch/x431pro/activity/share/adapter/ShareAdapter$ViewHolder;

    goto :goto_0
.end method
