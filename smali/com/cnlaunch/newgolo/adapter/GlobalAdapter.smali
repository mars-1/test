.class public Lcom/cnlaunch/newgolo/adapter/GlobalAdapter;
.super Landroid/widget/BaseAdapter;
.source "GlobalAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cnlaunch/newgolo/adapter/GlobalAdapter$HoldView;,
        Lcom/cnlaunch/newgolo/adapter/GlobalAdapter$ItemId;,
        Lcom/cnlaunch/newgolo/adapter/GlobalAdapter$OnGlobalItemClick;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "GlobalAdapter"


# instance fields
.field private iconIds:[I

.field private itemIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cnlaunch/newgolo/adapter/GlobalAdapter$ItemId;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mGlobalItemClick:Lcom/cnlaunch/newgolo/adapter/GlobalAdapter$OnGlobalItemClick;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/cnlaunch/newgolo/adapter/GlobalAdapter$OnGlobalItemClick;)V
    .locals 3
    .parameter "context"
    .parameter "globalItemClick"

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 22
    const/4 v0, 0x3

    new-array v0, v0, [I

    const/4 v1, 0x0

    sget v2, Lcom/cnlaunch/golo3/message/R$drawable;->helper_02:I

    aput v2, v0, v1

    const/4 v1, 0x1

    .line 23
    sget v2, Lcom/cnlaunch/golo3/message/R$drawable;->mode_picture:I

    aput v2, v0, v1

    const/4 v1, 0x2

    sget v2, Lcom/cnlaunch/golo3/message/R$drawable;->mode_file:I

    aput v2, v0, v1

    iput-object v0, p0, Lcom/cnlaunch/newgolo/adapter/GlobalAdapter;->iconIds:[I

    .line 26
    iput-object p1, p0, Lcom/cnlaunch/newgolo/adapter/GlobalAdapter;->mContext:Landroid/content/Context;

    .line 27
    iput-object p2, p0, Lcom/cnlaunch/newgolo/adapter/GlobalAdapter;->mGlobalItemClick:Lcom/cnlaunch/newgolo/adapter/GlobalAdapter$OnGlobalItemClick;

    .line 28
    invoke-direct {p0}, Lcom/cnlaunch/newgolo/adapter/GlobalAdapter;->initItemIds()V

    .line 29
    return-void
.end method

.method static synthetic access$0(Lcom/cnlaunch/newgolo/adapter/GlobalAdapter;)Lcom/cnlaunch/newgolo/adapter/GlobalAdapter$OnGlobalItemClick;
    .locals 1
    .parameter

    .prologue
    .line 21
    iget-object v0, p0, Lcom/cnlaunch/newgolo/adapter/GlobalAdapter;->mGlobalItemClick:Lcom/cnlaunch/newgolo/adapter/GlobalAdapter$OnGlobalItemClick;

    return-object v0
.end method

.method private initItemIds()V
    .locals 5

    .prologue
    .line 32
    iget-object v3, p0, Lcom/cnlaunch/newgolo/adapter/GlobalAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 33
    sget v4, Lcom/cnlaunch/golo3/message/R$array;->msg_sub_global_name:I

    .line 32
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 34
    .local v2, names:[Ljava/lang/String;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/cnlaunch/newgolo/adapter/GlobalAdapter;->itemIds:Ljava/util/ArrayList;

    .line 35
    array-length v3, v2

    iget-object v4, p0, Lcom/cnlaunch/newgolo/adapter/GlobalAdapter;->iconIds:[I

    array-length v4, v4

    if-ne v3, v4, :cond_1

    .line 36
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v3, p0, Lcom/cnlaunch/newgolo/adapter/GlobalAdapter;->iconIds:[I

    array-length v3, v3

    if-lt v0, v3, :cond_0

    .line 46
    .end local v0           #i:I
    :goto_1
    return-void

    .line 37
    .restart local v0       #i:I
    :cond_0
    new-instance v1, Lcom/cnlaunch/newgolo/adapter/GlobalAdapter$ItemId;

    invoke-direct {v1, p0}, Lcom/cnlaunch/newgolo/adapter/GlobalAdapter$ItemId;-><init>(Lcom/cnlaunch/newgolo/adapter/GlobalAdapter;)V

    .line 38
    .local v1, ids:Lcom/cnlaunch/newgolo/adapter/GlobalAdapter$ItemId;
    iget-object v3, p0, Lcom/cnlaunch/newgolo/adapter/GlobalAdapter;->iconIds:[I

    aget v3, v3, v0

    iput v3, v1, Lcom/cnlaunch/newgolo/adapter/GlobalAdapter$ItemId;->iconId:I

    .line 39
    aget-object v3, v2, v0

    iput-object v3, v1, Lcom/cnlaunch/newgolo/adapter/GlobalAdapter$ItemId;->nameId:Ljava/lang/String;

    .line 40
    iget-object v3, p0, Lcom/cnlaunch/newgolo/adapter/GlobalAdapter;->itemIds:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 36
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 44
    .end local v0           #i:I
    .end local v1           #ids:Lcom/cnlaunch/newgolo/adapter/GlobalAdapter$ItemId;
    :cond_1
    const-string/jumbo v3, "GlobalAdapter"

    const-string/jumbo v4, "names.length != iconIds.length"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/cnlaunch/newgolo/adapter/GlobalAdapter;->itemIds:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/cnlaunch/newgolo/adapter/GlobalAdapter;->itemIds:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 60
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/cnlaunch/newgolo/adapter/GlobalAdapter;->itemIds:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    int-to-long v0, v0

    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/cnlaunch/newgolo/adapter/GlobalAdapter;->itemIds:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cnlaunch/newgolo/adapter/GlobalAdapter$ItemId;

    iget v0, v0, Lcom/cnlaunch/newgolo/adapter/GlobalAdapter$ItemId;->iconId:I

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 71
    const/4 v0, 0x0

    .line 72
    .local v0, holdView:Lcom/cnlaunch/newgolo/adapter/GlobalAdapter$HoldView;
    if-eqz p2, :cond_1

    .line 73
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .end local v0           #holdView:Lcom/cnlaunch/newgolo/adapter/GlobalAdapter$HoldView;
    check-cast v0, Lcom/cnlaunch/newgolo/adapter/GlobalAdapter$HoldView;

    .line 84
    .restart local v0       #holdView:Lcom/cnlaunch/newgolo/adapter/GlobalAdapter$HoldView;
    :goto_0
    move v1, p1

    .line 85
    .local v1, pt:I
    iget-object v2, p0, Lcom/cnlaunch/newgolo/adapter/GlobalAdapter;->itemIds:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    .line 86
    iget-object v3, v0, Lcom/cnlaunch/newgolo/adapter/GlobalAdapter$HoldView;->mIcon:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/cnlaunch/newgolo/adapter/GlobalAdapter;->itemIds:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/cnlaunch/newgolo/adapter/GlobalAdapter$ItemId;

    iget v2, v2, Lcom/cnlaunch/newgolo/adapter/GlobalAdapter$ItemId;->iconId:I

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 87
    iget-object v2, v0, Lcom/cnlaunch/newgolo/adapter/GlobalAdapter$HoldView;->mIcon:Landroid/widget/ImageView;

    new-instance v3, Lcom/cnlaunch/newgolo/adapter/GlobalAdapter$1;

    invoke-direct {v3, p0, v1}, Lcom/cnlaunch/newgolo/adapter/GlobalAdapter$1;-><init>(Lcom/cnlaunch/newgolo/adapter/GlobalAdapter;I)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 96
    const-string/jumbo v2, "GlobalAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "holdView.mIcon with"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v0, Lcom/cnlaunch/newgolo/adapter/GlobalAdapter$HoldView;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getWidth()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", height:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/cnlaunch/newgolo/adapter/GlobalAdapter$HoldView;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getHeight()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    iget-object v3, v0, Lcom/cnlaunch/newgolo/adapter/GlobalAdapter$HoldView;->mName:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/cnlaunch/newgolo/adapter/GlobalAdapter;->itemIds:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/cnlaunch/newgolo/adapter/GlobalAdapter$ItemId;

    iget-object v2, v2, Lcom/cnlaunch/newgolo/adapter/GlobalAdapter$ItemId;->nameId:Ljava/lang/String;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 99
    :cond_0
    return-object p2

    .line 75
    .end local v1           #pt:I
    :cond_1
    new-instance v0, Lcom/cnlaunch/newgolo/adapter/GlobalAdapter$HoldView;

    .end local v0           #holdView:Lcom/cnlaunch/newgolo/adapter/GlobalAdapter$HoldView;
    invoke-direct {v0, p0}, Lcom/cnlaunch/newgolo/adapter/GlobalAdapter$HoldView;-><init>(Lcom/cnlaunch/newgolo/adapter/GlobalAdapter;)V

    .line 76
    .restart local v0       #holdView:Lcom/cnlaunch/newgolo/adapter/GlobalAdapter$HoldView;
    iget-object v2, p0, Lcom/cnlaunch/newgolo/adapter/GlobalAdapter;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 77
    sget v3, Lcom/cnlaunch/golo3/message/R$layout;->msg_sub_global_item:I

    const/4 v4, 0x0

    .line 76
    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 79
    sget v2, Lcom/cnlaunch/golo3/message/R$id;->msg_sub_global_icon:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 78
    iput-object v2, v0, Lcom/cnlaunch/newgolo/adapter/GlobalAdapter$HoldView;->mIcon:Landroid/widget/ImageView;

    .line 81
    sget v2, Lcom/cnlaunch/golo3/message/R$id;->msg_sub_global_name:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 80
    iput-object v2, v0, Lcom/cnlaunch/newgolo/adapter/GlobalAdapter$HoldView;->mName:Landroid/widget/TextView;

    .line 82
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_0
.end method

.method public removeItem(I)V
    .locals 1
    .parameter "index"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/cnlaunch/newgolo/adapter/GlobalAdapter;->itemIds:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 50
    return-void
.end method
