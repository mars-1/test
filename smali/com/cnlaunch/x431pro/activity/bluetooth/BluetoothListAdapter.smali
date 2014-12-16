.class public Lcom/cnlaunch/x431pro/activity/bluetooth/BluetoothListAdapter;
.super Landroid/widget/BaseAdapter;
.source "BluetoothListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cnlaunch/x431pro/activity/bluetooth/BluetoothListAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private inflater:Landroid/view/LayoutInflater;

.field private list:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cnlaunch/physics/entity/BluetoothListDto;",
            ">;"
        }
    .end annotation
.end field

.field selectedPosition:I

.field viewHolder:Lcom/cnlaunch/x431pro/activity/bluetooth/BluetoothListAdapter$ViewHolder;


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
            "Lcom/cnlaunch/physics/entity/BluetoothListDto;",
            ">;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .prologue
    .line 23
    .local p1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/cnlaunch/physics/entity/BluetoothListDto;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 20
    const/4 v0, 0x0

    iput v0, p0, Lcom/cnlaunch/x431pro/activity/bluetooth/BluetoothListAdapter;->selectedPosition:I

    .line 49
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/bluetooth/BluetoothListAdapter;->viewHolder:Lcom/cnlaunch/x431pro/activity/bluetooth/BluetoothListAdapter$ViewHolder;

    .line 24
    iput-object p1, p0, Lcom/cnlaunch/x431pro/activity/bluetooth/BluetoothListAdapter;->list:Ljava/util/ArrayList;

    .line 25
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/bluetooth/BluetoothListAdapter;->inflater:Landroid/view/LayoutInflater;

    .line 26
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/bluetooth/BluetoothListAdapter;->list:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "arg0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/bluetooth/BluetoothListAdapter;->list:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "arg0"

    .prologue
    .line 46
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter "position"
    .parameter "contentView"
    .parameter "arg2"

    .prologue
    .line 52
    if-nez p2, :cond_1

    .line 53
    new-instance v0, Lcom/cnlaunch/x431pro/activity/bluetooth/BluetoothListAdapter$ViewHolder;

    invoke-direct {v0, p0}, Lcom/cnlaunch/x431pro/activity/bluetooth/BluetoothListAdapter$ViewHolder;-><init>(Lcom/cnlaunch/x431pro/activity/bluetooth/BluetoothListAdapter;)V

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/bluetooth/BluetoothListAdapter;->viewHolder:Lcom/cnlaunch/x431pro/activity/bluetooth/BluetoothListAdapter$ViewHolder;

    .line 54
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/bluetooth/BluetoothListAdapter;->inflater:Landroid/view/LayoutInflater;

    const v1, 0x7f0300bf

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 55
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/bluetooth/BluetoothListAdapter;->viewHolder:Lcom/cnlaunch/x431pro/activity/bluetooth/BluetoothListAdapter$ViewHolder;

    const v0, 0x7f0c025b

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/cnlaunch/x431pro/activity/bluetooth/BluetoothListAdapter$ViewHolder;->bluetoothStatus:Landroid/widget/ImageView;

    .line 56
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/bluetooth/BluetoothListAdapter;->viewHolder:Lcom/cnlaunch/x431pro/activity/bluetooth/BluetoothListAdapter$ViewHolder;

    const v0, 0x7f0c025c

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/cnlaunch/x431pro/activity/bluetooth/BluetoothListAdapter$ViewHolder;->bluetoothName:Landroid/widget/TextView;

    .line 57
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/bluetooth/BluetoothListAdapter;->viewHolder:Lcom/cnlaunch/x431pro/activity/bluetooth/BluetoothListAdapter$ViewHolder;

    const v0, 0x7f0c025d

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/cnlaunch/x431pro/activity/bluetooth/BluetoothListAdapter$ViewHolder;->bluetoothAddress:Landroid/widget/TextView;

    .line 58
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/bluetooth/BluetoothListAdapter;->viewHolder:Lcom/cnlaunch/x431pro/activity/bluetooth/BluetoothListAdapter$ViewHolder;

    const v0, 0x7f0c025f

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/cnlaunch/x431pro/activity/bluetooth/BluetoothListAdapter$ViewHolder;->pairStatus:Landroid/widget/TextView;

    .line 59
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/bluetooth/BluetoothListAdapter;->viewHolder:Lcom/cnlaunch/x431pro/activity/bluetooth/BluetoothListAdapter$ViewHolder;

    const v0, 0x7f0c025e

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/cnlaunch/x431pro/activity/bluetooth/BluetoothListAdapter$ViewHolder;->connStatus:Landroid/widget/TextView;

    .line 60
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/bluetooth/BluetoothListAdapter;->viewHolder:Lcom/cnlaunch/x431pro/activity/bluetooth/BluetoothListAdapter$ViewHolder;

    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 64
    :goto_0
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/bluetooth/BluetoothListAdapter;->viewHolder:Lcom/cnlaunch/x431pro/activity/bluetooth/BluetoothListAdapter$ViewHolder;

    iget-object v1, v0, Lcom/cnlaunch/x431pro/activity/bluetooth/BluetoothListAdapter$ViewHolder;->bluetoothName:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/bluetooth/BluetoothListAdapter;->list:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cnlaunch/physics/entity/BluetoothListDto;

    invoke-virtual {v0}, Lcom/cnlaunch/physics/entity/BluetoothListDto;->getBluetoothName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 65
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/bluetooth/BluetoothListAdapter;->viewHolder:Lcom/cnlaunch/x431pro/activity/bluetooth/BluetoothListAdapter$ViewHolder;

    iget-object v1, v0, Lcom/cnlaunch/x431pro/activity/bluetooth/BluetoothListAdapter$ViewHolder;->bluetoothAddress:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/bluetooth/BluetoothListAdapter;->list:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cnlaunch/physics/entity/BluetoothListDto;

    invoke-virtual {v0}, Lcom/cnlaunch/physics/entity/BluetoothListDto;->getBluetoothAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 66
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/bluetooth/BluetoothListAdapter;->viewHolder:Lcom/cnlaunch/x431pro/activity/bluetooth/BluetoothListAdapter$ViewHolder;

    iget-object v1, v0, Lcom/cnlaunch/x431pro/activity/bluetooth/BluetoothListAdapter$ViewHolder;->connStatus:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/bluetooth/BluetoothListAdapter;->list:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cnlaunch/physics/entity/BluetoothListDto;

    invoke-virtual {v0}, Lcom/cnlaunch/physics/entity/BluetoothListDto;->getBluetoothConnWait()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 67
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/bluetooth/BluetoothListAdapter;->viewHolder:Lcom/cnlaunch/x431pro/activity/bluetooth/BluetoothListAdapter$ViewHolder;

    iget-object v1, v0, Lcom/cnlaunch/x431pro/activity/bluetooth/BluetoothListAdapter$ViewHolder;->pairStatus:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/bluetooth/BluetoothListAdapter;->list:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cnlaunch/physics/entity/BluetoothListDto;

    invoke-virtual {v0}, Lcom/cnlaunch/physics/entity/BluetoothListDto;->isBluetoothPairStatus()Z

    move-result v0

    if-eqz v0, :cond_2

    const v0, 0x7f0700af

    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 68
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/bluetooth/BluetoothListAdapter;->list:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cnlaunch/physics/entity/BluetoothListDto;

    invoke-virtual {v0}, Lcom/cnlaunch/physics/entity/BluetoothListDto;->isBluetoothPairStatus()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/bluetooth/BluetoothListAdapter;->list:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cnlaunch/physics/entity/BluetoothListDto;

    invoke-virtual {v0}, Lcom/cnlaunch/physics/entity/BluetoothListDto;->isBluetoothConnStatus()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 69
    :cond_0
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/bluetooth/BluetoothListAdapter;->viewHolder:Lcom/cnlaunch/x431pro/activity/bluetooth/BluetoothListAdapter$ViewHolder;

    iget-object v0, v0, Lcom/cnlaunch/x431pro/activity/bluetooth/BluetoothListAdapter$ViewHolder;->bluetoothName:Landroid/widget/TextView;

    const/high16 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 70
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/bluetooth/BluetoothListAdapter;->viewHolder:Lcom/cnlaunch/x431pro/activity/bluetooth/BluetoothListAdapter$ViewHolder;

    iget-object v0, v0, Lcom/cnlaunch/x431pro/activity/bluetooth/BluetoothListAdapter$ViewHolder;->bluetoothStatus:Landroid/widget/ImageView;

    const v1, 0x7f020247

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 75
    :goto_2
    return-object p2

    .line 62
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cnlaunch/x431pro/activity/bluetooth/BluetoothListAdapter$ViewHolder;

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/bluetooth/BluetoothListAdapter;->viewHolder:Lcom/cnlaunch/x431pro/activity/bluetooth/BluetoothListAdapter$ViewHolder;

    goto/16 :goto_0

    .line 67
    :cond_2
    const v0, 0x7f0700ae

    goto :goto_1

    .line 72
    :cond_3
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/bluetooth/BluetoothListAdapter;->viewHolder:Lcom/cnlaunch/x431pro/activity/bluetooth/BluetoothListAdapter$ViewHolder;

    iget-object v0, v0, Lcom/cnlaunch/x431pro/activity/bluetooth/BluetoothListAdapter$ViewHolder;->bluetoothName:Landroid/widget/TextView;

    const/high16 v1, -0x100

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 73
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/bluetooth/BluetoothListAdapter;->viewHolder:Lcom/cnlaunch/x431pro/activity/bluetooth/BluetoothListAdapter$ViewHolder;

    iget-object v0, v0, Lcom/cnlaunch/x431pro/activity/bluetooth/BluetoothListAdapter$ViewHolder;->bluetoothStatus:Landroid/widget/ImageView;

    const v1, 0x7f020248

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2
.end method

.method public refersh(Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cnlaunch/physics/entity/BluetoothListDto;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 33
    .local p1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/cnlaunch/physics/entity/BluetoothListDto;>;"
    iput-object p1, p0, Lcom/cnlaunch/x431pro/activity/bluetooth/BluetoothListAdapter;->list:Ljava/util/ArrayList;

    .line 34
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/bluetooth/BluetoothListAdapter;->notifyDataSetChanged()V

    .line 35
    return-void
.end method

.method public setSelectedPosition(I)V
    .locals 0
    .parameter "position"

    .prologue
    .line 29
    iput p1, p0, Lcom/cnlaunch/x431pro/activity/bluetooth/BluetoothListAdapter;->selectedPosition:I

    .line 30
    return-void
.end method
