.class Lcom/cnlaunch/x431pro/widget/DropdownEditText$DropdownUsernameAdapter;
.super Landroid/widget/BaseAdapter;
.source "DropdownEditText.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cnlaunch/x431pro/widget/DropdownEditText;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DropdownUsernameAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cnlaunch/x431pro/widget/DropdownEditText$DropdownUsernameAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field list:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/cnlaunch/x431pro/widget/DropdownEditText;


# direct methods
.method public constructor <init>(Lcom/cnlaunch/x431pro/widget/DropdownEditText;Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 120
    .local p2, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/cnlaunch/x431pro/widget/DropdownEditText$DropdownUsernameAdapter;->this$0:Lcom/cnlaunch/x431pro/widget/DropdownEditText;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 121
    iput-object p2, p0, Lcom/cnlaunch/x431pro/widget/DropdownEditText$DropdownUsernameAdapter;->list:Ljava/util/ArrayList;

    .line 122
    return-void
.end method

.method static synthetic access$0(Lcom/cnlaunch/x431pro/widget/DropdownEditText$DropdownUsernameAdapter;)Lcom/cnlaunch/x431pro/widget/DropdownEditText;
    .locals 1
    .parameter

    .prologue
    .line 118
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/DropdownEditText$DropdownUsernameAdapter;->this$0:Lcom/cnlaunch/x431pro/widget/DropdownEditText;

    return-object v0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/DropdownEditText$DropdownUsernameAdapter;->list:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "arg0"

    .prologue
    .line 136
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/DropdownEditText$DropdownUsernameAdapter;->list:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "arg0"

    .prologue
    .line 141
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .parameter "arg0"
    .parameter "convertView"
    .parameter "arg2"

    .prologue
    .line 148
    iget-object v2, p0, Lcom/cnlaunch/x431pro/widget/DropdownEditText$DropdownUsernameAdapter;->this$0:Lcom/cnlaunch/x431pro/widget/DropdownEditText;

    iget-object v2, v2, Lcom/cnlaunch/x431pro/widget/DropdownEditText;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 149
    .local v0, factory:Landroid/view/LayoutInflater;
    if-nez p2, :cond_0

    .line 150
    new-instance v1, Lcom/cnlaunch/x431pro/widget/DropdownEditText$DropdownUsernameAdapter$ViewHolder;

    invoke-direct {v1, p0}, Lcom/cnlaunch/x431pro/widget/DropdownEditText$DropdownUsernameAdapter$ViewHolder;-><init>(Lcom/cnlaunch/x431pro/widget/DropdownEditText$DropdownUsernameAdapter;)V

    .line 151
    .local v1, holder:Lcom/cnlaunch/x431pro/widget/DropdownEditText$DropdownUsernameAdapter$ViewHolder;
    const v2, 0x7f0300c4

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 152
    const v2, 0x7f0c01ff

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/cnlaunch/x431pro/widget/DropdownEditText$DropdownUsernameAdapter$ViewHolder;->text:Landroid/widget/TextView;

    .line 153
    const v2, 0x7f0c0260

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v1, Lcom/cnlaunch/x431pro/widget/DropdownEditText$DropdownUsernameAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    .line 154
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 159
    :goto_0
    iget-object v3, v1, Lcom/cnlaunch/x431pro/widget/DropdownEditText$DropdownUsernameAdapter$ViewHolder;->text:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/cnlaunch/x431pro/widget/DropdownEditText$DropdownUsernameAdapter;->list:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 160
    iget-object v2, v1, Lcom/cnlaunch/x431pro/widget/DropdownEditText$DropdownUsernameAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    new-instance v3, Lcom/cnlaunch/x431pro/widget/DropdownEditText$DropdownUsernameAdapter$1;

    invoke-direct {v3, p0, v1}, Lcom/cnlaunch/x431pro/widget/DropdownEditText$DropdownUsernameAdapter$1;-><init>(Lcom/cnlaunch/x431pro/widget/DropdownEditText$DropdownUsernameAdapter;Lcom/cnlaunch/x431pro/widget/DropdownEditText$DropdownUsernameAdapter$ViewHolder;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 207
    return-object p2

    .line 156
    .end local v1           #holder:Lcom/cnlaunch/x431pro/widget/DropdownEditText$DropdownUsernameAdapter$ViewHolder;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cnlaunch/x431pro/widget/DropdownEditText$DropdownUsernameAdapter$ViewHolder;

    .restart local v1       #holder:Lcom/cnlaunch/x431pro/widget/DropdownEditText$DropdownUsernameAdapter$ViewHolder;
    goto :goto_0
.end method

.method public refreshData(Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 125
    .local p1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/cnlaunch/x431pro/widget/DropdownEditText$DropdownUsernameAdapter;->list:Ljava/util/ArrayList;

    .line 126
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/DropdownEditText$DropdownUsernameAdapter;->notifyDataSetChanged()V

    .line 127
    return-void
.end method
